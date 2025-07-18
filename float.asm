section .data
	x DD 3.14
	y DD 2.1

section .text
	global _start

_start:
	movss xmm0, [x]
	movss xmm1, [y]
	
	movss xmm2, xmm0
	addss xmm2, xmm1
	
	movss xmm3, xmm2
	
	ucomiss xmm2, xmm3
	ja greater
	je equal
	jmp end

greater:
	mov eax, 2
	jmp end


equal:
	mov eax, 4
	jmp end


end:
	mov eax, 1
	int 80h
