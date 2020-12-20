#include "runtime.h"

void _start() {
    if(fork()) { // parent 
        print("Parent\r\n");
    } else { // child
        print("child\r\n");
    }
    exit(0);
}