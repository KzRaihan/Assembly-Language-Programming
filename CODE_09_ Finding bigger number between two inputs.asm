;Using assembly programming to find the larger of two inputs.

include emu8086.inc

.model small

.stack 100h

.data
str1 db 'Enter First Digit: $'
str2 db 'Enter Secon Digit: $'

.code


main proc
    mov ax,@data
    mov ds, ax
    
    mov ah,9        ; display string output
    lea dx,str1
    int 21h
    
    mov ah,1
    int 21h         ; first input
    mov bl,al
    
    printn
    
     mov ah,9
    lea dx,str2
    int 21h
    
    mov ah,1        ; Second input
    int 21h
    mov bh,al
    
    cmp  bl,bh      ; compare bl and bh
    
    jg Big          ; bl > bh || jump level(Black or statement) Big whereas, bl is greather than bh.

    jl Small        ; bl < bh || jump level(Black or statement) small whereas, bl is smaller than bh.
    
    je Equal        ; bl == bh || jump level(Black or statement) Equal whereas, bl is Equal than bh.
    
    
    Big:    
    printn
    print "The first digit is big"
    printn
    
    print "BIG NUMBER IS: "
    
    mov ah,2
    mov dl,bl
    int 21h
    
    jmp exit
    
    small:
    printn
    print "The second digit is big"
    printn
    
    print "BIG NUMBER IS: "
    
    mov ah,2
    mov dl,bh
    int 21h
    
    jmp exit 
    
    Equal:
    printn
    print "Both digit is Equal"
    printn
    
    print "The digit is: "
    
    mov ah,2
    mov dl,bh
    int 21h
    
    jmp exit
    
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main