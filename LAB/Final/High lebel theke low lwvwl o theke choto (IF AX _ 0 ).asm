.model small
.stack 100h
.data
.code
proc main
  
     mov ah,1
     int 21h
     
     cmp al,0
     jl aminul 
     jmp exit
       
       
aminul: 
      
     neg al
     mov ah,2
     mov dl,al
     
     int 21h
     
     
exit:
   
    mov ah,4ch
    int 21h
endp
     
       
     
    

 

 