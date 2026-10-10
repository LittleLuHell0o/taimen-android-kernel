	.text
	.file	"bounds.c"
                                        // Start of file scope inline assembly
	.irp	num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30
	.equ	.L__reg_num_x\num, \num
	.endr
	.equ	.L__reg_num_xzr, 31

	.macro	mrs_s, rt, sreg
	.inst	0xd5200000|(\sreg)|(.L__reg_num_\rt)
	.endm

	.macro	msr_s, sreg, rt
	.inst	0xd5000000|(\sreg)|(.L__reg_num_\rt)
	.endm

                                        // End of file scope inline assembly
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin0:
	.file	1 "/home/luge/android_kernel_google_wahoo-lineage-22.2/kernel/bounds.c"
	.loc	1 16 0                          // kernel/bounds.c:16:0
	.cfi_sections .debug_frame
	.cfi_startproc
// %bb.0:
	.loc	1 18 2 prologue_end             // kernel/bounds.c:18:2
	//APP
	
.ascii "->NR_PAGEFLAGS 21 __NR_PAGEFLAGS"
	//NO_APP
	.loc	1 19 2                          // kernel/bounds.c:19:2
	//APP
	
.ascii "->MAX_NR_ZONES 3 __MAX_NR_ZONES"
	//NO_APP
	.loc	1 21 2                          // kernel/bounds.c:21:2
	//APP
	
.ascii "->NR_CPUS_BITS 3 ilog2(CONFIG_NR_CPUS)"
	//NO_APP
	.loc	1 23 2                          // kernel/bounds.c:23:2
	//APP
	
.ascii "->SPINLOCK_SIZE 4 sizeof(spinlock_t)"
	//NO_APP
	.loc	1 26 2                          // kernel/bounds.c:26:2
	mov	w0, wzr
	ret
.Ltmp0:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.section	.debug_abbrev,"",@progbits
	.byte	1                               // Abbreviation Code
	.byte	17                              // DW_TAG_compile_unit
	.byte	1                               // DW_CHILDREN_yes
	.byte	37                              // DW_AT_producer
	.byte	14                              // DW_FORM_strp
	.byte	19                              // DW_AT_language
	.byte	5                               // DW_FORM_data2
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	16                              // DW_AT_stmt_list
	.byte	23                              // DW_FORM_sec_offset
	.byte	27                              // DW_AT_comp_dir
	.byte	14                              // DW_FORM_strp
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	2                               // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	0                               // DW_CHILDREN_no
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.ascii	"\227B"                         // DW_AT_GNU_all_call_sites
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	3                               // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	0                               // EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 // Length of Unit
.Ldebug_info_start0:
	.hword	4                               // DWARF version number
	.word	.debug_abbrev                   // Offset Into Abbrev. Section
	.byte	8                               // Address Size (in bytes)
	.byte	1                               // Abbrev [1] 0xb:0x40 DW_TAG_compile_unit
	.word	.Linfo_string0                  // DW_AT_producer
	.hword	1                               // DW_AT_language
	.word	.Linfo_string1                  // DW_AT_name
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.word	.Linfo_string2                  // DW_AT_comp_dir
	.xword	.Lfunc_begin0                   // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	2                               // Abbrev [2] 0x2a:0x19 DW_TAG_subprogram
	.xword	.Lfunc_begin0                   // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string3                  // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	67                              // DW_AT_type
                                        // DW_AT_external
	.byte	3                               // Abbrev [3] 0x43:0x7 DW_TAG_base_type
	.word	.Linfo_string4                  // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Android (7284624, based on r416183b) clang version 12.0.5 (https://android.googlesource.com/toolchain/llvm-project c935d99d7cf2016289302412d708641d52d2f7ee)" // string offset=0
.Linfo_string1:
	.asciz	"kernel/bounds.c"               // string offset=157
.Linfo_string2:
	.asciz	"/home/luge/android_kernel_google_wahoo-lineage-22.2" // string offset=173
.Linfo_string3:
	.asciz	"main"                          // string offset=225
.Linfo_string4:
	.asciz	"int"                           // string offset=230
	.ident	"Android (7284624, based on r416183b) clang version 12.0.5 (https://android.googlesource.com/toolchain/llvm-project c935d99d7cf2016289302412d708641d52d2f7ee)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
