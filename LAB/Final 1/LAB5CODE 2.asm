.model small
.stack 100h
.data
MsgEq db 'Numbers are Equal $'
MsgUneq db 'Numbers are Unequal and $'
MsgGr db ' First Number is greater than second number $'
MsgLs db ' First Number is lesser than second number $'
.code
main proc
mov ax, @data
mov ds, ax

mov ah, 1     
int 21h
mov bl, al    

mov al, 1     
int 21h
mov cl, al    

L1:           
cmp bl,cl     
je EQUAL     ;

mov dl, 10    
mov ah, 2
int 21h
mov dl, 13    
mov ah, 2
int 21h

mov dx, offset MsgUneq   
mov ah, 9
int 21h           
                  
cmp bl, cl        
jge Greater       
                   
mov dx, offset MsgLs
mov ah, 9
int 21h
jmp PRINT



Greater:
mov dx, offset MsgGr
mov ah, 9
int 21h
jmp PRINT


EQUAL:       
mov dl, 10   
mov ah, 2    
int 21h      
mov dl, 13   
mov ah, 2
int 21h

mov dx, offset MsgEq
mov ah, 9
int 21h
jmp PRINT



PRINT:
mov ah,4ch
int 21h
main endp

end main