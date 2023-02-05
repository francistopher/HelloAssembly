.global _start
.align 2

_start:
    mov X0, #1
    adr X1, num1
    mov X2, #2
    mov X16, #4
    svc #0x80
    bl _end

_end:
    mov X0, #0
    mov X16, #1
    svc #0x80

num1: .ascii "1\n"
