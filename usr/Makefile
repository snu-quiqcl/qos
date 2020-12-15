CC=arm-none-eabi-gcc

all: shell

shell: main.c
	$(CC) -Tlink.x -nostdlib main.c syscall.S -o shell
