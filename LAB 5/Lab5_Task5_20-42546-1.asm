.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AX,7
    MOV BX,6
    MOV CX,5
    CMP AX,BX
    JB PRINT
    CMP BX,CX
    JB PRINT
    MOV DX,1
    JMP EXIT
    PRINT:
        MOV DX,0
        JMP EXIT
    
    EXIT:
       MOV AX,4ch
       INT 21h
       MAIN ENDP
END MAIN