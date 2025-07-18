extern exit
extern printf

section .data
	msg DD "Venom",0
	format DB "Is this %s!", 0xa, 0

section .text
	global main


main:
	push msg
	push format
	call printf
	push 1
 	call exit
