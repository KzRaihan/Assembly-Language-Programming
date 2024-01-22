; pattern -> Triangle Star decending order

include emu8086.inc

.model small

.stack 100h

.data
mes db "Enter Any value(0-9): $"
var db ?

.code 


  main proc
    mov ax,@data
    mov ds,ax 
    
    ; message
    mov ah,9
    lea dx,mes
    int 21h
    
    ; input form user
    mov ah,1
    int 21h
    sub al,48  ; convert ascii to decimal value
    
    mov var,al
    
    printn ; for new line 
    
    mov cx,0 ; cx==0 
    mov cl,var
    mov bl,var
    
    top:
     mov cx,bx
     
     level1:
      cmp bl,0
      je exit
      
      mov ah,2
      mov dl, '*'
      int 21h
      
      
      loop level1
      
      dec bl
      
      printn
      
      loop top
    
     
     exit:
     mov ah,4ch
     int 21h
    
     main endp
  
end main


;      ----- Explain Code ------

; -->> input form user
;    mov ah,1   ; input function
;    int 21h
;    sub al,48  ; convert ascii to decimal value(real value)

; mov var,al    ; assume user input : 3
                ; var == 3
; printn ; for new line 
    
;    mov cx,0    ; cx = 0 (here,no garbage value not allow).
;    mov cl,var  ; cl = 3 || 3 times print the value for outter loop

;    mov bl,1    ; bl = 1 || first print one * . ascending order print || for work nested loop (level1)           
;



; -->> top:       ; act like outter loop
;     mov cx,bx   ; cx = 1 . here, bl = 1
     
;     level1:     ; act like inner loop
;      cmp bl,var ; compare bl and var || Q.N: why necessary 
                                              ; how many times are loop execute define

;      jg exit    ; if bl is greater then var then go to exit level
      
;      mov ah,2    ; output function
;      mov dl, '*' ;    output
                   ; -------------
                   ;  *         
;      int 21h
      
      
;      loop level1
      
;      inc bl
      
;      printn
      
;      loop top



