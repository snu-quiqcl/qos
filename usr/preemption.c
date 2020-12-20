#include "runtime.h"

void _start() {
    if(fork()) { // parent 
        while(1)
            print("Parent\r\n");
    } else { // child
        while(1)
        print("child\r\n");
    }
    exit(0);
}