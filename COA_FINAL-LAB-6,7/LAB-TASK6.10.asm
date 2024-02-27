;Write some code to read character until a blank is read.

.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV AH,1
    REPEAT:
        INT 21H
        CMP AL,' '
        JNE REPEAT
        JMP EXIT
    
    EXIT:
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN