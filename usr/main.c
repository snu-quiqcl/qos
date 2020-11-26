void write(int num, char* s, int len) {
    asm("svc #0");
}

void _start() {
    char *s = "Hello\n";

    write(0, s, 6);
    write(0, s, 6);
    while (1);
}

