.MODEL SMALL 
.STACK 100H 

.CODE 
MAIN PROC 

    MOV AL,2
    
    CMP AL,1
    JE ODD
    CMP AL,3
    JE ODD
    CMP AL,2
    JE EVEN
    CMP AL,4
    JE EVEN 
     
    ODD:
        MOV DL,'o'
        JMP DISPLAY  
     
    EVEN:
        MOV DL,'e'
        JMP DISPLAY
    
    DISPLAY:
    MOV AH,2
    INT 21h  
      
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN