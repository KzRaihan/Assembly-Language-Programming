; Write a program that input a number and then display the number is even or odd using assembly language.

include emu8086.inc

.model small

.stack 100h

.data
inp db 'Enter Any digit: $'
out1 db 'Number is Even $'
out2 db 'Number is Odd $' 

.code


main proc
    mov ax,@data
    mov ds,ax
    
    ;Display Message for input
    
    mov ah,9
    lea dx,inp
    int 21h
    
    ; Input form user
    
    mov ah,1    ; Digit is store in al register
    int 21h
    
    ; calculation and compare
    
    mov bl,2
    div bl      ; remainder is store in ah register
    
    ; compare
    
    cmp ah,0     ; Compare ah and 0 (Here, Compare the remainder digit).
    
    je Even      ; if ah==0 then, go to the Level Even. 
    
    jne odd      ; if ah !=0 then, go to the Level odd.
    
    ; Here, Level Even
    Even:
    printn
    
    mov ah,9
    lea dx,out1
    int 21h
    
    jmp exit
    
    ; Here, Level odd
    odd:
    printn
    
    mov ah,9
    lea dx,out2
    int 21h
    
    jmp exit
     
    
    exit:
    mov ah,4ch
    int 21h

    
    main endp

end main