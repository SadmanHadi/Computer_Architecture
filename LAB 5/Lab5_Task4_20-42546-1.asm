.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AX,5
    MOV BX,6
    MOV CX,7
    CMP AX,BX
    JB CHECKA
    JMP EXIT
    MOV AX,0
    CHECKA:
        CMP BX,CX
        JB CHECKB
        MOV BX,0
        JMP EXIT
    CHECKB:
        
        MOV AX,0 
        MOV AH,2
        MOV DX,AX
        INT 21H
        JMP EXIT
    
    EXIT:
       MOV AX,4ch
       INT 21h
       MAIN ENDP
END MAIN