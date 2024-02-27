
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

A DW 2h
B DW 5h
arr db 10h,20h,30h
SUM DW ?

.code  

data_var proc     ;basic add operation with predefined variables
    mov ax, @data
    mov ds,ax
    mov ax,a
    add ax,b
    mov ah,2
    mov dx,ax
    int 21h
    ;mov sum,ax
    mov ax,4ch
    int 21h
    

main proc
    mov ah,1     ;higher bit val 1 for input
    int 21h
    mov bx,ax
    
    mov ah,2
    mov dl,0ah   ;For new line but not symmetric
    int 21h
    mov dl,0dh   ;For carrying return to a symetric new line
    int 21h
    
    mov ah,2     ;;higher bit val 2 for ouput
    mov dx,bx
    int 21h
    
    exit:
        mov ax,4ch
        int 21h
        main endp
end main