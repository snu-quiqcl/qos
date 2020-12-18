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
    volatile int* a0=axi(0);
    volatile int* a1=axi(1);
    print_int(a0);
    print("\n");
    print_int(a1);
    print("\n");
    *a0=3;
    *a1=3;
    *a0=2;
    *a1=2;
    int delay = 0x200000;
    int time = delay;
    while (1) {
    	*a0 = LED0 | time;
        time += delay;
        *a0 = LED1 | time;
        time += delay;
        *a0 = LED0 | LED1 | time;
        time += delay;
        *a0 = time;
        time += delay;
    }


    /*if(fork()) {
	
    }
	    
/*

	    axi(0x10000002,0);
            axi(0x20000003,0);
            axi(0x30000001,0);
            axi(0x40000002,0);
       
            //axi(0,0);
        } 
/*    } else {
	
        while (1) {
           // write(1, msg2, 6);
	    
	    for(int i=1; i <33; i++){
		    /*
                axi(1+4*i*0x200000,0);
                axi(2+(4*i+1)*0x200000,0);
                axi(1+(4*i+2)*0x200000,0);
                axi(2+(4*i+3)*0x200000,0);
            }
	    */
	    /*
	    

	    axi(0x10000002,1);
	    axi(0x20000003,1);
	    axi(0x30000001,1);
	    axi(0x40000002,1);
	    
	    //axi(0,1);
        }
    }  */
    exit(0);
}
