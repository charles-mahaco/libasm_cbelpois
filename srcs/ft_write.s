global	ft_write
extern	__errno_location

section	.text

ft_write:
	push	rsp	
	mov	rax, 1		; write
	syscall				; the arguments are already set in place
	cmp rax, 0
	jl	error_handling	; check if Carry Flag is on (error)
	jmp return

error_handling:
	imul	rax, -1
	mov		rdx, rax
	call	__errno_location
	mov		[rax], rdx
	mov		rax, -1
	
return:
	pop		rsp
	ret