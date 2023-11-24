; Two input from user and display the output.

include emu8086.inc

.model small
.stack 100h

.data
var1 db ?



.code

main proc
    mov ax,@data
    mov ds, ax
    
    print "Enter First number: "
    
    mov ah,1
    int 21h      ; First input
    mov bl,al
    
    printn       ; new line
    
    print "Enter second number: "
    
    mov ah,1
    int 21h       ; second input
    mov var1,al 
                  
                 
    add bl,var1   ; Calculation
    ;sub bl,48    ; It is also valid
    printn 
    
    print "Output : "
    
    mov ah,2
    mov dl,bl         ; Output
    sub dl,48         ; It is valid
    int 21h 
    
    
    
    
    
    
    main endp

end main


;         ****   Explain Code    ***

; -> Code segment
; ** First input Body
; input form user and store the value in bl register.


; ** second input Body
; input form user and use dynamic varible and store the is var1 variable.


;  ** Calculation Part

;  add bl,var1 

;  bl = bl + var1 
