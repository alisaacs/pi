.section .init
.globl _start
_start:

ldr r0,=0x3F200000

mov r1,#1
lsl r1,#21
str r1,[r0,#0x10]

mov r1,#1
lsl r1,#15

flash$:
str r1,[r0,#0x20]
mov r2,#0x3F000
wait1$:
sub r2,#1
cmp r2,#0
bne wait1$
str r1,[r0,#0x2C]
mov r2,#0x3F000
wait2$:
sub r2,#1
cmp r2,#0
bne wait2$
b flash$

loop$:
b loop$