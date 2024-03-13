.MODEL SMALL
.STACK 100H
.DATA

gg1 DB "!$"
gg2 DB 0ah,0dh, "THE SUM OF $"   
gg3 DB " AND $"
gg4 DB " IS $" 
gg5 DB "SUM IS GREATER THEN 10$"
SUM DB ?

.CODE
MAIN PROC
    MOV AX,@DATA 
    MOV DS,AX
    
    MOV AH,9
    LEA DX, gg1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL 
    
    MOV AH,1
    INT 21H
    MOV CH,AL
   
    MOV SUM,BH
    ADD SUM,CH
    SUB SUM,30H
    INT 21H
    
    CMP SUM,39H
    JL ez
    JG wp
     
    ez:
    
    MOV AH,9
    LEA DX, gg2
    INT 21H
    
    MOV AH,2
    MOV DL, BH
    INT 21H
    
    MOV AH,9
    LEA DX, gg3
    INT 21H
    
    MOV AH,2
    MOV DL, CH
    INT 21H
    
    MOV AH,9
    LEA DX, gg4
    INT 21H
    
    
    MOV AH,2
    MOV DL, SUM
    INT 21H
    JMP EXIT 
    
    wp:
    MOV AH,9
    LEA DX, gg5
    INT 21H
    JMP EXIT
     
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
