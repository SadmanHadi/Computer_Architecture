;Replace the number in AX by its absolute value.

.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV AX,033H
    CMP AX,0
    JNL EXIT 
    NEG AX    
    EXIT:
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN




