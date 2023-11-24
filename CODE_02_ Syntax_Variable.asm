;variable declare and initialization
;Static and dynamic varibale display

include emu8086.inc

.model small

.stack 100h

.data
var1 db 5     ; data segment
var2 db ?
 

              ; code segment
.code 

main proc
    mov ax,@data
    mov ds,ax
    
    ;input (dynamic variable part)
     
     mov ah,1
     int 21h
     mov var2,al
     
     printn
    
    ; output (static variable part)
    
    mov ah,2
    mov dl,var1
    add dl,48
    int 21h 
    
    ; output (dynamic variable part)
    
    mov ah,2
    mov dl,var2
    int 21h
     
    
    
    main endp

end main

        ; code explain
       
;-> data segment

; variable declare and initialization format

; variable name || varible type || Value or ? mark

; Static variable declare and initialization

; var1 db 5
; var1 = variable name
; db   = define byte
; 5    = variable value

; Dynamic variable declare and initialization
; var2 db ? 
; ? =  means dynamic declare the value(value is define from user)

;->   code segment

;    mov ax,@data   -> To connection data segment and code segment or initialization of data segment
;    mov ds,ax

 
;-**     input (dynamic variable part)
     
;    mov ah,1    = input function
;    int 21h     = interrupt 21 call and execute function
;    mov var2,al = var2 = al : means al value is store in var2 variable.


;-**   output (static variable part)
    
;    mov ah,2     = output function
;    mov dl,var1  = dl = var1 : means var1 value is store in dl register.
;   add dl,48     = To convert Character(ASCLL) value.
;   int 21h       


;-** output (dynamic variable part)
    
;    mov ah,2     = Output function
;   mov dl,var2   = similiare work
;    int 21h      
;    











