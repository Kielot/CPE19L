.model small
.stack
.data

p1  db 'RESISTOR COLOR CODE CHART$'
p2  db 'SWATCH   COLOR      DIGIT     MULTIPLIER$'
p3  db '------------------------------------------$'
p4  db 'Black      0         x1            $'
p5  db 'Brown      1         x10           $'
p6  db 'Red        2         x100          $'
p7  db 'Orange     3         x1K           $'
p8  db 'Yellow     4         x10K          $'
p9  db 'Green      5         x100K         $'
p10 db 'Blue       6         x1M           $'
p11 db 'Violet     7         x10M          $'
p12 db 'Gray       8         x100M         $'
p13 db 'White      9         x1G           $'
p14 db '------------------------------------------$'
p15 db 'Bands 1-2 = digits   Band 3 = multiplier   $'
p16 db 'Example: Brown, Black, Red, Gold = 1K ohms $'

.code

start:

    mov ax, @data
    mov ds, ax

    mov ah, 00h
    mov al, 03h
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 1
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p1
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 3
    mov dl, 8
    int 10h

    mov ah, 09h
    mov dx, offset p2
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 4
    mov dl, 8
    int 10h

    mov ah, 09h
    mov dx, offset p3
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 5
    mov dl, 8
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 5
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p4
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 6
    mov dl, 8
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 06h
    mov cx, 6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 6
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p5
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 7
    mov dl, 8
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 04h
    mov cx, 6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 7
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p6
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 8
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p7
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 9
    mov dl, 8
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0eh
    mov cx, 6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 9
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p8
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 8
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 02h
    mov cx, 6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p9
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 11
    mov dl, 8
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 09h
    mov cx, 6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 11
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p10
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 8
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 05h
    mov cx, 6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p11
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 13
    mov dl, 8
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 08h
    mov cx, 6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 13
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p12
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 8
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0fh
    mov cx, 6
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 17
    int 10h

    mov ah, 09h
    mov dx, offset p13
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 15
    mov dl, 8
    int 10h

    mov ah, 09h
    mov dx, offset p14
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 17
    mov dl, 8
    int 10h

    mov ah, 09h
    mov dx, offset p15
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 19
    mov dl, 8
    int 10h

    mov ah, 09h
    mov dx, offset p16
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 0
    int 10h

    mov ah, 4ch
    int 21h

end start