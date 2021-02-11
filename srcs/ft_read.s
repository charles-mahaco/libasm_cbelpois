global	ft_read
extern	__errno_location

section	.text

ft_read:
	push rsp
	mov rax, 0
	syscall
	cmp rax, 0
	jl error_handling
	jmp return

error_handling:
	imul	rax, -1
	mov		rdx, rax
	call	__errno_location
	mov		[rax], rdx
	mov		rax, -1

return:
	pop rsp
	ret