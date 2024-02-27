.MODEL SMALL
.STACK 100H
.DATA
ONE DW 0AH,0DH,"Enter Small Letter: $"
NEW DW 0AH,0DH,24H

A DB ?


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,ONE
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV A,AL
    
    CALL TASK
    
    MOV AH,4CH
    INT 21H
MAIN ENDP    

TASK PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    XOR A,00100000B
    
    MOV AH,9
    LEA DX,NEW
    INT 21H
    
    MOV AH,2
    MOV DL,A
    INT 21H
        
    RET
    
TASK ENDP          

END MAIN