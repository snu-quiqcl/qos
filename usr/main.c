extern int syscall(int num, ...);

enum syscalls {
    SYS_WRITE = 0,
    SYS_READ,
    SYS_YIELD,
    SYS_FORK,
    SYS_EXEC,
    SYS_EXIT,
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

void _start() {
    if(fork()) {
        while(1) {
            write(1, "a\n", 2);
            
        }
    }
    while(1) {

    }   
    exit(0);
}