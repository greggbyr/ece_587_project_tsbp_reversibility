gcc2_compiled.:
___gnu_compiled_c:
.data
	.align 4
_in_section:
	.word	0
.text
	.align 8
LC0:
	.ascii "%s\12\0"
	.align 8
LC1:
	.ascii ".text\0"
	.align 4
	.global _text_section
	.proc	020
_text_section:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_in_section),%l0
	ld [%l0+%lo(_in_section)],%o0
	cmp %o0,1
	be L4
	sethi %hi(_asm_out_file),%o0
	ld [%o0+%lo(_asm_out_file)],%o0
	sethi %hi(LC0),%o1
	or %o1,%lo(LC0),%o1
	sethi %hi(LC1),%o2
	call _fprintf,0
	or %o2,%lo(LC1),%o2
	mov 1,%o0
	st %o0,[%l0+%lo(_in_section)]
L4:
	ret
	restore
	.align 8
LC2:
	.ascii ".data\0"
	.align 4
	.global _data_section
	.proc	020
_data_section:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_in_section),%o0
	ld [%o0+%lo(_in_section)],%o0
	cmp %o0,2
	be L10
	sethi %hi(_asm_out_file),%o0
	ld [%o0+%lo(_asm_out_file)],%o0
	sethi %hi(LC0),%o1
	or %o1,%lo(LC0),%o1
	sethi %hi(LC2),%o2
	call _fprintf,0
	or %o2,%lo(LC2),%o2
	mov 2,%o0
	sethi %hi(_in_section),%o1
	st %o0,[%o1+%lo(_in_section)]
L10:
	ret
	restore
	.align 4
	.global _make_function_rtl
	.proc	020
_make_function_rtl:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	ld [%i0+64],%o0
	cmp %o0,0
	bne,a L17
	mov 1,%o0
	ld [%i0+36],%o1
	ld [%o1+20],%o2
	mov 39,%o0
	call _gen_rtx,0
	mov 4,%o1
	mov %o0,%o2
	ld [%i0+28],%o1
	call _gen_rtx,0
	mov 37,%o0
	st %o0,[%i0+64]
	mov 1,%o0
L17:
	sethi %hi(_function_defined),%o1
	st %o0,[%o1+%lo(_function_defined)]
	ret
	restore
	.align 8
LC3:
	.ascii "register name not specified for `%s'\0"
	.align 8
LC4:
	.ascii "invalid register name for `%s'\0"
	.align 8
LC5:
	.ascii "register name given for non-register variable `%s'\0"
	.align 8
LC6:
	.ascii "function declared `register'\0"
	.align 8
LC7:
	.ascii "data type of `%s' isn't suitable for a register\0"
	.align 8
LC8:
	.ascii "ANSI C forbids global register variables\0"
	.align 8
LC9:
	.ascii "global register variable has initial value\0"
	.align 8
LC10:
	.ascii "global register variable follows a function definition\0"
	.align 8
LC11:
	.ascii "%s.%d\0"
	.align 4
	.global _make_decl_rtl
	.proc	020
_make_decl_rtl:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	ld [%i0+36],%o0
	mov -1,%l0
	cmp %i1,0
	be L19
	ld [%o0+20],%l2
	ldub [%i1+12],%o0
	cmp %o0,38
	be L20
	mov 0,%l0
	call _abort,0
	nop
L20:
	sethi %hi(_reg_names),%o0
	or %o0,%lo(_reg_names),%l3
	mov 0,%l1
L25:
	ld [%i1+24],%o0
	call _strcmp,0
	ld [%l1+%l3],%o1
	cmp %o0,0
	be L65
	cmp %l0,55
	add %l0,1,%l0
	cmp %l0,55
	ble L25
	add %l1,4,%l1
	cmp %l0,55
L65:
	ble L19
	sethi %hi(_saveable_obstack),%o1
	ld [%i1+24],%o0
	call _strlen,0
	ld [%o1+%lo(_saveable_obstack)],%l0
	ld [%l0+12],%o1
	add %o0,2,%l1
	ld [%l0+16],%o0
	add %o1,%l1,%o1
	cmp %o1,%o0
	bleu L29
	mov %l0,%o0
	call __obstack_newchunk,0
	mov %l1,%o1
L29:
	ld [%l0+12],%o0
	mov %l0,%o3
	add %o0,%l1,%o0
	st %o0,[%l0+12]
	ld [%o3+24],%o1
	ld [%o3+16],%o4
	ld [%o3+8],%o2
	add %o0,%o1,%o0
	andn %o0,%o1,%o1
	ld [%o3+4],%o0
	st %o1,[%o3+12]
	sub %o1,%o0,%o1
	sub %o4,%o0,%o0
	cmp %o1,%o0
	bg,a L31
	st %o4,[%o3+12]
L31:
	mov %o2,%l2
	ld [%l0+12],%o1
	add %l2,1,%o0
	st %o1,[%l0+8]
	mov 42,%o1
	stb %o1,[%l2]
	ld [%i1+24],%o1
	call _strcpy,0
	mov -2,%l0
L19:
	ld [%i0+64],%o0
	cmp %o0,0
	be,a L66
	st %g0,[%i0+64]
	ldub [%o0+2],%o1
	ld [%i0+28],%o0
	cmp %o1,%o0
	be L32
	nop
	st %g0,[%i0+64]
L66:
	ld [%i0+12],%o1
	sethi %hi(8192),%o0
	andcc %o1,%o0,%g0
	be L78
	cmp %l0,-1
	bne L67
	andcc %o1,%o0,%g0
	mov %i0,%o0
	sethi %hi(LC3),%o1
	call _error_with_decl,0
	or %o1,%lo(LC3),%o1
	ld [%i0+12],%o1
	sethi %hi(8192),%o0
L78:
	andcc %o1,%o0,%g0
L67:
	be L35
	cmp %l0,-2
	bne L68
	cmp %l0,0
	mov %i0,%o0
	sethi %hi(LC4),%o1
	call _error_with_decl,0
	or %o1,%lo(LC4),%o1
	b L69
	ld [%i0+64],%o0
L35:
	cmp %l0,0
L68:
	bl L37
	sethi %hi(8192),%o0
	ld [%i0+12],%o1
	andcc %o1,%o0,%g0
	bne,a L70
	ld [%i0+12],%o2
	mov %i0,%o0
	sethi %hi(LC5),%o1
	call _error_with_decl,0
	or %o1,%lo(LC5),%o1
	b L69
	ld [%i0+64],%o0
L37:
	ld [%i0+12],%o2
L70:
	sethi %hi(-16769024),%o0
	sethi %hi(654319616),%o1
	and %o2,%o0,%o0
	cmp %o0,%o1
	bne L39
	sethi %hi(8192),%o0
	sethi %hi(LC6),%o0
	call _error,0
	or %o0,%lo(LC6),%o0
	b L69
	ld [%i0+64],%o0
L39:
	andcc %o2,%o0,%g0
	be,a L71
	ld [%i0+12],%o1
	ld [%i0+8],%o0
	ldub [%o0+28],%o0
	cmp %o0,26
	bne,a L71
	ld [%i0+12],%o1
	mov %i0,%o0
	sethi %hi(LC7),%o1
	call _error_with_decl,0
	or %o1,%lo(LC7),%o1
	b L69
	ld [%i0+64],%o0
L71:
	sethi %hi(8192),%o0
	andcc %o1,%o0,%g0
	be L36
	sethi %hi(_pedantic),%o0
	ld [%o0+%lo(_pedantic)],%o0
	cmp %o0,0
	be L44
	sethi %hi(LC8),%o0
	call _warning,0
	or %o0,%lo(LC8),%o0
L44:
	ld [%i0+60],%o0
	cmp %o0,0
	be L45
	sethi %hi(LC9),%o0
	st %g0,[%i0+60]
	call _error,0
	or %o0,%lo(LC9),%o0
L45:
	sethi %hi(_fixed_regs),%o0
	or %o0,%lo(_fixed_regs),%o0
	ldsb [%l0+%o0],%o0
	cmp %o0,0
	bne L72
	mov 34,%o0
	sethi %hi(_function_defined),%o0
	ld [%o0+%lo(_function_defined)],%o0
	cmp %o0,0
	be L46
	sethi %hi(LC10),%o0
	call _error,0
	or %o0,%lo(LC10),%o0
L46:
	mov 34,%o0
L72:
	ld [%i0+28],%o1
	call _gen_rtx,0
	mov %l0,%o2
	cmp %l0,15
	bg L47
	st %o0,[%i0+64]
	sethi %hi(_mode_size),%o1
	ld [%i0+28],%o0
	or %o1,%lo(_mode_size),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o0
	addcc %o0,3,%o1
	bneg,a L49
	add %o0,6,%o1
L49:
	b L48
	sra %o1,2,%o1
L47:
	mov 1,%o1
L48:
	cmp %o1,0
	ble L51
	sethi %hi(_global_regs),%o0
	or %o0,%lo(_global_regs),%o3
	mov 1,%o2
L52:
	add %o1,-1,%o1
	add %l0,%o1,%o0
	cmp %o1,0
	bg L52
	stb %o2,[%o0+%o3]
L51:
	call _init_reg_sets_1,0
	nop
L36:
	ld [%i0+64],%o0
L69:
	cmp %o0,0
	bne L32
	cmp %i2,0
	bne L73
	mov 39,%o0
	ld [%i0+12],%o1
	sethi %hi(8388608),%o0
	andcc %o1,%o0,%g0
	bne,a L73
	mov 39,%o0
	cmp %i1,0
	bne,a L73
	mov 39,%o0
	call _strlen,0
	mov %l2,%o0
	add %o0,116,%o0
	and %o0,-8,%o0
	sub %sp,%o0,%sp
	add %sp,96,%l0
	mov %l0,%o0
	sethi %hi(LC11),%o1
	or %o1,%lo(LC11),%o1
	sethi %hi(_var_labelno),%l3
	ld [%l3+%lo(_var_labelno)],%o3
	call _sprintf,0
	mov %l2,%o2
	sethi %hi(_saveable_obstack),%o0
	ld [%o0+%lo(_saveable_obstack)],%l1
	call _strlen,0
	mov %l0,%o0
	ld [%l1+12],%o1
	mov %o0,%i1
	ld [%l1+16],%o0
	add %o1,%i1,%o1
	add %o1,1,%o1
	cmp %o1,%o0
	bleu L56
	mov %l1,%o0
	call __obstack_newchunk,0
	add %i1,1,%o1
L56:
	mov %l0,%o1
	ld [%l1+12],%o0
	call _memcpy,0
	mov %i1,%o2
	ld [%l1+12],%o0
	mov %l1,%o3
	add %o0,%i1,%o0
	add %o0,1,%o1
	st %o1,[%l1+12]
	stb %g0,[%o0]
	ld [%o3+12],%o0
	ld [%o3+24],%o1
	ld [%o3+16],%o4
	ld [%o3+8],%o2
	add %o0,%o1,%o0
	andn %o0,%o1,%o1
	ld [%o3+4],%o0
	st %o1,[%o3+12]
	sub %o1,%o0,%o1
	sub %o4,%o0,%o0
	cmp %o1,%o0
	bg,a L58
	st %o4,[%o3+12]
L58:
	ld [%l1+12],%o1
	mov %o2,%l2
	ld [%l3+%lo(_var_labelno)],%o0
	st %o1,[%l1+8]
	add %o0,1,%o0
	st %o0,[%l3+%lo(_var_labelno)]
	mov 39,%o0
L73:
	mov 4,%o1
	call _gen_rtx,0
	mov %l2,%o2
	mov %o0,%o2
	ld [%i0+28],%o1
	call _gen_rtx,0
	mov 37,%o0
	mov %o0,%o2
	st %o2,[%i0+64]
	ld [%i0+12],%o1
	sethi %hi(1048576),%o0
	andcc %o1,%o0,%g0
	be L74
	sethi %hi(262144),%o0
	ld [%o2],%o0
	or %o0,16,%o0
	st %o0,[%o2]
	ld [%i0+12],%o1
	sethi %hi(262144),%o0
L74:
	andcc %o1,%o0,%g0
	be,a L75
	ld [%i0+8],%o0
	ld [%i0+64],%o1
	ld [%o1],%o0
	or %o0,32,%o0
	st %o0,[%o1]
	ld [%i0+8],%o0
L75:
	ldub [%o0+12],%o0
	mov 0,%o1
	cmp %o0,16
	be L62
	ld [%i0+64],%i0
	add %o0,-19,%o0
	and %o0,0xff,%o0
	cmp %o0,1
	bgu,a L76
	ld [%i0],%o0
L62:
	mov 1,%o1
	ld [%i0],%o0
L76:
	sll %o1,3,%o1
	and %o0,-9,%o0
	or %o0,%o1,%o0
	st %o0,[%i0]
L32:
	ret
	restore
	.align 8
LC12:
	.ascii "\11%s\12\0"
	.align 4
	.global _assemble_asm
	.proc	020
_assemble_asm:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	call _app_enable,0
	nop
	sethi %hi(_asm_out_file),%o0
	ld [%o0+%lo(_asm_out_file)],%o0
	sethi %hi(LC12),%o1
	ld [%i0+24],%o2
	call _fprintf,0
	or %o1,%lo(LC12),%o1
	ret
	restore
	.align 8
LC13:
	.ascii "\11.even\12\0"
	.align 8
LC14:
	.ascii ".globl \0"
	.align 8
LC15:
	.ascii "\12\0"
	.align 8
LC16:
	.ascii ":\12\0"
	.align 4
	.global _assemble_function
	.proc	020
_assemble_function:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	ld [%i0+64],%o1
	lduh [%o1],%o0
	cmp %o0,37
	be,a L82
	ld [%o1+4],%o1
	call _abort,0
	nop
L82:
	lduh [%o1],%o0
	cmp %o0,39
	be L83
	nop
	call _abort,0
	nop
L83:
	call _app_disable,0
	ld [%o1+4],%l1
	sethi %hi(_in_section),%l0
	ld [%l0+%lo(_in_section)],%o0
	cmp %o0,1
	be L84
	sethi %hi(_asm_out_file),%o0
	ld [%o0+%lo(_asm_out_file)],%o0
	sethi %hi(LC0),%o1
	or %o1,%lo(LC0),%o1
	sethi %hi(LC1),%o2
	call _fprintf,0
	or %o2,%lo(LC1),%o2
	mov 1,%o0
	st %o0,[%l0+%lo(_in_section)]
L84:
	call _floor_log2,0
	mov 2,%o0
	cmp %o0,1
	bne L86
	sethi %hi(_asm_out_file),%o0
	ld [%o0+%lo(_asm_out_file)],%o0
	sethi %hi(LC13),%o1
	call _fprintf,0
	or %o1,%lo(LC13),%o1
	b L96
	ld [%i0+12],%o1
L86:
	call _floor_log2,0
	mov 2,%o0
	cmp %o0,0
	be,a L96
	ld [%i0+12],%o1
	call _abort,0
	nop
L96:
	sethi %hi(4194304),%o0
	andcc %o1,%o0,%g0
	be L89
	sethi %hi(_asm_out_file),%l0
	sethi %hi(LC14),%o0
	ld [%l0+%lo(_asm_out_file)],%o1
	call _fputs,0
	or %o0,%lo(LC14),%o0
	ld [%l0+%lo(_asm_out_file)],%o0
	call _assemble_name,0
	mov %l1,%o1
	sethi %hi(LC15),%o0
	ld [%l0+%lo(_asm_out_file)],%o1
	call _fputs,0
	or %o0,%lo(LC15),%o0
L89:
	sethi %hi(_asm_out_file),%l0
	ld [%l0+%lo(_asm_out_file)],%o0
	call _assemble_name,0
	mov %l1,%o1
	sethi %hi(LC16),%o0
	ld [%l0+%lo(_asm_out_file)],%o1
	call _fputs,0
	or %o0,%lo(LC16),%o0
	ret
	restore
	.align 8
LC17:
	.ascii "\11.long \0"
	.align 4
	.global _assemble_integer_zero
	.proc	020
_assemble_integer_zero:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_asm_out_file),%l0
	sethi %hi(LC17),%o1
	ld [%l0+%lo(_asm_out_file)],%o0
	call _fprintf,0
	or %o1,%lo(LC17),%o1
	ld [%l0+%lo(_asm_out_file)],%o0
	sethi %hi(_const0_rtx),%o1
	call _output_addr_const,0
	ld [%o1+%lo(_const0_rtx)],%o1
	sethi %hi(LC15),%o1
	ld [%l0+%lo(_asm_out_file)],%o0
	call _fprintf,0
	or %o1,%lo(LC15),%o1
	ret
	restore
