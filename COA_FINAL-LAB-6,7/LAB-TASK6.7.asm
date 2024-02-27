;Read a character. If it's "y" or "Y", display it; otherwise, terminate the program.

.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV AH,1
    INT 21H
    
    CMP AL,'y'
    JE DISPLAY
    CMP AL,'Y'
    JE DISPLAY
    JMP EXIT 
    
    DISPLAY:  
        MOV DL,AL
        MOV AH,2
        INT 21H
        JMP EXIT
    
    EXIT:
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN




