;Suppose the  register ax = 5, bx =6, Swap the numbers of ax and bx so that ax gets 6 and bx gets 5. use the concept of Stack. Push and Pop instructions must use. 


.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX,05H
    MOV BX,06H
    PUSH AX
    PUSH BX
    POP AX
    POP BX
    EXIT:                
        MOV AH,04CH
        INT 21H
        MAIN ENDP
END MAIN



