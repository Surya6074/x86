section .text
	global _start

_start:
	mov eax, 2
	shr eax, 1
	mov eax, 2
	shl eax, 1
	mov eax, 2
	shr eax, 4
	int 80h
