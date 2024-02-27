
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100h
.DATA

.CODE

MAIN PROC  
    
      ;OUTPUTING SINGLE CHARACTERS
      
      MOV AH,2
      MOV DL,'M'
      INT 21H
      
      MOV AH,2
      MOV DL,'O'
      INT 21H 
      
      MOV AH,2
      MOV DL,'H'
      INT 21H  
      
      MOV AH,2
      MOV DL,'I'
      INT 21H
    
      MOV AH,2
      MOV DL,'T'
      INT 21H


Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN



