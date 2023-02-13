; NASM

section .text
global f:function
f:
    test    rdi, rdi
    je      done
    mov     dword [rsi], edx
    add     rsi, 4
    inc     edx

    ; edx = edx modulo 10:
    cmp     edx, 10
    lea     eax, [edx - 10]
    cmovge  edx, eax

    dec     rdi
    jmp     f
done:
    ret
