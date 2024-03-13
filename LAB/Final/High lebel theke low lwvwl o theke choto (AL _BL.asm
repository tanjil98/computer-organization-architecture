.model small
.stack 100h
.data
.code
proc main
  
     mov al,3
     mov bl,2 
     
     cmp al,bl
     jge aminul
     
     mov ah,2
     mov dl,bl
     int 21h
 
     jmp exit
       
       
aminul: 
      
   
     mov ah,2
     mov dl,al
     
     int 21h
     
     
exit:
   
    mov ah,4ch
    int 21h
endp
     
       
     
    

 

 