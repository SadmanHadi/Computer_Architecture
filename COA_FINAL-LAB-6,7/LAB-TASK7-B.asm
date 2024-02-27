
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h  
.DATA
EVENd DW 0AH,0DH,'EVEN NUMBER$'
ODDd DW 0AH,0DH,'ODD NUMBER$'
.code
main proc 
    MOV AX,@DATA
    MOV DS,AX
      
    MOV Ah,1
    INT 21H
    MOV DL,AL
    CMP DL,030H
    JGE COMPA 
    JMP EXIT
    COMPA:
        CMP DL,039H
        JLE COMPZ
        JMP EXIT
        COMPZ:    
            TEST DL,1
            JZ EVEN
            JMP ODD
            
            EVEN:
                 LEA DX,EVENd
                 MOV AH,09H
                 INT 21H
                 JMP EXIT
            ODD:
                 LEA DX,ODDd
                 MOV AH,09H
                 INT 21H
                 JMP EXIT
    
    EXIT:
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN