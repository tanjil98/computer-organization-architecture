.model small
.stack 100h
.data
.code
proc main
  
    
    mov ah,1
    int 21h 
    
    cmp al,"2"
    je sakib
    
    cmp al,"4"
    je sakib  
    
    
   
    
    cmp al,"1"
    je sakib1
    
    cmp al,"3"
    je sakib1  
    
     
     
    jmp exit 
    
    


sakib:
    
    
    mov ah,2
    mov dl,"e"
    int 21h
     
    jmp exit 

sakib1:
    
    
    mov ah,2
    mov dl,"o"
    int 21h
         

    
    exit:
   
    mov ah,4ch
    int 21h
endp
     
       
     
    

 

 