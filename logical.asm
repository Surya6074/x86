section .text
	global _start

_start:
	mov eax, 0b1010
	mov ebx, 0b0101
	and eax, ebx
	mov eax, 0b1111
	mov ebx, 0b0101
	or eax, ebx
	mov eax, 0b1111
	not eax
	int 80h
