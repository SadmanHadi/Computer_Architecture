
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100H
.DATA
EQUAL DW 0AH,0DH,'EQUAL TO 7$'
GREAT DW 0AH,0DH,'GREATER THAN 7$'
LESS DW 0AH,0DH,'LESS THAN 7$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CL,07H
    ADD CL,030H 
    
    MOV AH,01h
    INT 21H 
    MOV BL,AL 
    
    CMP BL,CL
    
    JE CONA
    JB CONB
    JNBE CONC
    JMP EXIT
    
    CONA:
        LEA DX,EQUAL
        MOV AH,09H
        INT 21H
        JMP EXIT
    CONB:
        LEA DX,LESS
        MOV AH,09H
        INT 21H
        JMP EXIT
    CONC:
        LEA DX,GREAT
        MOV AH,09H
        INT 21H
        JMP EXIT
    
    
    EXIT:
    MOV AX,4CH
    INT 21H
    MAIN ENDP
END MAIN




