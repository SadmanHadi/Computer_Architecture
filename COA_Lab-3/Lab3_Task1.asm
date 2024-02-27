.MODEL SMALL
.STACK 100h
.DATA

MSG DW '?$'
X   DW ?
Y   DW ?
MSGED_1   DB 0AH,0DH,'The sum of $'   
MSGED_2   DB ' and $'
MSGED_3   DB ' is $'

.CODE

MAIN PROC 
    
    ;Code for taking displaying text and finding the sum

    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    mov ah,1
    int 21h
    mov x,ax
    
    MOV AH,1
    INT 21H 
    MOV Y,AX
   
    
    LEA DX,MSGED_1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DX,X
    INT 21H
    
    LEA DX,MSGED_2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DX,Y
    INT 21H   
    
    LEA DX,MSGED_3
    MOV AH,9
    INT 21H
    
    MOV AX,X
    MOV BX,Y
    SUB AX,48
    SUB BX,48
    ADD BX,AX
    ADD BX,48
    
    MOV AH,2
    MOV DX,BX
    INT 21H
    
    
    Exit:
    MOV AH,4CH
    INT 21h
    
    
    MAIN ENDP
END MAIN