// GAS, x86_64

.section .text
.globl g
.type g, @function
g:
    movl    $8, %eax
loop:
    testq   %rdi, %rdi
    je      done
    movl    %eax, (%rsi)
    addq    $4, %rsi
    incl    %eax
    
    // eax = eax modulo 10:
    cmpl    $10, %eax
    leal    -10(%eax), %edx
    cmovge  %edx, %eax

    decq    %rdi
    jmp     loop
done:
    ret
.section .note.GNU-stack, "", @progbits
