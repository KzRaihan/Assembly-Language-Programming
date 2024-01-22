; write a program input string from user and display the string using array.

include emu8086.inc

.model small

.data
var db "Enter the fist value: $" 
arr db 50 dup(?)


.code

main proc
    mov ax,@data
    mov ds,ax
    
    ; message or string output
    
    mov ah,9
    lea dx,var
    int 21h 
    
    ; array
    mov cx,22
    mov si,offset arr
    
    lparrayIn:
    
    mov ah,1     ; simple input form user.
    int 21h 
    
    
    mov [si],al
    
    inc si
    loop lparrayIn
    
    printn
    mov cx,22
    mov si,offset arr
    
    
    lparrayOp:
    mov ah,2
    
    mov dl,[si]
    
    int 21h
    
    inc si
     
    loop lparrayOp 
    
     
    
    
   main endp
end main