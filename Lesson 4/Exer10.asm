.model small
.stack
.data

p1  db '========================================', 0dh, 0ah, '$'
p2  db '        MY FAVORITE TV SHOWS            ', 0dh, 0ah, '$'
p3  db '========================================', 0dh, 0ah, '$'
p4  db ' 1. Victor Magtanggol ........ GMA      ', 0dh, 0ah, '$'
p5  db ' 2. Batang Quiapo ............ ABS-CBN  ', 0dh, 0ah, '$'
p6  db ' 3. Encantadia ............... GMA      ', 0dh, 0ah, '$'
p7  db ' 4. The Master Cutter ........ GMA      ', 0dh, 0ah, '$'
p8  db ' 5. Peaky Blinders ........... Netflix  ', 0dh, 0ah, '$'
p9  db ' 6. Game of Thrones .......... HBO      ', 0dh, 0ah, '$'
p10 db ' 7. Spongebob ................ Nick     ', 0dh, 0ah, '$'
p11 db ' 8. Avatar: Last Airbender ... Nick     ', 0dh, 0ah, '$'
p12 db '========================================', 0dh, 0ah, '$'

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

    mov dx, offset p4
    int 21h

    mov dx, offset p5
    int 21h

    mov dx, offset p6
    int 21h

    mov dx, offset p7
    int 21h

    mov dx, offset p8
    int 21h

    mov dx, offset p9
    int 21h

    mov dx, offset p10
    int 21h

    mov dx, offset p11
    int 21h

    mov dx, offset p12
    int 21h

    mov ah, 4ch
    int 21h

end start