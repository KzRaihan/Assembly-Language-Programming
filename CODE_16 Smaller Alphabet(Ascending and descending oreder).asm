; write a program to display the alphabet in ascending or descending order.

include emu8086.inc

.model small

.stack 100h

.data

.code


main proc
    
    print "Smaller letter"
    printn
    
    mov cx,26
    mov dx,97   ; a = 97
    
    Start:
    mov ah,2
    int 21h
    
    inc dx
    loop Start
    
    
    printn
    print "Descending order" 
    printn
    
    mov cx,26
    mov dx,122    ; z = 122
    
    
    End:
    mov ah,2
    int 21h
    dec dx
    
    loop End
    
    Exit:
    mov ah,4ch
    int 21h
    
    
    main endp
end main