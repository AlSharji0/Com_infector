.model tiny
.code

FNAME EQU 9EH
ORG 100H
COM_FILE DB '*.COM', 0

START:
    mov ah, 4EH
    mov dx, offset COM_FILE
    int 21h

SEARCH_LP:
    jc DONE
    mov ax, 3D01H
    mov dx, FNAME
    int 21h

    xchg ax, bx
    mov ah, 40H
    mov cl, 44
    mov dx, 100H
    int 21h

    mov ah, 3EH
    int 21h

    mov ah, 4FH
    int 21h
    jmp SEARCH_LP

DONE:
    ret

END START
