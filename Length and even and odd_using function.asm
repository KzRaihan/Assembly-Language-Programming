include emu8086.inc

.model small

.stack 100h

.data
arr db 50 dup('$')
res db ?
rew db ?

even db 'Even Number $'
Odd db 'Odd Number $'

.code

 main proc
    mov ax,@data
    mov ds,ax
    
    print "Enter Your Name: "
    
    ; pointing
    
    mov si,offset arr
    mov cl,0
    
    Lp_input:
       
       mov ah,1
       int 21h
       
       cmp al,13    ; cmp with enter key
       je Length
       
       mov [si],al
       
       inc si
       inc cl
       
     jmp Lp_input
     
     
     Length:
         printn
         print "Length of the string: "
         
         mov ah,00
         mov al,cl
         
         mov bl,10
         div bl       ; ah == remainder and al = quotient
         
         mov res,al
         mov rew,ah
         
         ; output
         mov ah,2
         mov dl,res
         add dl,48
         int 21h
         
         mov ah,2
         mov dl,rew
         add dl,48
         int 21h
         
         
      call Find_Even_odd
      
      
       
    
    
    
    
 main endp
 
       Find_Even_odd proc
       printn
       mov ah,0
       
       mov bl,2
       div bl    ; remainber ah 
       
       cmp ah,0
         je zor
         jne bezor
        
         zor:
          printn
          mov ah,9
          lea dx,even
          int 21h
          
         jmp exit   
       
         bezor:
         printn
           mov ah,9
           lea dx,Odd
           int 21h
         
         jmp exit
         
       exit:
         mov ah,4ch
         int 21h    
    
    
      ret
   Find_Even_odd endp
 
   



end main 