include emu8086.inc

.model small

.stack 100h

.data
arr db 50 dup('$')

res db ?
rew db ?


.code

 main proc
    mov ax,@data
    mov ds,ax
    
    ; pointing
    
    print "Enter string: " 
   
   ; program counting or length count 
     
     mov si,offset arr
     mov cl,0           
    
    ;input from user
    
    Lp_arrIN:
    
    mov ah,1
    int 21h
    
    cmp al,13         ; 13 means the keyboard enter key.
    ;inc cl
    je Length
    
    mov [si],al
    
    inc si
    inc cl            ; here, if necessary cx register then use jmp condition.
    
    jmp Lp_arrIN 
    
    ; Output
    
    
    
    Length:
    printn
    
    print "The length of the string: "
    
       mov al,cl
       mov ah,00
       
       mov bl,10
       div bl
       
       mov res,al
       mov rew,ah
       
       ; output
       
       mov ah,2
       mov dl,res
       add dl,48
       int 21h
       
       ; output
       mov ah,2
       mov dl,rew
       add dl,48
       int 21h
      
      ; temnial the program 
      mov ah,4ch
      int 21h  

    
 main endp
 
end main 



              ; Explain code
; ->> progam counting or length count

       ;  mov si,offset arr  . here si is the sources index and offset in the pointing and store the base address

       ;  mov cl,0    || initialize program counter here, length of strign is zero.
         
; -> input from user
   ; Lp_arrIN:      ; Array Name
    
;       mov ah,1      ; Single input string function.
;       int 21h
    
;        cmp al,13     ; compare al and Keyboard enter key. if user press enter key or not
      
;          je Length  ; if user press then go to level Length
         
         ; if not press then working step by step next instruction
         
;          mov [si],al   ; --> Step-01:
                        ; suppose user input : 2 or al store the value al = 2                ; here, si store or pointing the base address not value
                        ; move or load this value of si first index  or si = 0 or arr[0] = 2 || arr[si] = 2
    
;          inc si         ; increment si index so, si = 1
;          inc cl         ; cl = 1 
    
;     jmp Lp_arrIN       ; jump to Lp_arrIN
                        
                        
                        ;--> Step_02:
                        
                        ; input = 8
                        
                        ; cmp 8 == Enter False go to next instruction 
                        
                        ; si = 1 or arr[1] = 8
                        ; si = 3
                        ; cl = 2
                        
                        ;--> Step_03:
                        
                        ; input = Enter or (13)
                        
                        ; cmp Enter == Enter. True go to Length level 
                         
; Length level
                         
; Length:
;    printn        ; new line
    
;    print "The length of the string: " 
    
;       mov al,cl       ; al = cl . here, cl = 2 || so, al == 2
;       mov ah,00       ; ah == 0
       
;       mov bl,10       ; bl == 10
;       div bl          ; div bl means
                        ; al = al / bl here result go to al register and remainder go to bl register.
                        ; al = 2 / 10 
                        
                        ; 10) 2 ( 0 <-- res
                        ;     0  
                        ;    ----
                        ;     2    <-- rew 
                        
                        ; al == 0 
                        ;    and 
                        ; ah == 2 
       


;       mov res,al    ; res == 0
;       mov rew,ah    ; rew == 2
       
       ; output
       
;       mov ah,2      ; Single output function
;       mov dl,res    ; dl == 0

;       add dl,48     ; dl = dl + 48  convert  numerical value to ascii value in the range of 0-9.
;       int 21h
       
       
;       mov ah,2
;       mov dl,rew
;       add dl,48
;       int 21h     
     
    

                 

