extern int syscall(int num, ...);

void write(int fd, char* s, int len) {
    syscall(0, fd, s, len);
}

void _start() {
    char *s = "Hello\n";

    write(1, s, 6);
    write(1, s, 6);
    while (1);
}

