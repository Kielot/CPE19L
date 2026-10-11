.model small
.stack
.data

s1 db 'University of Batangas Lipa City$'
s2 db 'Lipa City, Batangas$'
s3 db 'Computer Engineering Department$'
s4 db 'Student Record$'
l1 db 'Student Name$'
l2 db 'Student Number$'
l3 db 'Year Level$'
l4 db 'Gender$'
l5 db 'Birthdate$'
l6 db 'Age$'
co db ':$'
pg db 'Programmed by: Kiel Carandang$'

; buffer for AH=0Ah: max characters, count (filled by DOS), text
buf db 30,?,30 dup(?)

.code

start:

    mov ax, @data
    mov ds, ax

    mov ah, 00h              ; video mode 03h
    mov al, 03h
    int 10h

    ; black border (whole screen)
    mov ax, 0600h
    mov bh, 00h
    mov cx, 0000h
    mov dx, 184fh
    int 10h

    ; gray form area inside the border, black text
    mov ax, 0600h
    mov bh, 70h
    mov cx, 0101h
    mov dx, 174eh
    int 10h

    ; ---- title lines ----

    mov ah, 02h
    mov bh, 0
    mov dh, 2
    mov dl, 24
    int 10h

    mov ah, 09h
    mov dx, offset s1
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 3
    mov dl, 30
    int 10h

    mov ah, 09h
    mov dx, offset s2
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 5
    mov dl, 24
    int 10h

    mov ah, 09h
    mov dx, offset s3
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 6
    mov dl, 33
    int 10h

    mov ah, 09h
    mov dx, offset s4
    int 21h

    ; ---- labels and colons ----

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 20
    int 10h

    mov ah, 09h
    mov dx, offset l1
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 38
    int 10h

    mov ah, 09h
    mov dx, offset co
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 20
    int 10h

    mov ah, 09h
    mov dx, offset l2
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 38
    int 10h

    mov ah, 09h
    mov dx, offset co
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 20
    int 10h

    mov ah, 09h
    mov dx, offset l3
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 38
    int 10h

    mov ah, 09h
    mov dx, offset co
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 20
    int 10h

    mov ah, 09h
    mov dx, offset l4
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 38
    int 10h

    mov ah, 09h
    mov dx, offset co
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 20
    int 10h

    mov ah, 09h
    mov dx, offset l5
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 38
    int 10h

    mov ah, 09h
    mov dx, offset co
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 18
    mov dl, 20
    int 10h

    mov ah, 09h
    mov dx, offset l6
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 18
    mov dl, 38
    int 10h

    mov ah, 09h
    mov dx, offset co
    int 21h

    ; ---- programmer ----

    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 27
    int 10h

    mov ah, 09h
    mov dx, offset pg
    int 21h

    ; ---- ask for the information (typed text is echoed at col 40) ----

    ; Student Name
    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 40
    int 10h

    mov ah, 0ah
    mov dx, offset buf
    int 21h

    ; Student Number
    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 40
    int 10h

    mov ah, 0ah
    mov dx, offset buf
    int 21h

    ; Year Level
    mov ah, 02h
    mov bh, 0
    mov dh, 12
    mov dl, 40
    int 10h

    mov ah, 0ah
    mov dx, offset buf
    int 21h

    ; Gender
    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 40
    int 10h

    mov ah, 0ah
    mov dx, offset buf
    int 21h

    ; Birthdate
    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 40
    int 10h

    mov ah, 0ah
    mov dx, offset buf
    int 21h

    ; Age
    mov ah, 02h
    mov bh, 0
    mov dh, 18
    mov dl, 40
    int 10h

    mov ah, 0ah
    mov dx, offset buf
    int 21h

    ; park the cursor inside the form and wait for a key
    mov ah, 02h
    mov bh, 0
    mov dh, 22
    mov dl, 2
    int 10h

    mov ah, 07h
    int 21h

    mov ah, 00h              ; restore / clear screen
    mov al, 03h
    int 10h

    mov ah, 4ch
    int 21h

end start