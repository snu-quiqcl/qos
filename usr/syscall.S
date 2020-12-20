.section .text
.global syscall
syscall:
    svc #0
    bx lr
.global sleep
sleep:
	mov r1, #0
again:
	add r1, #1
	cmp r0, r1
	bne again
	bx lr
