.global _start // give the starting address to the linker
.align 2 // now aligned on 2 byte boundary

_start: // create entry point label
    mov X0, #1 // load stdout
    adr X1, hello // load the string to print
    mov X2, #13 // load length of the string to print
    mov X16, #4 // write system call
    svc #0x80 // call kernel

    // clean up clean up time to clean up
    mov X0, #0 // return 0
    mov X16, #1 // terminate program
    svc #0x80 // hangup the kernel

hello: .ascii "Hello\n"
