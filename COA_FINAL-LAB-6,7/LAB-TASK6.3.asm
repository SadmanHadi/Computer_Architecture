;Suppose AL and BL contain extended ASCII characters. Display the one that comes first in the character sequence.

.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV AH,1
    INT 21H 
    MOV BL,AL 
    MOV AH,1
    INT 21H
    
    CMP AL,BL
    JNBE ELSE_
    MOV DL,AL
    JMP DISPLAY  
    
    ELSE_:
        MOV DL,BL
        JMP DISPLAY
    
    DISPLAY: 
        MOV AH,2
        INT 21H
        JMP EXIT
    
    EXIT:
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN