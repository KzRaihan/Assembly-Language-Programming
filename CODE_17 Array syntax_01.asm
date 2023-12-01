; Array in assembly language.

include emu8086.inc

.model small

.stack 100h


.data
arr db 3,6,9,2,6 

.code

main proc
    mov ax,@data
    mov ds,ax
    
    ; connection or link array address 
    
    mov si,offset arr  
    mov cx,5           ; 5 times loop flow.
                       ;  this statement for array vlaue depends how many array value are declear
    
    print "Array Element: "
    printn
    
    LoopA:
    mov dl,[si]
    add dl,'0'     ; Convert to ASCII. || or add dl,48
    
    ; Print the ASCII character
    
    mov ah,2
    int 21h
    
    ; for space
    mov dl,32   ; 32 for space 
    int 21h
    
    
    inc si ; Move to the next element in the array
    
    loop LoopA
    
   
    
    
 main endp

end main



                     ; Explain code

; si registers that can be used for various purposes, including indexing and pointing to memory addresses.(pointing the memeory address)
; here, Si is being used to point to the beginning of the arr array. 

; offset use when we working with memory addresses rather than immediate values. 
; offset is not a register it is a keyword  (Get or store the memeory address)
; It is commonly used with labels or variables to get their memory addresses.


; -> mov dl, [si] instruction meaning

;    >> load a byte from the memory location pointed to by the Si (Source Index) register into the DL register.


    