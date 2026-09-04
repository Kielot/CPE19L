.model small
.stack
.code

start:

    ; Function call to display a character
    mov ah, 02h

    ; Print Top Border
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Print Blank Line
    mov dl, 7ch
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 7ch
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Print Blank Line
    mov dl, 7ch
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 7ch
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Print Name
    mov dl, 7ch
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 4bh
    int 21h
    mov dl, 49h
    int 21h
    mov dl, 45h
    int 21h
    mov dl, 4ch
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 7ch
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Print Blank Line
    mov dl, 7ch
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 7ch
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Print Surname
    mov dl, 7ch
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 43h
    int 21h
    mov dl, 41h
    int 21h
    mov dl, 52h
    int 21h
    mov dl, 41h
    int 21h
    mov dl, 4eh
    int 21h
    mov dl, 44h
    int 21h
    mov dl, 41h
    int 21h
    mov dl, 4eh
    int 21h
    mov dl, 47h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 7ch
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Print Blank Line
    mov dl, 7ch
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 7ch
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Print Blank Line
    mov dl, 7ch
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 20h
    int 21h
    mov dl, 7ch
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Print Bottom Border
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Terminate program and return to DOS
    mov ah, 4ch
    int 21h

end start