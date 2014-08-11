
SRC = $(wildcard *.asm)

example: index.o
	ld -e main \
	   -o example \
	   -macosx_version_min '10.6' \
	   $^

%.o: %.asm
	nasm -f macho $^

clean:
	rm -rf index.o example
