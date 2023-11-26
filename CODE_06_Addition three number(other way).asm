;three input from user and addition them.

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
    add bl,bh    ; bl = bl + bh
    sub bl,48    ; convert  character to real value (bl = bl - 48).
    
    add bl,cl    ; bl = bl + cl
    sub bl,48    ; convert character to ascii value
    
    
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
          