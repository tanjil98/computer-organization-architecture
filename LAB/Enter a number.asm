.model small
.stack 100h
.data

cherry db "Enter a number...$"
   
.code
main proc
    
    mov ax,@data                   
    mov ds, ax
    
    
    mov ah, 9
    lea dx, cherry
    int 21h
    
    mov ah, 1
    int 21h
    
    
    cmp al,49    
    je printa   
    
    cmp al,51    
    je printa   
    
     cmp al,50    
    je printb
    
     cmp al,52    
    je printb
    
    jmp exit
    
printa:

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
     
    
    
    mov ah,2   
    mov dl, 111
    int 21h
      
    
    jmp exit 
    
printb:

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
     
    
    
    mov ah,2   
    mov dl, 101
    int 21h
      
    
    jmp exit                              
                                 
    
    

    
    
    
exit:  

    mov ah,4ch
    int 21h
    main endp
end
    
    
    
    
    
    
   