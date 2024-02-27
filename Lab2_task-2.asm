
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h


.code  


main proc
    
    ;addition
    mov ax,10
    mov bx,5
    add ax,bx
    mov dx,ax
    
    ;subtraction
    mov ax,10
    mov bx,5
    sub ax,bx
    mov dx,ax
    
    ;multiplication
    mov ax,10
    mov bx,5
    mul bx
    mov dx,ax
    
    exit:
        mov ax,4ch
        int 21h
        main endp
end main