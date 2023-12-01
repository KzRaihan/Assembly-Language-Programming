; -->> Take Input in Array and Display on Screen in Assembly Language.

include emu8086.inc

.model small

.stack 100h

.data
arr db 5 dup(?)     ; Array declare not initialization

.code


main proc
    
    ; connection of data segment to code segment
    mov ax,@data
    mov ds,ax
   
    
   ; pointing the base address of array element
    mov cx,5
    mov si,offset arr
    
    
   ; Input Array Element form user
   
    print "Enter the Array element: "
    ;printn
    
    Lp_ArrayIN:
     
     mov ah,1     ; simple input form user.
     int 21h
     
     mov [si],al  ; all store value of al register move or load to si register.
     inc si       ; increment si register value.
     
     loop Lp_ArrayIN 
     
     
    ; Output Array Element
    
    printn
    
    print "YOur Array Element are:"
    
    mov cx, 5
    mov si,offset arr 
    
    Lp_ArrayOp:
     
     mov ah,2
     mov dl,[si]
     int 21h
     
     inc si
     
     mov dl,32  ; space
     int 21h
     
     loop Lp_Arrayop  

    
    
    
   main endp
end main

                        ; ........ Explain Code ........

; include emu8086.inc ; Include the emu8086 library

; .model small        ; Specify the memory model

; .stack 100h         ; Set the size of the stack

; .data
; arr db 5 dup(?)     ; Declare an array named 'arr' 5 is the size of the array,

; .code
; main proc           ; Start of the main procedure
    
    ; Connection of data segment to code segment
    
;    mov ax, @data    ; Load the address of the data segment into ax

;    mov ds, ax       ; Set ds to the value in ax (connecting data and code segments)
   
    ; Pointing the base address of array elements
;    mov cx, 5        ; Set cx to 5 (number of elements in the array)

;    mov si, offset arr ; Load the offset (base address) of the array into si
    
    ; Input Array Elements from the user
;    print "Enter the Array elements: " ; Display prompt for user input
    
;    Lp_ArrayIN:
;     mov ah, 01h     ; DOS function for single character input
;     int 21h         ; Interrupt to request user input
     
;     mov [si], al    ; Store the entered character in the current array element
;     inc si          ; Move to the next array element
     
;     loop Lp_ArrayIN ; Repeat the loop until cx becomes zero
     
    ; Output Array Elements
;    printn            ; Move to the next line
    
;    print "Your Array Elements are: "
    
;    mov cx, 5        ; Set cx to 5 (number of elements in the array)
;    mov si, offset arr ; Reset si to the base address of the array
    
;    Lp_ArrayOp:
;     mov ah, 02h     ; DOS function for character output
;     mov dl, [si]    ; Load the current array element into dl
;    int 21h         ; Interrupt to display the character
     
;     inc si          ; Move to the next array element
     
;     mov dl, 32      ; ASCII code for space character
;     int 21h         ; Interrupt to display a space
     
;     loop Lp_ArrayOp ; Repeat the loop until cx becomes zero

;    main endp       ; End of the main procedure
;end main          ; End of the main program


                      












