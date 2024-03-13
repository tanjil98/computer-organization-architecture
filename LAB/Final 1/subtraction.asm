.model small
.stack 100h
.data
msg db 'THE SUBTRACTION OF$'
msg1 db '  $'
msg2 db 'AND$'
msg3 db 'IS$'
.code
 main proc
   
    mov dl,'?'
    mov ah,2
    int 21h
   
   
    mov ah,1
    int 21h
   
    mov bl,al
   
    mov ah,1
    int 21h
   
    mov cl,al
   
 
   
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
   
    mov ax,@data
    mov ds,ax
    lea dx,msg
    mov ah,9
    int 21h
   
   
   
    lea dx,msg1
    mov ah,9
    int 21h
   
    mov ah,2
    mov dl,bl
    int 21h
   
    lea dx,msg1
    mov ah,9
    int 21h
   
    lea dx,msg2
    mov ah,9
    int 21h
   
   
    lea dx,msg1
    mov ah,9
    int 21h 
   
    mov ah,2
    mov dl,cl
    int 21h
   
    
    lea dx,msg1
    mov ah,9
    int 21h 
   
    
    lea dx,msg3
    mov ah,9
    int 21h
   
    lea dx,msg1
    mov ah,9
    int 21h 
   
    sub bl,cl
   
    add bl,48d
   
    mov dl,bl
    mov ah,2
    int 21h 
   
   
    mov ah,4ch
    int 21h
   
   
   main endp

   end main

