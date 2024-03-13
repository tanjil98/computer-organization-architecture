.model small
.stack 100h
.DATA
msg1 DB 'Enter first number: $'
msg2 DB 'Enter second number: $'
msg3 DB 0DH, 0AH, 'Sum: $'
msg4 DB 0DH, 0AH, 'Product: $'

MOV AX, @DATA
MOV DS, AX

MOV AH, 09H
lea DX, msg1
INT 21H

MOV AH, 01H
INT 21H

SUB AL, 30H
MOV bl, AL

MOV AH, 09H
lea DX, msg2
INT 21H

MOV AH, 01H
INT 21H

SUB AL, 30H
mov cl, AL

cmp bl, cl 
jg  mid
jl mid

mid:
cmp bl,5
jg sum
jle multiply

MOV AH, 09H
lea DX, msg3
INT 21H

ADD BL, 30H
MOV DL, BL
MOV AH, 02H
INT 21H

sum:
add bl,cl
int 21h

mov ah,2
mov dl,bl
int 21h

multiply:
MUL bl,cl
INT 21H
JMP exit

MOV AH, 2
mov dl,bl
INT 21H 
JMP exit

exit:
MOV AH, 4CH
INT 21H