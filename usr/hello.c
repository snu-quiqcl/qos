#include "runtime.h"

#define LED0 1
#define LED1 2

void _start() {
    volatile int* a0=axi(0);
    volatile int* a1=axi(1);
    *a0=3;
    *a0=2;
    int delay = 0x800;
    int time = delay;
    int count=0;
    if(fork()){
	    for (int j=0; j<1000; j++){
            for(int i=0; i<1000; i++) {
                *a0 = (j%4) | time;
                time += delay;
                *a0 = (j%4) | time;
                time += delay;
                *a0 = (j%4) | time;
                time += delay;
                *a0 = (j%4) | time;
                time += delay;
            sleep(500);
            count++;
            if(a0[1]) {
                    print("pFull");
                    yield();
                }
            }
        }
    }
    else{
        print("from child\r\n");
        volatile int *a1=axi(1);
        *a1=3;
        *a1=2;	
	    for(int j=0; j<1000; j++){
            for(int i=0; i<1000; i++) {
                *a1 = (j%4) | time;
                time += delay;
                *a1 = (j%4) | time;
                time += delay;
                *a1 = (j%4) | time;
                time += delay;
                *a1 = (j%4) | time;
                time += delay;
		sleep(500);
                if(a1[1]) {
                    print("cFull");
                    yield();
                }

	    }
            }
    }  
    exit(0);
}
