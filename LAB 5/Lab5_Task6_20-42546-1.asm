.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AX,7
    MOV BX,6
    MOV CX,5  
    
    CMP AX,BX
    JB PRINTA 
    
    CMP BX,CX
    JB PRINTB  
    
    MOV CX,0
    JMP EXIT 
    
    PRINTA:
        MOV AX,0
        JMP EXIT 
         
    PRINTB:
        MOV BX,0
        JMP EXIT
    
    EXIT:
       MOV AX,4ch
       INT 21h
       MAIN ENDP
END MAIN