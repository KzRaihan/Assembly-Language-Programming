; Three input from user and addition them.

include emu8086.inc

.model small

.stack 100h

.data 

.code



main proc
    
    mov ax,@data
    mov ds,ax
    
    print "Enter first number: "
    
    mov ah,1
    int 21h
    mov bl,al
    
    printn
    
    print "Enter second number: "
    mov ah,1
    int 21h
    mov bh,al
    
    printn
    
    print "Enter third number: "
    mov ah,1
    int 21h
    mov cl,al
    
    printn
    
    print "Calculation processing..."
    
    add bl,bh     ; bl = bl+bh
    sub bl,48   
    add bl,cl     ; bl = bl + cl
    
    sub bl,48
    
    printn
    
    print "Output: "
    mov ah,2
    mov dl,bl
    int 21h
    
    
    main endp
                  ; Terminal the program
end main