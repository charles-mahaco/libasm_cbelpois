global	ft_strdup
	extern	malloc
	extern	ft_strlen
	extern	ft_strcpy
	extern __errno_location 

section	.text

ft_strdup:
	mov rax, 0
	call ft_strlen
	inc rax
	push rdi
	mov rdi, rax
	call malloc
	cmp rax, 0
	jz error_handling
	pop rsi
	mov rdi, rax
	call ft_strcpy
	ret
error_handling:
	mov		rax, 0x0
	ret