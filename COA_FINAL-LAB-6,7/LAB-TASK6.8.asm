; Write a count-controlled loop to display a row of 80 stars.

.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV CX,80
    MOV AH,2
    MOV DL,'*'
    LOOP_:
        INT 21H 
        
        LOOP LOOP_
    
    EXIT:
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN




