;Reverse three characters 123, output should look like as follows: Hints, use the concept of push and pop. 


.MODEL SMALL
.STACK 100H
.DATA  
BEFORE DW 0AH,0DH,"BEFORE SWAP:",0AH,0DH,"$"
AFTER DW 0AH,0DH,"AFTER SWAP:",0AH,0DH,"$"   
A DW 1
B DW 2
C DW 3
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    ADD A,48
    ADD B,48
    ADD C,48
    
    LEA DX,BEFORE
    MOV AH,9H
    INT 21H   
     
    MOV AH,02H 
    MOV DX,A
    INT 21H 
    
    MOV AH,02H 
    MOV DX,B
    INT 21H 
    
    MOV AH,02H 
    MOV DX,C
    INT 21H
    
    PUSH A
    PUSH B
    PUSH C
    POP A
    POP B
    POP C
    
    LEA DX,AFTER
    MOV AH,9H
    INT 21H   
     
    MOV AH,02H 
    MOV DX,A
    INT 21H 
    
    MOV AH,02H 
    MOV DX,B
    INT 21H 
    
    MOV AH,02H 
    MOV DX,C
    INT 21H
    
    
    EXIT:                
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN



