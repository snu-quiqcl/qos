CC=arm-none-eabi-gcc
CFLAGS=-Tlink.x -nostdlib syscall.S -o
PROGS := hello fork preemption cooperative

all: hello.c
	$(CC) $(CFLAGS) hello hello.c

$(PROGS):
	$(CC) $(CFLAGS) $@ $@.c
