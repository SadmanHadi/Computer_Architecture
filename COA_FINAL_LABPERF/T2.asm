.MODEL SMALL
.STACK 100H
.DATA
SPACE DW 0AH,0DH,24H  
HEXAT DW "HEXA: ",0AH,0DH,24H  
BIN DW "BINARY: ",0AH,0DH,24H
 COUNT DW ?
.CODE
MAIN PROC   
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,BIN
    MOV AH,09H
    INT 21H
    
    CALL BINARY   
    
    LEA DX,SPACE
    MOV AH,09H
    INT 21H
    
    LEA DX,HEXAT
    MOV AH,09H
    INT 21H
    CALL HEXA
    
    MOV AH,04CH
    INT 21H
    MAIN ENDP

BINARY PROC
    XOR BX,BX
    
    MOV AH,1
    INT 21H
    
    WHILEW:
    CMP AL,0DH
    JE END_WHILEW
    AND AL,0FH
    SHL BX,1
    OR BL,AL
    INT 21H
    JMP WHILEW
    
        
    END_WHILEW:
    MOV AH,2
    MOV DX,0AH
    INT 21H
    
    MOV DX,0DH
    INT 21H
    
    MOV CX,16
    
    OUTPUTB:    
    ROL BX,1
    JC DISP1
    JNC DISP0
        
    DISP1:
    MOV AH,2
    MOV DX,31H
    INT 21H
    JMP GOB
    
    DISP0:
    MOV AH,2
    MOV DX,30H
    INT 21H
    
    GOB:    
    LOOP OUTPUTB
        
    RET
    BINARY ENDP

HEXA PROC  
    MOV AX,@DATA
    MOV DS,AX
    
    XOR BX,BX
    
    MOV CL,4
    
    MOV AH,1
    INT 21H
    
    WHILE:
    CMP AL,0DH
    JE END_WHILE
    CMP AL,39H
    JG LETTER
    AND AL,0FH
    JMP SHIFT
    
    LETTER:
    SUB AL,37H
    
    SHIFT:
    SHL BX,CL
    OR BL,AL
    INT 21H
    JMP WHILE


        
    END_WHILE:
    MOV AH,2
    MOV DX,0AH
    INT 21H
    
    MOV DX,0DH
    INT 21H
    
    MOV COUNT,4
    
    OUTPUTH:
    MOV DL,BH
    SHR DL,CL
    MOV AH,2

    CMP DL,10
    JL NUM
    JGE LET

    NUM:
    OR DL,30H
    INT 21H
    JMP GOH
    
    LET:
    ADD DL,37H
    INT 21H
    
    GOH:
    ROL BX,CL
    
    DEC COUNT
    CMP COUNT,0
    JNE OUTPUTH
    
    RET
    HEXA ENDP
END MAIN