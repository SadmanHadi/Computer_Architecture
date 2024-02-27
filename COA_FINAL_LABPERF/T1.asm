.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    
    CALL SUM 
    
    EXIT:
        MOV AH,04CH
        INT 21H
    
    MAIN ENDP
SUM PROC 
    
    MOV AX,2
    MOV BX,1
    MOV CX,50
    
    FOR:
        ADD BX,AX
    LOOP FOR
    RET
    SUM ENDP 

END MAIN




