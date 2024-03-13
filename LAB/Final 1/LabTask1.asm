.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV BL, 0
    
    LOOPA:
    MOV AH,2
    MOV DL, BL
    INT 21H
    
    INC BL
    CMP BL, 255 
    JNZ LOOPA
    JG EXIT
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN

    