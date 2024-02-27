
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data 
A dw 3d
B dw 2d

.code  


main proc  
    
    mov ax,@data
    mov ds,ax
    
    ;addition
    mov ax,a
    mov bx,b
    add ax,bx
    
    mov ah,2
    mov dx,ax
    int 21h
    
    ;subtraction
    mov ax,a
    mov bx,b
    sub ax,bx
    
    mov ah,2
    mov dx,ax
    int 21h   
    
    ;multiplication
    mov ax,a
    mov bx,b
    mul bx
    mov ah,2
    mov dx,ax
    int 21h
    
    exit:
        mov ax,4ch
        int 21h
        main endp
end main