                                                                       
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

x DW ? 
y dw ?

.code  

    

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,1     ;higher bit val 1 for input
    int 21h
    mov x,ax 
    add x,32
    
    
    mov ah,2
    mov dl,0ah   ;For new line but not symmetric
    int 21h
    mov dl,0dh   ;For carrying return to a symetric new line
    int 21h
    
    mov ah,2     ;;higher bit val 2 for ouput
    mov dx,x
    int 21h
    
    mov ah,2
    mov dl,0ah   ;For new line but not symmetric
    int 21h
    mov dl,0dh   ;For carrying return to a symetric new line
    int 21h 
    
     
    mov ah,1
    int 21h
    mov y,ax 
    sub y,32
    
    mov ah,2
    mov dl,0ah   ;For new line but not symmetric
    int 21h
    mov dl,0dh   ;For carrying return to a symetric new line
    int 21h 
             
    mov ah,2     ;;higher bit val 2 for ouput
    mov dx,y
    int 21h 
    
    exit:
        mov ax,4ch
        int 21h
        main endp
end main




