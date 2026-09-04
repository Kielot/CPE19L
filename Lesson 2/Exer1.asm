.model small
.stack
.code

start:

    ; Function call to display a character
    mov ah, 02h 

    ; Print First Name
    mov dl, 4bh ; K
    int 21h
    mov dl, 69h ; i
    int 21h
    mov dl, 65h ; e
    int 21h
    mov dl, 6ch ; l
    int 21h

    mov dl, 20h ; space
    int 21h 

    mov dl, 41h ; A
    int 21h
    mov dl, 6ch ; l
    int 21h 
    mov dl, 62h ; b
    int 21h
    mov dl, 72h ; r
    int 21h
    mov dl, 65h ; e
    int 21h
    mov dl, 74h ; t
    int 21h
    mov dl, 63h ; c
    int 21h
    mov dl, 68h ; h
    int 21h
    
    ; Carriage Return/Line Feed
    mov dl, 0dh ; Returns the cursor to the start of the line without moving down.
    int 21h
    mov dl, 0ah ; Moves the cursor down one line without moving to the start.
    int 21h

    ; Print Middle Initial
    mov dl, 4dh ; M
    int 21h
    mov dl, 2eh ; .
    int 21h

    ; Carriage Return/Line Feed
    mov dl, 0dh ; Returns the cursor to the start of the line without moving down.
    int 21h
    mov dl, 0ah ; Moves the cursor down one line without moving to the start.
    int 21h

    ; Print Last Name
    mov dl, 43h ; C
    int 21h
    mov dl, 61h ; a
    int 21h 
    mov dl, 72h ; r
    int 21h
    mov dl, 61h ; a
    int 21h
    mov dl, 6eh ; n
    int 21h
    mov dl, 64h ; d
    int 21h
    mov dl, 61h ; a
    int 21h
    mov dl, 6eh ; n
    int 21h
    mov dl, 67h ; g
    int 21h

    mov ah, 4ch
    int 21h

end start
