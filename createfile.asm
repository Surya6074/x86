section .data
	pathname DD "/home/venom/Downloads/text.txt"
	toWrite DD "I am venom!"

section .bss
	buffer: resb 1024


section .text
	global main

main:
	mov eax, 5
	mov ebx, pathname
	mov ecx, 101o
	mov edx, 700o
	int 80h

	mov ebx, eax
	mov eax, 4
	mov ecx, toWrite
	mov edx, 20
	int 80h
	
