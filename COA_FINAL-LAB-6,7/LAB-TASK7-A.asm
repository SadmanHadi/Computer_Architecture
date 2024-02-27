
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.code
main proc   
    MOV BL, 00100000B
    MOV Ah,1
    INT 21H
    MOV DL,AL
    CMP DL,061H
    JGE COMPA 
    JMP BIG
    COMPA:
        CMP DL,07AH
        JLE COMPZ
        JMP EXIT
        COMPZ:    
            XOR DL,BL
            MOV AH,2
            INT 21H 
            JMP EXIT 
    BIG:  
        CMP DL,041H
        JGE COMPAL
        JMP EXIT
        COMPAL:
            CMP DL,05AH
            JLE COMPZL
            JMP EXIT
            COMPZL:    
                XOR DL,BL
                MOV AH,2
                INT 21H 
                
                JMP EXIT
    
    EXIT:
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN