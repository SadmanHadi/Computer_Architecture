;Write a program that to that has three procedures named MAIN,  Second and Third. Print one greetings from each of the procedures. 


.MODEL SMALL
.STACK 100H
.DATA  
MAINP DW 0AH,0DH,"HI, I AM FROM MAIN PROCEDURE",0AH,0DH,"$"
SECONDP DW 0AH,0DH,"HI, I AM FROM SECOND PROCEDURE",0AH,0DH,"$"  
THIRDP DW 0AH,0DH,"HI, I AM FROM THIRD PROCEDURE",0AH,0DH,"$"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX, MAINP
    MOV AH,09H
    INT 21H
    
    CALL SECOND
    CALL THIRD    
    
    EXIT:                
        MOV AH,04CH
        INT 21H
        MAIN ENDP

SECOND PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX, SECONDP
    MOV AH,09H
    INT 21H
    
    RET
    SECOND ENDP

THIRD PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX, THIRDP
    MOV AH,09H
    INT 21H
    
    RET
    THIRD ENDP
END MAIN

