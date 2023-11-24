include emu8086.inc

.model small

.stack 100h

.data     ; data segment

.code     ; code segment


main proc
    
    mov ah,1
    int 21h      ; Input part
    mov bl,al
    
    mov ah,2     ; Output part
    mov dl,bl
    int 21h
    
    mov ah,4ch   ; return part
    int 21h
    main endp
end main
    
        ; Expalin this code

;>> inlude emu8086.inc    ; header file, in this header file so many function predefinite include print function.

;>> .model small          ; The memory model directive specifies the size of the memory the program Needs

                          ; Various type of memory model which are -> Tiny, small, compact, large, and Huge.
                        

;>> .stack 100h           ; Define the memory size, in emu8086 has 256 ACSLL value and we are work 256 value in assemble language
                          ; 256(dec) == 100h(Hex-decimal).  
                          
;>> .data                 ; This call data segment
                          ; All the variable is declaration and initial in this segment.
  


;>> .code                 ; This call Code segment
                          ; All code and implementiation part in this segment.
                          

;>> main proc             ; Assembly program is start here.


    ; Input part

;>> mov ah,1  This is the simple single character input function instruction from user.

;>> int(interrupt) 21h means call and execute the above function.


;>> mov bl,al || Q.N: why it is Necessary?

;Ans: By default all the input value is store al register always if we nee another value from user then
;     that value also store in al register which is overwrite the first value. 
;     To Slove this problem we are Necessary to move al value in bl.  



    ; Output part

;>> mov dl,bl || Q.N : why necessary this statement?
; mov dl, bl: This instruction copies the value from the bl register to the dl register.
; Data Manipulation
; If the value in bl contains important data that needs to be manipulated or used later in the program, copying it to dl allows for easy access and modification.



    
    
    
    
                                        