.MODEL LARGE
.STACK 1000H
.DATA
M1 DB 10,13,10,13,'                 ****Library Management System****$',10,13 
M2 DB 10,13,10,13,'Enter your Choise $'

M3 DB 10,13,'  **                 1.Fiction                                     **$' 
M4 DB 10,13,'  **                 2.Novel                                       **$'
MS5 DB 10,13,'  **                 3.Science Fiction                             **$'
M5 DB 10,13,'  **                 4.Comics                                      **$'
M6 DB 10,13,'  **                 5.Mystery                                     **$'
M7 DB 10,13,'  **                 6.Historic                                    **$'  
               
               
M8 DB 10,13,10,13,'***Choise your book from the menu***$'

M100 DB 10,13,10,13,'***Available!***$'
  
;Fiction  
M9 DB 10,13,'   **           1.To Paradise by Hanya Yanagihara                   **$'
M10 DB 10,13,'  **           2.Violeta by Isabel Allende                         **$'
M11 DB 10,13,'  **           3.Nineteen Eighty-Four                              **$' 


 

;Novel

M25 DB 10,13,'  **  1.The Great Gatsby             Quantity- 10            **$' 
M26 DB 10,13,'  **  2.Invisible Man                Quantity- 10            **$' 
M27 DB 10,13,'  **  3.THE SOUND AND THE FURY       Quantity- 10            **$' 
M28 DB 10,13,'  **  4.THE SUN ALSO RISES           Quantity- 10            **$'
M29 DB 10,13,'  **  5.THE SECRET AGENT             Quantity- 10            **$'
M30 DB 10,13,'  **  6.HEART OF DARKNESS            Quantity- 10            **$'
                                                        
 
 
;Science Fiction
  
M18 DB 10,13,'  **  1.Superman : The son of Krypton     Quantity- 10        **$'
M19 DB 10,13,'  **  2.HULK : The world War              Quantity- 10        **$'
M20 DB 10,13,'  **  3.Batman and Robin                  Quantity- 10        **$' 
M21 DB 10,13,'  **  4.Iron Man : The adventure          Quantity- 10        **$'
M22 DB 10,13,'  **  5.Captain America                   Quantity- 10        **$'
M23 DB 10,13,'  **  6.SHAZAM                            Quantity- 10        **$'
M34 DB 10,13,'  **  7.BLACK ADAM                        Quantity- 10        **$'
M35 DB 10,13,'  **  8.MS Marvel                         Quantity- 10        **$'
M36 DB 10,13,'  **  9.SPIDER_MAN                        Quantity- 10        **$'

 
 
;Comics

M41 DB 10,13,'  **  1.Watchmen                 **$'
M42 DB 10,13,'  **  2.The Sandman              **$'
M43 DB 10,13,'  **  3.Mister Miracle           **$'
M44 DB 10,13,'  **  4.Pluto                    **$'



;Mystery
M45 DB 10,13,'  **  1.In Cold Blood by Truman Capote                                **$' 
M46 DB 10,13,'  **  2.Anatomy of a Murder by Robert Trave                           **$'
M47 DB 10,13,'  **  3.Tinker, Tailor, Soldier, Spy by John le Carre                 **$'
M48 DB 10,13,'  **  4.Rebecca by Daphne du Maurier                                  **$'



;Historic
M49 DB 10,13,'  **  1.1491 by Charles C. Mann                               **$'
M50 DB 10,13,'  **  2.Precolonial Black Africa by Cheikh Anta Diop          **$'
M51 DB 10,13,'  **  3.The Guns of August by Barbara Tuchman                 **$'
M52 DB 10,13,'  **  4.Parallel Lives by Plutarch                            **$'




;INVALID
M55 DB 10,13,10,13,'***&&INVALID ENTRY&&***$'
M56 DB 10,13,'      ***&&Try Again&&***$'



M57 DB 10,13,10,13,'Enter your choice: $'
M58 DB 10,13,'Quantity of books: $'
M59 DB 10,13,'Total Cost <USD>: $'


DRINK DB ?
QUANTITY DB ?


M60 DB 10,13,10,13,'1.Homepage$'
M61 DB 10,13,'2.EXIT$'

;STAR RESIZE


MR1 DB 10,13,'  --                                                               --$'
MR2 DB 10,13,'  ===================================================================$'

MR3 DB 10,13,'  **                                                               **$'


MR4 DB 10,13,'  --                                                               --$'
MR5 DB 10,13,'  -------------------------------------------------------------------$'



MR6 DB 10,13,'  --                                                               --$'
MR7 DB 10,13,'  ===================================================================$'


SEJ DB 10,13,10,13,' $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  TOP:
  
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
       
    LEA DX,MR2
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR3
    MOV AH,9
    INT 21H   
    
    
     
    
    LEA DX,M3
    MOV AH,9
    INT 21H
    
    LEA DX,M4
    MOV AH,9
    INT 21H
    
    LEA DX,MS5
    MOV AH,9
    INT 21H
    
    LEA DX,M5
    MOV AH,9
    INT 21H
    
    LEA DX,M6
    MOV AH,9
    INT 21H
    
    LEA DX,M7
    MOV AH,9
    INT 21H
    
    LEA DX,MR1
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    

     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE Fiction
    
    CMP BH,2
    JE Novel   
     
    CMP BH,3
    JE Science_Fiction 
    
    
    CMP BH,4
    JE Comics
     
     
    CMP BH,5
    JE Mystery
    
    CMP BH,6
    JE Historic
    
    
    JMP INVALID
    
       
    
    
   Fiction:
    
    
    LEA DX,M100   ;Fiction STARTS
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
   
    LEA DX,M9    ;item 1
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M10  ;item 2
    MOV AH,9
    INT 21H
    
    LEA DX,M11
    MOV AH,9          ;3nd
    INT 21H 
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H  
    
    ;GO BACK TO Home Page
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H             ;MAIN MENU
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
             
   FIFTY:
    MOV BL,4
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,36
    INT 21H
    MOV DL,45
    INT 21H
           
           
    ;GO BACK TO homepage
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48    ;MAIN  MENU
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
             
   SEVENTY:
    MOV BL,7
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,36
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO home 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H       ;MAIN MENU
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
         
   EIGHTY:
    MOV BL,8
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,36
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO homepage
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2    ;MAIN MENU
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT         
    
    JMP EXIT
    
    
    
    
     
     
    Novel:
                    ;Novel
    LEA DX,M8
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
     
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
     
    LEA DX,MR5
    MOV AH,9
    INT 21H
                  ;STAR BORDER
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    
     
    
    LEA DX,M25               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M26               ;2th
    MOV AH,9
    INT 21H
    
    LEA DX,M27               ;3rd
    MOV AH,9
    INT 21H  
    
    LEA DX,M28               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,M29               ;5th
    MOV AH,9
    INT 21H                        
    
    
    LEA DX,M30               ;6th
    MOV AH,9
    INT 21H 
    


    
    LEA DX,MR4
    MOV AH,9
    INT 21H
                    ;STAR BORDER
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE NINETY
    
    CMP BL,2
    JE NINETY
    
    CMP BL,3
    JE THIRTY
    
    CMP BL,4
    JE NINETY
    
    CMP BL,5
    JE NINETY
    
    CMP BL,6
    JE TEN
    
    CMP BL,7
    JE THIRTY
    
    CMP BL,8
    JE THIRTY 
    
    CMP BL,9
    JE THIRTY
    
    
    JMP INVALID
    
   TEN:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H  
    
    ;FOR /- PRINT
    MOV DL,36
    INT 21H

     
    ;GO BACK TO home 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H          
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
   
   
    
   TWENTY:
   
    MOV BL,2
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,36
    INT 21H

    ;GO BACK TO Home
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
   THIRTY:
   
    MOV BL,3
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H  
    
    ;FOR /- PRINT
    MOV DL,36
    INT 21H

    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
    
   SIXTY: 
   
    MOV BL,6
   
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    ;FOR /- PRINT
    MOV DL,36
    INT 21H

    ;GO BACK TO MAIN MENU 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H             ;MAIN MENU
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
      
   NINETY:
    MOV BL,9
    
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,36
    INT 21H

    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
    
    
 
    
    JMP EXIT 
    
    
    
    
    
    
    
    
  Science_Fiction:
    LEA DX,M100
    MOV AH,9         ;Science Fiction
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H      ;BORDER
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,M18         ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M19
    MOV AH,9              ;12th
    INT 21H
    
    
    LEA DX,M20          ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M21
    MOV AH,9                ;4th
    INT 21H  
    
    
    LEA DX,M22              ;5th
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M23               ;6th
    MOV AH,9
    INT 21H
    
     
    LEA DX,M34               ;10th
    MOV AH,9
    INT 21H
    
    
    LEA DX,M35               ;11th
    MOV AH,9
    INT 21H 
    
    LEA DX,M36               ;12th
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5   ;BORDER
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H   
    
 
    
    ;GO BACK TO homepage
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2    ;MAIN MENU
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT         
    
    JMP EXIT
 
    
    
    
    
    
    
    
    
    
  Comics:
    LEA DX,M100
    MOV AH,9         ;Comics STARTS
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,M41               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M42               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M43               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M44               ;4th
    MOV AH,9
    INT 21H
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H 
    


    
    ;GO BACK TO homepage
    
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
     
   
 
    
    JMP EXIT
    
    
    
  Mystery:
  
    LEA DX,M8
    MOV AH,9        ;Mystery    STARTS
    INT 21H 
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    LEA DX,M45               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M46               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M47               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M48               ;4th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
 
    ;GO BACK TO homepage
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    
    
    
    
    JMP EXIT
    
    
   Historic:  
    LEA DX,M8
    MOV AH,9            ;Historic STARTS
    INT 21H 
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
   
   
    LEA DX,M49               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M50               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M51               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M52               ;4th
    MOV AH,9
    INT 21H 
    
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
     ;GO BACK TO homepage
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    CMP AL,1
    JE TOP
    
    JMP EXIT:
       
   INVALID:
   
    LEA DX,M55
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M56 
    MOV AH,9
    INT 21H 
       
    JMP EXIT    
    
     EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN




