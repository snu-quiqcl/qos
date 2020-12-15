extern int syscall(int num, ...);

enum syscalls {
    SYS_WRITE = 0,
    SYS_READ,
    SYS_YIELD,
    SYS_FORK,
    SYS_EXEC,
};

void write(int fd, char* s, int len) {
    syscall(SYS_WRITE, fd, s, len);
}

void _start() {
    char *s = "Hello\n";

    write(1, s, 6);
    write(1, s, 6);
    while (1);
}

