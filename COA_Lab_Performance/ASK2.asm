
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100H
.DATA   
PROMPT DW 0AH,0DH,'ENTER THREE LETTER: $'
ASTER DW '**********',0DH,0AH,'$'
A DB ? 
B DB ?
C DB ? 
X DW '*$'
NL DW 0DH,0AH,'$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,02H
    MOV DX,'?'
    INT 21H 
    
    LEA DX,PROMPT
    MOV AH, 09H
    INT 21H
    
    MOV AH, 01H
    INT 21H
    MOV A,AL 
    
    MOV AH,01H
    INT 21H
    MOV B,AL
    
    MOV AH,01H
    INT 21H
    MOV C,AL
    
    LEA DX,NL
    MOV AH,09H
    INT 21H
    
    MOV CX,4H
    
    PRINT_LOOP:
        LEA DX,ASTER
        MOV AH,09H
        INT 21H
        DEC CX
    JG PRINT_LOOP
    
    MOV CX,3H
    
    AS1:
        LEA DX,X
        MOV AH,09H
        INT 21H
        DEC CX
    JG AS1
    
    
    MOV DL,A
    MOV AH,2H
    INT 21H 
    
    MOV DL,B
    MOV AH,2H
    INT 21H
    
    MOV DL,C
    MOV AH,2H
    INT 21H
    
    
    MOV CX,4H
    
    AS12:
        LEA DX,X
        MOV AH,09H
        INT 21H
        DEC CX
    JG AS12 
    
    LEA DX,NL
    MOV AH,9H
    INT 21H 
    
    MOV CX,5H
    
    LOOP_END:
        LEA DX,ASTER
        MOV AH,09H
        INT 21H
        DEC CX
    JG LOOP_END
    
    
    EXIT:
    MOV AX,4CH
    INT 21H
    MAIN ENDP
END MAIN




