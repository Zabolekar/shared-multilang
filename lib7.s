// GAS, x86_64

.section .text
.globl g
.type g, @function
g:
    testq   %rdi, %rdi
    je      done
    movl    %edx, (%rsi)
    addq    $4, %rsi
    incl    %edx
    
    // edx = edx modulo 10:
    cmpl    $10, %edx
    leal    -10(%edx), %eax
    cmovge  %eax, %edx

    decq    %rdi
    jmp     g
done:
    ret
.section .note.GNU-stack, "", @progbits
