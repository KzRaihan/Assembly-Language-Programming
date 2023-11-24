;more partices variable and string variabel
;Task : dispaly string message and input from user and display the output

include emu8086.inc

.model small
.stack 100h

.data
str1 db 'Enter a number: $'    ; string message
str2 db 'Your number is: $'

var db ?
 

.code


main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,str1    ; string message display(str1)
    int 21h
    
    
    mov ah,1
    int 21h        ; input from user (dynamic input)
    mov var, al  
                   
                   
    printn         ; new line
    
    mov ah,9
    lea dx,str2    ; string message display(str2)
    int 21h
    
    mov ah,2
    mov dl,var     ; output execute
    int 21h
    
    
    
    main endp
end main 


;         **** Explain Code ******

;-> Code segment
;    mov ah,9       =  string function
;   lea dx,str1     =  string message display(str1)
;   int 21h         =  interrupt 21h means execute above fuction
                   






