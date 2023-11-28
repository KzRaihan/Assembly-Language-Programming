;       Talk over ->  *** LOOP in Assembly Language ***

; Definitio:

; >>  A statement or set of statement tht is executed repeatedly is known as loop.
; >> Set of instruction that is repeated until a terminatin condition is reached is called loop.
 
; << Syntax of Loop >>

;  Label Name
;  statements
;  Increment(INC) or decrement(DEC) condition
;  loop Label Name where call loop


; Example:

; Start:      || label Name
; mov ah,1    -- Statement
; int 21h     -- Statement
; inc
; loop Start  || call the level Start using loop
 
 
; label -> Label is placed at the beginnin of a loop statement
; Label name must not be followint instruction
;    >> Mov, add,ax,db, etc

;  *** Working Principal of CX Register in Assembly Language ****

; Cx Register is used for loop value

; Cx Regiter acts as a counter for repetitions or loops.(Counting Increment or decrement )

; cx register used in looping.


; write a program to display 0 to 9 using assembly language.

include emu8086.inc

.model small

.stack 100h

.data


.code 

main proc
    mov cx,10
    mov dl,48
    
    
    Start:
    
    mov ah,2
    int 21h
    
    inc dl
    loop Start 
    

    
    main endp    ; Terminal the program.
end main

;     -----****** Explain Code **** --------

;-> mov cx,10

; >> cx counting how many times are loop execute.
; >> here, 10 times are execute loop.  

;-> mov dl,48

; >> dl is basically using for display.
; >> 48 is accii value of zero(0).



     
;    mov ah,2  || output funtion
; >> Fisrt Output: 48 or accii value of 48 or zero(0).
; >> ............
; >> Last Output: 58 or 9.

; 
;     int 21h || call and execute above function.

; -> inc dl
; increment of dl || dl = dl + 1 || other way: add dl,1

; -> loop Start

; if the condition is true or satisfy then repeated go to Level Start.

; else execute the program.(Condition False)

    
