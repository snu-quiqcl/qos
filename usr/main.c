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

#define LED0 1
#define LED1 2

void _start() {
    volatile int *a0 = axi(0);	
 //   volatile int *a1 = axi(1);
    int delay = 0x200000;
    int time = delay;
    *a0=3;
    *a0=2;
    print_int(a0[1]);

    if(fork()){
        for(int i=0; i<10; i++) {
            *a0 = LED0 | time;
            time += delay;
            *a0 = LED1 | time;
            time += delay;
            *a0 = LED0 | LED1 | time;
            time += delay;

            *a0 = time;
            time += delay;
        }
    }
    else{
        print("from child\r\n");
        volatile int *a1=axi(1);
        *a1=3;
        *a1=2;	
            for(int i=0; i<10; i++) {
                *a1 = LED0 | time;
                time += delay;
                *a1 = LED1 | time;
                time += delay;
                *a1 = LED0 | LED1 | time;
                time += delay;
                *a1 = time;
                time += delay;
                if(a1[1]) {
                    print("Full");
                    while(1);
                }


            }
    } 
    exit(0);
}
