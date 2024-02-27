;Read a character, and if it's an uppercase letter, display it.

.model small
.stack 100h
.code
main proc
    MOV AH,1
    INT 21H
    MOV DL,AL
    CMP DL,"A"
    JGE COMPA
    JMP EXIT 
    COMPA:
        CMP DL,"Z"
        JLE COMPZ
        JMP EXIT
        COMPZ:
            MOV AH,2
            INT 21H
            JMP EXIT
    
    EXIT:
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN