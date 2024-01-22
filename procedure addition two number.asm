; procedure in assembly language porcedure call procedure and return procedure.

include emu8086.inc

.model small

.stack 100h

.data
var db "Enter any digit: $"
var1 db 'Output: $'

num db ?


.code

  main proc
    mov ax,@data
    mov ds,ax
    
    ; message
    mov ah,9
    lea dx,var
    int 21h
    
    ; First input
    mov ah,1
    int 21h
    ;mov bl,al
    
    call Addition
    
    
   
    printn 
    printn
    ;message
     
    mov ah,9
    lea dx,var1
    int 21h
    
    ;output
    mov dl,bl
    mov ah,2
    int 21h
    
   
    ; terminal program
    mov ah,4ch
    int 21h
   
   main endp
  
  Addition proc
    
    mov bl,al
    
    printn
    print "Enter second digit: "
    
    
    mov ah,1
    int 21h
    
    mov num,al
   
    
    add bl,num
    
    sub bl,48 
    
     ret 
    
    
  Addition endp   
  
  
  
  
  end main