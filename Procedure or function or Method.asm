; Procedure in assembly language.

include emu8086.inc

.model small

.stack 100h

.data
var db 'Assembly Language Programming $'
var1 db 'Name    : MD Kamruzzaman Raihan $'
var2 db 'ID      : CSE2103024039 $'
var3 db 'Semester: Fall-23 $'


.code


  main proc
    mov ax,@data
    mov ds,ax
    
    ; first message 
    mov ah,9
    lea dx,var
    int 21h
    
    call NewLine  ; procedure call first time
    
    ; Second message
    
    mov dx,offset var1
    mov ah,9
    lea dx,var1
    int 21h
    
    call NewLine  ; procedure call  second time
    ; Third message
    
    mov ah,9
    lea dx,var2
    int 21h
    
    call NewLine  ; procedure call  third time
    ; Four message
    
    mov ah,9
    lea dx,var3
    int 21h
    
    
    
    
    
    
    
      mov ah,4ch  ; terminal the program
      int 21h
    
   main endp
 
  ; Procedure 
  
 NewLine proc
    mov dx,10
    mov ah,2
    int 21h
    
    mov dx,13
    mov ah,2
    int 21h 
    
    
    
    
  NewLine endp  
    



  ;end main
  
 

ret



; syntax of the procedure

; procedure_name proc
;   -------
;   ------  statements(Block of code)
;   -------
; pocedure_name endp