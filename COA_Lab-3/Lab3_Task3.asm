
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100h
.DATA

MSG DB 0AH,0DH,'HELLO WORLD$'

.CODE

MAIN PROC 
    
    ;Infinite Loop

    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,5
    
    PRINT_LOOP:
      
    LEA DX, MSG.
    MOV AH, 9
    INT 21h
    
    JG PRINT_LOOP 
    
    Exit:
    MOV AH,4CH
    INT 21h


MAIN ENDP
END MAIN




