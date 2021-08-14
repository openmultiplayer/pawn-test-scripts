all: test.amx

test.amx: test.pwn
	pawncc -d2 test.pwn
