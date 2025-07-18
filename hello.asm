section .data
	msg db "Hello Venom!", 0xa
	len equ $ - msg

section .text
	global _start

_start:
	MOV eax, 4
	MOV ebx, 1
	MOV ecx, msg
	MOV edx, len
	INT 0x80

	MOV eax,1
	mov ebx, ebx
	INT 0x80

