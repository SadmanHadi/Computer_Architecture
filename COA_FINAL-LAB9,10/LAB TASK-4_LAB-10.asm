;Write a program that prompts the user to enter a character, and on subsequent lines prints its ASCII code in binary, and the number of 0 bit in its ASCII code. Hint: Use 2 Procedures MAIN and TASK


.MODEL SMALL
.STACK 100H
.DATA  
LETTER1 DW 0AH,0DH,"PLASE ENTER LETTER 1:$"
LETTER2 DW 0AH,0DH,"PLEASE ENTER LETER 2:$"  
LETTER3 DW 0AH,0DH,"PLEASE ENTER LETTER 3: $"  
OUTPUT DW 0AH,0DH,"OUTPUT: ", 0AH,0DH,'$'
A DB ?  
B db ?
C db ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,LETTER1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV A,AL 
    
    LEA DX,LETTER2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV B,AL 
    
    LEA DX,LETTER3
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV C,AL
    
    
    CALL TASK
    
    EXIT:                
        MOV AH,04CH
        INT 21H
        MAIN ENDP

TASK PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX,OUTPUT
    MOV AH,9
    INT 21H
    
    MOV DL,A
    MOV AH,2
    INT 21H  
    
    MOV DL,B
    MOV AH,2
    INT 21H
    
    MOV DL,C
    MOV AH,2
    INT 21H
    
    RET
    TASK ENDP

END MAIN  
     
