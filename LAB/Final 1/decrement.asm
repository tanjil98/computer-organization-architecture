.model small 
.stack 100h
.data
data1 db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,1
    int 21h
   
   mov data1, al
   dec data1
   

   
   mov ah,2  
   mov dl, 0dh
   int 21h
   mov dl,0ah
   int 21h
   
   mov ah,2
   mov dl, data1
   int 21h
 
 
 
 main endp   
 end   