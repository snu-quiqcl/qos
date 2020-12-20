extern int syscall(int num, ...);

enum syscalls {
    SYS_WRITE = 0,
    SYS_READ,
    SYS_YIELD,
    SYS_FORK,
    SYS_EXEC,
    SYS_EXIT,
    SYS_AXI,
};

void write(int fd, char* s, int len) {
    syscall(SYS_WRITE, fd, s, len);
}

void yield() {
    syscall(SYS_YIELD);
}

void exit(int exit_code) {
    syscall(SYS_EXIT, exit_code);
    while(1);
}

int fork() {
    return syscall(SYS_FORK);
}

int axi(int port) {
    return syscall(SYS_AXI,port);
}

void print(char *s) {
    write(1, s, strlen(s));
}

void print_int(int num) {
    if(num >= 10) {
        print_int(num/10);
        print_int(num%10);
    } else if (num < 0) {
        char s = '-';
        write(1, &s, 1);
        print_int(-num);
    }
    else {
        char s = '0' + num;
        write(1, &s, 1);
    }
}


int strlen(char *s) {
    int len = 0;
    while(*s++) {
        len++;
    }
    return len;
}
