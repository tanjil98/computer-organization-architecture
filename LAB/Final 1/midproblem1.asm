.MODEL SMALL
.STACK 100H
.DATA


MSG1 DB 'SHOHAN MOROL', '$'  
MSG2 DB 'AMERICAN INTERNATIONAL UNIVERSITY-BANGLADESH', '$'
MSG3 DB 'DHAKA','$'
MSG4 DB 'BANGLADESH','$'

.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX

LEA DX,MSG1

MOV AH,09H
INT 21H    

MOV AH, 2
MOV DL, 0DH
INT 21H

MOV DL,0AH
INT 21H

LEA DX,MSG2

MOV AH,09H
INT 21H

MOV AH, 2
MOV DL, 0DH
INT 21H

MOV DL,0AH
INT 21H  

LEA DX,MSG3

MOV AH,09H
INT 21H    

MOV AH, 2
MOV DL, 0DH
INT 21H

MOV DL,0AH
INT 21H 

LEA DX,MSG4

MOV AH,09H
INT 21H    

MOV AH, 2
MOV DL, 0DH
INT 21H

MOV DL,0AH
INT 21H 

MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN





