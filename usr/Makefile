CC=arm-none-eabi-gcc

all: shell
	cp shell ../kernel/usr/shell

shell: main.c
	$(CC) -Tlink.x -nostdlib main.c -o shell
