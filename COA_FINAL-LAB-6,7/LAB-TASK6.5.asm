; If AL contains 1 or 3, display "o"; if AL contains 2 or 4, display "e"
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV AL,4
    
    CMP AL,1
    JE PRINT0
    CMP AL,3
    JE PRINT0 
    CMP AL,2
    JE PRINTE
    CMP AL,4 
    JE PRINTE
    
    PRINT0:
        MOV DL,'o'
        JMP DISPLAY
    PRINTE: 
        MOV DL,'e'
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