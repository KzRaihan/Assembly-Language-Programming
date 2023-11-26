;Using assembly programming to find the larger of three user inputs.

include emu8086.inc

.model small

.stack 100h

.data
str1 db 10,13,'Enter first digit: $'
str2 db 10,13,'Enter second digit: $'    ; 10,13 denotes printing a new line following the message display.
str3 db 10,13,'Enter third digit : $' 

.code


main proc
    mov ax,@data
    mov ds,ax
    
    ; First message and input part
    mov ah,9
    lea dx,str1
    int 21h
    
    mov ah,1
    int 21h      ; first input
    mov bl,al
    
    ;second message and input part
    mov ah,9
    lea dx,str2
    int 21h
    
    mov ah,1
    int 21h      ; second input
    mov bh,al
    
    ; Third message and input part
    mov ah,9
    lea dx,str3
    int 21h
    
    mov ah,1
    int 21h      ; third input
    mov cl,al
    
    ; Compare start
    
    cmp bl,bh     ; Compare bl and bh
    
    je Equal      ; bl = bh then go to Equal level
    
    je First      ; bl > bh then go to First level
    
    jl Second     ; bl < bh then go to second level
    
    
    
    ;Here First Level 
    
    First:
    cmp bl,cl     ; Again compare or nested compare 
    
    je Equal      ; bl = cl then go to Equal level
    
    je Level      ; bl > cl then go to Level level
    
    jl Third      ; bl < cl then go to Third level
    
    
    ;Here, Nested first level Level  
    
    Level:
    printn
    print "The first value is big"
    
    jmp exit
    
    ; Here Second level 
    
    Second:
    cmp bh,cl
    
    je Equal     ; bh = cl then go to Equal level
    
    je Level2    ; bh > cl then go to Level2
    
    jl Third     ; bh < cl then go to Third level
    
    
    ; Here, Nested Second level
     
    Level2:
    printn
    print "The second value is big"
    jmp exit 
    
    ; Here, Third level
    
    Third:
    printn
    print "The third digit is big"
    jmp exit
    
    ; Here, Equal level
    
    Equal:
    printn
    print "The digits are Equal"
    jmp exit

    
    
    exit:
    mov ah,4ch
    int 21h
   
    
    main endp
end main