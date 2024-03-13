.model small
.stack 100h
.data
.code
    proc main
    
    mov cx,255
    mov ax,0
    
    print:
     
    mov ah,2
    lea dx, ax
    int 21h 
    
    inc ax
    dec cx
    cmp cx,0
    je exit
    jmp print 
    
    exit:
    
    mov ah,4ch
    int 21h
    endp

      

 