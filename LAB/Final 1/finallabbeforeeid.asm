.MODEL SMALL
.STACK 100H

.DATA
    gg DB 10,13, 'In uppercase: $'
    ez DB 10,13, 'In lowercase: $'
    wp DB 10,13, 'invalid character $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    mov ah,1
    int 21h
    mov bh,al
    
    cmp al,61h
    jg lower
    jl upper
    
    lower:
    
    mov ah,9
    lea dx, gg
    int 21h
    
    and bh, 0dfh
    mov ah, 2
    mov dl, bh
    int 21h
    jmp exit
    
    upper:
    cmp al,41h
    jl notchar
    jg up
    
    up:
    mov ah,9
    lea dx,ez
    int 21h
    
    or bh, 20h
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    notchar:
    mov ah,9
    lea dx,wp
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
    
    