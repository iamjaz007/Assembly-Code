readnum macro num 
mov ah, 01h
int 21h
sub al, '0'
mov bh, 0ah
mul bh
mov num, al
mov ah, 01h
int 21h
sub al, '0'
add num, al
endm

printstring macro msg
mov ah, 09h
mov dx, offset msg
int 21h
endm               

data segment        
cr equ 0dh           
lf equ 0ah            
msg1 db 'enter a number:','$'
msg2 db cr, lf, 'Number is even','$'
msg3 db cr, lf, 'number is odd','$'  

num db ?                            
data ends                          

code segment                         
assume cs:code, ds:data               
start:
mov ax, data                           
mov ds, ax                              
printstring msg1                         
readnum num                               
mov ah, 00                                 
mov al, num                                 
mov bl, 02                                   
div bl                                  
cmp ah, 00                                  
je evennum                           
printstring msg3                             
jmp skip                                      
evennum:
        printstring msg2                         
skip: 
mov ax, 4c00h                                  
int 21h                                         

code ends                                         
end start 