.model small
.stack
.data

p1 db 6 dup(' ', 70h), 6 dup(' ', 60h), 6 dup(' ', 70h), 6 dup(' ', 60h), 6 dup(' ', 70h), 6 dup(' ', 60h), 6 dup(' ', 70h), 6 dup(' ', 60h)
p2 db 6 dup(' ', 60h), 6 dup(' ', 70h), 6 dup(' ', 60h), 6 dup(' ', 70h), 6 dup(' ', 60h), 6 dup(' ', 70h), 6 dup(' ', 60h), 6 dup(' ', 70h)

.code

start:

    mov ax, @data
    mov ds, ax
    mov es, ax

    mov ah, 00h
    mov al, 03h
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 0
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 1
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 2
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 3
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 4
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 5
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 6
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 7
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 9
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 11
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 13
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 15
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 17
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 18
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 19
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 20
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 22
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 23
    mov dl, 16
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 48
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 24
    mov dl, 0
    int 10h

    mov ah, 4ch
    int 21h

end start