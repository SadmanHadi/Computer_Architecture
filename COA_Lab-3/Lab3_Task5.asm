
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100h
.DATA


MSG_NAME DW 0AH,0DH,'NAME: MD. MOHITUZZAMAN BHUYIAN','$'
MSG_DOB DW 0AH,0DH,'DOB: 26-11-2000','$' 
MSG_ID DW 0AH,0DH,'STUDENT ID: 20-42546-1','$'


.CODE

MAIN PROC 
    
    ;DISPLAY FULL STRING

    MOV AX,@DATA
    MOV DS,AX
   
  INPUT:    
    LEA DX, MSG_NAME
    MOV AH, 9
    INT 21h  
    
    LEA DX, MSG_DOB
    MOV AH, 9
    INT 21H 
    
    LEA DX, MSG_ID
    MOV AH, 9
    INT 21H

    Exit:
    MOV AH,4CH
    INT 21h


MAIN ENDP
END MAIN




