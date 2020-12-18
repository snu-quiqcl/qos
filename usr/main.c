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

int axi(int tstamp, int channel, int port) {
    syscall(SYS_AXI, tstamp, channel, port);
}

char *msg = "parent\n";
char *msg2 = "child\n";
int cnt=0;

void _start() {
    if(fork()) {
	
        while (1) {
        //    write(1,msg, 7);
	    axi(0,2,0);
	    axi(0,0x200002,0);
	    axi(0,0x40000001,0);
	    
	    
	    
        } 
    } else {
	
        while (1) {
           // write(1, msg2, 6);
	    axi(0,2,1);
	    axi(0,0x200002,1);
	    axi(0,0x40000001,1);
	    
	    
	    
        }
    }
    exit(0);
}
