.global _start

_start:
    mov X0, #1

    bl _print1
    bl _print2
    bl _print3
    bl _print4
    bl _print5
    bl _printnl
    bl _end

_print1:
    adr x1, one
    b _print
    ret

_print2:
    adr x1, two
    b _print
    ret

_print3:
    adr x1, three
    b _print
    ret

_print4:
    adr x1, four
    b _print
    ret

_print5:
    adr x1, five
    b _print
    ret

_printnl:
    adr x1, nl
    b _print
    ret

_print:
    mov X2, #2
    mov X16, #4
    svc #0x80
    ret

_end:
    mov X0, #0
    mov X16, #1
    svc #0x80

.align 4    
one: .ascii "1"

.align 4
two: .ascii "2"

.align 4
three: .ascii "3"

.align 4
four: .ascii "4"

.align 4
five: .ascii "5"

.align 4
nl: .ascii "\n"
