BITS 64
default rel

section	.data
msg: db "Hello world", 0x0A ; message + newline

section	.text
global	_start

_start:
	; write(1, msg, len)
	mov	rax, 1	; sys_write
	mov	rdi, 1	; fd = 1 stdout
	lea	rsi, [rel msg]	; pointer to message
	mov	rdx, 12	; 12 bytes to write to stdout
	syscall

	mov	rax, 60
	xor	rdi, rdi
	syscall
