section .data

section .text
	global _start

_start: 
	mov bx, 1
	mov cl, 1
	mov dh, 1
	mov eax, 1
	int 0x80
