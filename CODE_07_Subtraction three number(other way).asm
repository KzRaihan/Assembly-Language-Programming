;three input from user and Subtraction them.

include emu8086.inc

.model small

.stack 100h

.data

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    print "Enter first digit: "
    mov ah,1
    int 21h
    mov bl,al
    
    printn
    
    print "Enter second digit: "
    int 21h      ; call and execute above function
    mov bh,al
    
    printn
    
    print "Enter Third digit: "
    int 21h      ; call and execute above function
    mov cl,al
    
    printn
    
    print "Calculation the program..."
    sub bl,bh    ; bl = bl - bh
    add bl,48    ; convert ascii character to real value (bl = bl - 48).
    
    sub bl,cl    ; bl = bl - cl
    add bl,48    ; convert character to value
    
    
    printn
    
    print "output: "
    mov ah,2
    mov dl,bl
    int 21h
 
    main endp     ; terminal program
end main



;       *** Explain Code ****

; interrupt 21h is call and execute the previous function
; here, function simple input character which is 1 or (mov ah,1)
          