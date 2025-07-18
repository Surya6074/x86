section .data

section .text
	global _start

_start:
	mov bl,0b11111111
	mov cl,0b0001
	add bl,cl
	adc bh,0
	int 80h
