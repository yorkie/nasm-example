
nasm -f macho index.asm
ld -e main \
   -o index index.o\
   -macosx_version_min '10.6'