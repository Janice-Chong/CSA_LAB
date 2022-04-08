INCLUDE Irvine32.inc

.data
    ;array WORD 0000h,2000h,5000h,9000h, 0A00h
    array WORD 0000h,0002h,0005h,0009h, 000Ah
    clear byte 0h

.code
main proc
    movzx eax, clear
    movzx ebx, clear
    movzx ecx, clear
    movzx edx, clear
    movzx esi, clear

    mov ax, array
    mov bx, array+2
    sub bx, ax
    add cx, bx
    mov ax, bx

    mov bx, array+4
    mov dx, bx
    sub bx, ax
    add cx, bx
    mov ax, dx

    mov bx, array+6
    mov dx, bx
    sub bx, ax
    add cx, bx
    mov ax, dx

    mov bx, array+8
    mov dx, bx
    sub bx, ax
    add cx, bx
    mov ax, dx

exit
main ENDP
END main