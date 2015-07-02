all: lddtrick.c
	gcc -static -Wl,-static -static-libgcc lddtrick.c -o lddtrick.so
	gcc -Wl,-dynamic-linker,lddtrick.so lddtrick.c -o lddtrick
clean:
	rm -f lddtrick.so
	rm -f lddtrick
