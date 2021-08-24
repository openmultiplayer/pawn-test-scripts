import ast
import json
import pathlib
import queue
import re
import subprocess
import sys
import threading
import time


OMP_COMMAND = (
    './omp-server'
    if sys.platform == 'linux'
    else 'omp-server.exe'
    # OSX can fuck off, naturally
)
PAWNCC_COMMAND = (
    './pawncc'
    if sys.platform == 'linux'
    else 'pawncc.exe'
    # Ditto
)
DEPENDENCIES = [
    path
    for path in pathlib.Path('dependencies').glob('*')
    if path.is_dir()
]


class ProgramOutput:
    def __init__(self):
        self.stdout = queue.Queue()
        self.stderr = queue.Queue()

    def get_stream_as_string(self, stream_name):
        stream = getattr(self, stream_name)
        output = ''

        while True:
            try:
                line = stream.get_nowait()
            except queue.Empty:
                break

            output += line

        return output


class Program:
    def __init__(self, command, **popen_args):
        self._process = subprocess.Popen(
            command,
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            **popen_args
        )

    def run(self, timeout=None):
        start_time = time.time()
        output = ProgramOutput()

        with self._process as process:
            watch_threads = []

            for stream, stream_queue in (
                (process.stdout, output.stdout),
                (process.stderr, output.stderr),
            ):
                thread = threading.Thread(
                    target=self._watch,
                    args=(stream, stream_queue),
                )
                watch_threads.append(thread)
                thread.start()

            while(
                timeout is None
                or time.time() - start_time < timeout
            ):
                if process.poll() is not None:
                    break

                time.sleep(.01)

            else:
                process.terminate()
                process.communicate()
                was_terminated = True

            if(
                process.returncode != 0
                and not was_terminated
            ):
                process_name = ' '.join(process.args)
                raise RuntimeError(
                    f'Process "{process_name}" failed '
                    f'with return code {process.returncode}'
                )

        for thread in watch_threads:
            thread.join()

        return output

    def _watch(self, stream, stream_queue):
        try:
            for line in iter(stream.readline, ''):
                stream_queue.put(line)
        except ValueError:  # I/O operation on closed file
            pass


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
        meta_data_path = folder / f'{module}.py'

        if not meta_data_path.exists():
            print(f'No test metadata found for {source_file}, skipping...')
            continue

        amx_path = folder / f'{module}.amx'
        amx_path.unlink(missing_ok=True)

        pawncc = Program([
            PAWNCC_COMMAND,
            source_file.resolve(),
            f'-o{amx_path.resolve()}',
            '-Z+',
            *[
                f'-i{dependency.resolve()}'
                for dependency in DEPENDENCIES
            ]
        ]).run()

        if not amx_path.exists():
            print(f'File {source_file} failed to build, aborting.')
            return 1

        expected_data = ast.literal_eval(meta_data_path.read_text())

        print(f'Running tests for {module}...')

        omp = Program([
            OMP_COMMAND,
            str(amx_path)
        ]).run(timeout=.5)

        for program_name, program in {
            'omp': omp,
            'pawncc': pawncc,
        }.items():
            for stream_name in (
                'stdout',
                'stderr',
            ):
                output = program.get_stream_as_string(stream_name).rstrip('\n')
                expected_pattern = expected_data[
                    program_name
                ][stream_name].strip()
                expected_output_lines = expected_pattern.count('\n') + 1
                useful_lines = output.split('\n')[-expected_output_lines:]
                useful_output = '\n'.join(useful_lines)

                if not re.fullmatch(expected_pattern, useful_output):
                    print(
                        f'Tests for {module} failed '
                        f'(mismatch on {program_name} {stream_name}): '
                        + repr(useful_output)
                    )
                    return 1

        print(f'Tests for {module} succeeded.')


if __name__ == '__main__':
    sys.exit(main())
