.MODEL SMALL 
.STACK 100H 

.CODE 
MAIN PROC 

    MOV AL,1
    
    CMP AL,0
    JBE COMPA
    JMP COMPB
    COMPA:    
        MOV AH,0FFh
        MOV DH,AH
        JMP DISPLAY
    COMPB:
        MOV AH,30h
        MOV DH,AH
        JMP DISPLAY
        
    DISPLAY:
    MOV AH,2
    INT 21h 
    JMP EXIT 
      
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN