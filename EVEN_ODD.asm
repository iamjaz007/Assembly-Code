org 100h
.model small

.data

MSG1 DB 10,13,"Enter the number: $"
MSG2 DB 10,13,"The Entered number is EVEN. $"
MSG3 DB 10,13,"The Entered number is ODD. $"

.code
main proc

DISPLAY MACRO MSG
MOV AH,9
LEA DX,MSG
INT 21H
ENDM

ASSUME CS:CODE,DS:DATA
START:
MOV AX,@DATA
MOV DS,AX

DISPLAY MSG1

MOV AH,1
INT 21H
MOV AH,0

CHECK: 
MOV DL,2
DIV DL
CMP AH,0
JNE ODD

EVEN:
DISPLAY MSG2
JMP DONE

ODD:
DISPLAY MSG3

DONE:
MOV AH,4CH
INT 21H

main endp

ret