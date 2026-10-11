.model small
.stack
.data

m_title db 'PAPER - ROCK - SCISSORS$'
m_guide db 'P = Paper   R = Rock   S = Scissors$'
m_note  db 'Uppercase or lowercase letters are accepted$'
m_ask1  db 'Player 1, enter your choice (P/R/S): $'
m_ask2  db 'Player 2, enter your choice (P/R/S): $'
m_ok1   db 'Player 1 has chosen.$'
m_ok2   db 'Player 2 has chosen.$'
m_c1    db 'Player 1 chose : $'
m_c2    db 'Player 2 chose : $'
m_w1    db 'PLAYER 1 WINS!$'
m_w2    db 'PLAYER 2 WINS!$'
m_tie   db "IT'S A TIE!$"
m_same  db 'Both players chose the same.$'
m_again db 'Play again? (Y/N): $'
m_bye   db 'Thank you for playing! Press any key to exit.$'
n_p     db 'PAPER$'
n_r     db 'ROCK$'
n_s     db 'SCISSORS$'
r_p     db 'Paper covers Rock$'
r_r     db 'Rock breaks Scissors$'
r_s     db 'Scissors cut Paper$'
p1      db 0
p2      db 0

.code

start:

    mov ax, @data
    mov ds, ax

newgame:

    mov ah, 00h              ; video mode 03h (also clears the screen)
    mov al, 03h
    int 10h

    ; blue background, white text
    mov ax, 0600h
    mov bh, 1fh
    mov cx, 0000h
    mov dx, 184Fh
    int 10h

    ; red title banner
    mov ax, 0600h
    mov bh, 4fh
    mov cx, 0112h
    mov dx, 033Dh
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 2
    mov dl, 28
    int 10h
    mov ah, 09h
    mov dx, offset m_title
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 5
    mov dl, 22
    int 10h
    mov ah, 09h
    mov dx, offset m_guide
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 6
    mov dl, 18
    int 10h
    mov ah, 09h
    mov dx, offset m_note
    int 21h

    ; ---------- Player 1 ----------

    mov ah, 02h
    mov bh, 0
    mov dh, 8
    mov dl, 20
    int 10h
    mov ah, 09h
    mov dx, offset m_ask1
    int 21h

get1:
    mov ah, 07h              ; read key, NOT shown on the screen
    int 21h
    cmp al, 'P'
    je k1p
    cmp al, 'p'
    je k1p
    cmp al, 'R'
    je k1r
    cmp al, 'r'
    je k1r
    cmp al, 'S'
    je k1s
    cmp al, 's'
    je k1s
    jmp get1               ; any other key: ask again
k1p:
    mov bl, 'P'
    jmp got1
k1r:
    mov bl, 'R'
    jmp got1
k1s:
    mov bl, 'S'
got1:
    mov p1, bl             ; always stored as an UPPERCASE letter

    mov ah, 02h
    mov bh, 0
    mov dh, 9
    mov dl, 20
    int 10h
    mov ah, 09h
    mov dx, offset m_ok1
    int 21h

    ; ---------- Player 2 ----------

    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 20
    int 10h
    mov ah, 09h
    mov dx, offset m_ask2
    int 21h

get2:
    mov ah, 07h              ; read key, NOT shown on the screen
    int 21h
    cmp al, 'P'
    je k2p
    cmp al, 'p'
    je k2p
    cmp al, 'R'
    je k2r
    cmp al, 'r'
    je k2r
    cmp al, 'S'
    je k2s
    cmp al, 's'
    je k2s
    jmp get2               ; any other key: ask again
k2p:
    mov bl, 'P'
    jmp got2
k2r:
    mov bl, 'R'
    jmp got2
k2s:
    mov bl, 'S'
got2:
    mov p2, bl             ; always stored as an UPPERCASE letter

    mov ah, 02h
    mov bh, 0
    mov dh, 11
    mov dl, 20
    int 10h
    mov ah, 09h
    mov dx, offset m_ok2
    int 21h

    ; ---------- show both choices ----------

    mov ah, 02h
    mov bh, 0
    mov dh, 13
    mov dl, 20
    int 10h
    mov ah, 09h
    mov dx, offset m_c1
    int 21h

    mov al, p1
    call showname

    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 20
    int 10h
    mov ah, 09h
    mov dx, offset m_c2
    int 21h

    mov al, p2
    call showname

    ; ---------- who wins? ----------
    mov al, p1
    mov bl, p2
    cmp al, bl
    jne notie                ; (a long jump needs jmp)
    jmp tie
notie:
    cmp al, 'P'
    je a_paper
    cmp al, 'R'
    je a_rock
    cmp bl, 'P'              ; player 1 has scissors
    je win1
    jmp win2
a_paper:
    cmp bl, 'R'              ; paper covers rock
    je win1
    jmp win2
a_rock:
    cmp bl, 'S'              ; rock breaks scissors
    je win1
    jmp win2

win1:
    ; green result band
    mov ax, 0600h
    mov bh, 2fh
    mov cx, 1014h
    mov dx, 113Bh
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 22
    int 10h
    mov ah, 09h
    mov dx, offset m_w1
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 17
    mov dl, 22
    int 10h
    mov al, p1
    call reason
    jmp ask

win2:
    ; green result band
    mov ax, 0600h
    mov bh, 2fh
    mov cx, 1014h
    mov dx, 113Bh
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 22
    int 10h
    mov ah, 09h
    mov dx, offset m_w2
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 17
    mov dl, 22
    int 10h
    mov al, p2
    call reason
    jmp ask

tie:
    ; brown result band
    mov ax, 0600h
    mov bh, 6fh
    mov cx, 1014h
    mov dx, 113Bh
    int 10h

    mov ah, 02h
    mov bh, 0
    mov dh, 16
    mov dl, 22
    int 10h
    mov ah, 09h
    mov dx, offset m_tie
    int 21h

    mov ah, 02h
    mov bh, 0
    mov dh, 17
    mov dl, 22
    int 10h
    mov ah, 09h
    mov dx, offset m_same
    int 21h

    ; ---------- play again? ----------
ask:
    mov ah, 02h
    mov bh, 0
    mov dh, 19
    mov dl, 20
    int 10h
    mov ah, 09h
    mov dx, offset m_again
    int 21h

ask_key:
    mov ah, 07h
    int 21h
    cmp al, 'Y'
    je restart
    cmp al, 'y'
    je restart
    cmp al, 'N'
    je quit
    cmp al, 'n'
    je quit
    jmp ask_key              ; any other key: ask again

restart:
    jmp newgame

quit:
    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 20
    int 10h
    mov ah, 09h
    mov dx, offset m_bye
    int 21h

    mov ah, 07h              ; wait for a key
    int 21h

    mov ah, 00h              ; restore / clear screen
    mov al, 03h
    int 10h

    mov ah, 4ch
    int 21h

; showname : AL = P / R / S  -> prints PAPER / ROCK / SCISSORS
showname:
    cmp al, 'P'
    je sn_p
    cmp al, 'R'
    je sn_r
    mov dx, offset n_s
    jmp sn_print
sn_p:
    mov dx, offset n_p
    jmp sn_print
sn_r:
    mov dx, offset n_r
sn_print:
    mov ah, 09h
    int 21h
    ret

; reason : AL = winning letter -> prints why it wins
reason:
    cmp al, 'P'
    je rs_p
    cmp al, 'R'
    je rs_r
    mov dx, offset r_s
    jmp rs_print
rs_p:
    mov dx, offset r_p
    jmp rs_print
rs_r:
    mov dx, offset r_r
rs_print:
    mov ah, 09h
    int 21h
    ret

end start