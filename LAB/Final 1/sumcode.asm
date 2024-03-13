.model small 
.data
aa db "Enter first number: $"
bb db 13,10,"Enter second number: $"
cc db 13,10,"The sum is: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    lea dx,aa
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov bl,al
    lea dx,bb
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov bh,al
    sub bh,48
    sub bl,48
    lea dx,cc
    mov ah,9
    int 21h   
    add bh,bl
    add bh,48
    mov dl,bh
    mov ah,2
    int 21h
    mov ah,4Ch
    int 21h
main endp
end