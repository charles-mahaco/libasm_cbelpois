global ft_strlen

section.text:

ft_strlen:
	push rcx
	mov	rcx, 0
strlen:
	cmp	byte[rdi + rcx], 0
	jz	end
	inc	rcx
	jmp	strlen

end:
	mov	rax, rcx
	pop	rcx
	ret
