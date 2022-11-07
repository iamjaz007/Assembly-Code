ORG 100H

     MOV CX, 26                   

     MOV AH, 2                   
     MOV DL, 65
                 

     LP1:                       
       INT 21H                   

       INC DL                     
       DEC CX                     
 
     JNZ LP1                    

     MOV AH, 4CH                  
     INT 21H