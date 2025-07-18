section .data
	list DB "ABCD",0

section .text
	global _start

_start:
	mov eax, 0

_start_loop:
	mov bl, [list + eax]
	inc eax
	cmp eax, 4
	je  _end_loop
	jne _start_loop

_end_loop:
	mov eax, 1
	mov ebx, 1
	int 80h
