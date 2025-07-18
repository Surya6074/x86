section .text
	global main 

addTwoNumbers:
	push ebp
	mov ebp, esp
	mov eax, [ebp + 8]
	add eax, [ebp + 12]
	pop ebp	
	ret	

main:
	push 1
	push 2
	call addTwoNumbers
	mov ebx, eax
	mov eax, 1
	int 80h
