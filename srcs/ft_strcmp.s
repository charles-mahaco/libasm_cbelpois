global ft_strcmp

section.text:

ft_strcmp:
	push rcx
	mov rcx, 0
comp:
	mov al, byte[rsi + rcx]
	cmp byte[rdi + rcx], al
	jg sup
	jl inf
	cmp byte [rdi + rcx], 0h
	jz end
	inc rcx
	jmp comp
sup:
	mov rax, 1
	ret
inf:
	mov rax, -1
	ret
end:
	mov rax, 0
	ret
