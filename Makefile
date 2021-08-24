all: \
	test.amx \
	single_tests/format_1.amx \
	single_tests/format_2.amx

.PHONY: run run_single

run:
	./omp-server gamemodes/test.amx

run_single:
	python run_single_tests.py single_tests/

test.amx: \
	test.pwn \
	components/consolevars/tests.pwn \
	components/core/tests.pwn \
	components/databases/tests.pwn \
	components/menus/player_tests.pwn \
	components/menus/tests.pwn \
	components/players/player_tests.pwn
	sampctl package build main

single_tests/format_1.amx: single_tests/format_1.pwn
	sampctl package build format_1

single_tests/format_2.amx: single_tests/format_2.pwn
	sampctl package build format_2
