	.file "if_else.c" 
	.text 
	.globl if_else
	.type if_else, @function
if_else:
.LFB0:
	movw (%rax), 4(%rsp)
	.cfi_startproc
	pushl %ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5,-8
	movl %esp,%ebp
	.cfi_def_cfa_register 5
	subl $16,%esp
	cmpl $0,8(%ebp)
	jle .L2
	cmpl $29,12(%ebp)
	jg .L2
	movl $0,-4(%ebp)
	jmp .L3
.L2:
	cmpl $0,8(%ebp)
	jle .L4
	cmpl $30,12(%ebp)
	jle .L4
	movl $1,-4(%ebp)
	jmp .L3
.L4:
	movl $2,-4(%ebp)
.L3:
	movl -4(%ebp),%eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4,4
	ret
	.cfi_endproc
.LFE0:
	.size if_else ,.-if_else 
	.section .rodata
.LC0:
	.string "%d%d"
.LC1:
	.string "%d\n"
	.text
	.globl main
	.type main , @ function
			
