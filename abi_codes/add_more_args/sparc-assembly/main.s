	.file	"main.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 2 0
	.cfi_startproc
	save	%sp, -136, %sp
.LCFI0:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
	.loc 1 3 0
	mov	5, %g1
	st	%g1, [%fp-4]
	.loc 1 4 0
	mov	7, %g1
	st	%g1, [%fp-8]
	.loc 1 5 0
	mov	2, %g1
	st	%g1, [%fp-12]
	.loc 1 6 0
	mov	1, %g1
	st	%g1, [%fp-16]
	.loc 1 7 0
	mov	3, %g1
	st	%g1, [%fp-20]
	.loc 1 8 0
	mov	4, %g1
	st	%g1, [%fp-24]
	.loc 1 9 0
	mov	2, %g1
	st	%g1, [%fp-28]
	.loc 1 10 0
	ld	[%fp-28], %g1
	st	%g1, [%sp+92]
	ld	[%fp-4], %o0
	ld	[%fp-8], %o1
	ld	[%fp-12], %o2
	ld	[%fp-16], %o3
	ld	[%fp-20], %o4
	ld	[%fp-24], %o5
	call	add, 0
	 nop
	mov	%o0, %g1
	.loc 1 11 0
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.uaword	.LASF0
	.byte	0x1
	.uaword	.LASF1
	.uaword	.LASF2
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x2
	.uaword	0x97
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x97
	.uleb128 0x3
	.asciz	"a"
	.byte	0x1
	.byte	0x3
	.uaword	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3
	.asciz	"b"
	.byte	0x1
	.byte	0x4
	.uaword	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3
	.asciz	"c"
	.byte	0x1
	.byte	0x5
	.uaword	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.asciz	"d"
	.byte	0x1
	.byte	0x6
	.uaword	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.asciz	"e"
	.byte	0x1
	.byte	0x7
	.uaword	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.asciz	"f"
	.byte	0x1
	.byte	0x8
	.uaword	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.asciz	"g"
	.byte	0x1
	.byte	0x9
	.uaword	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.asciz	"int"
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB0-.Ltext0
	.uaword	.LCFI0-.Ltext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LCFI0-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
	.section	.debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.asciz	"/home/sanjose/Ajit64VerificationRepo/abi_codes/add_more_args"
.LASF0:
	.asciz	"GNU C 4.7.4"
.LASF1:
	.asciz	"main.c"
.LASF3:
	.asciz	"main"
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
