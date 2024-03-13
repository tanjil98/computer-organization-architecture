.model small 
.stack 100h
.data

c db "d$"
d db 10,13, "Thank you .$"  
e dw 'Enter character :$'

a db ?
b db ?
 
 

.code

main proc 

mov ax,@data
mov ds,ax   


mov ah,9
lea dx,e
int 21h
      
mov ah,1
int 21h
mov a,al 


mov cl,a
sub cl,32

       
 mov ah,2
mov dl,10 
int 21h
mov dl,13
int 21h     
 

mov bl,a 

mov ah,2
mov dl,cl
int 21h

 mov cx,50   

mov ah,2
mov dl,10 
int 21h
mov dl,13
int 21h

loop_start:        



mov ah,2
mov dl,bl
int 21h
loop loop_start
        
         
         
         

exit:  
      
mov ah,9
lea dx,d
int 21h

mov ah,4ch
int 21h
main endp
end main
 