; NASM

section .text
global f:function
f:
    mov     eax, 5
loop:
    test    rdi, rdi
    je      done
    mov     dword [rsi], eax
    add     rsi, 4
    inc     eax
    dec     rdi
    jmp     loop
done:
    ret
