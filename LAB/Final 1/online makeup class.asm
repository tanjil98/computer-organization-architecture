.MODEL SMALL
.STACK 100H

.DATA
MSG1 DB 'Enter the first decimal number: $'
MSG2 DB 'Enter the second decimal number: $'
MSG3 DB 'The product in hexadecimal is: $'
NUM1 DW ?
NUM2 DW ?
PROD DW ?

.CODE
MAIN PROC
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H

   
    MOV AH, 1
    INT 21H
    SUB AL, 30H 
    MOV NUM1, AX

   
    MOV AH, 9
    LEA DX, MSG2
    INT 21H

    
    MOV AH, 1
    INT 21H
    SUB AL, 30H 
    MOV NUM2, AX

    
    MOV AX, NUM1
    MUL NUM2
    MOV PROD, AX

  
    MOV AH, 9
    LEA DX, MSG3
    INT 21H

    
    MOV AX, PROD
    MOV CX, 4 
HEX_LOOP:
    MOV DX, 0 
    MOV BX, 10H 
    DIV BX 
    CMP DL, 10H
    JAE HEX_LETTER
    ADD DL, 30H 
    JMP HEX_PRINT
HEX_LETTER:
    ADD DL, 37H
HEX_PRINT:
    PUSH DX 
    DEC CX 
    JNZ HEX_LOOP
    
    MOV AH, 2
HEX_PRINT_LOOP:
    POP DX ;
    MOV DL, BYTE PTR [DX] ; 
    INT 21H
    LOOP HEX_PRINT_LOOP

    MOV AH, 4CH ;
    INT 21H
MAIN ENDP
END MAIN
