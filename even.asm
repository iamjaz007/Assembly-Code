
org 100h

.model small  

.data    

    msg1 db 10,13,"Enter Number:  $"

    msg2 db 10,13,"Number is Even$"

    msg3 db 10,13,"Number is Odd$"

.code  

main proc

       mov ax,@data

       mov ds,ax

       

       lea dx,msg1

       mov ah,9

       int 21h

       

       mov ah,1

       int 21h

       

       mov bl,2

       div bl      

       cmp ah,0  

       je even  

       lea dx,msg3

       mov ah,9

       int 21h

       mov ah,4ch

       int 21h    

       even:   

       lea dx,msg2

       mov ah,9

       int 21h 

main endp

ret