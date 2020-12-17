.global lock
lock:
    cpsid i    
    bx lr

.global unlock
unlock:
    cpsie i
    bx lr