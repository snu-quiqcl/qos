#include "runtime.h"

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
