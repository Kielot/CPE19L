.model small
.stack
.data

p1 db 'Kiel Carandang$'

.code

start:

    mov ax, @data
    mov ds, ax

    mov ah, 00h
    mov al, 03h
    int 10h

    ; gray border (small box, rows 1-23, cols 21-57)
    mov ax, 0600h
    mov bh, 70h
    mov cx, 0115h
    mov dx, 1739h
    int 10h

    ; blue background inside the border
    mov ax, 0600h
    mov bh, 10h
    mov cx, 0217h
    mov dx, 1637h
    int 10h

    ; black shadow

    mov ah, 02h
    mov bh, 0
    mov dh, 7
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 12
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 7
    mov dl, 47
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 46
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 9
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 9
    mov dl, 43
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 40
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 11
    mov dl, 37
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 35
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 13
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 37
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 15
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 15
    mov dl, 40
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 43
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 1
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 17
    mov dl, 47
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 18
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 00h
    mov cx, 17
    int 10h

    ; green C and K stem, red K slants

    mov ah, 02h
    mov bh, 0
    mov dh, 6
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 17
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 7
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 7
    mov dl, 44
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 41
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 9
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 9
    mov dl, 38
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 35
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 11
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 11
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 32
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 13
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 13
    mov dl, 35
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 38
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 15
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 15
    mov dl, 41
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 2
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 44
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ch
    mov cx, 3
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 17
    mov dl, 30
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0ah
    mov cx, 17
    int 10h

    ; color the name area yellow on blue (14 cells)
    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 33
    int 10h

    mov ah, 09h
    mov al, 20h
    mov bl, 1eh
    mov cx, 14
    int 10h

    ; print the name string
    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 33
    int 10h

    mov ah, 09h
    mov dx, offset p1
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 24
    mov dl, 0
    int 10h

    mov ah, 4ch
    int 21h

end start