;Write an assembly program to display Capital letters in increment order and decrement (reverse) order.

include emu8086.inc

.model small

.stack 100h

.data
str1 db "-------- Capital Letter Increment Order -------$"
str2 db '-------- Capital Letter Decrement order -------$'

.code


main proc
    mov ax,@data    ; For connection data segment to code segment
    mov ds,ax
    
    ; message
    mov ah,9
    lea dx,str1     ; Display String Message(Accending order)
    int 21h
    
    printn          ; For New line
    printn
    
    mov cx,26       ; Total alphabet 26. so, the loop is round by 26 times (that way cx=26).



    mov dx,65       ; A = 65  and Z = 90 . so , dx is start from 65
    
    
    ; Loop segment
    
    Start:
    mov ah,2
    int 21h
    
    inc dx
    
    loop Start
    printn
    printn
    
    ; message
    mov ah,9         ; Display String Message(descending order)
    lea dx,str2
    int 21h
    printn
    printn
    
    mov cx,26        ; Z = 90 
    mov dx,90
    
    End:
    mov ah,2
    int 21h
    
    dec dx
    loop End
     
    
    main endp
end main