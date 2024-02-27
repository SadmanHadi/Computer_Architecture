;Write a program that prompts the user to enter a character, and on subsequent lines prints its ASCII code in binary, and the number of 0 bit in its ASCII code. Hint: Use 2 Procedures MAIN and TASK


.MODEL SMALL
.STACK 100H
.DATA  
WELC DW 0AH,0DH,"WELCOME TO MY CALCULATOR!$"
INPUT DW 0AH,0DH,"PLEASE USER ENTER A HEX DIGIT (A-F):$"  
OUTPUT DW 0AH,0DH,"IN DECIMAL IT IS: ", 0AH,0DH,'$'  
ENDD DW 0AH,0DH,"THANK YOU FOR USING MY CALCULATOR", 0AH,0DH,'HAVE A GOOD DAY$'
A DB ?  
B db ?
C db ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX, WELC 
    MOV AH, 09H
    INT 21H
    
    LEA DX,INPUT
    MOV AH,09H
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV A,AL
    
    
    CALL TASK
    
    EXIT:                
        MOV AH,04CH
        INT 21H
        MAIN ENDP

TASK PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV BL,A
    
    CMP BL,65
    JE PRINT
    JMP EXIT
    
    PRINT:
        CMP BL,90
        JGE PRINT_
        JMP EXIT0
        PRINT_:
            SUB BL,55
            ADD BL,48
            CMP BL,10
            JE PRINT10
            JMP EXIT0
            PRINT10:
                MOV AH,02H
                MOV DX,'10'
                INT 21H
    EXIT0:
    MOV AH,2
    MOV DX,'P'
    INT 21H
    
    RET
    TASK ENDP

END MAIN  
     
