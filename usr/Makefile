CC=arm-none-eabi-gcc
CFLAGS=-Tlink.x -nostdlib syscall.S -o
PROGS=hello fork preemption cooperative

all: $(PROGS)

$(PROGS):
	$(CC) $(CFLAGS) $@  $@.c
