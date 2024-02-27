
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100h
.DATA

MSG DB 0AH,0DH,'HELLO WORLD$' 
MSG_END DB 0AH,0DH,'EXIT WORLD$' 

.CODE

MAIN PROC  
    
    ;Controlled loop

    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,3
    
    PRINT_LOOP:
      
    LEA DX, MSG.
    MOV AH, 9
    INT 21h
    dec cx
    
    JG PRINT_LOOP 
    
    LEA DX,MSG_END  
    MOV AH,9
    INT 21H

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN



