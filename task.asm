.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV CX,1  
    MOV AH,1
    INT 21H
    
     L1:
       CMP AL,0DH
       JE L2
       PUSH AX
       INC CX
       INT 21H
       JMP L1 
     L2: 
       MOV AH,2
       MOV DL,10
       INT 21H
       MOV DL,13
       INT 21H
   
       JCXZ EXIT
   
    CALL PRINT
  
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP  
PRINT PROC
   TOP:
   POP DX
   INT 21H
   LOOP TOP 
   RET
   PRINT ENDP
END MAIN