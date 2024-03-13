INCLUDE 'EMU8086.INC'
.MODEL SMALL
 .STACK 100H
 .DATA
 
.CODE

DGT  DB  'Enter the digit : $'
    RES     DB  'The entered digit is : $'
 

   MAIN PROC
     MOV AX, @DATA              
     MOV DS, AX
 
     LEA DX, DGT             
     MOV AH, 9
     INT 21H
 
     MOV AH, 1                  
     INT 21H
 
     MOV BL, AL                 
 
     MOV AH, 2                  
     MOV DL, 0DH
     INT 21H
 
     MOV DL, 0AH                
     INT 21H
 
     LEA DX, RES                
     MOV AH, 9
     INT 21H
 
     CMP BL, 30H                
 
     JL @NEGATIVE                                  
     JG @POSITIVE               
 
     @NEGATIVE:                 
       MOV DL, 'N'
       JMP @DISPLAY             

           

           
 
     @POSITIVE:                 
       MOV DL, 'P'
       JMP @DISPLAY             
 
     @DISPLAY:                  
       MOV AH, 2                
       INT 21H
 
     MOV AH, 4CH                
     INT 21H
   MAIN ENDP
 END MAIN

 