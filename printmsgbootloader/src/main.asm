
org 0x7c00
bits 16


main:
	mov ax, 0
	mov ds, ax
	mov es, ax
	mov ss, ax

	mov sp, 0x7c00
	mov si, msg
	call print
	hlt

print:
	push si
	push ax
	push bx

print_loop:
	lodsb
	or al, al
	jz exit_print
	
	mov ah, 0x0E
	mov bh, 0
	int 0x10
	jmp print_loop
	
exit_print:
	pop bx
	pop ax
	pop si
	ret

msg:	
	DB 0x0D, 0x0A
	DB 0x0D, 0x0A
	DB "welcome to Venom Os!", 0x0D, 0x0A
	DB "Enjoy Code is Fun!", 0x0D, 0x0A
	DB 0

times 510-($-$$) db 0
dw 0AA55h
