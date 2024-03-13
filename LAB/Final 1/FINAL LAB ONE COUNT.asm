.MODEL SMALL
.STACK 100H
.DATA

gg DB "ENTER A STRING:$"

eg DB "NUMBER OF ONE:$"       

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,0H
    
    MOV AH,9H
    LEA DX,gg
    INT 21H
    
    TAKE_INPUT:
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    PUSH BX
    INC CX
    
    CMP BL,0DH
    JNE TAKE_INPUT
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV DL,0DH
    INT 21H
    
    MOV AH,9 
    LEA DX,eg
    INT 21H
    
    JE COUNT
    
    COUNT:
    POP BX
    CMP BL,31H
    JE INCREMENT
    LOOP COUNT
    JMP PRINT 
    
    INCREMENT:
    INC AX
    LOOP COUNT
    JMP PRINT
    
    PRINT:
    MOV AH,02
    ADD AL,12
    MOV DL,AL
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
     MAIN ENDP
END MAIN