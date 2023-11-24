; >> String input message print 

include emu8086.inc

.model small
.stack 100h

.data
meg db 'I Love Bangladesh $'



.code


main proc
    
    mov ax,@data
    mov ds, ax
    
    mov ah,9      ; Output part
    lea dx,meg
    int 21h
    
 
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main 

        
          ; Expalin this code

; ->.data segment:

; For string varible initial in assembly language
; syntax-> var_name db string varible value(within quotation mark) and end value must use $ sign.
; eg-> meg db 'I Love Bangladesh $'


; -> Output part:

; For display string value use 9 funciton (mov ah,9).

; Why and What Lea is Used For:
; lea means load effective address
; -> Address Calculations without Memory Access
; -> LEA dX, meg 
;          calculates the effective address of the I Love Bangladesh string (the starting address of the string) and loads it into the dx register.     

; interrupt 21h
; -> call and execute above function.

