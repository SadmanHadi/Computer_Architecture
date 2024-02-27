;Write a program that prompts the user to enter a character, and on subsequent lines prints its ASCII code in binary, and the number of 1 bit in its ASCII code. Hint: Use 2 Procedures MAIN and TASK



.MODEL SMALL
.STACK 100H
.DATA  
INPUT DW 0AH,0DH,"TYPE CHARACTER:$"
ASCI DW 0AH,0DH,"THE ASCII CODE IN BINARY:$"  
THIRDP DW 0AH,0DH,"NUMBER OF 1'S: ",0AH,0DH,"$"  
A DB ?  
COUNT_1 db ?
COUNT_0 db ?
SOS db 0ah,0dh,'$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX, INPUT
    MOV AH,09H
    INT 21H
    
    MOV AH,01H
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
    
    MOV COUNT_1,30H
    MOV COUNT_0,30H
    
    MOV BL,A 
    
    LEA DX, ASCI
    MOV AH,09H
    INT 21H
   
    
    DOIT:
        LEA DX,SOS
        MOV AH,09H
        INT 21H
        MOV CL,8
    
    ROTATE:
        ROL BL,1
        JNC ZERO
        JC ONE
    
    ZERO:
        INC COUNT_0
        CMP CL,4
        JL DO1
        
        MOV AH,02H
        MOV DL,'0'
        INT 21H 
        DO1:
        JMP LOOPER
      
    ONE:
        INC COUNT_1
        CMP CL,4
        JL DO2
        
        MOV AH,2
        MOV DL,'1'
        INT 21H
        DO2:
            JMP LOOPER
    
    LOOPER:
        INC CL
        CMP CL,16
        JL ROTATE 
        
    LEA DX,THIRDP
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,COUNT_1
    INT 21H   
        
    
    RET
    TASK ENDP

END MAIN  
     
