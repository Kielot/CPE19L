.model small
.stack
.data

p1 db 'Juan dela Cruz', 0dh, 0ah, '$'
p2 db 'Computer Engineering', 0dh, 0ah, '$'
p3 db 0dh, 0ah, '$'

.code

start:

    mov ax, @data
    mov ds, ax

    mov ah, 09h

    mov dx, offset p1
    int 21h

    mov dx, offset p2
    int 21h

    mov dx, offset p3
    int 21h

    mov ah, 4ch
    int 21h

end start