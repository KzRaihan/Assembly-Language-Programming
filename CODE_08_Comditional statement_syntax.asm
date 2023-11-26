; Conditional Statement
; Logical Operations:
 
; Compare(CMP) the contents of a register or memory location with the contents of the accumulator (similar to if statement).                                                                        
; JMP Address Jump to the address specified (Go to). jmp (Unconditional Jump)


; Conditional Branch
; -> jg (Jump if Greater)
; -> je (Jump if Equal)
; -> jge (Jump if greater than or equal)
; -> jne (Jump if Not Equal)
; -> jl (Jump if Less)
; -> jle (Jump if Less or Equal)

; Q.N : Feedback from the user and determine who is bigger.

include emu8086.inc

.model small

.stack 100h

.data

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    print "Enter First digit: "
    mov ah,1
    int 21h       ; first input
    mov bl,al 
    
    printn
    print "Enter second digit: "
    
    mov ah,1
    int 21h       ; second input
    mov cl,al
    
    cmp bl,cl     ; compare bl>cl (similare to if)
    jg Big        ; bl>cl then go to Big level 
                
    cmp bl,cl     ; (similare to else if)
    je Equal      ; bl = cl
    
    cmp bl,cl     ;(similare to else if)
    jl Small      ; bl<cl
    
    jmp End
    
    Big:          ; level Big
    printn
    print "First value is Bigger : "
    
    mov ah,2
    mov dl,bl     
    int 21h
    
    Equal:          ; level Equal
    printn
    print "Both value is equal :  "
    
    mov ah,2
    mov dl,bl      
    int 21h
    
    Small:          ; level Small
    printn
    print "'Second value is Bigger :  "
    
    mov ah,2
    mov dl,cl      
    int 21h 
    
     End:
     
    
   
    
    main endp  ; Execute the program
end main
