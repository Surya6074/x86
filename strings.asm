section .data
	char DB 1,2,4,5

section .text 
	global _start

_start: 
	mov bl, [char]
	mov eax, 1
	int 0x80


