;Write some code to count the number of characters in n input line.

.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV DX,0
    MOV AH,1
    INT 21H
    WHILE:
        CMP AL,0DH
        JE EXIT
        INC DX
        INT 21H
        JMP WHILE 
    
    
    EXIT:
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN