section .bss
	num RESB 2

section .data
	num1 DB 3 DUP(8)


section .text
	 global _start 

_start:
	mov bl, 1
	mov bl, [num1]
	mov [num],bl
	mov [num+1],bl

	mov eax, 1
	int 0x80

