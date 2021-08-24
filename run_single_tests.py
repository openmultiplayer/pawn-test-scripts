import io
import json
import pathlib
import re
import shlex
import subprocess
import sys


OMP_COMMAND = (
    './omp-server'
    if sys.platform == 'linux'
    else 'omp-server.exe'
    # OSX can fuck off, naturally
)


def main():
    if len(sys.argv) != 2:
        print(f'Usage: {sys.argv[0]} single_tests_folder')
        return 1

    folder = pathlib.Path(sys.argv[1])

    if not folder.exists():
        print(f'Folder {folder} does not exist.')
        return 1

    for source_file in sorted(folder.glob('*.pwn')):
        module = source_file.stem
        json_data_path = folder / f'{module}.json'

        if not json_data_path.exists():
            print(f'No JSON test data found for {source_file}, ignoring...')
            continue

        subprocess.run(
            shlex.split(f'sampctl package build {module}'),
            capture_output=True,
            check=True,
        )

        amx_path = folder / f'{module}.amx'

        if not amx_path.exists():
            print(f'File {source_file} failed to build, aborting.')
            return 1

        with json_data_path.open() as json_data_file:
            json_data = json.load(json_data_file)

        expected_output_str = json_data['output']
        expected_output_re = re.compile(expected_output_str)
        expected_output_lines = expected_output_str.count('\n') + 1

        print(f'Running tests for {module}...')

        try:
            subprocess.run(
                [OMP_COMMAND, str(amx_path)],
                capture_output=True,
                check=True,
                timeout=.5,
            )
        except subprocess.TimeoutExpired as exception:
            output = exception.stderr.decode().strip()

        useful_lines = output.split('\n')[-expected_output_lines:]
        useful_output = '\n'.join(useful_lines)

        if not expected_output_re.fullmatch(useful_output):
            print(
                f'Tests for {module} failed: '
                f'Mismatching input {useful_output!r}'
            )
            return 1

        print(f'Tests for {module} succeeded.')


if __name__ == '__main__':
    sys.exit(main())
