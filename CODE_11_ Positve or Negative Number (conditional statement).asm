; Negative or positive (non-negative) using assembly language
; ** Conditional statements **
; -> je (Jump if Equal)
; -> jp (Jump if Big)
; -> jl (Jump if Less) 

include emu8086.inc

.model small

.stack 100h

.data
str1 db 10,13, 'Ente first digit: $'
str2 db 10,13, 'Number is Zero $'
str3 db 10,13, 'Number is Positive $'
str4 db 10,13, 'Number is Negative $' 


.code



main proc
    
    mov ax, @data
    mov ds,ax
    
    ; Display message
    mov ah,9
    lea dx,str1
    int 21h
    
    ; input
    mov ah,1
    int 21h
    mov bl,al
    
    mov cl,30h  ; 30h is the hexadecimal representation of the decimal value 48 or asscii zero. here, cl == 0
    
    
    
    ; Here, Compare
    cmp bl,cl
    je Zero      ; bl == cl whereas, cl = 0.
    
    jg Positive  ; bl > cl whereas, cl = 0.
    
    jl Negative  ; bl < cl whereas, cl = 0.
   
    ; level Zero
    Zero:
    mov ah,9
    lea dx,str2
    int 21h
    jmp exit
    
    
    ; level Positive
    Positive:
    mov ah,9
    lea dx,str3
    int 21h
    jmp exit
    
    ; level Negative
    Negative:
    mov ah,9
    lea dx,str4
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch   ; Terminal the program
    int 21h
    main endp

end main