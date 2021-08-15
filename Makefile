all: test.amx

.PHONY: run

run:
	./omp-server gamemodes/test.amx

test.amx: test.pwn
	sampctl package build
