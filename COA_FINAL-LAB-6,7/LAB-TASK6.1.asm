;suppose AX and BX contain signed numbers. Write some rcode to put the biggest one in CX.

.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV AX,033H
    MOV CX,AX
    MOV BX,039H
    CMP BX,CX
    JLE EXIT  
    MOV CX,BX 
    MOV AH,2
    MOV DX,CX
    INT 21H 
    EXIT:
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN




