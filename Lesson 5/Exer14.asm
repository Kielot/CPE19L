.model small
.stack
.data

p1  db 0dah,0fh, 4 dup(0c4h,0fh), 0bfh,0fh
p2  db 0b3h,0fh, 4 dup(' ',0fh), 0b3h,0fh
p3  db 0c9h,0bh, 2 dup(0cdh,0bh), 0cfh,0bh, 4 dup(0cdh,0bh), 0cfh,0bh, 20 dup(0cdh,0bh), 0bbh,0bh
p4  db 0bah,0bh, 28 dup(' ',07h), 0bah,0bh
p5  db 0bah,0bh, 4 dup(' ',07h), 0dah,0ah, 18 dup(0c4h,0ah), 0bfh,0ah, 4 dup(' ',07h), 0bah,0bh
p6  db 0bah,0bh, 4 dup(' ',07h), 0b3h,0ah, ' ',2fh, 'V',2ch, 4 dup(' ',2fh), '1',2eh, '2',2eh, ':',2eh, '0',2eh, '0',2eh, 5 dup(' ',2fh), '#',20h, ' ',2fh, 0b3h,0ah, 4 dup(' ',07h), 0bah,0bh
p7  db 0bah,0bh, 4 dup(' ',07h), 0b3h,0ah, ' ',2fh, 'V',2ch, ' ',2fh, 'H',2fh, 'e',2fh, 'l',2fh, 'l',2fh, 'o',2fh, ' ',2fh, 'W',2fh, 'o',2fh, 'r',2fh, 'l',2fh, 'd',2fh, 2 dup(' ',2fh), '#',20h, ' ',2fh, 0b3h,0ah, 4 dup(' ',07h), 0bah,0bh
p8  db 0bah,0bh, 4 dup(' ',07h), 0b3h,0ah, ' ',2fh, 'V',2ch, 14 dup(' ',2fh), '#',20h, ' ',2fh, 0b3h,0ah, 4 dup(' ',07h), 0bah,0bh
p9  db 0bah,0bh, 4 dup(' ',07h), 0b3h,0ah, ' ',2fh, 'O',2eh, 14 dup(' ',2fh), '#',20h, ' ',2fh, 0b3h,0ah, 4 dup(' ',07h), 0bah,0bh
p10 db 0bah,0bh, 4 dup(' ',07h), 0c0h,0ah, 18 dup(0c4h,0ah), 0d9h,0ah, 4 dup(' ',07h), 0bah,0bh
p11 db 0bah,0bh, 4 dup(' ',07h), 0dah,0ch, 2 dup(0c4h,0ch), 0bfh,0ch, 4 dup(' ',07h), 0dah,0ch, 2 dup(0c4h,0ch), 0bfh,0ch, 4 dup(' ',07h), 0dah,0ch, 2 dup(0c4h,0ch), 0bfh,0ch, 4 dup(' ',07h), 0bah,0bh
p12 db 0bah,0bh, 4 dup(' ',07h), 0c0h,0ch, 2 dup(0c4h,0ch), 0d9h,0ch, 4 dup(' ',07h), 0c0h,0ch, 2 dup(0c4h,0ch), 0d9h,0ch, 4 dup(' ',07h), 0c0h,0ch, 2 dup(0c4h,0ch), 0d9h,0ch, 4 dup(' ',07h), 0bah,0bh
p13 db 0bah,0bh, 4 dup(' ',07h), 0dah,0eh, 2 dup(0c4h,0eh), 0bfh,0eh, 4 dup(' ',07h), 0dah,0eh, 2 dup(0c4h,0eh), 0bfh,0eh, 4 dup(' ',07h), 0dah,0eh, 2 dup(0c4h,0eh), 0bfh,0eh, 4 dup(' ',07h), 0bah,0bh
p14 db 0bah,0bh, 4 dup(' ',07h), 0c0h,0eh, 2 dup(0c4h,0eh), 0d9h,0eh, 4 dup(' ',07h), 0c0h,0eh, 2 dup(0c4h,0eh), 0d9h,0eh, 4 dup(' ',07h), 0c0h,0eh, 2 dup(0c4h,0eh), 0d9h,0eh, 4 dup(' ',07h), 0bah,0bh
p15 db 0bah,0bh, 4 dup(' ',07h), 0dah,0dh, 2 dup(0c4h,0dh), 0bfh,0dh, 4 dup(' ',07h), 0dah,0dh, 2 dup(0c4h,0dh), 0bfh,0dh, 4 dup(' ',07h), 0dah,0dh, 2 dup(0c4h,0dh), 0bfh,0dh, 4 dup(' ',07h), 0bah,0bh
p16 db 0bah,0bh, 4 dup(' ',07h), 0c0h,0dh, 2 dup(0c4h,0dh), 0d9h,0dh, 4 dup(' ',07h), 0c0h,0dh, 2 dup(0c4h,0dh), 0d9h,0dh, 4 dup(' ',07h), 0c0h,0dh, 2 dup(0c4h,0dh), 0d9h,0dh, 4 dup(' ',07h), 0bah,0bh
p17 db 0c8h,0bh, 28 dup(0cdh,0bh), 0bch,0bh

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
    mov dl, 28
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 6
    mov bp, offset p1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 1
    mov dl, 28
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 6
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 2
    mov dl, 28
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 6
    mov bp, offset p2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 3
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 4
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p4
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 5
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p5
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 6
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 7
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p7
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p8
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 9
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p8
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p9
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 11
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p10
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p4
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 13
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p4
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 15
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p12
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p4
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 17
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p13
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 18
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p14
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 19
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p4
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 20
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p15
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p16
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 22
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p4
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 23
    mov dl, 25
    int 10h

    mov ah, 13h
    mov al, 03h
    mov bh, 0
    mov cx, 30
    mov bp, offset p17
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 24
    mov dl, 0
    int 10h

    mov ah, 4ch
    int 21h

end start