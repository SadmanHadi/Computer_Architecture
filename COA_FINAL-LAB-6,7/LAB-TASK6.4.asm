;If AX contains a negative number, put -1 In BX; if AX contains 0, put O In BX; if AX contains a positive number, put 1 In BX.

.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV AX,2
    
    CMP AX,0
    JL NEGATIVE
    JE ZERO
    JG POSITIVE
    
    NEGATIVE:
        MOV BX,-1
        MOV DX,BX
        JMP DISPLAY
        
    ZERO:
        MOV BX,0 
        ADD BX,030H
        MOV DX,BX
        JMP DISPLAY
        
    POSITIVE:
        MOV BX,1 
        ADD BX,030H
        MOV DX,BX
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