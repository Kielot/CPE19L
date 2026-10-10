.model small
.stack
.data


p1  db '----------------------------------------', 0dh, 0ah, '$'
p2  db '|                                      |', 0dh, 0ah, '$'
p3  db '|     /\       ALBRETCH CARANDANG      |', 0dh, 0ah, '$'
p4  db '|    /  \      Mobile App Developer    |', 0dh, 0ah, '$'
p5  db '|   /____\     React Native | Expo     |', 0dh, 0ah, '$'
p6  db '|                                      |', 0dh, 0ah, '$'
p7  db '|  ----------------------------------  |', 0dh, 0ah, '$'
p8  db '|  Phone : 09XX-XXX-XXXX               |', 0dh, 0ah, '$'
p9  db '|  Email : 2320528@ub.edu.ph           |', 0dh, 0ah, '$'
p10 db '|                                      |', 0dh, 0ah, '$'
p11 db '----------------------------------------', 0dh, 0ah, '$'


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


    mov ah, 4ch
    int 21h


end start
