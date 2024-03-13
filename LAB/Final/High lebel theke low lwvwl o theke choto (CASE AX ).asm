.model small
.stack 100h
.data
.code
proc main
  
    mov ah,2
    cmp ah,0
    jg print1
    jl print2 
    je print3
    
    
print1:

    mov ah,2
    mov dl,1
    int 21h
    jmp exit   
   
print2:

    mov ah,2
    mov dl,-1 
    int 21h
    jmp exit 
       
print3:

    mov ah,2
    mov dl,0
    int 21h      
   
    
     
     
exit:
   
    mov ah,4ch
    int 21h
endp
     
       
     
    

 

 