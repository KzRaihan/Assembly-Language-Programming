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
    
    cmp bl,cl     ; compare bl>cl
    jg Big        ; bl>cl then go to level Big. 
                
    je Equal      ; bl = cl then go to level Euual.
    
    jl Small      ; bl<cl   the go to level Small
    
    jmp End
    
    Big:          ; level Big
    printn
    print "First value is Big : "
    
    mov ah,2
    mov dl,bl     
    int 21h
    jmp End
    
    Equal:          ; level Equal
    printn
    print "Both value are equal :  "
    
    mov ah,2
    mov dl,bl      
    int 21h
    jmp End
    
    Small:          ; level Small
    printn
    print "Second value is Big :  "
    
    mov ah,2
    mov dl,cl      
    int 21h
    jmp End 
    
    End:
    
     ret
     
    
   
    
    main endp  ; Execute the program
end main
