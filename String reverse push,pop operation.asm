; String reverse using push, pop operation.

include emu8086.inc

.model small

.stack 100h

.data
string db "Raihan"


.code
 main proc
  
  mov ax,@data
  mov ds,ax
  
  ; connection or pointing or store the base address
  mov si,offset string
  mov cx,6      ; length of string is 6.
  
  ; push operation
  
   Lp_push:
      
      mov bx,[si]     
      push bx             ; push operation (store or push in the stack)
                          ;   n  <-- Last store on the stack
                          ;   a            .
                          ;   h            .
                          ;   i            .
                          ;   a            .
                          ;   R <-- first store on the stack
      
      inc si
   loop Lp_push
   
   printn
   print "Reverse of the string; " 
   mov si,offset string
   mov cx,6
   
   Lp_pop:                ; pop operation (pop in the stack)
                          ;    n  <-- first out on the stack
                          ;    a             .      
                          ;    h             .     
                          ;    i             .    
                          ;    a             .   
                          ;    R   <-- Last out on the stack
      
      pop dx
      mov ah,2
      int 21h
      
    loop Lp_pop  
      
        
    ; terminal program 
   mov ah,4ch
   int 21h
  
  
 main endp
 
end main
  
  
  
  
  
  