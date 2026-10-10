.model small
.stack
.data

p1 db 'ABS-CBN$'
p2 db 'THE KAPAMILYA NETWORK$'
p3 db 'CHANNEL 2 - SINCE 1953$'

.code

start:

    mov ax, @data
    mov ds, ax

    mov ah, 00h
    mov al, 03h
    int 10h

    ; ===== BARS WITH A DARK/NORMAL COLOUR: AH=06h fills (colour = background) =====

    ; top gray  rows 0-15, cols 0-10
    mov ax, 0600h
    mov bh, 70h
    mov cx, 0000h
    mov dx, 0F0Ah
    int 10h

    ; top cyan  rows 0-15, cols 22-32
    mov ax, 0600h
    mov bh, 30h
    mov cx, 0016h
    mov dx, 0F20h
    int 10h

    ; top green  rows 0-15, cols 33-43
    mov ax, 0600h
    mov bh, 20h
    mov cx, 0021h
    mov dx, 0F2Bh
    int 10h

    ; top magenta  rows 0-15, cols 44-54
    mov ax, 0600h
    mov bh, 5Fh
    mov cx, 002Ch
    mov dx, 0F36h
    int 10h

    ; top red  rows 0-15, cols 55-65
    mov ax, 0600h
    mov bh, 4Fh
    mov cx, 0037h
    mov dx, 0F41h
    int 10h

    ; top blue  rows 0-15, cols 66-79
    mov ax, 0600h
    mov bh, 1Fh
    mov cx, 0042h
    mov dx, 0F4Fh
    int 10h

    ; middle blue  rows 16-18, cols 0-10
    mov ax, 0600h
    mov bh, 10h
    mov cx, 1000h
    mov dx, 120Ah
    int 10h

    ; middle magenta  rows 16-18, cols 22-32
    mov ax, 0600h
    mov bh, 50h
    mov cx, 1016h
    mov dx, 1220h
    int 10h

    ; middle cyan  rows 16-18, cols 44-54
    mov ax, 0600h
    mov bh, 30h
    mov cx, 102Ch
    mov dx, 1236h
    int 10h

    ; middle gray  rows 16-18, cols 66-79
    mov ax, 0600h
    mov bh, 70h
    mov cx, 1042h
    mov dx, 124Fh
    int 10h

    ; bottom blue  rows 19-24, cols 0-13
    mov ax, 0600h
    mov bh, 10h
    mov cx, 1300h
    mov dx, 180Dh
    int 10h

    ; bottom magenta  rows 19-24, cols 28-41
    mov ax, 0600h
    mov bh, 50h
    mov cx, 131Ch
    mov dx, 1829h
    int 10h

    ; bottom black area, white text (network info)  rows 19-24, cols 42-65
    mov ax, 0600h
    mov bh, 0Fh
    mov cx, 132Ah
    mov dx, 1841h
    int 10h

    ; ===== BRIGHT COLOURS (yellow, white, dark gray): block character 0DBh =====
    ; the colour is the FOREGROUND, so it shows correctly without blink issues

    ; yellow bar: rows 0-15, cols 11-21

    mov ah, 02h
    mov bh, 0
    mov dh, 0
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 1
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 2
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 3
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 4
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 5
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 6
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 7
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 9
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 11
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 13
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 15
    mov dl, 11
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Eh
    mov cx, 11
    int 10h

    ; white section: rows 19-24, cols 14-27

    mov ah, 02h
    mov bh, 0
    mov dh, 19
    mov dl, 14
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Fh
    mov cx, 14
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 20
    mov dl, 14
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Fh
    mov cx, 14
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 14
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Fh
    mov cx, 14
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 22
    mov dl, 14
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Fh
    mov cx, 14
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 23
    mov dl, 14
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Fh
    mov cx, 14
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 24
    mov dl, 14
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 0Fh
    mov cx, 14
    int 10h

    ; dark gray pluge: rows 19-24, cols 66-70

    mov ah, 02h
    mov bh, 0
    mov dh, 19
    mov dl, 66
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 08h
    mov cx, 5
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 20
    mov dl, 66
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 08h
    mov cx, 5
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 66
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 08h
    mov cx, 5
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 22
    mov dl, 66
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 08h
    mov cx, 5
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 23
    mov dl, 66
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 08h
    mov cx, 5
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 24
    mov dl, 66
    int 10h

    mov ah, 09h
    mov al, 0dbh
    mov bl, 08h
    mov cx, 5
    int 10h

    ; ===== NETWORK INFORMATION (black area) =====

    mov ah, 02h
    mov bh, 0
    mov dh, 20
    mov dl, 50
    int 10h

    mov ah, 09h
    mov dx, offset p1
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 43
    int 10h

    mov ah, 09h
    mov dx, offset p2
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 22
    mov dl, 43
    int 10h

    mov ah, 09h
    mov dx, offset p3
    int 21h

    ; cursor right after the last text line
    mov ah, 02h
    mov bh, 0
    mov dh, 22
    mov dl, 65
    int 10h

    mov ah, 4ch
    int 21h

end start