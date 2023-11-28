; Create an assembly program that displays user input from one to nine reversed (9-0) by utilizing the loop concept.

include emu8086.inc

.model small

.stack 100h

.data
var db "Ente any Digit: $"

.code 


main proc
    mov ax,@data
    mov ds,ax
    
    ; Display message
    mov ah, 9
    lea dx,var
    int 21h
    
    ; input 
    
     mov ah,1
     int 21h
     mov bl,al
     mov dl,bl
     
     ; Loop concept
     
     mov cx,10        
     mov ch,30h        ; ch = 0 
     
    
    ; Here, First level 
    
    Fisrt:
    cmp dl,ch         ; compare
    jl End
    jge Start
    
    ; level Start
    
    Start:
    printn            
     mov ah,2
     int 21h
    
     dec dl           ; Decrement
     
    loop Fisrt        ; loop
    
    
    End:
    mov ah,4ch
    int 21h
     
    main endp

end main

         
;             ***** Code Explain ******

; ->     Loop concept
     
;     mov cx,10        ; cx executing 10 times
;     

;     mov ch,30h        ; ch == 0 because 30h == 0.

; -> Here, First level 
    
;    Fisrt:        || level first is end when dl == 0.
;    cmp dl,ch     || here, compare  dl == 0
                                        
;   jl End          >> if dl>0  then go to End level.


                              ; Level End
                                ;   End:
                                ;    mov ah,4ch  || Terminate the program
                                ;    int 21h
     


;   jge Start       >> else if dl>=0 then go to Start level.
                              
                              ; Level Start
                              ;  Start:
                              ;  printn   || for new line           
                              ;  mov ah,2 || Output function
                              ;  int 21h  || Call and execute above funcion.
    
                              ;  dec dl   ||  Decrement dl value one by one
     
                              ; loop Fisrt || Go to Fisrt level 
                              ;              >> if first level is satisfy
                              ;              >> Continues the process until the condition is true. 










