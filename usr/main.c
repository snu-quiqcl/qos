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

char *msg = "parent\n";
char *msg2 = "child\n";
int cnt=0;


void _start() {
volatile int* a0=axi(0);
volatile int* a1=axi(1);
*a0=3;
*a1=3;
*a0=2;
*a1=2;
*a0=0x20000001;
*a1=0x20000001;
//*a0=0x40000002;
//*a1=0x40000002;

/*
    axi(3,0);
    axi(3,1);
    axi(0,0);
    axi(0,1);
    axi(2,0);
    axi(2,1);
  */  
    if(fork()) {
	
        while (1) {
        //    write(1,msg, 7); 
           
	    for(int i=1; i <33; i++){
		    /*
    		axi(1+4*i*0x200000,1);
    		axi(2+(4*i+1)*0x200000,1);
    		axi(1+(4*i+2)*0x200000,1);
    		axi(2+(4*i+3)*0x200000,1);
		*/
	    }
	    
/*

	    axi(0x10000002,0);
            axi(0x20000003,0);
            axi(0x30000001,0);
            axi(0x40000002,0);
 */        
            //axi(0,0);
        } 
    } else {
	
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
	    */
	    //axi(0,1);
        }
    }
    exit(0);
}
