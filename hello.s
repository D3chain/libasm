SECTION	.data
msg	db	'Hello World!', 0Ah

SECTION	.text
global	_start

_start:
	
	mov	rdi, 1
	mov	rsi, msg
	mov	rdx, 13
	mov	rax, 1
	syscall
