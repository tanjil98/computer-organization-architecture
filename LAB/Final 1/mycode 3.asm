
.MODEL SMALL
.STACK 100H
.DATA



gg DB 'ENTER A LOWER CASE LETTER $' 

ez DB 0DH,0AH, 'IN UPPER CASE ITS IS: '
CHAR DB ?,'$'

.CODE

MAIN PROC
    MOV AX, @DATA      
    LEA DX,gg        
    MOV AH,9            
    INT 21H             
   
   
    MOV AH,1            
    INT 21H             
    SUB AL, 20H         
    MOV CHAR, AL       
    
   
    LEA DX,ez        
    MOV AH,9            
    INT 21H             
    
   
    MOV AH,4CH
    INT 21H            
    
MAIN ENDP
    END MAIN