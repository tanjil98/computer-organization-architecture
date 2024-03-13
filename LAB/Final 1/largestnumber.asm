.model small
.stack 100h

.data
num1 db ?
num2 db ?
num3 db ?
msg1 db 'Enter the first number: $'
msg2 db 'Enter the second number: $'
msg3 db 'Enter the third number: $'
msg4 db 'The largest number is: $'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; get the first number
    mov ah, 09h
    lea dx, msg1
    int 21h
    mov ah, 01h
    int 21h
    sub al, 30h
    mov num1, al
    
    ; get the second number
    mov ah, 09h
    lea dx, msg2
    int 21h
    mov ah, 01h
    int 21h
    sub al, 30h
    mov num2, al
    
    ; get the third number
    mov ah, 09h
    lea dx, msg3
    int 21h
    mov ah, 01h
    int 21h
    sub al, 30h
    mov num3, al
    
    ; compare the numbers to find the largest
    mov al, num1
    cmp al, num2
    jge check_num1_num3
    
    mov al, num2
check_num1_num3:
    cmp al, num3
    jge print_result
    
    mov al, num3
print_result:
    ; display the result
    mov ah, 09h
    lea dx, msg4
    int 21h
    
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main
