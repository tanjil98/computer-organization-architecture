.MODEL SMALL
.STACK 100H
.DATA

newline DB 0ah, 0dh, "$"
msg1 DB "Enter Character : $"
msg2 DB "Thank You$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, msg1
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BH, AL
    INT 21H
    
    MOV AH, 9
    LEA DX, newline
    INT 21H
    
    SUB BH, 20H
    MOV AH, 2
    MOV DL, BH
    INT 21H
    ADD BH, 20H
    
    MOV CX, 50
    
    PRINT:
    MOV AH, 2
    MOV DL, BH
    INT 21H
    
    DEC CX
    CMP CX, 1
    JG PRINT
    JE EXIT
    
    EXIT:
    MOV AH, 9
    LEA DX, newline
    INT 21H
    
    MOV AH, 9
    LEA DX, newline
    INT 21H
    
    MOV AH, 9
    LEA DX, msg2
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    