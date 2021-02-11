global ft_strcpy

section.text:

ft_strcpy:
	push rcx
	mov rcx, 0
cpy:
	cmp byte[rsi + rcx], 0h
	jz end
	mov al, byte[rsi + rcx]
	mov byte[rdi + rcx], al
	inc rcx
	jmp cpy
end:
	mov byte[rdi + rcx], 0h
	mov rax, rdi
	pop rcx
	ret
	