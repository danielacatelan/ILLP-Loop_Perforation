	.text
	.file	"app.opt.bc"
	.globl	usage                   # -- Begin function usage
	.p2align	2
	.type	usage,@function
usage:                                  # @usage
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	lui	a0, %hi(.Lstr1)
	addi	a0, a0, %lo(.Lstr1)
	call	puts
	lui	a0, %hi(.Lstr2)
	addi	a0, a0, %lo(.Lstr2)
	call	puts
	lui	a0, %hi(.Lstr3)
	addi	a0, a0, %lo(.Lstr3)
	call	puts
	lui	a0, %hi(.Lstr4)
	addi	a0, a0, %lo(.Lstr4)
	call	puts
	lui	a0, %hi(.Lstr5)
	addi	a0, a0, %lo(.Lstr5)
	call	puts
	lui	a0, %hi(.Lstr6)
	addi	a0, a0, %lo(.Lstr6)
	call	puts
	lui	a0, %hi(.Lstr7)
	addi	a0, a0, %lo(.Lstr7)
	call	puts
	lui	a0, %hi(.Lstr8)
	addi	a0, a0, %lo(.Lstr8)
	call	puts
	lui	a0, %hi(.Lstr9)
	addi	a0, a0, %lo(.Lstr9)
	call	puts
	lui	a0, %hi(.Lstr10)
	addi	a0, a0, %lo(.Lstr10)
	call	puts
	lui	a0, %hi(.Lstr11)
	addi	a0, a0, %lo(.Lstr11)
	call	puts
	lui	a0, %hi(.Lstr12)
	addi	a0, a0, %lo(.Lstr12)
	call	puts
	mv	a0, zero
	call	exit
.Lfunc_end0:
	.size	usage, .Lfunc_end0-usage
	.cfi_endproc
                                        # -- End function
	.globl	getint                  # -- Begin function getint
	.p2align	2
	.type	getint,@function
getint:                                 # @getint
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -2032
	.cfi_def_cfa_offset 2032
	sw	ra, 2028(sp)
	sw	s0, 2024(sp)
	sw	s1, 2020(sp)
	sw	s2, 2016(sp)
	sw	s3, 2012(sp)
	sw	s4, 2008(sp)
	sw	s5, 2004(sp)
	sw	s6, 2000(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	lui	a1, 2
	addi	a1, a1, -176
	sub	sp, sp, a1
	.cfi_def_cfa_offset 10048
	mv	s4, a0
	call	getc
	mv	s1, a0
	addi	s0, zero, 35
	lui	a0, 2
	addi	s2, a0, 808
	addi	s3, sp, 16
	addi	s5, zero, -1
	addi	s6, zero, 9
	j	.LBB1_3
.LBB1_1:                                # %if.end5.thread
                                        #   in Loop: Header=BB1_3 Depth=1
	mv	a0, s3
	mv	a1, s2
	mv	a2, s4
	call	fgets
.LBB1_2:                                # %if.end9
                                        #   in Loop: Header=BB1_3 Depth=1
	mv	a0, s4
	call	getc
	mv	s1, a0
.LBB1_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	beq	s1, s0, .LBB1_1
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	beq	s1, s5, .LBB1_10
# %bb.5:                                # %if.end5
                                        #   in Loop: Header=BB1_3 Depth=1
	addi	a0, s1, -48
	bltu	s6, a0, .LBB1_2
# %bb.6:                                # %while.body11.preheader
	mv	s0, zero
	addi	s2, zero, 10
	addi	s3, zero, -1
.LBB1_7:                                # %while.body11
                                        # =>This Inner Loop Header: Depth=1
	addi	a1, zero, 10
	mv	a0, s0
	call	__mulsi3
	add	a0, s1, a0
	addi	s0, a0, -48
	mv	a0, s4
	call	getc
	beq	a0, s3, .LBB1_9
# %bb.8:                                # %while.body11
                                        #   in Loop: Header=BB1_7 Depth=1
	mv	s1, a0
	addi	a0, a0, -48
	bltu	a0, s2, .LBB1_7
.LBB1_9:                                # %return
	mv	a0, s0
	lui	a1, 2
	addi	a1, a1, -176
	add	sp, sp, a1
	lw	s6, 2000(sp)
	lw	s5, 2004(sp)
	lw	s4, 2008(sp)
	lw	s3, 2012(sp)
	lw	s2, 2016(sp)
	lw	s1, 2020(sp)
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.LBB1_10:                               # %if.then3
	lui	a0, %hi(.L.str13)
	addi	a0, a0, %lo(.L.str13)
	lui	a1, %hi(.L.str14)
	addi	a1, a1, %lo(.L.str14)
	call	printf
	mv	a0, zero
	call	exit
.Lfunc_end1:
	.size	getint, .Lfunc_end1-getint
	.cfi_endproc
                                        # -- End function
	.globl	get_image               # -- Begin function get_image
	.p2align	2
	.type	get_image,@function
get_image:                              # @get_image
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	sw	s5, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	mv	s3, a3
	mv	s5, a2
	mv	s4, a1
	mv	s2, a0
	lui	a0, %hi(.L.str15)
	addi	a1, a0, %lo(.L.str15)
	mv	a0, s2
	call	fopen
	beqz	a0, .LBB2_6
# %bb.1:                                # %if.end
	mv	s1, a0
	call	fgetc
	mv	s0, a0
	mv	a0, s1
	call	fgetc
	andi	a1, s0, 255
	addi	a2, zero, 80
	bne	a1, a2, .LBB2_5
# %bb.2:                                # %land.lhs.true
	andi	a0, a0, 255
	addi	a1, zero, 53
	bne	a0, a1, .LBB2_5
# %bb.3:                                # %if.end16
	mv	a0, s1
	call	getint
	sw	a0, 0(s5)
	mv	a0, s1
	call	getint
	sw	a0, 0(s3)
	mv	a0, s1
	call	getint
	lw	a1, 0(s5)
	lw	a0, 0(s3)
	call	__mulsi3
	srai	a1, a0, 31
	call	malloc
	mv	s0, a0
	sw	a0, 0(s4)
	lw	a1, 0(s5)
	lw	a0, 0(s3)
	call	__mulsi3
	mv	a1, a0
	mv	a0, s0
	mv	a2, s1
	call	fgets
	beqz	a0, .LBB2_7
# %bb.4:                                # %if.end29
	mv	a0, s1
	lw	s5, 4(sp)
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	tail	fclose
.LBB2_5:                                # %if.then14
	lui	a0, %hi(.L.str17)
	addi	a0, a0, %lo(.L.str17)
	j	.LBB2_8
.LBB2_6:                                # %if.then
	lui	a0, %hi(.L.str16)
	addi	a0, a0, %lo(.L.str16)
	j	.LBB2_8
.LBB2_7:                                # %if.then27
	lui	a0, %hi(.L.str18)
	addi	a0, a0, %lo(.L.str18)
.LBB2_8:                                # %if.then
	mv	a1, s2
	call	printf
	mv	a0, zero
	call	exit
.Lfunc_end2:
	.size	get_image, .Lfunc_end2-get_image
	.cfi_endproc
                                        # -- End function
	.globl	put_image               # -- Begin function put_image
	.p2align	2
	.type	put_image,@function
put_image:                              # @put_image
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	sw	s1, 52(sp)
	sw	s2, 48(sp)
	sw	s3, 44(sp)
	sw	s4, 40(sp)
	sw	s5, 36(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	mv	s3, a3
	mv	s2, a2
	mv	s4, a1
	sh	zero, 32(sp)
	sw	zero, 28(sp)
	lui	a1, 3
	addi	a1, a1, 1360
	sw	a1, 24(sp)
	sh	zero, 20(sp)
	lui	a1, 131875
	addi	a1, a1, 309
	sw	a1, 12(sp)
	lui	a1, 803
	addi	a1, a1, 309
	sw	a1, 16(sp)
	sw	zero, 4(sp)
	sh	zero, 8(sp)
	lui	a1, 41811
	addi	a1, a1, 1330
	sw	a1, 0(sp)
	lui	a1, %hi(.L.str19)
	addi	a1, a1, %lo(.L.str19)
	call	fopen
	mv	s5, a0
	lui	a0, %hi(.L.str20)
	addi	s0, a0, %lo(.L.str20)
	addi	a2, sp, 24
	mv	a0, s5
	mv	a1, s0
	call	fprintf
	addi	a2, sp, 12
	mv	a0, s5
	mv	a1, s0
	call	fprintf
	mv	a0, sp
	mv	a1, s5
	call	fputs
	mv	a0, s3
	mv	a1, s2
	call	__mulsi3
	addi	a1, zero, 1
	blt	a0, a1, .LBB3_3
# %bb.1:                                # %for.body.lr.ph
	mv	a0, s3
	mv	a1, s2
	call	__mulsi3
	mv	s2, a0
	mv	s0, zero
	mv	s1, zero
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add	a0, s4, s0
	lb	a0, 0(a0)
	mv	a1, s5
	call	fputc
	addi	a0, s0, 1
	sltu	a1, a0, s0
	add	s1, s1, a1
	mv	s0, a0
	bne	a0, s2, .LBB3_2
.LBB3_3:                                # %for.end
	mv	a0, s5
	call	fclose
	lw	s5, 36(sp)
	lw	s4, 40(sp)
	lw	s3, 44(sp)
	lw	s2, 48(sp)
	lw	s1, 52(sp)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end3:
	.size	put_image, .Lfunc_end3-put_image
	.cfi_endproc
                                        # -- End function
	.globl	int_to_uchar            # -- Begin function int_to_uchar
	.p2align	2
	.type	int_to_uchar,@function
int_to_uchar:                           # @int_to_uchar
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	sw	s5, 4(sp)
	sw	s6, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	addi	a3, zero, 1
	blt	a2, a3, .LBB4_10
# %bb.1:                                # %for.body.preheader
	mv	s5, a2
	mv	s2, a1
	mv	s4, a0
	lw	a3, 0(a0)
	mv	a1, zero
	mv	a0, zero
	mv	a4, a3
	j	.LBB4_3
.LBB4_2:                                # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	addi	a5, a1, 1
	sltu	a1, a5, a1
	add	a0, a0, a1
	mv	a1, a5
	mv	a3, s1
	mv	a4, a2
	beq	a5, s5, .LBB4_7
.LBB4_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli	a2, a1, 2
	add	a2, s4, a2
	lw	s1, 0(a2)
	mv	a2, s1
	blt	a4, s1, .LBB4_5
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	mv	a2, a4
.LBB4_5:                                # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	blt	s1, a3, .LBB4_2
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	mv	s1, a3
	j	.LBB4_2
.LBB4_7:                                # %for.end
	addi	a0, zero, 1
	blt	s5, a0, .LBB4_10
# %bb.8:                                # %for.body15.preheader
	mv	s0, zero
	mv	s6, zero
	sub	s3, a2, s1
.LBB4_9:                                # %for.body15
                                        # =>This Inner Loop Header: Depth=1
	slli	a0, s0, 2
	add	a0, s4, a0
	lw	a0, 0(a0)
	sub	a0, a0, s1
	addi	a1, zero, 255
	call	__mulsi3
	mv	a1, s3
	call	__divsi3
	add	a1, s2, s0
	sb	a0, 0(a1)
	addi	a0, s0, 1
	sltu	a1, a0, s0
	add	s6, s6, a1
	mv	s0, a0
	bne	a0, s5, .LBB4_9
.LBB4_10:                               # %for.end23
	lw	s6, 0(sp)
	lw	s5, 4(sp)
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	int_to_uchar, .Lfunc_end4-int_to_uchar
	.cfi_endproc
                                        # -- End function
	.globl	setup_brightness_lut    # -- Begin function setup_brightness_lut
	.p2align	2
	.type	setup_brightness_lut,@function
setup_brightness_lut:                   # @setup_brightness_lut
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	sw	s1, 36(sp)
	sw	s2, 32(sp)
	sw	s3, 28(sp)
	sw	s4, 24(sp)
	sw	s5, 20(sp)
	sw	s6, 16(sp)
	sw	s7, 12(sp)
	sw	s8, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	mv	s2, a2
	mv	s0, a1
	mv	s3, a0
	addi	a0, zero, 516
	mv	a1, zero
	call	malloc
	addi	a0, a0, 258
	sw	a0, 0(s3)
	mv	a0, s0
	call	__floatsisf
	mv	s4, a0
	addi	s5, zero, -1
	addi	s1, zero, -256
	addi	s6, zero, 6
	lui	s7, 524288
	addi	s8, zero, 257
	j	.LBB5_2
.LBB5_1:                                # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	xor	a0, s0, s7
	call	__extendsfdf2
	call	exp
	lui	a3, 263568
	mv	a2, zero
	call	__muldf3
	call	__truncdfsf2
	call	__fixunssfsi
	lw	a1, 0(s3)
	add	a1, a1, s1
	sb	a0, 0(a1)
	addi	a0, s1, 1
	sltu	a1, a0, s1
	add	s5, s5, a1
	mv	s1, a0
	beq	a0, s8, .LBB5_4
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	mv	a0, s1
	call	__floatsisf
	mv	a1, s4
	call	__divsf3
	mv	a1, a0
	call	__mulsf3
	mv	s0, a0
	bne	s2, s6, .LBB5_1
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	mv	a0, s0
	mv	a1, s0
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__mulsf3
	mv	s0, a0
	j	.LBB5_1
.LBB5_4:                                # %for.end
	lw	s8, 8(sp)
	lw	s7, 12(sp)
	lw	s6, 16(sp)
	lw	s5, 20(sp)
	lw	s4, 24(sp)
	lw	s3, 28(sp)
	lw	s2, 32(sp)
	lw	s1, 36(sp)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end5:
	.size	setup_brightness_lut, .Lfunc_end5-setup_brightness_lut
	.cfi_endproc
                                        # -- End function
	.globl	susan_principle         # -- Begin function susan_principle
	.p2align	2
	.type	susan_principle,@function
susan_principle:                        # @susan_principle
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	sw	s1, 52(sp)
	sw	s2, 48(sp)
	sw	s3, 44(sp)
	sw	s4, 40(sp)
	sw	s5, 36(sp)
	sw	s6, 32(sp)
	sw	s7, 28(sp)
	sw	s8, 24(sp)
	sw	s9, 20(sp)
	sw	s10, 16(sp)
	sw	s11, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s5, a5
	mv	s2, a4
	mv	s4, a3
	mv	s0, a2
	mv	s3, a1
	mv	s7, a0
	mv	a0, a5
	mv	a1, a4
	call	__mulsi3
	slli	a2, a0, 2
	mv	a0, s3
	mv	a1, zero
	call	memset
	addi	t4, s5, -3
	addi	t5, zero, 4
	blt	t4, t5, .LBB6_8
# %bb.1:                                # %for.cond3.preheader.lr.ph
	mv	s9, zero
	addi	s10, s2, -3
	addi	s11, s2, -5
	addi	s8, s2, -6
	addi	s5, zero, 3
	j	.LBB6_3
.LBB6_2:                                # %for.inc285
                                        #   in Loop: Header=BB6_3 Depth=1
	addi	a0, s5, 1
	sltu	a1, a0, s5
	add	s9, s9, a1
	mv	s5, a0
	beq	a0, t4, .LBB6_8
.LBB6_3:                                # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
	blt	s10, t5, .LBB6_2
# %bb.4:                                # %for.body7.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	addi	a0, s5, -3
	mv	a1, s2
	mv	s1, t4
	call	__mulsi3
	mv	s6, a0
	mv	a0, s5
	mv	a1, s2
	call	__mulsi3
	addi	t5, zero, 4
	mv	t4, s1
	mv	a7, zero
	addi	t0, zero, 3
	j	.LBB6_6
.LBB6_5:                                # %for.inc
                                        #   in Loop: Header=BB6_6 Depth=2
	addi	a1, t0, 1
	sltu	a2, a1, t0
	add	a7, a7, a2
	mv	t0, a1
	beq	a1, s10, .LBB6_2
.LBB6_6:                                # %for.body7
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, t0, s6
	add	a6, t0, a0
	add	a4, s7, a6
	lbu	a4, 0(a4)
	add	a3, s7, a5
	lbu	a1, -1(a3)
	lbu	a3, 0(a3)
	sub	a1, a4, a1
	add	a1, s0, a1
	lbu	t1, 0(a1)
	sub	a3, a4, a3
	add	a3, s0, a3
	lbu	t2, 0(a3)
	addi	a5, a5, 1
	add	a2, s7, a5
	lbu	a2, 0(a2)
	add	t3, a5, s10
	add	s1, s7, t3
	lbu	a1, 0(s1)
	sub	a2, a4, a2
	add	a2, s0, a2
	lbu	a2, 0(a2)
	sub	a1, a4, a1
	add	a1, s0, a1
	lbu	a1, 0(a1)
	lbu	a3, 1(s1)
	add	a5, t1, t2
	add	a2, a5, a2
	add	t1, a2, a1
	sub	a2, a4, a3
	lbu	a3, 2(s1)
	add	a2, s0, a2
	lbu	a2, 0(a2)
	lbu	a5, 3(s1)
	sub	a3, a4, a3
	add	a3, s0, a3
	lbu	a3, 0(a3)
	sub	a5, a4, a5
	add	a5, s0, a5
	lbu	a5, 0(a5)
	addi	s1, t3, 4
	add	a1, s7, s1
	lbu	a1, 0(a1)
	add	a2, t1, a2
	add	a2, a2, a3
	add	t1, a2, a5
	sub	a1, a4, a1
	add	t2, s1, s11
	add	a5, s7, t2
	lbu	s1, 0(a5)
	add	a1, s0, a1
	lbu	a1, 0(a1)
	lbu	a2, 1(a5)
	sub	s1, a4, s1
	add	s1, s0, s1
	lbu	s1, 0(s1)
	sub	a2, a4, a2
	add	a2, s0, a2
	lbu	a2, 0(a2)
	lbu	a3, 2(a5)
	add	a1, t1, a1
	add	a1, a1, s1
	add	a1, a1, a2
	sub	a2, a4, a3
	lbu	a3, 3(a5)
	add	a2, s0, a2
	lbu	a2, 0(a2)
	lbu	s1, 4(a5)
	sub	a3, a4, a3
	add	a3, s0, a3
	lbu	a3, 0(a3)
	sub	s1, a4, s1
	add	s1, s0, s1
	lbu	s1, 0(s1)
	lbu	a5, 5(a5)
	add	a1, a1, a2
	add	a1, a1, a3
	add	t1, a1, s1
	sub	a2, a4, a5
	add	a2, s0, a2
	lbu	t3, 0(a2)
	addi	a3, t2, 6
	add	a5, s7, a3
	lbu	a5, 0(a5)
	add	t2, a3, s8
	add	s1, s7, t2
	lbu	a1, 0(s1)
	sub	a5, a4, a5
	add	a5, s0, a5
	lbu	a5, 0(a5)
	sub	a1, a4, a1
	add	a1, s0, a1
	lbu	a1, 0(a1)
	lbu	a2, 1(s1)
	add	a3, t1, t3
	add	a3, a3, a5
	add	a1, a3, a1
	sub	a2, a4, a2
	lbu	a3, 2(s1)
	add	a2, s0, a2
	lbu	a2, 0(a2)
	lbu	a5, 4(s1)
	sub	a3, a4, a3
	add	a3, s0, a3
	lbu	a3, 0(a3)
	sub	a5, a4, a5
	add	a5, s0, a5
	lbu	a5, 0(a5)
	lbu	s1, 5(s1)
	add	a1, a1, a2
	add	a1, a1, a3
	add	t1, a1, a5
	sub	a2, a4, s1
	add	a2, s0, a2
	lbu	a2, 0(a2)
	addi	a3, t2, 6
	add	a5, s7, a3
	lbu	a5, 0(a5)
	add	t2, a3, s8
	add	s1, s7, t2
	lbu	a1, 0(s1)
	sub	a5, a4, a5
	add	a5, s0, a5
	lbu	a5, 0(a5)
	sub	a1, a4, a1
	add	a1, s0, a1
	lbu	a1, 0(a1)
	add	a2, t1, a2
	lbu	a3, 1(s1)
	add	a2, a2, a5
	add	t1, a2, a1
	lbu	a2, 2(s1)
	sub	a3, a4, a3
	add	a3, s0, a3
	lbu	a3, 0(a3)
	sub	a2, a4, a2
	lbu	a5, 3(s1)
	add	a2, s0, a2
	lbu	a2, 0(a2)
	lbu	a1, 4(s1)
	sub	a5, a4, a5
	add	a5, s0, a5
	lbu	a5, 0(a5)
	sub	a1, a4, a1
	add	a1, s0, a1
	lbu	a1, 0(a1)
	add	a3, t1, a3
	add	a2, a3, a2
	add	a2, a2, a5
	add	t1, a2, a1
	lbu	a2, 5(s1)
	addi	a3, t2, 6
	add	a5, s7, a3
	lbu	a5, 0(a5)
	sub	a2, a4, a2
	add	a2, s0, a2
	lbu	a2, 0(a2)
	sub	a5, a4, a5
	add	a5, s0, a5
	lbu	a5, 0(a5)
	add	a3, a3, s11
	add	s1, s7, a3
	lbu	a1, 0(s1)
	add	a2, t1, a2
	add	t1, a2, a5
	lbu	a5, 1(s1)
	sub	a1, a4, a1
	add	a1, s0, a1
	lbu	a1, 0(a1)
	sub	a5, a4, a5
	lbu	a2, 2(s1)
	add	a5, s0, a5
	lbu	a5, 0(a5)
	lbu	s1, 3(s1)
	sub	a2, a4, a2
	add	a2, s0, a2
	lbu	a2, 0(a2)
	sub	s1, a4, s1
	add	s1, s0, s1
	lbu	s1, 0(s1)
	add	a1, t1, a1
	add	a1, a1, a5
	add	a1, a1, a2
	add	a1, a1, s1
	addi	a2, a3, 4
	add	a3, s7, a2
	lbu	a3, 0(a3)
	add	a2, a2, s10
	add	a2, s7, a2
	lbu	a5, 0(a2)
	lbu	s1, 1(a2)
	lbu	a2, 2(a2)
	sub	a3, a4, a3
	sub	a5, a4, a5
	sub	s1, a4, s1
	sub	a2, a4, a2
	add	a3, s0, a3
	lbu	a3, 0(a3)
	add	a4, s0, a5
	lbu	a4, 0(a4)
	add	a5, s0, s1
	lbu	a5, 0(a5)
	add	a2, s0, a2
	lbu	a2, 0(a2)
	add	a1, a1, a3
	add	a1, a1, a4
	add	a1, a1, a5
	add	a1, a1, a2
	addi	a4, a1, 100
	blt	s4, a4, .LBB6_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB6_6 Depth=2
	sub	a1, s4, a4
	slli	a2, a6, 2
	add	a2, s3, a2
	sw	a1, 0(a2)
	j	.LBB6_5
.LBB6_8:                                # %for.end287
	lw	s11, 12(sp)
	lw	s10, 16(sp)
	lw	s9, 20(sp)
	lw	s8, 24(sp)
	lw	s7, 28(sp)
	lw	s6, 32(sp)
	lw	s5, 36(sp)
	lw	s4, 40(sp)
	lw	s3, 44(sp)
	lw	s2, 48(sp)
	lw	s1, 52(sp)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end6:
	.size	susan_principle, .Lfunc_end6-susan_principle
	.cfi_endproc
                                        # -- End function
	.globl	susan_principle_small   # -- Begin function susan_principle_small
	.p2align	2
	.type	susan_principle_small,@function
susan_principle_small:                  # @susan_principle_small
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	sw	s1, 52(sp)
	sw	s2, 48(sp)
	sw	s3, 44(sp)
	sw	s4, 40(sp)
	sw	s5, 36(sp)
	sw	s6, 32(sp)
	sw	s7, 28(sp)
	sw	s8, 24(sp)
	sw	s9, 20(sp)
	sw	s10, 16(sp)
	sw	s11, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s4, a5
	mv	s2, a2
	mv	s3, a1
	mv	s7, a0
	mv	a0, a5
	sw	a4, 8(sp)
	mv	a1, a4
	call	__mulsi3
	slli	a2, a0, 2
	mv	a0, s3
	mv	a1, zero
	call	memset
	addi	s6, s4, -1
	addi	t1, zero, 2
	blt	s6, t1, .LBB7_8
# %bb.1:                                # %for.cond3.preheader.lr.ph
	mv	s8, zero
	lw	a0, 8(sp)
	addi	s9, a0, -1
	addi	s10, a0, -2
	addi	s4, zero, 1
	addi	s11, zero, 730
	j	.LBB7_3
.LBB7_2:                                # %for.inc81
                                        #   in Loop: Header=BB7_3 Depth=1
	addi	a0, s4, 1
	sltu	a1, a0, s4
	add	s8, s8, a1
	mv	s4, a0
	beq	a0, s6, .LBB7_8
.LBB7_3:                                # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	blt	s9, t1, .LBB7_2
# %bb.4:                                # %for.body7.lr.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	addi	a0, s4, -1
	lw	s0, 8(sp)
	mv	a1, s0
	call	__mulsi3
	mv	s5, a0
	mv	a0, s4
	mv	a1, s0
	call	__mulsi3
	addi	t1, zero, 2
	mv	a1, zero
	addi	a2, zero, 1
	j	.LBB7_6
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_6 Depth=2
	addi	a3, a2, 1
	sltu	a2, a3, a2
	add	a1, a1, a2
	mv	a2, a3
	beq	a3, s9, .LBB7_2
.LBB7_6:                                # %for.body7
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a4, a2, s5
	add	a6, a2, a0
	add	a5, s7, a6
	lbu	a5, 0(a5)
	add	a3, s7, a4
	lbu	s0, -1(a3)
	lbu	a3, 0(a3)
	sub	s0, a5, s0
	add	s0, s2, s0
	lbu	a7, 0(s0)
	sub	a3, a5, a3
	add	a3, s2, a3
	lbu	t0, 0(a3)
	addi	a4, a4, 1
	add	s0, s7, a4
	lbu	s0, 0(s0)
	add	a4, a4, s10
	add	a3, s7, a4
	lbu	a3, 0(a3)
	sub	s0, a5, s0
	add	s0, s2, s0
	lbu	s0, 0(s0)
	sub	a3, a5, a3
	add	a3, s2, a3
	lbu	a3, 0(a3)
	add	s1, a7, t0
	add	s1, s1, s0
	add	a7, s1, a3
	addi	a4, a4, 2
	add	s1, s7, a4
	lbu	s1, 0(s1)
	add	a4, a4, s10
	add	a4, s7, a4
	lbu	s0, 0(a4)
	lbu	a3, 1(a4)
	lbu	a4, 2(a4)
	sub	s1, a5, s1
	sub	s0, a5, s0
	sub	a3, a5, a3
	sub	a4, a5, a4
	add	a5, s2, s1
	lbu	a5, 0(a5)
	add	s1, s2, s0
	lbu	s1, 0(s1)
	add	a3, s2, a3
	lbu	a3, 0(a3)
	add	a4, s2, a4
	lbu	a4, 0(a4)
	add	a5, a7, a5
	add	a5, a5, s1
	add	a3, a5, a3
	add	a3, a3, a4
	addi	a4, a3, 100
	blt	s11, a4, .LBB7_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB7_6 Depth=2
	sub	a3, s11, a4
	slli	a4, a6, 2
	add	a4, s3, a4
	sw	a3, 0(a4)
	j	.LBB7_5
.LBB7_8:                                # %for.end83
	lw	s11, 12(sp)
	lw	s10, 16(sp)
	lw	s9, 20(sp)
	lw	s8, 24(sp)
	lw	s7, 28(sp)
	lw	s6, 32(sp)
	lw	s5, 36(sp)
	lw	s4, 40(sp)
	lw	s3, 44(sp)
	lw	s2, 48(sp)
	lw	s1, 52(sp)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end7:
	.size	susan_principle_small, .Lfunc_end7-susan_principle_small
	.cfi_endproc
                                        # -- End function
	.globl	median                  # -- Begin function median
	.p2align	2
	.type	median,@function
median:                                 # @median
	.cfi_startproc
# %bb.0:                                # %for.body60.lr.ph
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	sw	s1, 52(sp)
	sw	s2, 48(sp)
	sw	s3, 44(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	mv	s0, a3
	mv	s2, a2
	mv	s1, a1
	mv	s3, a0
	addi	a0, a1, -1
	mv	a1, a3
	call	__mulsi3
	add	a0, a0, s2
	add	a0, s3, a0
	lbu	a1, -1(a0)
	sw	a1, 0(sp)
	lbu	a1, 0(a0)
	sw	a1, 4(sp)
	lbu	a0, 1(a0)
	sw	a0, 8(sp)
	mv	a0, s0
	mv	a1, s1
	call	__mulsi3
	add	a0, a0, s2
	add	a0, a0, s3
	lbu	a1, -1(a0)
	sw	a1, 12(sp)
	lbu	a0, 1(a0)
	sw	a0, 16(sp)
	addi	a0, s1, 1
	mv	a1, s0
	call	__mulsi3
	add	a0, a0, s2
	add	a0, s3, a0
	lbu	a1, -1(a0)
	sw	a1, 20(sp)
	lbu	a1, 0(a0)
	sw	a1, 24(sp)
	lbu	a2, 1(a0)
	mv	a0, zero
	mv	a1, zero
	sw	a2, 28(sp)
	mv	a7, sp
	addi	a6, zero, 7
	j	.LBB8_2
.LBB8_1:                                # %for.cond56.backedge
                                        #   in Loop: Header=BB8_2 Depth=1
	add	a1, a1, s1
	beq	a0, a6, .LBB8_4
.LBB8_2:                                # %for.body60
                                        # =>This Inner Loop Header: Depth=1
	mv	a3, a0
	slli	a0, a0, 2
	add	a4, a7, a0
	lw	a5, 0(a4)
	addi	a0, a3, 1
	slli	a2, a0, 2
	add	s0, a7, a2
	lw	a2, 0(s0)
	sltu	s1, a0, a3
	bge	a2, a5, .LBB8_1
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB8_2 Depth=1
	sw	a2, 0(a4)
	sw	a5, 0(s0)
	j	.LBB8_1
.LBB8_4:                                # %for.body60.1.preheader
	mv	a3, zero
	mv	a1, zero
	addi	a6, zero, 6
	j	.LBB8_6
.LBB8_5:                                # %for.cond56.backedge.1
                                        #   in Loop: Header=BB8_6 Depth=1
	add	a1, a1, s1
	beq	a3, a6, .LBB8_8
.LBB8_6:                                # %for.body60.1
                                        # =>This Inner Loop Header: Depth=1
	mv	a0, a3
	slli	a2, a3, 2
	add	a4, a7, a2
	lw	a5, 0(a4)
	addi	a3, a3, 1
	slli	a2, a3, 2
	add	s0, a7, a2
	lw	a2, 0(s0)
	sltu	s1, a3, a0
	bge	a2, a5, .LBB8_5
# %bb.7:                                # %if.then.1
                                        #   in Loop: Header=BB8_6 Depth=1
	sw	a2, 0(a4)
	sw	a5, 0(s0)
	j	.LBB8_5
.LBB8_8:                                # %for.body60.2.preheader
	mv	a3, zero
	mv	a1, zero
	addi	a6, zero, 5
	j	.LBB8_10
.LBB8_9:                                # %for.cond56.backedge.2
                                        #   in Loop: Header=BB8_10 Depth=1
	add	a1, a1, s1
	beq	a3, a6, .LBB8_12
.LBB8_10:                               # %for.body60.2
                                        # =>This Inner Loop Header: Depth=1
	mv	a0, a3
	slli	a2, a3, 2
	add	a4, a7, a2
	lw	a5, 0(a4)
	addi	a3, a3, 1
	slli	a2, a3, 2
	add	s0, a7, a2
	lw	a2, 0(s0)
	sltu	s1, a3, a0
	bge	a2, a5, .LBB8_9
# %bb.11:                               # %if.then.2
                                        #   in Loop: Header=BB8_10 Depth=1
	sw	a2, 0(a4)
	sw	a5, 0(s0)
	j	.LBB8_9
.LBB8_12:                               # %for.body60.3.preheader
	mv	a3, zero
	mv	a1, zero
	addi	a6, zero, 4
	j	.LBB8_14
.LBB8_13:                               # %for.cond56.backedge.3
                                        #   in Loop: Header=BB8_14 Depth=1
	add	a1, a1, s1
	beq	a3, a6, .LBB8_16
.LBB8_14:                               # %for.body60.3
                                        # =>This Inner Loop Header: Depth=1
	mv	a0, a3
	slli	a2, a3, 2
	add	a4, a7, a2
	lw	a5, 0(a4)
	addi	a3, a3, 1
	slli	a2, a3, 2
	add	s0, a7, a2
	lw	a2, 0(s0)
	sltu	s1, a3, a0
	bge	a2, a5, .LBB8_13
# %bb.15:                               # %if.then.3
                                        #   in Loop: Header=BB8_14 Depth=1
	sw	a2, 0(a4)
	sw	a5, 0(s0)
	j	.LBB8_13
.LBB8_16:                               # %for.body60.4.preheader
	mv	a3, zero
	mv	a1, zero
	addi	a6, zero, 3
	j	.LBB8_18
.LBB8_17:                               # %for.cond56.backedge.4
                                        #   in Loop: Header=BB8_18 Depth=1
	add	a1, a1, s1
	beq	a3, a6, .LBB8_20
.LBB8_18:                               # %for.body60.4
                                        # =>This Inner Loop Header: Depth=1
	mv	a0, a3
	slli	a2, a3, 2
	add	a4, a7, a2
	lw	a5, 0(a4)
	addi	a3, a3, 1
	slli	a2, a3, 2
	add	s0, a7, a2
	lw	a2, 0(s0)
	sltu	s1, a3, a0
	bge	a2, a5, .LBB8_17
# %bb.19:                               # %if.then.4
                                        #   in Loop: Header=BB8_18 Depth=1
	sw	a2, 0(a4)
	sw	a5, 0(s0)
	j	.LBB8_17
.LBB8_20:                               # %for.body60.5.preheader
	mv	a3, zero
	mv	a1, zero
	addi	a6, zero, 2
	j	.LBB8_22
.LBB8_21:                               # %for.cond56.backedge.5
                                        #   in Loop: Header=BB8_22 Depth=1
	add	a1, a1, s1
	beq	a3, a6, .LBB8_24
.LBB8_22:                               # %for.body60.5
                                        # =>This Inner Loop Header: Depth=1
	mv	a0, a3
	slli	a2, a3, 2
	add	a4, a7, a2
	lw	a5, 0(a4)
	addi	a3, a3, 1
	slli	a2, a3, 2
	add	s0, a7, a2
	lw	a2, 0(s0)
	sltu	s1, a3, a0
	bge	a2, a5, .LBB8_21
# %bb.23:                               # %if.then.5
                                        #   in Loop: Header=BB8_22 Depth=1
	sw	a2, 0(a4)
	sw	a5, 0(s0)
	j	.LBB8_21
.LBB8_24:                               # %for.body60.6
	lw	a0, 0(sp)
	lw	a1, 4(sp)
	bge	a1, a0, .LBB8_26
# %bb.25:                               # %if.then.6
	sw	a1, 0(sp)
	sw	a0, 4(sp)
.LBB8_26:                               # %for.inc78.6
	lw	a0, 12(sp)
	lw	a1, 16(sp)
	add	a0, a1, a0
	srli	a1, a0, 31
	add	a0, a0, a1
	srli	a0, a0, 1
	andi	a0, a0, 255
	lw	s3, 44(sp)
	lw	s2, 48(sp)
	lw	s1, 52(sp)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end8:
	.size	median, .Lfunc_end8-median
	.cfi_endproc
                                        # -- End function
	.globl	enlarge                 # -- Begin function enlarge
	.p2align	2
	.type	enlarge,@function
enlarge:                                # @enlarge
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	sw	s1, 52(sp)
	sw	s2, 48(sp)
	sw	s3, 44(sp)
	sw	s4, 40(sp)
	sw	s5, 36(sp)
	sw	s6, 32(sp)
	sw	s7, 28(sp)
	sw	s8, 24(sp)
	sw	s9, 20(sp)
	sw	s10, 16(sp)
	sw	s11, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s3, a3
	lw	a3, 0(a3)
	mv	s6, a4
	mv	s4, a2
	mv	s11, a1
	mv	s2, a0
	addi	s9, zero, 1
	slli	s8, a4, 1
	blt	a3, s9, .LBB9_3
# %bb.1:                                # %for.body.lr.ph
	mv	s0, zero
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	lw	s5, 0(s4)
	add	a1, s6, s0
	add	a0, s5, s8
	call	__mulsi3
	lw	s1, 0(s2)
	add	a0, a0, s6
	add	s7, s11, a0
	mv	a0, s5
	mv	a1, s0
	call	__mulsi3
	add	a1, s1, a0
	mv	a0, s7
	mv	a2, s5
	call	memcpy
	lw	a0, 0(s3)
	addi	s0, s0, 1
	blt	s0, a0, .LBB9_2
.LBB9_3:                                # %for.cond8.preheader
	blt	s6, s9, .LBB9_12
# %bb.4:                                # %for.body11.lr.ph
	mv	s5, zero
	addi	s0, zero, -1
.LBB9_5:                                # %for.body11
                                        # =>This Inner Loop Header: Depth=1
	lw	s10, 0(s4)
	add	a1, s6, s0
	add	a0, s10, s8
	call	__mulsi3
	lw	s1, 0(s2)
	add	a0, a0, s6
	add	s7, s11, a0
	mv	a0, s10
	mv	a1, s5
	call	__mulsi3
	add	a1, s1, a0
	mv	a0, s7
	mv	a2, s10
	call	memcpy
	lw	s1, 0(s3)
	lw	s10, 0(s4)
	add	a0, s6, s5
	add	a1, a0, s1
	add	a0, s10, s8
	call	__mulsi3
	lw	s9, 0(s2)
	add	a0, a0, s6
	add	s7, s11, a0
	add	a0, s0, s1
	mv	a1, s10
	call	__mulsi3
	add	a1, s9, a0
	mv	a0, s7
	mv	a2, s10
	call	memcpy
	addi	s0, s0, -1
	add	a0, s6, s0
	addi	s5, s5, 1
	addi	a1, zero, -1
	bne	a0, a1, .LBB9_5
# %bb.6:                                # %for.cond42.preheader
	addi	s5, zero, 1
	blt	s6, s5, .LBB9_12
# %bb.7:                                # %for.cond46.preheader.lr.ph
	mv	a0, zero
	mv	s7, zero
	j	.LBB9_9
.LBB9_8:                                # %for.inc85
                                        #   in Loop: Header=BB9_9 Depth=1
	addi	a1, s7, 1
	not	a0, s7
	mv	s7, a1
	beq	a1, s6, .LBB9_12
.LBB9_9:                                # %for.cond46.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
	lw	a1, 0(s3)
	add	a1, a1, s8
	blt	a1, s5, .LBB9_8
# %bb.10:                               # %for.body51.lr.ph
                                        #   in Loop: Header=BB9_9 Depth=1
	mv	s0, zero
	addi	s9, a0, -1
.LBB9_11:                               # %for.body51
                                        #   Parent Loop BB9_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 0(s4)
	add	a0, a0, s8
	mv	a1, s0
	call	__mulsi3
	add	a0, a0, s6
	add	a1, a0, s7
	add	a1, s11, a1
	lb	a1, 0(a1)
	add	a0, s9, a0
	add	a0, s11, a0
	sb	a1, 0(a0)
	lw	s1, 0(s4)
	add	a0, s1, s8
	mv	a1, s0
	call	__mulsi3
	add	a1, s1, s6
	add	a0, a1, a0
	add	a1, s9, a0
	add	a1, s11, a1
	lb	a1, 0(a1)
	add	a0, a0, s7
	add	a0, s11, a0
	sb	a1, 0(a0)
	lw	a0, 0(s3)
	addi	s0, s0, 1
	add	a0, a0, s8
	blt	s0, a0, .LBB9_11
	j	.LBB9_8
.LBB9_12:                               # %for.end87
	lw	a0, 0(s4)
	add	a0, a0, s8
	sw	a0, 0(s4)
	lw	a0, 0(s3)
	add	a0, a0, s8
	sw	a0, 0(s3)
	sw	s11, 0(s2)
	lw	s11, 12(sp)
	lw	s10, 16(sp)
	lw	s9, 20(sp)
	lw	s8, 24(sp)
	lw	s7, 28(sp)
	lw	s6, 32(sp)
	lw	s5, 36(sp)
	lw	s4, 40(sp)
	lw	s3, 44(sp)
	lw	s2, 48(sp)
	lw	s1, 52(sp)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end9:
	.size	enlarge, .Lfunc_end9-enlarge
	.cfi_endproc
                                        # -- End function
	.globl	susan_smoothing         # -- Begin function susan_smoothing
	.p2align	2
	.type	susan_smoothing,@function
susan_smoothing:                        # @susan_smoothing
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sw	ra, 124(sp)
	sw	s0, 120(sp)
	sw	s1, 116(sp)
	sw	s2, 112(sp)
	sw	s3, 108(sp)
	sw	s4, 104(sp)
	sw	s5, 100(sp)
	sw	s6, 96(sp)
	sw	s7, 92(sp)
	sw	s8, 88(sp)
	sw	s9, 84(sp)
	sw	s10, 80(sp)
	sw	s11, 76(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s8, a5
	mv	s5, a2
	mv	s10, a1
	mv	s0, a0
	sw	a1, 72(sp)
	sw	a3, 68(sp)
	sw	a4, 64(sp)
	addi	s1, zero, 1
	addi	s9, zero, 1
	bnez	a0, .LBB10_2
# %bb.1:                                # %if.then
	mv	a0, s5
	call	__extendsfdf2
	lui	a3, 262016
	mv	a2, zero
	call	__muldf3
	call	__fixdfsi
	addi	s9, a0, 1
.LBB10_2:                               # %if.end
	lui	a1, 268032
	mv	a0, s5
	call	__gtsf2
	bge	a0, s1, .LBB10_43
# %bb.3:                                # %if.end18
	lw	a1, 68(sp)
	slli	a0, s9, 1
	ori	s7, a0, 1
	blt	a1, s7, .LBB10_42
# %bb.4:                                # %lor.lhs.false
	lw	a2, 64(sp)
	blt	a2, s7, .LBB10_42
# %bb.5:                                # %if.end29
	add	a1, a1, a0
	add	a0, a2, a0
	call	__mulsi3
	srai	a1, a0, 31
	call	malloc
	mv	a1, a0
	addi	a0, sp, 72
	addi	a2, sp, 68
	addi	a3, sp, 64
	mv	a4, s9
	call	enlarge
	beqz	s0, .LBB10_16
# %bb.6:                                # %for.cond139.preheader
	lw	a0, 64(sp)
	addi	a0, a0, -1
	addi	a1, zero, 2
	blt	a0, a1, .LBB10_35
# %bb.7:                                # %for.cond144.preheader.preheader
	addi	s1, zero, 1
	j	.LBB10_10
.LBB10_8:                               #   in Loop: Header=BB10_10 Depth=1
	mv	a0, s10
.LBB10_9:                               # %for.inc263
                                        #   in Loop: Header=BB10_10 Depth=1
	lw	a1, 64(sp)
	addi	s1, s1, 1
	addi	a1, a1, -1
	mv	s10, a0
	bge	s1, a1, .LBB10_35
.LBB10_10:                              # %for.cond144.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_14 Depth 2
	lw	s6, 68(sp)
	addi	a0, s6, -1
	addi	a1, zero, 2
	blt	a0, a1, .LBB10_8
# %bb.11:                               # %for.body148.lr.ph
                                        #   in Loop: Header=BB10_10 Depth=1
	mv	a2, zero
	addi	a0, s1, -1
	sw	a0, 16(sp)
	addi	s5, zero, 1
	sw	s1, 12(sp)
	j	.LBB10_14
.LBB10_12:                              # %if.else253
                                        #   in Loop: Header=BB10_14 Depth=2
	sw	a2, 52(sp)
	sw	a3, 44(sp)
	mv	s6, a7
	sw	t4, 36(sp)
	sw	t0, 24(sp)
	sw	t1, 28(sp)
	sw	a5, 40(sp)
	mv	s0, t2
	sw	t3, 20(sp)
	sw	a4, 32(sp)
	call	__mulsi3
	sw	a0, 48(sp)
	mv	a0, s11
	mv	a1, s6
	call	__mulsi3
	mv	s11, a0
	mv	a0, s10
	mv	a1, s0
	call	__mulsi3
	mv	s10, a0
	mv	a0, s9
	mv	a1, s2
	call	__mulsi3
	mv	s9, a0
	mv	a0, s4
	lw	a1, 20(sp)
	call	__mulsi3
	mv	s4, a0
	mv	a0, s7
	lw	a1, 24(sp)
	call	__mulsi3
	mv	s7, a0
	mv	a0, s3
	lw	a1, 28(sp)
	call	__mulsi3
	mv	s3, a0
	lw	a0, 32(sp)
	lw	a1, 36(sp)
	call	__mulsi3
	mv	s2, a0
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	call	__mulsi3
	mv	s0, a0
	addi	a1, zero, -100
	mv	a0, s1
	call	__mulsi3
	add	a0, s11, a0
	lw	a1, 48(sp)
	add	a0, a0, a1
	add	a0, a0, s10
	add	a0, a0, s9
	add	a0, a0, s4
	add	a0, a0, s7
	add	a0, a0, s3
	add	a0, a0, s2
	add	a0, a0, s0
	lw	a1, 52(sp)
	call	__divsi3
	lw	s1, 12(sp)
.LBB10_13:                              # %for.inc260
                                        #   in Loop: Header=BB10_14 Depth=2
	lw	a1, 60(sp)
	sb	a0, 0(a1)
	lw	s6, 68(sp)
	addi	a0, a1, 1
	addi	a1, s5, 1
	sltu	a2, a1, s5
	addi	a3, s6, -1
	lw	a4, 56(sp)
	add	a2, a4, a2
	mv	s5, a1
	mv	s10, a0
	bge	a1, a3, .LBB10_9
.LBB10_14:                              # %for.body148
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	a2, 56(sp)
	sw	s10, 60(sp)
	lw	s0, 72(sp)
	mv	a0, s6
	lw	a1, 16(sp)
	call	__mulsi3
	add	s2, a0, s5
	mv	a0, s6
	mv	a1, s1
	call	__mulsi3
	add	a0, a0, s5
	add	a0, s0, a0
	mv	a6, s1
	lbu	s1, 0(a0)
	add	a0, s0, s2
	lbu	a7, -1(a0)
	sub	a1, s1, a7
	add	a2, s8, a1
	lbu	a1, 0(a0)
	lbu	s11, 0(a2)
	addi	a2, s2, 1
	add	a3, s0, a2
	sub	a0, s1, a1
	add	a0, s8, a0
	lbu	a0, 0(a0)
	lbu	t2, 0(a3)
	addi	a3, s6, -2
	add	a2, a2, a3
	add	a4, s0, a2
	lbu	s2, 0(a4)
	sub	a5, s1, t2
	add	a5, s8, a5
	lbu	s10, 0(a5)
	sub	a5, s1, s2
	add	a5, s8, a5
	lbu	t3, 1(a4)
	lbu	s9, 0(a5)
	addi	a2, a2, 2
	add	a4, s0, a2
	sub	a5, s1, t3
	add	a5, s8, a5
	lbu	s4, 0(a5)
	lbu	t0, 0(a4)
	add	a2, a2, a3
	add	a2, s0, a2
	lbu	t1, 0(a2)
	sub	a3, s1, t0
	add	a3, s8, a3
	lbu	s7, 0(a3)
	sub	a3, s1, t1
	lbu	t4, 1(a2)
	add	a3, s8, a3
	lbu	s3, 0(a3)
	lbu	a3, 2(a2)
	sub	a2, s1, t4
	add	a2, s8, a2
	lbu	a4, 0(a2)
	sub	a2, s1, a3
	add	a2, s8, a2
	lbu	a5, 0(a2)
	add	a2, s11, a0
	add	a2, a2, s10
	add	a2, a2, s9
	add	a2, a2, s4
	add	a2, a2, s7
	add	a2, a2, s3
	add	a2, a2, a4
	add	a2, a2, a5
	addi	a2, a2, -100
	bnez	a2, .LBB10_12
# %bb.15:                               # %if.then250
                                        #   in Loop: Header=BB10_14 Depth=2
	mv	a0, s0
	mv	a1, a6
	mv	a2, s5
	mv	a3, s6
	mv	s1, a6
	call	median
	j	.LBB10_13
.LBB10_16:                              # %if.then40
	lw	s3, 68(sp)
	mv	a0, s7
	mv	a1, s7
	call	__mulsi3
	mv	a1, zero
	call	malloc
	sw	a0, 40(sp)
	mv	a0, s5
	mv	a1, s5
	call	__mulsf3
	neg	s4, s9
	bge	s9, s4, .LBB10_36
.LBB10_17:                              # %for.cond68.preheader
	lw	a0, 64(sp)
	sub	a0, a0, s9
	bge	s9, a0, .LBB10_35
# %bb.18:                               # %for.cond73.preheader.lr.ph
	sub	s11, s3, s7
	lui	a0, 1048574
	addi	s7, a0, -1808
	srai	a0, s9, 31
	sw	a0, 32(sp)
	mv	s6, s9
	sw	s7, 36(sp)
	j	.LBB10_21
.LBB10_19:                              #   in Loop: Header=BB10_21 Depth=1
	mv	a0, s10
.LBB10_20:                              # %for.inc135
                                        #   in Loop: Header=BB10_21 Depth=1
	lw	a1, 64(sp)
	addi	s6, s6, 1
	sub	a1, a1, s9
	mv	s10, a0
	bge	s6, a1, .LBB10_35
.LBB10_21:                              # %for.cond73.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_26 Depth 2
                                        #       Child Loop BB10_30 Depth 3
                                        #         Child Loop BB10_32 Depth 4
	lw	s2, 68(sp)
	sub	a0, s2, s9
	bge	s9, a0, .LBB10_19
# %bb.22:                               # %for.body77.lr.ph
                                        #   in Loop: Header=BB10_21 Depth=1
	sub	a0, s6, s9
	sw	a0, 44(sp)
	mv	s1, s9
	lw	s0, 32(sp)
	sw	s6, 48(sp)
	j	.LBB10_26
.LBB10_23:                              #   in Loop: Header=BB10_26 Depth=2
	mv	s3, s6
	mv	s6, zero
	mv	s2, s7
.LBB10_24:                              # %if.else125
                                        #   in Loop: Header=BB10_26 Depth=2
	mv	a0, s5
	mv	a1, s7
	call	__mulsi3
	add	a0, s6, a0
	mv	a1, s2
	call	__divsi3
	lw	s1, 56(sp)
	mv	s6, s3
.LBB10_25:                              # %for.inc132
                                        #   in Loop: Header=BB10_26 Depth=2
	sb	a0, 0(s10)
	lw	s2, 68(sp)
	addi	a0, s10, 1
	addi	a1, s1, 1
	sltu	a2, a1, s1
	sub	a3, s2, s9
	add	s0, s0, a2
	mv	s1, a1
	mv	s10, a0
	bge	a1, a3, .LBB10_20
.LBB10_26:                              # %for.body77
                                        #   Parent Loop BB10_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_30 Depth 3
                                        #         Child Loop BB10_32 Depth 4
	lw	s3, 72(sp)
	mv	a0, s2
	mv	a1, s6
	call	__mulsi3
	add	a0, a0, s1
	add	a0, s3, a0
	lbu	s5, 0(a0)
	sw	s1, 56(sp)
	blt	s9, s4, .LBB10_23
# %bb.27:                               # %for.cond95.preheader.lr.ph
                                        #   in Loop: Header=BB10_26 Depth=2
	sw	s0, 52(sp)
	sw	s10, 60(sp)
	mv	a0, s2
	lw	a1, 44(sp)
	call	__mulsi3
	mv	s6, zero
	mv	s0, zero
	sub	a1, s1, s9
	add	a0, a1, a0
	add	a2, s3, a0
	lw	a3, 40(sp)
	mv	s2, s4
	j	.LBB10_30
.LBB10_28:                              #   in Loop: Header=BB10_30 Depth=3
	mv	s3, a3
	mv	s7, a2
.LBB10_29:                              # %for.end113
                                        #   in Loop: Header=BB10_30 Depth=3
	addi	s2, s2, 1
	add	a2, s7, s11
	mv	a3, s3
	blt	s9, s2, .LBB10_33
.LBB10_30:                              # %for.cond95.preheader
                                        #   Parent Loop BB10_21 Depth=1
                                        #     Parent Loop BB10_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_32 Depth 4
	blt	s9, s4, .LBB10_28
# %bb.31:                               # %for.body98.preheader
                                        #   in Loop: Header=BB10_30 Depth=3
	mv	s10, s4
.LBB10_32:                              # %for.body98
                                        #   Parent Loop BB10_21 Depth=1
                                        #     Parent Loop BB10_26 Depth=2
                                        #       Parent Loop BB10_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lbu	s1, 0(a2)
	lbu	a1, 0(a3)
	sub	a0, s5, s1
	add	a0, s8, a0
	lbu	a0, 0(a0)
	addi	s7, a2, 1
	addi	s3, a3, 1
	call	__mulsi3
	add	s0, a0, s0
	mv	a1, s1
	call	__mulsi3
	addi	s10, s10, 1
	add	s6, a0, s6
	mv	a3, s3
	mv	a2, s7
	bge	s9, s10, .LBB10_32
	j	.LBB10_29
.LBB10_33:                              # %for.end118
                                        #   in Loop: Header=BB10_26 Depth=2
	lw	s7, 36(sp)
	add	s2, s0, s7
	lw	s10, 60(sp)
	lw	s3, 48(sp)
	lw	s0, 52(sp)
	bnez	s2, .LBB10_24
# %bb.34:                               # %if.then122
                                        #   in Loop: Header=BB10_26 Depth=2
	lw	a0, 72(sp)
	lw	a3, 68(sp)
	mv	s6, s3
	mv	a1, s3
	lw	s1, 56(sp)
	mv	a2, s1
	call	median
	j	.LBB10_25
.LBB10_35:                              # %if.end266
	lw	s11, 76(sp)
	lw	s10, 80(sp)
	lw	s9, 84(sp)
	lw	s8, 88(sp)
	lw	s7, 92(sp)
	lw	s6, 96(sp)
	lw	s5, 100(sp)
	lw	s4, 104(sp)
	lw	s3, 108(sp)
	lw	s2, 112(sp)
	lw	s1, 116(sp)
	lw	s0, 120(sp)
	lw	ra, 124(sp)
	addi	sp, sp, 128
	ret
.LBB10_36:                              # %for.cond52.preheader.lr.ph
	lui	a1, 524288
	xor	s2, a0, a1
	lw	s1, 40(sp)
	mv	s5, s4
	j	.LBB10_39
.LBB10_37:                              #   in Loop: Header=BB10_39 Depth=1
	mv	a1, s1
.LBB10_38:                              # %for.inc65
                                        #   in Loop: Header=BB10_39 Depth=1
	addi	s5, s5, 1
	mv	s1, a1
	blt	s9, s5, .LBB10_17
.LBB10_39:                              # %for.cond52.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_41 Depth 2
	blt	s9, s4, .LBB10_37
# %bb.40:                               # %for.body55.lr.ph
                                        #   in Loop: Header=BB10_39 Depth=1
	mv	a0, s5
	mv	a1, s5
	call	__mulsi3
	mv	s6, a0
	mv	s0, s4
.LBB10_41:                              # %for.body55
                                        #   Parent Loop BB10_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s0
	mv	a1, s0
	call	__mulsi3
	add	a0, a0, s6
	call	__floatsisf
	mv	a1, s2
	call	__divsf3
	call	__extendsfdf2
	call	exp
	lui	a3, 263568
	mv	a2, zero
	call	__muldf3
	call	__fixdfsi
	addi	a1, s1, 1
	addi	s0, s0, 1
	sb	a0, 0(s1)
	mv	s1, a1
	bge	s9, s0, .LBB10_41
	j	.LBB10_38
.LBB10_42:                              # %if.then27
	lw	a2, 68(sp)
	lw	a3, 64(sp)
	lui	a0, %hi(.L.str25)
	addi	a0, a0, %lo(.L.str25)
	mv	a1, s9
	call	printf
	mv	a0, zero
	call	exit
.LBB10_43:                              # %if.then14
	mv	a0, s5
	call	__extendsfdf2
	mv	a2, a0
	lui	a0, %hi(.L.str22)
	addi	a0, a0, %lo(.L.str22)
	mv	a3, a1
	call	printf
	lui	a0, %hi(.Lstr13)
	addi	a0, a0, %lo(.Lstr13)
	call	puts
	lui	a0, %hi(.Lstr14)
	addi	a0, a0, %lo(.Lstr14)
	call	puts
	mv	a0, zero
	call	exit
.Lfunc_end10:
	.size	susan_smoothing, .Lfunc_end10-susan_smoothing
	.cfi_endproc
                                        # -- End function
	.globl	edge_draw               # -- Begin function edge_draw
	.p2align	2
	.type	edge_draw,@function
edge_draw:                              # @edge_draw
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	mv	s3, a3
	mv	s2, a2
	mv	s0, a1
	mv	s1, a0
	beqz	a4, .LBB11_7
.LBB11_1:                               # %for.cond19.preheader
	mv	a0, s3
	mv	a1, s2
	call	__mulsi3
	addi	a1, zero, 1
	blt	a0, a1, .LBB11_6
# %bb.2:                                # %for.body23.lr.ph
	mv	a0, s3
	mv	a1, s2
	call	__mulsi3
	addi	a1, zero, 7
	mv	a2, s0
	j	.LBB11_4
.LBB11_3:                               # %if.end32
                                        #   in Loop: Header=BB11_4 Depth=1
	addi	a0, a0, -1
	addi	a2, a2, 1
	beqz	a0, .LBB11_6
.LBB11_4:                               # %for.body23
                                        # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a2)
	bltu	a1, a3, .LBB11_3
# %bb.5:                                # %if.then27
                                        #   in Loop: Header=BB11_4 Depth=1
	sub	a3, a2, s0
	add	a3, s1, a3
	sb	zero, 0(a3)
	j	.LBB11_3
.LBB11_6:                               # %for.end36
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.LBB11_7:                               # %for.cond.preheader
	mv	a0, s3
	mv	a1, s2
	call	__mulsi3
	addi	a1, zero, 1
	blt	a0, a1, .LBB11_1
# %bb.8:                                # %for.body.lr.ph
	addi	s4, s2, -2
	mv	a0, s3
	mv	a1, s2
	call	__mulsi3
	addi	a6, zero, 7
	addi	a2, zero, 255
	mv	a3, s0
	j	.LBB11_10
.LBB11_9:                               # %if.end
                                        #   in Loop: Header=BB11_10 Depth=1
	addi	a0, a0, -1
	addi	a3, a3, 1
	beqz	a0, .LBB11_1
.LBB11_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	lbu	a4, 0(a3)
	bltu	a6, a4, .LBB11_9
# %bb.11:                               # %if.then4
                                        #   in Loop: Header=BB11_10 Depth=1
	sub	a4, a3, s0
	sub	a4, a4, s2
	add	a5, s1, a4
	sb	a2, -1(a5)
	addi	a4, a4, 1
	add	a1, s1, a4
	sb	a2, 0(a5)
	sb	a2, 0(a1)
	add	a1, a4, s4
	add	a4, s1, a1
	sb	a2, 0(a4)
	addi	a1, a1, 2
	add	a4, s1, a1
	sb	a2, 0(a4)
	add	a1, a1, s4
	add	a1, s1, a1
	sb	a2, 0(a1)
	sb	a2, 1(a1)
	sb	a2, 2(a1)
	j	.LBB11_9
.Lfunc_end11:
	.size	edge_draw, .Lfunc_end11-edge_draw
	.cfi_endproc
                                        # -- End function
	.globl	susan_thin              # -- Begin function susan_thin
	.p2align	2
	.type	susan_thin,@function
susan_thin:                             # @susan_thin
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sw	ra, 140(sp)
	sw	s0, 136(sp)
	sw	s1, 132(sp)
	sw	s2, 128(sp)
	sw	s3, 124(sp)
	sw	s4, 120(sp)
	sw	s5, 116(sp)
	sw	s6, 112(sp)
	sw	s7, 108(sp)
	sw	s8, 104(sp)
	sw	s9, 100(sp)
	sw	s10, 96(sp)
	sw	s11, 92(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	addi	a3, a3, -4
	addi	a4, zero, 5
	sw	a3, 12(sp)
	blt	a3, a4, .LBB12_104
# %bb.1:                                # %for.cond1.preheader.lr.ph
	mv	s8, a2
	mv	s10, a1
	mv	s9, a0
	addi	s11, a2, -4
	addi	s2, zero, 7
	lui	a0, 419430
	addi	a0, a0, 1638
	sw	a0, 8(sp)
	lui	a0, 261734
	addi	a0, a0, 1638
	sw	a0, 4(sp)
	addi	s5, zero, 4
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
	sw	s11, 24(sp)
	sw	s9, 16(sp)
	j	.LBB12_3
.LBB12_2:                               # %for.inc826
                                        #   in Loop: Header=BB12_3 Depth=1
	addi	s5, s5, 1
	lw	a0, 12(sp)
	bge	s5, a0, .LBB12_104
.LBB12_3:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
	addi	a0, zero, 5
	blt	s11, a0, .LBB12_2
# %bb.4:                                # %for.body4.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	addi	s4, zero, 4
	j	.LBB12_7
.LBB12_5:                               # %if.then70
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	a0, zero, 100
	sb	a0, 0(s3)
.LBB12_6:                               # %for.inc823
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	s4, s4, 1
	bge	s4, s11, .LBB12_2
.LBB12_7:                               # %for.body4
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s5
	mv	a1, s8
	call	__mulsi3
	add	s0, a0, s4
	add	s3, s10, s0
	lbu	s1, 0(s3)
	bltu	s2, s1, .LBB12_6
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB12_7 Depth=2
	slli	a0, s0, 2
	add	a0, s9, a0
	lw	a0, 0(a0)
	sw	a0, 44(sp)
	addi	a0, s5, -1
	mv	a1, s8
	call	__mulsi3
	add	a6, a0, s4
	addi	a7, a6, -1
	add	s6, s10, a7
	lbu	a2, 0(s6)
	add	s7, s10, a6
	lbu	a3, 0(s7)
	sltiu	a2, a2, 8
	sltiu	a3, a3, 8
	lbu	a4, 1(s7)
	add	a5, a7, s8
	add	a0, s10, a5
	lbu	a1, 0(a0)
	add	a2, a3, a2
	sltiu	a3, a4, 8
	add	a2, a2, a3
	sltiu	a1, a1, 8
	add	a1, a2, a1
	lbu	a0, 2(a0)
	add	a2, a5, s8
	add	a2, s10, a2
	lbu	a3, 0(a2)
	sltiu	a0, a0, 8
	add	a0, a1, a0
	lbu	a1, 1(a2)
	sltiu	a3, a3, 8
	lbu	a2, 2(a2)
	add	a0, a0, a3
	sltiu	a1, a1, 8
	add	a0, a0, a1
	sltiu	a1, a2, 8
	add	a1, a0, a1
	addi	a0, zero, 1
	beq	a1, a0, .LBB12_11
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB12_7 Depth=2
	beqz	a1, .LBB12_5
.LBB12_10:                              # %if.then397
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	a0, zero, 2
	beq	a1, a0, .LBB12_68
	j	.LBB12_84
.LBB12_11:                              # %land.lhs.true
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	a0, zero, 5
	bltu	a0, s1, .LBB12_6
# %bb.12:                               # %if.then84
                                        #   in Loop: Header=BB12_7 Depth=2
	sw	a1, 40(sp)
	slli	a0, a7, 2
	add	a0, s9, a0
	lw	a0, 0(a0)
	sw	a0, 48(sp)
	slli	a0, a6, 2
	add	a0, s9, a0
	lw	a0, 0(a0)
	sw	a0, 52(sp)
	addi	s1, a6, 1
	slli	a0, s1, 2
	add	a0, s9, a0
	lw	a0, 0(a0)
	sw	a0, 56(sp)
	addi	s11, s0, -1
	slli	a0, s11, 2
	add	a0, s9, a0
	lw	a0, 0(a0)
	sw	a0, 60(sp)
	sw	zero, 64(sp)
	addi	s0, s0, 1
	slli	a0, s0, 2
	add	a0, s9, a0
	lw	a0, 0(a0)
	sw	a0, 68(sp)
	addi	a0, s5, 1
	mv	a1, s8
	call	__mulsi3
	add	a0, a0, s4
	addi	a2, a0, -1
	slli	a1, a2, 2
	add	a1, s9, a1
	lw	a1, 0(a1)
	sw	a1, 72(sp)
	slli	a1, a0, 2
	add	a1, s9, a1
	lw	a1, 0(a1)
	sw	a1, 76(sp)
	addi	a1, a0, 1
	slli	a3, a1, 2
	add	a3, s9, a3
	lw	a3, 0(a3)
	sw	a3, 80(sp)
	lbu	a3, 0(s6)
	bltu	s2, a3, .LBB12_14
# %bb.13:                               # %if.then147
                                        #   in Loop: Header=BB12_7 Depth=2
	sw	zero, 48(sp)
	sw	zero, 52(sp)
	sw	zero, 60(sp)
	lw	a0, 56(sp)
	slli	a0, a0, 1
	sw	a0, 56(sp)
	lw	a0, 72(sp)
	slli	a0, a0, 1
	sw	a0, 72(sp)
	lw	a0, 68(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 68(sp)
	lw	a0, 76(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 76(sp)
	lw	a0, 80(sp)
	slli	a0, a0, 2
	sw	a0, 80(sp)
	lw	s11, 24(sp)
	j	.LBB12_28
.LBB12_14:                              # %if.else
                                        #   in Loop: Header=BB12_7 Depth=2
	lbu	a3, 0(s7)
	bltu	s2, a3, .LBB12_16
# %bb.15:                               # %if.then169
                                        #   in Loop: Header=BB12_7 Depth=2
	sw	zero, 52(sp)
	sw	zero, 48(sp)
	sw	zero, 56(sp)
	lw	a0, 60(sp)
	slli	a0, a0, 1
	sw	a0, 60(sp)
	lw	a0, 68(sp)
	slli	a0, a0, 1
	sw	a0, 68(sp)
	lw	a0, 72(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 72(sp)
	lw	a0, 80(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 80(sp)
	lw	a0, 76(sp)
	slli	a0, a0, 2
	sw	a0, 76(sp)
	lw	s11, 24(sp)
	j	.LBB12_28
.LBB12_16:                              # %if.else183
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a3, s10, s1
	lbu	a3, 0(a3)
	bltu	s2, a3, .LBB12_18
# %bb.17:                               # %if.then193
                                        #   in Loop: Header=BB12_7 Depth=2
	sw	zero, 56(sp)
	sw	zero, 52(sp)
	sw	zero, 68(sp)
	lw	a0, 48(sp)
	slli	a0, a0, 1
	sw	a0, 48(sp)
	lw	a0, 80(sp)
	slli	a0, a0, 1
	sw	a0, 80(sp)
	lw	a0, 60(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 60(sp)
	lw	a0, 76(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 76(sp)
	lw	a0, 72(sp)
	slli	a0, a0, 2
	sw	a0, 72(sp)
	lw	s11, 24(sp)
	j	.LBB12_28
.LBB12_18:                              # %if.else207
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a3, s10, s11
	lbu	a3, 0(a3)
	bltu	s2, a3, .LBB12_20
# %bb.19:                               # %if.then216
                                        #   in Loop: Header=BB12_7 Depth=2
	sw	zero, 60(sp)
	sw	zero, 48(sp)
	sw	zero, 72(sp)
	lw	a0, 52(sp)
	slli	a0, a0, 1
	sw	a0, 52(sp)
	lw	a0, 76(sp)
	slli	a0, a0, 1
	sw	a0, 76(sp)
	lw	a0, 56(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 56(sp)
	lw	a0, 80(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 80(sp)
	lw	a0, 68(sp)
	slli	a0, a0, 2
	sw	a0, 68(sp)
	lw	s11, 24(sp)
	j	.LBB12_28
.LBB12_20:                              # %if.else230
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a3, s10, s0
	lbu	a3, 0(a3)
	bltu	s2, a3, .LBB12_22
# %bb.21:                               # %if.then239
                                        #   in Loop: Header=BB12_7 Depth=2
	sw	zero, 68(sp)
	sw	zero, 56(sp)
	sw	zero, 80(sp)
	lw	a0, 52(sp)
	slli	a0, a0, 1
	sw	a0, 52(sp)
	lw	a0, 76(sp)
	slli	a0, a0, 1
	sw	a0, 76(sp)
	lw	a0, 48(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 48(sp)
	lw	a0, 72(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 72(sp)
	lw	a0, 60(sp)
	slli	a0, a0, 2
	sw	a0, 60(sp)
	lw	s11, 24(sp)
	j	.LBB12_28
.LBB12_22:                              # %if.else253
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a2, s10, a2
	lbu	a2, 0(a2)
	bltu	s2, a2, .LBB12_24
# %bb.23:                               # %if.then263
                                        #   in Loop: Header=BB12_7 Depth=2
	sw	zero, 72(sp)
	sw	zero, 60(sp)
	sw	zero, 76(sp)
	lw	a0, 48(sp)
	slli	a0, a0, 1
	sw	a0, 48(sp)
	lw	a0, 80(sp)
	slli	a0, a0, 1
	sw	a0, 80(sp)
	lw	a0, 52(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 52(sp)
	lw	a0, 68(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 68(sp)
	lw	a0, 56(sp)
	slli	a0, a0, 2
	sw	a0, 56(sp)
	lw	s11, 24(sp)
	j	.LBB12_28
.LBB12_24:                              # %if.else277
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a0, s10, a0
	lbu	a0, 0(a0)
	bltu	s2, a0, .LBB12_26
# %bb.25:                               # %if.then286
                                        #   in Loop: Header=BB12_7 Depth=2
	sw	zero, 76(sp)
	sw	zero, 72(sp)
	sw	zero, 80(sp)
	lw	a0, 60(sp)
	slli	a0, a0, 1
	sw	a0, 60(sp)
	lw	a0, 68(sp)
	slli	a0, a0, 1
	sw	a0, 68(sp)
	lw	a0, 48(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 48(sp)
	lw	a0, 56(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 56(sp)
	lw	a0, 52(sp)
	slli	a0, a0, 2
	sw	a0, 52(sp)
	lw	s11, 24(sp)
	j	.LBB12_28
.LBB12_26:                              # %if.else300
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a0, s10, a1
	lbu	a0, 0(a0)
	lw	s11, 24(sp)
	bltu	s2, a0, .LBB12_28
# %bb.27:                               # %if.then310
                                        #   in Loop: Header=BB12_7 Depth=2
	sw	zero, 80(sp)
	sw	zero, 68(sp)
	sw	zero, 76(sp)
	lw	a0, 72(sp)
	slli	a0, a0, 1
	sw	a0, 72(sp)
	lw	a0, 56(sp)
	slli	a0, a0, 1
	sw	a0, 56(sp)
	lw	a0, 52(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 52(sp)
	lw	a0, 60(sp)
	addi	a1, zero, 3
	call	__mulsi3
	sw	a0, 60(sp)
	lw	a0, 48(sp)
	slli	a0, a0, 2
	sw	a0, 48(sp)
.LBB12_28:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a4, 48(sp)
	mv	s0, a4
	bgtz	a4, .LBB12_30
# %bb.29:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	s0, zero
.LBB12_30:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a3, 52(sp)
	mv	t4, a3
	lw	a1, 36(sp)
	blt	s0, a3, .LBB12_32
# %bb.31:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	t4, s0
.LBB12_32:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	s1, 56(sp)
	mv	t2, s1
	blt	t4, s1, .LBB12_34
# %bb.33:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	t2, t4
.LBB12_34:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a2, 60(sp)
	mv	t1, a2
	blt	t2, a2, .LBB12_36
# %bb.35:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	t1, t2
.LBB12_36:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	t5, 64(sp)
	mv	t0, t5
	blt	t1, t5, .LBB12_38
# %bb.37:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	t0, t1
.LBB12_38:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	t3, 68(sp)
	mv	a7, t3
	blt	t0, t3, .LBB12_40
# %bb.39:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a7, t0
.LBB12_40:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a5, zero
	mv	a0, zero
	bgtz	a4, .LBB12_42
# %bb.41:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a5, 32(sp)
	mv	a0, a1
.LBB12_42:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a4, zero
	addi	a6, zero, 1
	addi	a1, zero, 1
	blt	s0, a3, .LBB12_44
# %bb.43:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a4, a5
	mv	a1, a0
.LBB12_44:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a3, zero
	addi	a0, zero, 2
	sw	a0, 32(sp)
	addi	a5, zero, 2
	blt	t4, s1, .LBB12_46
# %bb.45:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a3, a4
	mv	a5, a1
.LBB12_46:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a0, zero
	addi	a1, zero, 1
	blt	t2, a2, .LBB12_48
# %bb.47:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a0, a5
	mv	a1, a3
.LBB12_48:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	a3, zero, 1
	addi	a4, zero, 1
	blt	t1, t5, .LBB12_50
# %bb.49:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a3, a0
	mv	a4, a1
.LBB12_50:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	a1, zero, 2
	addi	a2, zero, 1
	blt	t0, t3, .LBB12_52
# %bb.51:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a1, a3
	mv	a2, a4
.LBB12_52:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a0, 72(sp)
	mv	a3, zero
	addi	a4, zero, 2
	blt	a7, a0, .LBB12_54
# %bb.53:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a0, a7
	mv	a4, a2
	mv	a3, a1
.LBB12_54:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a1, 76(sp)
	addi	a2, zero, 2
	blt	a0, a1, .LBB12_56
# %bb.55:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a1, a0
	mv	a2, a4
	mv	a6, a3
.LBB12_56:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a0, 80(sp)
	addi	a3, zero, 2
	sw	a3, 36(sp)
	blt	a1, a0, .LBB12_58
# %bb.57:                               # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a0, a1
	sw	a2, 32(sp)
	sw	a6, 36(sp)
.LBB12_58:                              # %for.body339.2
                                        #   in Loop: Header=BB12_7 Depth=2
	blez	a0, .LBB12_67
# %bb.59:                               # %if.then359
                                        #   in Loop: Header=BB12_7 Depth=2
	lbu	a0, 0(s3)
	addi	a1, zero, 3
	bltu	a1, a0, .LBB12_61
# %bb.60:                               # %if.then367
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	s0, 32(sp)
	add	a0, s5, s0
	addi	a0, a0, -1
	mv	a1, s8
	call	__mulsi3
	lw	a2, 36(sp)
	add	a1, s4, a2
	add	a0, a1, a0
	add	a0, a0, s10
	addi	a1, zero, 4
	sb	a1, -1(a0)
	mv	a1, a2
	mv	a2, s0
	j	.LBB12_62
.LBB12_61:                              # %if.else376
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	s0, a0, 1
	lw	s1, 32(sp)
	add	a0, s5, s1
	addi	a0, a0, -1
	mv	a1, s8
	call	__mulsi3
	lw	a2, 36(sp)
	add	a1, s4, a2
	add	a0, a1, a0
	mv	a1, a2
	add	a0, a0, s10
	sb	s0, -1(a0)
	mv	a2, s1
.LBB12_62:                              # %if.end392
                                        #   in Loop: Header=BB12_7 Depth=2
	slli	a0, a2, 1
	add	a0, a0, a1
	mv	a3, a1
	addi	a1, zero, 2
	blt	a1, a0, .LBB12_67
# %bb.63:                               # %if.then397
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a0, s5, a2
	addi	a1, a0, -1
	add	a0, s4, a3
	addi	a0, a0, -2
	addi	s4, zero, 4
	addi	s5, zero, 4
	blt	a1, s4, .LBB12_65
# %bb.64:                               # %if.then397
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	s5, a1
.LBB12_65:                              # %if.then397
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a1, 40(sp)
	blt	a0, s4, .LBB12_10
# %bb.66:                               # %if.then397
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	s4, a0
	addi	a0, zero, 2
	beq	a1, a0, .LBB12_68
	j	.LBB12_84
.LBB12_67:                              #   in Loop: Header=BB12_7 Depth=2
	addi	a0, zero, 2
	lw	a1, 40(sp)
	bne	a1, a0, .LBB12_84
.LBB12_68:                              # %if.then415
                                        #   in Loop: Header=BB12_7 Depth=2
	sw	a1, 40(sp)
	addi	a0, s5, -1
	addi	s7, zero, 2
	sw	a0, 20(sp)
	mv	a1, s8
	call	__mulsi3
	add	a0, a0, s4
	sw	a0, 28(sp)
	add	s6, a0, s10
	lbu	s1, -1(s6)
	lbu	s2, 1(s6)
	sltiu	s0, s1, 8
	sltiu	s11, s2, 8
	addi	a0, s5, 1
	mv	a1, s8
	call	__mulsi3
	add	s3, a0, s4
	add	s9, s3, s10
	lbu	a0, -1(s9)
	lbu	a1, 1(s9)
	sltiu	a0, a0, 8
	sltiu	a1, a1, 8
	add	a2, s11, s0
	add	a2, a2, a0
	add	a2, a2, a1
	bne	a2, s7, .LBB12_76
# %bb.69:                               # %land.lhs.true457
                                        #   in Loop: Header=BB12_7 Depth=2
	or	a1, a1, s0
	or	a0, a0, s11
	and	a0, a1, a0
	beqz	a0, .LBB12_76
# %bb.70:                               # %if.then459
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	a0, zero, 7
	bltu	a0, s1, .LBB12_92
# %bb.71:                               # %if.then461
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	s0, zero, -1
	addi	s11, zero, -1
	bltu	a0, s2, .LBB12_73
# %bb.72:                               # %if.then461
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	s11, zero
.LBB12_73:                              # %if.then461
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	s9, 16(sp)
	addi	a0, zero, 8
	lw	s1, 44(sp)
	bltu	s2, a0, .LBB12_75
# %bb.74:                               # %if.then461
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	s0, zero
.LBB12_75:                              # %if.then461
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	s2, zero, 7
	j	.LBB12_93
.LBB12_76:                              # %if.else565
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a0, 28(sp)
	add	a0, s10, a0
	lbu	a0, 0(a0)
	sltiu	s11, a0, 8
	mv	a0, s5
	mv	a1, s8
	call	__mulsi3
	add	s1, a0, s4
	add	a0, s1, s10
	lbu	a1, 1(a0)
	add	a2, s10, s3
	lbu	a2, 0(a2)
	lbu	a0, -1(a0)
	sltiu	s2, a1, 8
	sltiu	s3, a2, 8
	sltiu	s7, a0, 8
	add	a0, s2, s11
	add	a0, a0, s3
	add	a0, a0, s7
	addi	a1, zero, 2
	bne	a0, a1, .LBB12_83
# %bb.77:                               # %land.lhs.true603
                                        #   in Loop: Header=BB12_7 Depth=2
	or	a0, s7, s2
	or	a1, s3, s11
	and	a0, a0, a1
	beqz	a0, .LBB12_83
# %bb.78:                               # %land.lhs.true608
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	a0, s5, -2
	mv	a1, s8
	call	__mulsi3
	add	a0, a0, s4
	add	a0, a0, s10
	lbu	a1, -1(a0)
	lbu	a0, 1(a0)
	sltiu	a1, a1, 8
	sltiu	a0, a0, 8
	lbu	a2, -2(s6)
	lbu	a3, -2(s9)
	or	a0, a0, a1
	and	a0, a0, s11
	sltiu	a1, a2, 8
	sltiu	a2, a3, 8
	or	a1, a2, a1
	lbu	a2, 2(s6)
	lbu	a3, 2(s9)
	and	a1, a1, s7
	or	a0, a1, a0
	sltiu	a1, a2, 8
	sltiu	a2, a3, 8
	or	a1, a2, a1
	and	a1, a1, s2
	or	s0, a0, a1
	addi	a0, s5, 2
	mv	a1, s8
	call	__mulsi3
	add	a0, a0, s4
	add	a0, a0, s10
	lbu	a1, -1(a0)
	lbu	a0, 1(a0)
	sltiu	a1, a1, 8
	sltiu	a0, a0, 8
	or	a0, a0, a1
	and	a0, a0, s3
	or	a0, s0, a0
	beqz	a0, .LBB12_83
# %bb.79:                               # %if.then693
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a0, s10, s1
	addi	a1, zero, 100
	sb	a1, 0(a0)
	addi	a0, s4, -2
	addi	s4, zero, 4
	addi	s5, zero, 4
	lw	s9, 16(sp)
	lw	s11, 24(sp)
	addi	s2, zero, 7
	lw	a1, 20(sp)
	blt	a1, s4, .LBB12_81
# %bb.80:                               # %if.then693
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	s5, a1
.LBB12_81:                              # %if.then693
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a1, 40(sp)
	blt	a0, s4, .LBB12_84
# %bb.82:                               # %if.then693
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	s4, a0
	addi	a0, zero, 3
	blt	a1, a0, .LBB12_6
	j	.LBB12_85
.LBB12_83:                              #   in Loop: Header=BB12_7 Depth=2
	lw	s9, 16(sp)
	lw	s11, 24(sp)
	addi	s2, zero, 7
	lw	a1, 40(sp)
.LBB12_84:                              # %if.end709
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	a0, zero, 3
	blt	a1, a0, .LBB12_6
.LBB12_85:                              # %if.then712
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	s6, s5, -1
	mv	a0, s6
	mv	a1, s8
	call	__mulsi3
	add	s3, a0, s4
	add	a0, s10, s3
	lbu	a0, 0(a0)
	sltiu	s7, a0, 8
	mv	a0, s5
	mv	a1, s8
	call	__mulsi3
	add	s2, a0, s4
	add	s1, s2, s10
	lbu	a0, 1(s1)
	sltiu	s0, a0, 8
	addi	a0, s5, 1
	mv	a1, s8
	call	__mulsi3
	add	a2, a0, s4
	add	a0, s10, a2
	lbu	a0, 0(a0)
	lbu	a3, -1(s1)
	sltiu	a1, a0, 8
	sltiu	a0, a3, 8
	add	a3, s0, s7
	add	a3, a3, a1
	add	a3, a3, a0
	addi	a4, zero, 2
	blt	a3, a4, .LBB12_91
# %bb.86:                               # %if.then750
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a3, s3, s10
	lbu	a4, -1(a3)
	lbu	a3, 1(a3)
	add	a2, a2, s10
	lbu	a5, -1(a2)
	lbu	a2, 1(a2)
	sltiu	a4, a4, 8
	sltiu	a3, a3, 8
	sltiu	a5, a5, 8
	sltiu	a2, a2, 8
	or	a4, a4, s7
	or	a3, a3, s0
	or	a2, a2, a1
	or	a5, a5, a0
	and	s1, a3, s7
	and	s0, a2, s0
	and	a1, a5, a1
	and	a0, a4, a0
	add	a3, a3, a4
	sub	a0, a3, a0
	add	a0, a0, a5
	sub	a0, a0, s1
	add	a0, a0, a2
	sub	a0, a0, a1
	sub	a0, a0, s0
	addi	a1, zero, 1
	blt	a1, a0, .LBB12_91
# %bb.87:                               # %if.then804
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a0, s10, s2
	addi	a1, zero, 100
	sb	a1, 0(a0)
	addi	a0, s4, -2
	addi	s4, zero, 4
	addi	s5, zero, 4
	blt	s6, s4, .LBB12_89
# %bb.88:                               # %if.then804
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	s5, s6
.LBB12_89:                              # %if.then804
                                        #   in Loop: Header=BB12_7 Depth=2
	addi	s2, zero, 7
	blt	a0, s4, .LBB12_6
# %bb.90:                               # %if.then804
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	s4, a0
	j	.LBB12_6
.LBB12_91:                              #   in Loop: Header=BB12_7 Depth=2
	addi	s2, zero, 7
	j	.LBB12_6
.LBB12_92:                              # %if.else466
                                        #   in Loop: Header=BB12_7 Depth=2
	sltu	s0, a0, s2
	lw	s9, 16(sp)
	addi	s2, zero, 7
	lw	s1, 44(sp)
.LBB12_93:                              # %if.end471
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a0, s0, s5
	mv	a1, s8
	call	__mulsi3
	add	a1, s11, s4
	add	s6, a1, a0
	slli	a0, s6, 2
	add	a0, s9, a0
	lw	a0, 0(a0)
	call	__floatsisf
	mv	s7, a0
	mv	a0, s1
	call	__floatsisf
	mv	a1, a0
	mv	a0, s7
	call	__divsf3
	call	__extendsfdf2
	lw	a2, 8(sp)
	lw	a3, 4(sp)
	call	__gtdf2
	addi	a1, zero, 1
	blt	a0, a1, .LBB12_103
# %bb.94:                               # %if.then483
                                        #   in Loop: Header=BB12_7 Depth=2
	bnez	s11, .LBB12_98
# %bb.95:                               # %land.lhs.true486
                                        #   in Loop: Header=BB12_7 Depth=2
	slli	a0, s0, 1
	add	a0, a0, s5
	mv	a1, s8
	call	__mulsi3
	add	a0, a0, s4
	add	a1, s10, a0
	lbu	a1, 0(a1)
	addi	a2, zero, 8
	bltu	a1, a2, .LBB12_98
# %bb.96:                               # %land.lhs.true496
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a0, a0, s10
	lbu	a1, -1(a0)
	addi	a2, zero, 8
	bltu	a1, a2, .LBB12_98
# %bb.97:                               # %land.lhs.true507
                                        #   in Loop: Header=BB12_7 Depth=2
	lbu	a0, 1(a0)
	bltu	s2, a0, .LBB12_102
.LBB12_98:                              # %lor.lhs.false
                                        #   in Loop: Header=BB12_7 Depth=2
	bnez	s0, .LBB12_103
# %bb.99:                               # %land.lhs.true520
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a0, s5
	mv	a1, s8
	call	__mulsi3
	add	a1, a0, s4
	slli	a0, s11, 1
	add	a1, a1, a0
	add	a1, s10, a1
	lbu	a1, 0(a1)
	addi	a2, zero, 8
	bltu	a1, a2, .LBB12_103
# %bb.100:                              # %land.lhs.true530
                                        #   in Loop: Header=BB12_7 Depth=2
	add	a1, a0, s3
	add	a1, s10, a1
	lbu	a1, 0(a1)
	bltu	a1, a2, .LBB12_103
# %bb.101:                              # %land.lhs.true541
                                        #   in Loop: Header=BB12_7 Depth=2
	lw	a1, 28(sp)
	add	a0, a0, a1
	add	a0, s10, a0
	lbu	a0, 0(a0)
	bltu	a0, a2, .LBB12_103
.LBB12_102:                             # %if.then552
                                        #   in Loop: Header=BB12_7 Depth=2
	mv	a0, s5
	mv	a1, s8
	call	__mulsi3
	add	a0, a0, s4
	add	a0, s10, a0
	addi	a1, zero, 100
	sb	a1, 0(a0)
	add	a0, s10, s6
	addi	a1, zero, 3
	sb	a1, 0(a0)
.LBB12_103:                             #   in Loop: Header=BB12_7 Depth=2
	lw	s11, 24(sp)
	lw	a1, 40(sp)
	addi	a0, zero, 3
	blt	a1, a0, .LBB12_6
	j	.LBB12_85
.LBB12_104:                             # %for.end828
	lw	s11, 92(sp)
	lw	s10, 96(sp)
	lw	s9, 100(sp)
	lw	s8, 104(sp)
	lw	s7, 108(sp)
	lw	s6, 112(sp)
	lw	s5, 116(sp)
	lw	s4, 120(sp)
	lw	s3, 124(sp)
	lw	s2, 128(sp)
	lw	s1, 132(sp)
	lw	s0, 136(sp)
	lw	ra, 140(sp)
	addi	sp, sp, 144
	ret
.Lfunc_end12:
	.size	susan_thin, .Lfunc_end12-susan_thin
	.cfi_endproc
                                        # -- End function
	.globl	susan_edges             # -- Begin function susan_edges
	.p2align	2
	.type	susan_edges,@function
susan_edges:                            # @susan_edges
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -272
	.cfi_def_cfa_offset 272
	sw	ra, 268(sp)
	sw	s0, 264(sp)
	sw	s1, 260(sp)
	sw	s2, 256(sp)
	sw	s3, 252(sp)
	sw	s4, 248(sp)
	sw	s5, 244(sp)
	sw	s6, 240(sp)
	sw	s7, 236(sp)
	sw	s8, 232(sp)
	sw	s9, 228(sp)
	sw	s10, 224(sp)
	sw	s11, 220(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s1, a6
	sw	a4, 216(sp)
	mv	s2, a3
	sw	a2, 8(sp)
	mv	s0, a1
	mv	s7, a0
	mv	a0, a6
	sw	a5, 184(sp)
	mv	a1, a5
	call	__mulsi3
	slli	a2, a0, 2
	sw	s0, 164(sp)
	mv	a0, s0
	mv	a1, zero
	call	memset
	sw	s1, 212(sp)
	addi	s6, s1, -3
	addi	s3, zero, 4
	blt	s6, s3, .LBB13_8
# %bb.1:                                # %for.cond3.preheader.lr.ph
	mv	s4, zero
	lw	a0, 184(sp)
	addi	s5, a0, -3
	addi	s9, a0, -5
	addi	s10, a0, -6
	addi	s11, zero, 3
	j	.LBB13_3
.LBB13_2:                               # %for.inc285
                                        #   in Loop: Header=BB13_3 Depth=1
	addi	a0, s11, 1
	sltu	a1, a0, s11
	add	s4, s4, a1
	mv	s11, a0
	beq	a0, s6, .LBB13_8
.LBB13_3:                               # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_6 Depth 2
	blt	s5, s3, .LBB13_2
# %bb.4:                                # %for.body7.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	addi	a0, zero, -3
	add	a0, s11, a0
	lw	s0, 184(sp)
	mv	a1, s0
	call	__mulsi3
	mv	s8, a0
	mv	a0, s11
	mv	a1, s0
	call	__mulsi3
	mv	a7, zero
	addi	t0, zero, 3
	j	.LBB13_6
.LBB13_5:                               # %for.inc
                                        #   in Loop: Header=BB13_6 Depth=2
	addi	a1, t0, 1
	sltu	a2, a1, t0
	add	a7, a7, a2
	mv	t0, a1
	beq	a1, s5, .LBB13_2
.LBB13_6:                               # %for.body7
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, t0, s8
	add	a6, t0, a0
	add	a4, s7, a6
	lbu	a4, 0(a4)
	add	a3, s7, a5
	lbu	s1, -1(a3)
	lbu	a3, 0(a3)
	sub	s1, a4, s1
	add	s1, s2, s1
	lbu	t1, 0(s1)
	sub	a3, a4, a3
	add	a3, s2, a3
	lbu	t2, 0(a3)
	addi	a5, a5, 1
	add	a1, s7, a5
	lbu	a1, 0(a1)
	add	a5, a5, s5
	add	a2, s7, a5
	lbu	s1, 0(a2)
	sub	a1, a4, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	sub	s1, a4, s1
	add	s1, s2, s1
	lbu	s1, 0(s1)
	lbu	a3, 1(a2)
	add	s0, t1, t2
	add	a1, s0, a1
	add	a1, a1, s1
	sub	a3, a4, a3
	lbu	s1, 2(a2)
	add	a3, s2, a3
	lbu	a3, 0(a3)
	lbu	a2, 3(a2)
	sub	s1, a4, s1
	add	s1, s2, s1
	lbu	s1, 0(s1)
	sub	a2, a4, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	addi	a5, a5, 4
	add	s0, s7, a5
	lbu	s0, 0(s0)
	add	a1, a1, a3
	add	a1, a1, s1
	add	t1, a1, a2
	sub	a2, a4, s0
	add	a3, a5, s9
	add	a5, s7, a3
	lbu	s1, 0(a5)
	add	a2, s2, a2
	lbu	a2, 0(a2)
	lbu	s0, 1(a5)
	sub	s1, a4, s1
	add	s1, s2, s1
	lbu	s1, 0(s1)
	sub	s0, a4, s0
	add	s0, s2, s0
	lbu	s0, 0(s0)
	lbu	a1, 2(a5)
	add	a2, t1, a2
	add	a2, a2, s1
	add	a2, a2, s0
	sub	a1, a4, a1
	lbu	s1, 3(a5)
	add	a1, s2, a1
	lbu	a1, 0(a1)
	lbu	s0, 4(a5)
	sub	s1, a4, s1
	add	s1, s2, s1
	lbu	s1, 0(s1)
	sub	s0, a4, s0
	add	s0, s2, s0
	lbu	s0, 0(s0)
	lbu	a5, 5(a5)
	add	a1, a2, a1
	add	a1, a1, s1
	add	t1, a1, s0
	sub	a2, a4, a5
	add	a2, s2, a2
	lbu	a2, 0(a2)
	addi	a3, a3, 6
	add	a5, s7, a3
	lbu	a5, 0(a5)
	add	a3, a3, s10
	add	s1, s7, a3
	lbu	s0, 0(s1)
	sub	a5, a4, a5
	add	a5, s2, a5
	lbu	a5, 0(a5)
	sub	s0, a4, s0
	add	s0, s2, s0
	lbu	s0, 0(s0)
	lbu	a1, 1(s1)
	add	a2, t1, a2
	add	a2, a2, a5
	add	a2, a2, s0
	sub	a1, a4, a1
	lbu	a5, 2(s1)
	add	a1, s2, a1
	lbu	a1, 0(a1)
	lbu	s0, 4(s1)
	sub	a5, a4, a5
	add	a5, s2, a5
	lbu	a5, 0(a5)
	sub	s0, a4, s0
	add	s0, s2, s0
	lbu	s0, 0(s0)
	lbu	s1, 5(s1)
	add	a1, a2, a1
	add	a1, a1, a5
	add	a1, a1, s0
	sub	a2, a4, s1
	add	a2, s2, a2
	lbu	a2, 0(a2)
	addi	a3, a3, 6
	add	a5, s7, a3
	lbu	a5, 0(a5)
	add	a3, a3, s10
	add	s1, s7, a3
	lbu	s0, 0(s1)
	sub	a5, a4, a5
	add	a5, s2, a5
	lbu	a5, 0(a5)
	sub	s0, a4, s0
	add	s0, s2, s0
	lbu	s0, 0(s0)
	add	a1, a1, a2
	lbu	a2, 1(s1)
	add	a1, a1, a5
	add	t1, a1, s0
	lbu	a5, 2(s1)
	sub	a2, a4, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sub	a5, a4, a5
	lbu	s0, 3(s1)
	add	a5, s2, a5
	lbu	a5, 0(a5)
	lbu	a1, 4(s1)
	sub	s0, a4, s0
	add	s0, s2, s0
	lbu	s0, 0(s0)
	sub	a1, a4, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	add	a2, t1, a2
	add	a2, a2, a5
	add	a2, a2, s0
	add	a1, a2, a1
	lbu	a2, 5(s1)
	addi	a3, a3, 6
	add	a5, s7, a3
	lbu	a5, 0(a5)
	sub	a2, a4, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sub	a5, a4, a5
	add	a5, s2, a5
	lbu	a5, 0(a5)
	add	a3, a3, s9
	add	s1, s7, a3
	lbu	s0, 0(s1)
	add	a1, a1, a2
	add	a1, a1, a5
	lbu	a2, 1(s1)
	sub	a5, a4, s0
	add	a5, s2, a5
	lbu	a5, 0(a5)
	sub	a2, a4, a2
	lbu	s0, 2(s1)
	add	a2, s2, a2
	lbu	a2, 0(a2)
	lbu	s1, 3(s1)
	sub	s0, a4, s0
	add	s0, s2, s0
	lbu	s0, 0(s0)
	sub	s1, a4, s1
	add	s1, s2, s1
	lbu	s1, 0(s1)
	add	a1, a1, a5
	add	a1, a1, a2
	add	a1, a1, s0
	add	a1, a1, s1
	addi	a2, a3, 4
	add	a3, s7, a2
	lbu	a3, 0(a3)
	add	a2, a2, s5
	add	a2, s7, a2
	lbu	a5, 0(a2)
	lbu	s1, 1(a2)
	lbu	a2, 2(a2)
	sub	a3, a4, a3
	sub	a5, a4, a5
	sub	s1, a4, s1
	sub	a2, a4, a2
	add	a3, s2, a3
	lbu	a3, 0(a3)
	add	a4, s2, a5
	lbu	a4, 0(a4)
	add	a5, s2, s1
	lbu	a5, 0(a5)
	add	a2, s2, a2
	lbu	a2, 0(a2)
	add	a1, a1, a3
	add	a1, a1, a4
	add	a1, a1, a5
	add	a1, a1, a2
	addi	a4, a1, 100
	lw	a1, 216(sp)
	blt	a1, a4, .LBB13_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB13_6 Depth=2
	lw	a1, 216(sp)
	sub	a1, a1, a4
	slli	a2, a6, 2
	lw	a3, 164(sp)
	add	a2, a3, a2
	sw	a1, 0(a2)
	j	.LBB13_5
.LBB13_8:                               # %for.cond288.preheader
	lw	a0, 212(sp)
	addi	a0, a0, -4
	addi	a1, zero, 5
	lw	s8, 164(sp)
	sw	a0, 12(sp)
	blt	a0, a1, .LBB13_46
# %bb.9:                                # %for.cond293.preheader.lr.ph
	mv	a2, zero
	lw	a0, 184(sp)
	addi	a1, a0, -4
	sw	a1, 160(sp)
	addi	a1, a0, -3
	sw	a1, 104(sp)
	addi	a1, a0, -5
	sw	a1, 100(sp)
	addi	a0, a0, -6
	sw	a0, 96(sp)
	addi	s0, zero, 4
	lui	a0, 838861
	addi	a0, a0, -819
	sw	a0, 24(sp)
	lui	a0, 261837
	addi	a0, a0, -820
	sw	a0, 20(sp)
	sw	s7, 28(sp)
	j	.LBB13_11
.LBB13_10:                              # %for.inc1256
                                        #   in Loop: Header=BB13_11 Depth=1
	addi	a0, s0, 1
	sltu	a1, a0, s0
	lw	a2, 16(sp)
	add	a2, a2, a1
	mv	s0, a0
	lw	a1, 12(sp)
	beq	a0, a1, .LBB13_46
.LBB13_11:                              # %for.cond293.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_16 Depth 2
	sw	a2, 16(sp)
	addi	a0, zero, 5
	lw	a1, 160(sp)
	blt	a1, a0, .LBB13_10
# %bb.12:                               # %for.body297.lr.ph
                                        #   in Loop: Header=BB13_11 Depth=1
	mv	a0, s0
	lw	s3, 184(sp)
	mv	a1, s3
	call	__mulsi3
	sw	a0, 156(sp)
	addi	a0, zero, -3
	add	a0, s0, a0
	mv	a1, s3
	call	__mulsi3
	sw	a0, 108(sp)
	mv	s1, zero
	addi	s9, zero, 4
	sw	s0, 64(sp)
	j	.LBB13_16
.LBB13_13:                              # %if.then750
                                        #   in Loop: Header=BB13_16 Depth=2
	lw	a0, 8(sp)
	add	a0, a0, s10
	addi	a1, zero, 1
.LBB13_14:                              # %for.inc1253
                                        #   in Loop: Header=BB13_16 Depth=2
	sb	a1, 0(a0)
.LBB13_15:                              # %for.inc1253
                                        #   in Loop: Header=BB13_16 Depth=2
	addi	a0, s9, 1
	sltu	a1, a0, s9
	add	s1, s1, a1
	mv	s9, a0
	lw	a1, 160(sp)
	beq	a0, a1, .LBB13_10
.LBB13_16:                              # %for.body297
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 156(sp)
	add	a1, s9, a0
	slli	a0, a1, 2
	add	a0, s8, a0
	lw	a2, 0(a0)
	addi	a0, zero, 1
	blt	a2, a0, .LBB13_15
# %bb.17:                               # %if.then304
                                        #   in Loop: Header=BB13_16 Depth=2
	sw	s1, 196(sp)
	sw	a1, 192(sp)
	add	a0, s7, a1
	lbu	s5, 0(a0)
	lw	a0, 216(sp)
	sw	a2, 188(sp)
	sub	a1, a0, a2
	addi	a0, zero, 601
	sw	s9, 208(sp)
	blt	a1, a0, .LBB13_25
# %bb.18:                               # %if.then319
                                        #   in Loop: Header=BB13_16 Depth=2
	lw	a0, 108(sp)
	add	a0, s9, a0
	sw	a1, 200(sp)
	add	a1, s7, a0
	lbu	a2, -1(a1)
	lbu	a1, 0(a1)
	sub	a2, s5, a2
	add	a2, s2, a2
	lbu	a3, 0(a2)
	sw	a3, 180(sp)
	sub	a1, s5, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	addi	a0, a0, 1
	add	a2, s7, a0
	add	a1, a1, a3
	lbu	a2, 0(a2)
	lw	a6, 104(sp)
	add	a0, a0, a6
	add	a3, s7, a0
	lbu	a4, 0(a3)
	sub	a2, s5, a2
	add	a2, s2, a2
	lbu	a5, 0(a2)
	sw	a5, 144(sp)
	sub	a2, s5, a4
	add	a2, s2, a2
	lbu	a2, 0(a2)
	lbu	a4, 1(a3)
	add	a1, a1, a5
	sw	a1, 176(sp)
	lbu	a1, 2(a3)
	slli	a2, a2, 1
	sw	a2, 168(sp)
	sub	a2, s5, a4
	add	a2, s2, a2
	sub	a1, s5, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	addi	a0, a0, 4
	add	a4, s7, a0
	lbu	a3, 3(a3)
	lbu	a4, 0(a4)
	lbu	t2, 0(a2)
	slli	a1, a1, 1
	sw	a1, 172(sp)
	sub	a1, s5, a3
	sub	a2, s5, a4
	add	a2, s2, a2
	lbu	a2, 0(a2)
	lw	a7, 100(sp)
	add	a0, a0, a7
	add	a3, s7, a0
	lbu	a4, 0(a3)
	add	a1, s2, a1
	lbu	t1, 0(a1)
	slli	a1, a2, 1
	sw	a1, 148(sp)
	sub	a1, s5, a4
	lbu	a2, 1(a3)
	add	a1, s2, a1
	lbu	t3, 0(a1)
	sw	t3, 88(sp)
	lbu	a1, 2(a3)
	sub	a2, s5, a2
	add	a2, s2, a2
	lbu	t0, 0(a2)
	sw	t0, 48(sp)
	sub	a1, s5, a1
	lbu	a2, 3(a3)
	add	a1, s2, a1
	lbu	a1, 0(a1)
	sw	a1, 140(sp)
	lbu	a1, 4(a3)
	sub	a2, s5, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 152(sp)
	sub	a1, s5, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	sw	a1, 136(sp)
	lbu	a1, 5(a3)
	addi	a0, a0, 6
	add	a2, s7, a0
	lbu	a2, 0(a2)
	sub	a1, s5, a1
	add	a1, s2, a1
	lbu	s3, 0(a1)
	sw	s3, 44(sp)
	sub	a1, s5, a2
	lw	a5, 96(sp)
	add	a2, a0, a5
	add	a3, s7, a2
	lbu	a0, 0(a3)
	lbu	a4, 1(a3)
	add	a1, s2, a1
	lbu	s1, 0(a1)
	sw	s1, 112(sp)
	sub	a0, s5, a0
	sub	a1, s5, a4
	add	a1, s2, a1
	lbu	a1, 0(a1)
	add	a0, s2, a0
	lbu	a4, 2(a3)
	lbu	a0, 0(a0)
	slli	a1, a1, 1
	sw	a1, 132(sp)
	lbu	a1, 4(a3)
	sub	a4, s5, a4
	add	a4, s2, a4
	lbu	a4, 0(a4)
	sw	a4, 128(sp)
	sub	a1, s5, a1
	add	a1, s2, a1
	lbu	a3, 5(a3)
	lbu	a1, 0(a1)
	sw	a1, 124(sp)
	addi	a1, a2, 6
	add	a2, s7, a1
	sub	a3, s5, a3
	add	a3, s2, a3
	lbu	a3, 0(a3)
	sw	a3, 120(sp)
	lbu	a3, 0(a2)
	add	a1, a1, a5
	add	a2, s7, a1
	lbu	a4, 0(a2)
	sub	a3, s5, a3
	add	a3, s2, a3
	lbu	a3, 0(a3)
	sub	a4, s5, a4
	lbu	a5, 1(a2)
	add	a4, s2, a4
	lbu	s0, 0(a4)
	sw	s0, 72(sp)
	lbu	a4, 2(a2)
	sub	a5, s5, a5
	add	a5, s2, a5
	lbu	t4, 0(a5)
	sw	t4, 60(sp)
	sub	a4, s5, a4
	add	a4, s2, a4
	lbu	a4, 0(a4)
	sw	a4, 116(sp)
	lbu	a4, 3(a2)
	sub	a5, s1, t3
	sub	a0, a5, a0
	lbu	a5, 4(a2)
	sub	a4, s5, a4
	add	a4, s2, a4
	lbu	a4, 0(a4)
	sw	a4, 92(sp)
	sub	a4, s5, a5
	add	a4, s2, a4
	lbu	a4, 0(a4)
	sw	a4, 80(sp)
	lbu	a2, 5(a2)
	addi	a1, a1, 6
	add	a0, a0, a3
	add	a3, s7, a1
	sub	a2, s5, a2
	lbu	a3, 0(a3)
	add	a1, a1, a7
	add	a4, s7, a1
	lbu	a5, 0(a4)
	add	a2, s2, a2
	lbu	s11, 0(a2)
	sw	s11, 52(sp)
	sub	a2, s5, a3
	sub	a3, s5, a5
	add	a3, s2, a3
	lbu	a3, 0(a3)
	add	a2, s2, a2
	lbu	a5, 1(a4)
	lbu	s1, 0(a2)
	sw	s1, 84(sp)
	slli	a2, a3, 1
	sw	a2, 204(sp)
	lbu	a2, 2(a4)
	sub	a3, s5, a5
	add	a3, s2, a3
	lbu	s4, 0(a3)
	sub	a2, s5, a2
	addi	a1, a1, 4
	lbu	a3, 3(a4)
	add	a4, s7, a1
	lbu	a4, 0(a4)
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 76(sp)
	sub	a2, s5, a3
	sub	a3, s5, a4
	add	a3, s2, a3
	lbu	a3, 0(a3)
	add	a1, a1, a6
	add	a1, s7, a1
	lbu	a4, 0(a1)
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 68(sp)
	slli	a2, a3, 1
	sw	a2, 212(sp)
	sub	a2, s5, a4
	lbu	a3, 1(a1)
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 56(sp)
	lbu	a1, 2(a1)
	sub	a2, s5, a3
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 32(sp)
	sub	a1, s5, a1
	add	a1, s2, a1
	lbu	s6, 0(a1)
	sub	a0, a0, s0
	add	a0, a0, s1
	mv	s0, t2
	slli	a1, t2, 1
	sw	a1, 36(sp)
	mv	s1, t1
	slli	a1, t1, 1
	sw	a1, 40(sp)
	slli	s8, t0, 1
	slli	s9, t4, 1
	addi	a1, zero, 3
	call	__mulsi3
	lw	a1, 120(sp)
	add	a1, a1, s3
	add	a1, a1, s11
	slli	a1, a1, 1
	lw	a2, 180(sp)
	lw	a3, 144(sp)
	sub	a2, a3, a2
	lw	s3, 168(sp)
	sub	a2, a2, s3
	sub	a2, a2, s0
	add	a2, a2, s1
	lw	s11, 148(sp)
	add	a2, a2, s11
	sub	a2, a2, s8
	lw	s1, 140(sp)
	sub	a2, a2, s1
	lw	s8, 136(sp)
	add	a2, a2, s8
	lw	a3, 132(sp)
	sub	a2, a2, a3
	lw	a3, 128(sp)
	sub	a2, a2, a3
	lw	a3, 124(sp)
	add	a2, a2, a3
	sub	a2, a2, s9
	lw	s0, 116(sp)
	sub	a2, a2, s0
	lw	s10, 80(sp)
	add	a2, a2, s10
	lw	a3, 204(sp)
	sub	a2, a2, a3
	sub	a2, a2, s4
	lw	s9, 68(sp)
	add	a2, a2, s9
	lw	a3, 212(sp)
	add	a2, a2, a3
	lw	a3, 56(sp)
	sub	a2, a2, a3
	add	a2, a2, s6
	add	a0, a2, a0
	add	a0, a0, a1
	sw	a0, 180(sp)
	lw	a0, 176(sp)
	sub	a0, a3, a0
	lw	a1, 32(sp)
	add	a0, a0, a1
	add	a0, a0, s6
	addi	a1, zero, 3
	call	__mulsi3
	lw	a1, 76(sp)
	add	a1, a1, s4
	add	a1, a1, s9
	slli	a1, a1, 1
	lw	a2, 36(sp)
	add	a2, a2, s3
	lw	a3, 172(sp)
	add	a2, a2, a3
	lw	a3, 40(sp)
	add	a2, a2, a3
	add	a2, a2, s11
	lw	a3, 88(sp)
	add	a2, a2, a3
	lw	a3, 48(sp)
	add	a2, a2, a3
	add	a2, a2, s1
	lw	a3, 152(sp)
	add	a2, a2, a3
	add	a2, a2, s8
	lw	a3, 44(sp)
	add	a2, a2, a3
	lw	a3, 112(sp)
	add	a2, a2, a3
	lw	a3, 72(sp)
	sub	a2, a3, a2
	lw	a3, 60(sp)
	add	a2, a2, a3
	add	a2, a2, s0
	lw	s0, 180(sp)
	lw	a3, 92(sp)
	add	a2, a2, a3
	add	a2, a2, s10
	lw	a3, 52(sp)
	add	a2, a2, a3
	lw	a3, 84(sp)
	add	a2, a2, a3
	lw	a3, 204(sp)
	add	a2, a2, a3
	lw	s9, 208(sp)
	lw	a3, 212(sp)
	add	a2, a2, a3
	add	a0, a2, a0
	add	s6, a0, a1
	mv	a0, s0
	mv	a1, s0
	call	__mulsi3
	mv	s8, a0
	mv	a0, s6
	mv	a1, s6
	call	__mulsi3
	add	a0, a0, s8
	call	__floatsisf
	call	sqrtf
	call	__extendsfdf2
	mv	s8, a0
	mv	s10, a1
	lw	a0, 200(sp)
	call	__floatsisf
	call	__extendsfdf2
	lw	a2, 24(sp)
	lw	a3, 20(sp)
	call	__muldf3
	mv	a2, a0
	mv	a3, a1
	mv	a0, s8
	mv	a1, s10
	call	__gtdf2
	addi	a1, zero, 1
	blt	a0, a1, .LBB13_25
# %bb.19:                               # %if.then682
                                        #   in Loop: Header=BB13_16 Depth=2
	beqz	s0, .LBB13_39
# %bb.20:                               # %if.end688
                                        #   in Loop: Header=BB13_16 Depth=2
	mv	a0, s6
	call	__floatsisf
	mv	s6, a0
	mv	a0, s0
	call	__floatsisf
	mv	a1, a0
	mv	a0, s6
	call	__divsf3
	mv	s3, a0
	mv	a1, zero
	call	__ltsf2
	addi	s4, zero, 1
	addi	s6, zero, 1
	addi	a1, zero, -1
	blt	a1, a0, .LBB13_22
# %bb.21:                               # %if.then691
                                        #   in Loop: Header=BB13_16 Depth=2
	lui	a0, 524288
	xor	s3, s3, a0
	addi	s6, zero, -1
.LBB13_22:                              # %if.end694
                                        #   in Loop: Header=BB13_16 Depth=2
	lui	a1, 258048
	mv	a0, s3
	call	__ltsf2
	mv	s5, zero
	lw	s8, 164(sp)
	lw	s0, 64(sp)
	lw	s1, 196(sp)
	lw	s10, 192(sp)
	lw	s11, 188(sp)
	bltz	a0, .LBB13_40
# %bb.23:                               # %if.else699
                                        #   in Loop: Header=BB13_16 Depth=2
	lui	a1, 262144
	mv	a0, s3
	call	__gtsf2
	blez	a0, .LBB13_44
# %bb.24:                               #   in Loop: Header=BB13_16 Depth=2
	mv	s4, zero
	addi	s5, zero, 1
	j	.LBB13_40
.LBB13_25:                              # %if.then762
                                        #   in Loop: Header=BB13_16 Depth=2
	lw	a0, 108(sp)
	add	a0, s9, a0
	add	a1, s7, a0
	lbu	a2, -1(a1)
	sub	a2, s5, a2
	add	a2, s2, a2
	lbu	a1, 0(a1)
	lbu	s4, 0(a2)
	addi	a0, a0, 1
	add	a2, s7, a0
	sub	a1, s5, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	lbu	a2, 0(a2)
	lw	t3, 104(sp)
	add	a3, a0, t3
	add	a4, s7, a3
	lbu	a0, 0(a4)
	sub	a2, s5, a2
	add	a2, s2, a2
	lbu	ra, 0(a2)
	sub	a0, s5, a0
	add	a0, s2, a0
	lbu	a2, 0(a0)
	add	a0, a1, s4
	lbu	a1, 1(a4)
	add	a6, a0, ra
	slli	a0, a2, 2
	sw	a0, 180(sp)
	lbu	a2, 2(a4)
	sub	a1, s5, a1
	add	a1, s2, a1
	lbu	t4, 0(a1)
	sub	a1, s5, a2
	addi	a2, a3, 4
	add	a3, s7, a2
	lbu	a4, 3(a4)
	lbu	a3, 0(a3)
	add	a1, s2, a1
	lbu	a7, 0(a1)
	sub	a4, s5, a4
	sub	a3, s5, a3
	add	a3, s2, a3
	lbu	a3, 0(a3)
	lw	a0, 100(sp)
	add	a2, a2, a0
	add	a5, s7, a2
	lbu	s1, 0(a5)
	add	a4, s2, a4
	lbu	t6, 0(a4)
	slli	a1, a3, 2
	sw	a1, 176(sp)
	sub	a3, s5, s1
	lbu	a4, 1(a5)
	add	a3, s2, a3
	lbu	a1, 0(a3)
	sw	a1, 136(sp)
	lbu	a3, 2(a5)
	sub	a4, s5, a4
	add	a4, s2, a4
	lbu	t5, 0(a4)
	sub	a3, s5, a3
	lbu	a4, 3(a5)
	add	a3, s2, a3
	lbu	a1, 0(a3)
	sw	a1, 168(sp)
	lbu	a3, 4(a5)
	sub	a4, s5, a4
	add	a4, s2, a4
	lbu	a1, 0(a4)
	sw	a1, 132(sp)
	sub	a3, s5, a3
	add	a3, s2, a3
	lbu	a1, 0(a3)
	sw	a1, 172(sp)
	lbu	a3, 5(a5)
	addi	a2, a2, 6
	add	a4, s7, a2
	lbu	a4, 0(a4)
	sub	a3, s5, a3
	add	a3, s2, a3
	lbu	a1, 0(a3)
	sw	a1, 204(sp)
	sub	a3, s5, a4
	lw	a1, 96(sp)
	add	a2, a2, a1
	sw	a2, 72(sp)
	addi	a2, a2, 6
	sw	a2, 76(sp)
	add	a4, a2, a1
	add	a2, s7, a4
	lbu	a5, 0(a2)
	add	a3, s2, a3
	lbu	a1, 0(a3)
	sw	a1, 128(sp)
	lbu	a3, 1(a2)
	sub	a5, s5, a5
	add	a5, s2, a5
	lbu	a1, 0(a5)
	sw	a1, 124(sp)
	sub	a5, s5, a3
	addi	t2, a4, 6
	add	a4, t2, a0
	add	s1, s7, a4
	lbu	s0, 1(s1)
	add	t1, s2, a5
	lbu	t0, 2(a2)
	lbu	a1, 2(s1)
	sub	s0, s5, s0
	add	s0, s2, s0
	lbu	a3, 0(s0)
	sub	a1, s5, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	addi	a4, a4, 4
	add	s0, a4, t3
	add	s0, s7, s0
	lbu	a0, 0(s0)
	sw	t4, 92(sp)
	add	a5, a7, t4
	sw	t6, 88(sp)
	add	a5, a5, t6
	sw	a3, 116(sp)
	add	a5, a5, a3
	add	a7, a5, a1
	lbu	a5, 1(s0)
	sub	a0, s5, a0
	add	a0, s2, a0
	lbu	s10, 0(a0)
	sub	a0, s5, a5
	add	a0, s2, a0
	lbu	a0, 0(a0)
	mv	a1, s7
	lbu	s7, 0(t1)
	sub	a5, s5, t0
	add	a3, a6, s10
	add	a0, a3, a0
	lbu	a3, 3(a2)
	add	a5, s2, a5
	lbu	a5, 0(a5)
	sw	a5, 200(sp)
	lbu	a5, 4(a2)
	sub	a3, s5, a3
	add	a3, s2, a3
	lbu	a3, 0(a3)
	sw	a3, 120(sp)
	sub	a3, s5, a5
	lbu	a2, 5(a2)
	add	a3, s2, a3
	lbu	a3, 0(a3)
	sw	a3, 212(sp)
	add	a3, a1, t2
	sub	a2, s5, a2
	lbu	a3, 0(a3)
	lbu	a5, 0(s1)
	add	a2, s2, a2
	lbu	s11, 0(a2)
	sub	a2, s5, a3
	sub	a3, s5, a5
	add	a3, s2, a3
	lbu	a3, 0(a3)
	add	a2, s2, a2
	lbu	a5, 3(s1)
	mv	s1, t5
	lbu	s8, 0(a2)
	slli	s9, a3, 2
	add	a2, a1, a4
	sub	a3, s5, a5
	lbu	a2, 0(a2)
	add	a3, s2, a3
	lbu	a4, 0(a3)
	lbu	a3, 2(s0)
	sub	a2, s5, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sub	a3, s5, a3
	add	a3, s2, a3
	lbu	s6, 0(a3)
	slli	s3, a2, 2
	sw	a4, 140(sp)
	add	a1, a7, a4
	slli	s0, a1, 2
	add	a0, a0, s6
	sw	s4, 84(sp)
	sw	ra, 80(sp)
	sub	s4, s4, ra
	addi	a1, zero, 9
	call	__mulsi3
	lw	a1, 180(sp)
	lw	a2, 176(sp)
	add	a1, a2, a1
	lw	a2, 136(sp)
	add	a1, a1, a2
	sw	s1, 112(sp)
	add	a1, a1, s1
	lw	a3, 168(sp)
	add	a1, a1, a3
	lw	a3, 132(sp)
	add	a1, a1, a3
	lw	a3, 172(sp)
	add	a1, a1, a3
	lw	a3, 204(sp)
	add	a1, a1, a3
	lw	a5, 200(sp)
	lw	s1, 128(sp)
	add	a1, a1, s1
	lw	a3, 124(sp)
	add	a1, a1, a3
	sw	s7, 132(sp)
	add	a1, a1, s7
	lw	a4, 212(sp)
	add	a1, a1, a5
	lw	a5, 120(sp)
	add	a1, a1, a5
	add	a1, a1, a4
	sw	s11, 144(sp)
	add	a1, a1, s11
	add	a1, a1, s8
	sw	s9, 152(sp)
	add	a1, a1, s9
	sw	s3, 148(sp)
	add	a1, a1, s3
	add	a1, a1, s0
	mv	s3, a2
	add	s9, a1, a0
	add	a0, a2, s4
	mv	s0, a3
	sub	a0, a0, s1
	sub	a0, a0, a3
	mv	s11, s8
	add	a0, a0, s8
	sw	s10, 120(sp)
	sub	a0, a0, s10
	sw	s6, 68(sp)
	add	a0, a0, s6
	addi	a1, zero, 3
	call	__mulsi3
	beqz	s9, .LBB13_28
# %bb.26:                               # %if.end1188
                                        #   in Loop: Header=BB13_16 Depth=2
	sw	a0, 60(sp)
	lw	a0, 72(sp)
	lw	s7, 28(sp)
	add	a0, s7, a0
	lbu	a1, 0(a0)
	lbu	a2, 1(a0)
	sub	a1, s5, a1
	lbu	a3, 2(a0)
	sub	a2, s5, a2
	add	a1, s2, a1
	lbu	a4, 5(a0)
	lw	a5, 76(sp)
	add	a5, s7, a5
	lbu	a0, 4(a0)
	add	a2, s2, a2
	lbu	a1, 0(a1)
	lbu	a5, 0(a5)
	sub	a3, s5, a3
	lbu	a2, 0(a2)
	sub	a4, s5, a4
	sub	a0, s5, a0
	add	a3, s2, a3
	sub	a5, s5, a5
	add	a4, s2, a4
	add	a0, s2, a0
	lbu	s6, 0(a3)
	add	a3, s2, a5
	lbu	a4, 0(a4)
	lbu	a0, 0(a0)
	sw	a0, 76(sp)
	lbu	a0, 0(a3)
	lw	a3, 204(sp)
	lw	s4, 112(sp)
	add	a3, a3, s4
	lw	a5, 132(sp)
	add	a3, a3, a5
	lw	a5, 144(sp)
	add	a3, a3, a5
	add	a2, a3, a2
	add	a2, a2, a4
	lw	s5, 168(sp)
	slli	a2, a2, 2
	sw	a2, 72(sp)
	add	a2, s1, s3
	add	a2, a2, s0
	add	a2, a2, s11
	add	a1, a2, a1
	add	a0, a1, a0
	addi	a1, zero, 9
	call	__mulsi3
	lw	a1, 84(sp)
	lw	a2, 80(sp)
	add	a1, a2, a1
	lw	s11, 200(sp)
	lw	s10, 180(sp)
	add	a1, a1, s10
	lw	s1, 92(sp)
	add	a1, a1, s1
	lw	s0, 88(sp)
	add	a1, a1, s0
	lw	s4, 176(sp)
	add	a1, a1, s4
	add	a1, a1, s5
	mv	s3, s9
	lw	s9, 172(sp)
	add	a1, a1, s9
	add	a1, a1, s11
	lw	a2, 212(sp)
	add	a1, a1, a2
	lw	a2, 152(sp)
	add	a1, a1, a2
	lw	a2, 116(sp)
	add	a1, a1, a2
	lw	a2, 140(sp)
	add	a1, a1, a2
	lw	a2, 148(sp)
	add	a1, a1, a2
	lw	a2, 120(sp)
	add	a1, a1, a2
	lw	a2, 68(sp)
	add	a1, a1, a2
	add	a1, a1, s6
	lw	a2, 76(sp)
	add	a1, a1, a2
	lw	a2, 72(sp)
	add	a1, a1, a2
	add	a0, a1, a0
	call	__floatsisf
	mv	s6, a0
	mv	a0, s3
	call	__floatsisf
	mv	a1, a0
	mv	a0, s6
	call	__divsf3
	mv	s3, a0
	lui	a1, 258048
	call	__ltsf2
	bgez	a0, .LBB13_29
# %bb.27:                               #   in Loop: Header=BB13_16 Depth=2
	mv	s4, zero
	addi	s3, zero, 1
	j	.LBB13_33
.LBB13_28:                              #   in Loop: Header=BB13_16 Depth=2
	mv	s3, zero
	addi	s4, zero, 1
	lw	s8, 164(sp)
	lw	s0, 64(sp)
	lw	s1, 196(sp)
	lw	s9, 208(sp)
	lw	s5, 192(sp)
	lw	s6, 188(sp)
	lw	s7, 28(sp)
	j	.LBB13_34
.LBB13_29:                              # %if.else1193
                                        #   in Loop: Header=BB13_16 Depth=2
	mv	s6, s5
	lw	a0, 140(sp)
	lw	a0, 144(sp)
	lw	a0, 148(sp)
	lw	a0, 152(sp)
	lw	s8, 132(sp)
	lw	a0, 212(sp)
	lw	s11, 116(sp)
	lw	s5, 204(sp)
	lui	a1, 262144
	mv	a0, s3
	call	__gtsf2
	blez	a0, .LBB13_31
# %bb.30:                               #   in Loop: Header=BB13_16 Depth=2
	mv	s3, zero
	j	.LBB13_32
.LBB13_31:                              # %if.else1198
                                        #   in Loop: Header=BB13_16 Depth=2
	slli	a0, s0, 1
	slli	a1, s5, 1
	slli	a2, s8, 1
	slli	a3, s11, 1
	lw	a4, 112(sp)
	add	a4, a4, s1
	lw	a5, 144(sp)
	add	a4, a4, a5
	lw	a5, 140(sp)
	add	a4, a4, a5
	slli	a4, a4, 1
	sub	a0, s10, a0
	sub	a0, a0, s4
	add	a0, a0, s6
	sub	a0, a0, s9
	sub	a0, a0, a1
	sub	a0, a0, a2
	lw	a1, 200(sp)
	sub	a0, a0, a1
	lw	a1, 212(sp)
	add	a0, a0, a1
	lw	a1, 152(sp)
	sub	a0, a0, a1
	sub	a0, a0, a3
	lw	a1, 148(sp)
	add	a0, a0, a1
	lw	a1, 60(sp)
	add	a0, a0, a1
	add	a0, a0, a4
	addi	s3, zero, 1
	addi	s4, zero, -1
	bgtz	a0, .LBB13_33
.LBB13_32:                              # %if.else1198
                                        #   in Loop: Header=BB13_16 Depth=2
	addi	s4, zero, 1
.LBB13_33:                              # %if.else1198
                                        #   in Loop: Header=BB13_16 Depth=2
	lw	s8, 164(sp)
	lw	s0, 64(sp)
	lw	s1, 196(sp)
	lw	s9, 208(sp)
	lw	s5, 192(sp)
	lw	s6, 188(sp)
.LBB13_34:                              # %if.end1205
                                        #   in Loop: Header=BB13_16 Depth=2
	add	a0, s4, s0
	lw	a1, 184(sp)
	call	__mulsi3
	add	a1, s3, s9
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s8, a0
	lw	a0, 0(a0)
	bge	a0, s6, .LBB13_15
# %bb.35:                               # %land.lhs.true1214
                                        #   in Loop: Header=BB13_16 Depth=2
	sub	a0, s0, s4
	lw	a1, 184(sp)
	call	__mulsi3
	sub	a1, s9, s3
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s8, a0
	lw	a0, 0(a0)
	blt	s6, a0, .LBB13_15
# %bb.36:                               # %land.lhs.true1223
                                        #   in Loop: Header=BB13_16 Depth=2
	slli	s4, s4, 1
	add	a0, s4, s0
	lw	a1, 184(sp)
	call	__mulsi3
	slli	s3, s3, 1
	add	a1, s3, s9
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s8, a0
	lw	a0, 0(a0)
	bge	a0, s6, .LBB13_15
# %bb.37:                               # %land.lhs.true1234
                                        #   in Loop: Header=BB13_16 Depth=2
	sub	a0, s0, s4
	lw	a1, 184(sp)
	call	__mulsi3
	sub	a1, s9, s3
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s8, a0
	lw	a0, 0(a0)
	blt	s6, a0, .LBB13_15
# %bb.38:                               # %if.then1245
                                        #   in Loop: Header=BB13_16 Depth=2
	lw	a0, 8(sp)
	add	a0, a0, s5
	addi	a1, zero, 2
	j	.LBB13_14
.LBB13_39:                              #   in Loop: Header=BB13_16 Depth=2
	mv	s4, zero
	addi	s5, zero, 1
	lw	s8, 164(sp)
	lw	s0, 64(sp)
	lw	s1, 196(sp)
	lw	s10, 192(sp)
	lw	s11, 188(sp)
.LBB13_40:                              # %if.end711
                                        #   in Loop: Header=BB13_16 Depth=2
	add	a0, s5, s0
	lw	a1, 184(sp)
	call	__mulsi3
	add	a1, s4, s9
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s8, a0
	lw	a0, 0(a0)
	bge	a0, s11, .LBB13_15
# %bb.41:                               # %land.lhs.true
                                        #   in Loop: Header=BB13_16 Depth=2
	sub	a0, s0, s5
	lw	a1, 184(sp)
	call	__mulsi3
	sub	a1, s9, s4
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s8, a0
	lw	a0, 0(a0)
	blt	s11, a0, .LBB13_15
# %bb.42:                               # %land.lhs.true728
                                        #   in Loop: Header=BB13_16 Depth=2
	slli	s3, s5, 1
	add	a0, s3, s0
	lw	a1, 184(sp)
	call	__mulsi3
	slli	s4, s4, 1
	add	a1, s4, s9
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s8, a0
	lw	a0, 0(a0)
	bge	a0, s11, .LBB13_15
# %bb.43:                               # %land.lhs.true739
                                        #   in Loop: Header=BB13_16 Depth=2
	sub	a0, s0, s3
	lw	a1, 184(sp)
	call	__mulsi3
	sub	a1, s9, s4
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s8, a0
	lw	a0, 0(a0)
	bge	s11, a0, .LBB13_13
	j	.LBB13_15
.LBB13_44:                              # %if.else704
                                        #   in Loop: Header=BB13_16 Depth=2
	addi	s4, zero, 1
	addi	s5, zero, 1
	bgtz	s6, .LBB13_40
# %bb.45:                               # %if.else704
                                        #   in Loop: Header=BB13_16 Depth=2
	addi	s5, zero, -1
	j	.LBB13_40
.LBB13_46:                              # %for.end1258
	lw	s11, 220(sp)
	lw	s10, 224(sp)
	lw	s9, 228(sp)
	lw	s8, 232(sp)
	lw	s7, 236(sp)
	lw	s6, 240(sp)
	lw	s5, 244(sp)
	lw	s4, 248(sp)
	lw	s3, 252(sp)
	lw	s2, 256(sp)
	lw	s1, 260(sp)
	lw	s0, 264(sp)
	lw	ra, 268(sp)
	addi	sp, sp, 272
	ret
.Lfunc_end13:
	.size	susan_edges, .Lfunc_end13-susan_edges
	.cfi_endproc
                                        # -- End function
	.globl	susan_edges_small       # -- Begin function susan_edges_small
	.p2align	2
	.type	susan_edges_small,@function
susan_edges_small:                      # @susan_edges_small
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sw	ra, 108(sp)
	sw	s0, 104(sp)
	sw	s1, 100(sp)
	sw	s2, 96(sp)
	sw	s3, 92(sp)
	sw	s4, 88(sp)
	sw	s5, 84(sp)
	sw	s6, 80(sp)
	sw	s7, 76(sp)
	sw	s8, 72(sp)
	sw	s9, 68(sp)
	sw	s10, 64(sp)
	sw	s11, 60(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s1, a6
	mv	s4, a3
	sw	a2, 16(sp)
	mv	s0, a1
	mv	s5, a0
	mv	a0, a6
	sw	a5, 36(sp)
	mv	a1, a5
	call	__mulsi3
	slli	a2, a0, 2
	sw	s0, 32(sp)
	mv	a0, s0
	mv	a1, zero
	call	memset
	sw	s1, 56(sp)
	addi	s2, s1, -1
	addi	s3, zero, 2
	blt	s2, s3, .LBB14_8
# %bb.1:                                # %for.cond3.preheader.lr.ph
	mv	s8, zero
	lw	a0, 36(sp)
	addi	s9, a0, -1
	addi	s11, a0, -2
	addi	s6, zero, 1
	addi	s10, zero, 730
	j	.LBB14_3
.LBB14_2:                               # %for.inc81
                                        #   in Loop: Header=BB14_3 Depth=1
	addi	a0, s6, 1
	sltu	a1, a0, s6
	add	s8, s8, a1
	mv	s6, a0
	beq	a0, s2, .LBB14_8
.LBB14_3:                               # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
	blt	s9, s3, .LBB14_2
# %bb.4:                                # %for.body7.lr.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	addi	a0, zero, -1
	add	a0, s6, a0
	lw	s0, 36(sp)
	mv	a1, s0
	call	__mulsi3
	mv	s7, a0
	mv	a0, s6
	mv	a1, s0
	call	__mulsi3
	mv	a1, zero
	addi	a2, zero, 1
	j	.LBB14_6
.LBB14_5:                               # %for.inc
                                        #   in Loop: Header=BB14_6 Depth=2
	addi	a3, a2, 1
	sltu	a2, a3, a2
	add	a1, a1, a2
	mv	a2, a3
	beq	a3, s9, .LBB14_2
.LBB14_6:                               # %for.body7
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a4, a2, s7
	add	a6, a2, a0
	add	a5, s5, a6
	lbu	a5, 0(a5)
	add	s0, s5, a4
	lbu	s1, -1(s0)
	lbu	s0, 0(s0)
	sub	s1, a5, s1
	add	s1, s4, s1
	lbu	a7, 0(s1)
	sub	s0, a5, s0
	add	s0, s4, s0
	lbu	s0, 0(s0)
	addi	a4, a4, 1
	add	a3, s5, a4
	lbu	a3, 0(a3)
	add	a4, a4, s11
	add	s1, s5, a4
	lbu	s1, 0(s1)
	sub	a3, a5, a3
	add	a3, s4, a3
	lbu	a3, 0(a3)
	sub	s1, a5, s1
	add	s1, s4, s1
	lbu	s1, 0(s1)
	add	s0, a7, s0
	add	a3, s0, a3
	add	a7, a3, s1
	addi	a4, a4, 2
	add	s1, s5, a4
	lbu	s1, 0(s1)
	add	a4, a4, s11
	add	a4, s5, a4
	lbu	s0, 0(a4)
	lbu	a3, 1(a4)
	lbu	a4, 2(a4)
	sub	s1, a5, s1
	sub	s0, a5, s0
	sub	a3, a5, a3
	sub	a4, a5, a4
	add	a5, s4, s1
	lbu	a5, 0(a5)
	add	s1, s4, s0
	lbu	s1, 0(s1)
	add	a3, s4, a3
	lbu	a3, 0(a3)
	add	a4, s4, a4
	lbu	a4, 0(a4)
	add	a5, a7, a5
	add	a5, a5, s1
	add	a3, a5, a3
	add	a3, a3, a4
	addi	a4, a3, 100
	blt	s10, a4, .LBB14_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB14_6 Depth=2
	sub	a3, s10, a4
	slli	a4, a6, 2
	lw	a5, 32(sp)
	add	a4, a5, a4
	sw	a3, 0(a4)
	j	.LBB14_5
.LBB14_8:                               # %for.cond84.preheader
	lw	a0, 56(sp)
	addi	a0, a0, -2
	addi	a1, zero, 3
	lw	s7, 32(sp)
	sw	a0, 8(sp)
	blt	a0, a1, .LBB14_40
# %bb.9:                                # %for.cond89.preheader.lr.ph
	mv	a2, zero
	lw	a0, 36(sp)
	addi	a0, a0, -2
	sw	a0, 56(sp)
	lui	a0, 629146
	addi	a0, a0, -1638
	sw	a0, 24(sp)
	lui	a0, 261530
	addi	a0, a0, -1639
	sw	a0, 20(sp)
	addi	a0, zero, 2
	sw	a0, 44(sp)
	j	.LBB14_11
.LBB14_10:                              # %for.inc396
                                        #   in Loop: Header=BB14_11 Depth=1
	lw	a1, 44(sp)
	addi	a0, a1, 1
	sltu	a1, a0, a1
	lw	a2, 12(sp)
	add	a2, a2, a1
	sw	a0, 44(sp)
	lw	a1, 8(sp)
	beq	a0, a1, .LBB14_40
.LBB14_11:                              # %for.cond89.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_15 Depth 2
	sw	a2, 12(sp)
	addi	a0, zero, 3
	lw	a1, 56(sp)
	blt	a1, a0, .LBB14_10
# %bb.12:                               # %for.body93.lr.ph
                                        #   in Loop: Header=BB14_11 Depth=1
	lw	s1, 44(sp)
	mv	a0, s1
	lw	s0, 36(sp)
	mv	a1, s0
	call	__mulsi3
	sw	a0, 40(sp)
	addi	a0, zero, -1
	add	a0, s1, a0
	mv	a1, s0
	call	__mulsi3
	sw	a0, 28(sp)
	mv	s9, zero
	addi	s8, zero, 2
	j	.LBB14_15
.LBB14_13:                              # %for.inc393
                                        #   in Loop: Header=BB14_15 Depth=2
	sb	a1, 0(a0)
.LBB14_14:                              # %for.inc393
                                        #   in Loop: Header=BB14_15 Depth=2
	addi	a0, s8, 1
	sltu	a1, a0, s8
	add	s9, s9, a1
	mv	s8, a0
	lw	a1, 56(sp)
	beq	a0, a1, .LBB14_10
.LBB14_15:                              # %for.body93
                                        #   Parent Loop BB14_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 40(sp)
	add	a1, s8, a0
	slli	a0, a1, 2
	add	a0, s7, a0
	lw	a2, 0(a0)
	addi	a0, zero, 1
	blt	a2, a0, .LBB14_14
# %bb.16:                               # %if.then100
                                        #   in Loop: Header=BB14_15 Depth=2
	sw	a1, 52(sp)
	add	a0, s5, a1
	lbu	s3, 0(a0)
	addi	a0, zero, 730
	sw	a2, 48(sp)
	sub	s10, a0, a2
	addi	a0, zero, 251
	blt	s10, a0, .LBB14_24
# %bb.17:                               # %if.then115
                                        #   in Loop: Header=BB14_15 Depth=2
	lw	a0, 28(sp)
	add	a0, s8, a0
	add	a1, s5, a0
	lbu	a2, -1(a1)
	sub	a2, s3, a2
	add	a2, s4, a2
	lbu	a2, 0(a2)
	lbu	a1, 0(a1)
	addi	a0, a0, 1
	add	a3, s5, a0
	lbu	a3, 0(a3)
	sub	a1, s3, a1
	add	a1, s4, a1
	lbu	a1, 0(a1)
	sub	a3, s3, a3
	add	a3, s4, a3
	lbu	a3, 0(a3)
	add	a1, a1, a2
	sub	a2, a3, a2
	lw	s0, 56(sp)
	add	a0, a0, s0
	add	a4, s5, a0
	lbu	a4, 0(a4)
	addi	a0, a0, 2
	add	a5, s5, a0
	lbu	a5, 0(a5)
	sub	a4, s3, a4
	add	a4, s4, a4
	lbu	a4, 0(a4)
	sub	a5, s3, a5
	add	a5, s4, a5
	lbu	a5, 0(a5)
	add	a0, a0, s0
	add	a0, s5, a0
	lbu	s0, 0(a0)
	add	a1, a1, a3
	sub	a2, a2, a4
	add	a2, a2, a5
	sub	a3, s3, s0
	lbu	a4, 1(a0)
	add	a3, s4, a3
	lbu	a3, 0(a3)
	lbu	a0, 2(a0)
	sub	a4, s3, a4
	add	a4, s4, a4
	lbu	a4, 0(a4)
	sub	a0, s3, a0
	add	a0, s4, a0
	lbu	a0, 0(a0)
	sub	a2, a2, a3
	sub	a1, a3, a1
	add	a1, a1, a4
	add	s11, a2, a0
	add	s2, a1, a0
	mv	a0, s11
	mv	a1, s11
	call	__mulsi3
	mv	s0, a0
	mv	a0, s2
	mv	a1, s2
	call	__mulsi3
	add	a0, s0, a0
	call	__floatsisf
	call	sqrtf
	call	__extendsfdf2
	mv	s0, a0
	mv	s6, a1
	mv	a0, s10
	call	__floatsisf
	call	__extendsfdf2
	lw	a2, 24(sp)
	lw	a3, 20(sp)
	call	__muldf3
	mv	a2, a0
	mv	a3, a1
	mv	a0, s0
	mv	a1, s6
	call	__gtdf2
	addi	a1, zero, 1
	blt	a0, a1, .LBB14_24
# %bb.18:                               # %if.then202
                                        #   in Loop: Header=BB14_15 Depth=2
	beqz	s11, .LBB14_34
# %bb.19:                               # %if.end208
                                        #   in Loop: Header=BB14_15 Depth=2
	mv	a0, s2
	call	__floatsisf
	mv	s0, a0
	mv	a0, s11
	call	__floatsisf
	mv	a1, a0
	mv	a0, s0
	call	__divsf3
	mv	s2, a0
	mv	a1, zero
	call	__ltsf2
	addi	s6, zero, 1
	addi	s3, zero, 1
	addi	a1, zero, -1
	blt	a1, a0, .LBB14_21
# %bb.20:                               # %if.then211
                                        #   in Loop: Header=BB14_15 Depth=2
	lui	a0, 524288
	xor	s2, s2, a0
	addi	s3, zero, -1
.LBB14_21:                              # %if.end214
                                        #   in Loop: Header=BB14_15 Depth=2
	lui	a1, 258048
	mv	a0, s2
	call	__ltsf2
	mv	s0, zero
	lw	s10, 52(sp)
	lw	s1, 48(sp)
	bltz	a0, .LBB14_35
# %bb.22:                               # %if.else219
                                        #   in Loop: Header=BB14_15 Depth=2
	lui	a1, 262144
	mv	a0, s2
	call	__gtsf2
	blez	a0, .LBB14_38
# %bb.23:                               #   in Loop: Header=BB14_15 Depth=2
	mv	s6, zero
	addi	s0, zero, 1
	j	.LBB14_35
.LBB14_24:                              # %if.then260
                                        #   in Loop: Header=BB14_15 Depth=2
	lw	a0, 28(sp)
	add	a0, s8, a0
	add	a1, s5, a0
	lbu	a2, -1(a1)
	lbu	a1, 0(a1)
	sub	a2, s3, a2
	add	a2, s4, a2
	lbu	s6, 0(a2)
	sub	a1, s3, a1
	add	a1, s4, a1
	lbu	a1, 0(a1)
	addi	a0, a0, 1
	add	a2, s5, a0
	add	a3, a1, s6
	lbu	a2, 0(a2)
	lw	a4, 56(sp)
	add	a0, a0, a4
	addi	a1, a0, 2
	add	a4, a1, a4
	add	a4, s5, a4
	lbu	a5, 0(a4)
	sub	a2, s3, a2
	add	a2, s4, a2
	lbu	s10, 0(a2)
	sub	a2, s3, a5
	lbu	a5, 1(a4)
	add	a2, s4, a2
	lbu	s11, 0(a2)
	lbu	a2, 2(a4)
	sub	a4, s3, a5
	add	a4, s4, a4
	lbu	a4, 0(a4)
	sub	a2, s3, a2
	add	a2, s4, a2
	lbu	s7, 0(a2)
	add	a2, a3, s10
	add	a2, a2, s11
	add	a2, a2, a4
	add	s0, a2, s7
	beqz	s0, .LBB14_28
# %bb.25:                               # %if.end350
                                        #   in Loop: Header=BB14_15 Depth=2
	add	a0, s5, a0
	add	a1, s5, a1
	lbu	a0, 0(a0)
	lbu	a1, 0(a1)
	sub	a0, s3, a0
	sub	a1, s3, a1
	add	a0, s4, a0
	add	a1, s4, a1
	lbu	a0, 0(a0)
	lbu	a1, 0(a1)
	add	a2, s10, s6
	add	a2, a2, s11
	add	a2, a2, s7
	add	a0, a2, a0
	add	a0, a0, a1
	call	__floatsisf
	mv	s2, a0
	mv	a0, s0
	call	__floatsisf
	mv	a1, a0
	mv	a0, s2
	call	__divsf3
	mv	s0, a0
	lui	a1, 258048
	call	__ltsf2
	bgez	a0, .LBB14_27
# %bb.26:                               #   in Loop: Header=BB14_15 Depth=2
	mv	s0, zero
	addi	s2, zero, 1
	j	.LBB14_30
.LBB14_27:                              # %if.else355
                                        #   in Loop: Header=BB14_15 Depth=2
	lui	a1, 262144
	mv	a0, s0
	call	__gtsf2
	blez	a0, .LBB14_33
.LBB14_28:                              #   in Loop: Header=BB14_15 Depth=2
	mv	s2, zero
.LBB14_29:                              # %if.else360
                                        #   in Loop: Header=BB14_15 Depth=2
	addi	s0, zero, 1
.LBB14_30:                              # %if.else360
                                        #   in Loop: Header=BB14_15 Depth=2
	lw	s7, 32(sp)
	lw	s3, 52(sp)
	lw	s1, 48(sp)
	lw	a0, 44(sp)
	add	a0, s0, a0
	lw	a1, 36(sp)
	call	__mulsi3
	add	a1, s2, s8
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s7, a0
	lw	a0, 0(a0)
	bge	a0, s1, .LBB14_14
# %bb.31:                               # %land.lhs.true376
                                        #   in Loop: Header=BB14_15 Depth=2
	lw	a0, 44(sp)
	sub	a0, a0, s0
	lw	a1, 36(sp)
	call	__mulsi3
	sub	a1, s8, s2
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s7, a0
	lw	a0, 0(a0)
	blt	s1, a0, .LBB14_14
# %bb.32:                               # %if.then385
                                        #   in Loop: Header=BB14_15 Depth=2
	lw	a0, 16(sp)
	add	a0, a0, s3
	addi	a1, zero, 2
	j	.LBB14_13
.LBB14_33:                              # %if.else360
                                        #   in Loop: Header=BB14_15 Depth=2
	sub	a0, s6, s10
	sub	a0, a0, s11
	add	a0, a0, s7
	addi	s2, zero, 1
	addi	s0, zero, -1
	blez	a0, .LBB14_29
	j	.LBB14_30
.LBB14_34:                              #   in Loop: Header=BB14_15 Depth=2
	mv	s6, zero
	addi	s0, zero, 1
	lw	s10, 52(sp)
	lw	s1, 48(sp)
.LBB14_35:                              # %if.end231
                                        #   in Loop: Header=BB14_15 Depth=2
	lw	a0, 44(sp)
	add	a0, s0, a0
	lw	a1, 36(sp)
	call	__mulsi3
	add	a1, s6, s8
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s7, a0
	lw	a0, 0(a0)
	bge	a0, s1, .LBB14_14
# %bb.36:                               # %land.lhs.true
                                        #   in Loop: Header=BB14_15 Depth=2
	lw	a0, 44(sp)
	sub	a0, a0, s0
	lw	a1, 36(sp)
	call	__mulsi3
	sub	a1, s8, s6
	add	a0, a1, a0
	slli	a0, a0, 2
	add	a0, s7, a0
	lw	a0, 0(a0)
	blt	s1, a0, .LBB14_14
# %bb.37:                               # %if.then248
                                        #   in Loop: Header=BB14_15 Depth=2
	lw	a0, 16(sp)
	add	a0, a0, s10
	addi	a1, zero, 1
	j	.LBB14_13
.LBB14_38:                              # %if.else224
                                        #   in Loop: Header=BB14_15 Depth=2
	addi	s6, zero, 1
	addi	s0, zero, 1
	bgtz	s3, .LBB14_35
# %bb.39:                               # %if.else224
                                        #   in Loop: Header=BB14_15 Depth=2
	addi	s0, zero, -1
	j	.LBB14_35
.LBB14_40:                              # %for.end398
	lw	s11, 60(sp)
	lw	s10, 64(sp)
	lw	s9, 68(sp)
	lw	s8, 72(sp)
	lw	s7, 76(sp)
	lw	s6, 80(sp)
	lw	s5, 84(sp)
	lw	s4, 88(sp)
	lw	s3, 92(sp)
	lw	s2, 96(sp)
	lw	s1, 100(sp)
	lw	s0, 104(sp)
	lw	ra, 108(sp)
	addi	sp, sp, 112
	ret
.Lfunc_end14:
	.size	susan_edges_small, .Lfunc_end14-susan_edges_small
	.cfi_endproc
                                        # -- End function
	.globl	corner_draw             # -- Begin function corner_draw
	.p2align	2
	.type	corner_draw,@function
corner_draw:                            # @corner_draw
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	sw	s1, 36(sp)
	sw	s2, 32(sp)
	sw	s3, 28(sp)
	sw	s4, 24(sp)
	sw	s5, 20(sp)
	sw	s6, 16(sp)
	sw	s7, 12(sp)
	sw	s8, 8(sp)
	sw	s9, 4(sp)
	sw	s10, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	mv	s4, a1
	lw	a1, 8(a1)
	addi	s6, zero, 7
	bne	a1, s6, .LBB15_3
# %bb.1:
	mv	s0, zero
.LBB15_2:                               # %while.end
	lui	a0, %hi(.L.str26)
	addi	a0, a0, %lo(.L.str26)
	mv	a1, s0
	lw	s10, 0(sp)
	lw	s9, 4(sp)
	lw	s8, 8(sp)
	lw	s7, 12(sp)
	lw	s6, 16(sp)
	lw	s5, 20(sp)
	lw	s4, 24(sp)
	lw	s3, 28(sp)
	lw	s2, 32(sp)
	lw	s1, 36(sp)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	tail	printf
.LBB15_3:                               # %while.body.lr.ph
	mv	s2, a3
	mv	s3, a2
	mv	s5, a0
	mv	s10, zero
	mv	s7, zero
	addi	s8, a2, -2
	addi	s9, zero, 255
	mv	s1, s4
	j	.LBB15_6
.LBB15_4:                               # %if.else
                                        #   in Loop: Header=BB15_6 Depth=1
	mv	a1, s3
	call	__mulsi3
	lw	a1, 0(s1)
	add	a0, a1, a0
	add	a0, s5, a0
	sb	zero, 0(a0)
.LBB15_5:                               # %while.cond.backedge
                                        #   in Loop: Header=BB15_6 Depth=1
	addi	s0, s10, 1
	sltu	a0, s0, s10
	add	s7, s7, a0
	addi	a1, zero, 24
	mv	a0, s0
	call	__mulsi3
	add	a0, s4, a0
	lw	a0, 8(a0)
	addi	s1, s1, 24
	mv	s10, s0
	beq	a0, s6, .LBB15_2
.LBB15_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi	a1, zero, 24
	mv	a0, s10
	call	__mulsi3
	add	a0, s4, a0
	lw	a0, 4(a0)
	bnez	s2, .LBB15_4
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB15_6 Depth=1
	addi	a0, a0, -1
	mv	a1, s3
	call	__mulsi3
	lw	a1, 0(s1)
	add	a0, a1, a0
	add	a1, s5, a0
	sb	s9, -1(a1)
	addi	a0, a0, 1
	add	a2, s5, a0
	sb	s9, 0(a1)
	sb	s9, 0(a2)
	add	a0, a0, s8
	add	a1, s5, a0
	sb	s9, 0(a1)
	addi	a0, a0, 2
	add	a2, s5, a0
	sb	zero, 1(a1)
	sb	s9, 0(a2)
	add	a0, a0, s8
	add	a0, s5, a0
	sb	s9, 0(a0)
	sb	s9, 1(a0)
	sb	s9, 2(a0)
	j	.LBB15_5
.Lfunc_end15:
	.size	corner_draw, .Lfunc_end15-corner_draw
	.cfi_endproc
                                        # -- End function
	.globl	susan_corners           # -- Begin function susan_corners
	.p2align	2
	.type	susan_corners,@function
susan_corners:                          # @susan_corners
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -256
	.cfi_def_cfa_offset 256
	sw	ra, 252(sp)
	sw	s0, 248(sp)
	sw	s1, 244(sp)
	sw	s2, 240(sp)
	sw	s3, 236(sp)
	sw	s4, 232(sp)
	sw	s5, 228(sp)
	sw	s6, 224(sp)
	sw	s7, 220(sp)
	sw	s8, 216(sp)
	sw	s9, 212(sp)
	sw	s10, 208(sp)
	sw	s11, 204(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s0, a6
	sw	a4, 104(sp)
	sw	a3, 132(sp)
	mv	s2, a2
	mv	s1, a1
	sw	a0, 136(sp)
	mv	a0, a6
	sw	a5, 144(sp)
	mv	a1, a5
	call	__mulsi3
	srai	a1, a0, 31
	srli	a2, a0, 30
	slli	a1, a1, 2
	or	s4, a1, a2
	slli	s5, a0, 2
	mv	a0, s1
	mv	a1, zero
	mv	a2, s5
	call	memset
	mv	a0, s5
	mv	a1, s4
	call	malloc
	sw	a0, 112(sp)
	mv	a0, s5
	mv	a1, s4
	call	malloc
	addi	a1, s0, -5
	addi	a2, zero, 6
	sw	a0, 108(sp)
	sw	zero, 192(sp)
	sw	a1, 152(sp)
	blt	a1, a2, .LBB16_109
# %bb.1:                                # %for.cond10.preheader.lr.ph
	sw	s1, 124(sp)
	mv	a1, zero
	lw	a0, 144(sp)
	addi	t5, a0, -5
	addi	a2, a0, -3
	sw	a2, 184(sp)
	addi	a0, a0, -6
	sw	a0, 196(sp)
	addi	a0, zero, 5
	sw	a0, 164(sp)
	lw	a0, 152(sp)
	sw	t5, 140(sp)
	j	.LBB16_3
.LBB16_2:                               # %for.inc908
                                        #   in Loop: Header=BB16_3 Depth=1
	lw	a1, 164(sp)
	addi	a0, a1, 1
	sltu	a1, a0, a1
	lw	a2, 156(sp)
	add	a1, a2, a1
	sw	a0, 164(sp)
	lw	a2, 152(sp)
	beq	a0, a2, .LBB16_49
.LBB16_3:                               # %for.cond10.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
	sw	a1, 156(sp)
	addi	a0, zero, 6
	blt	t5, a0, .LBB16_2
# %bb.4:                                # %for.body14.lr.ph
                                        #   in Loop: Header=BB16_3 Depth=1
	addi	a0, zero, -3
	lw	s0, 164(sp)
	add	a0, s0, a0
	lw	s1, 144(sp)
	mv	a1, s1
	call	__mulsi3
	sw	a0, 192(sp)
	mv	a0, s0
	mv	a1, s1
	call	__mulsi3
	lw	t6, 132(sp)
	lw	t5, 140(sp)
	lw	s0, 136(sp)
	sw	a0, 188(sp)
	mv	a1, zero
	addi	s8, zero, 5
	j	.LBB16_6
.LBB16_5:                               # %for.inc
                                        #   in Loop: Header=BB16_6 Depth=2
	addi	a0, s8, 1
	sltu	a1, a0, s8
	lw	a2, 200(sp)
	add	a1, a2, a1
	mv	s8, a0
	beq	a0, t5, .LBB16_2
.LBB16_6:                               # %for.body14
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	a1, 200(sp)
	lw	a0, 192(sp)
	add	a0, s8, a0
	lw	a1, 188(sp)
	add	a1, s8, a1
	sw	a1, 176(sp)
	add	a1, s0, a1
	lbu	s11, 0(a1)
	add	a1, s0, a0
	lbu	a2, -1(a1)
	lbu	a1, 0(a1)
	sub	a2, s11, a2
	add	a2, s2, a2
	lbu	a4, 0(a2)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	t1, 0(a1)
	addi	a0, a0, 1
	add	a1, s0, a0
	lbu	a1, 0(a1)
	lw	a2, 184(sp)
	add	a0, a0, a2
	add	a2, s0, a0
	lbu	a3, 0(a2)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	a5, 0(a1)
	sub	a1, s11, a3
	add	a1, s2, a1
	lbu	t2, 0(a1)
	lbu	a1, 1(a2)
	mv	t0, a4
	add	a3, a4, t1
	mv	a6, a5
	add	a3, a3, a5
	add	a3, a3, t2
	sub	a1, s11, a1
	lbu	a4, 2(a2)
	add	a1, s2, a1
	lbu	s7, 0(a1)
	lbu	a1, 3(a2)
	sub	a2, s11, a4
	add	a2, s2, a2
	lbu	t3, 0(a2)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	s4, 0(a1)
	addi	a0, a0, 4
	add	a1, s0, a0
	lbu	a1, 0(a1)
	add	a3, a3, s7
	add	a3, a3, t3
	add	a4, a3, s4
	sub	a1, s11, a1
	add	a0, a0, t5
	add	a5, s0, a0
	lbu	s1, 0(a5)
	add	a1, s2, a1
	lbu	a3, 0(a1)
	lbu	a1, 1(a5)
	sub	s1, s11, s1
	add	s1, s2, s1
	lbu	a2, 0(s1)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	s1, 0(a1)
	add	a1, a4, a3
	lbu	a4, 2(a5)
	mv	t4, a2
	add	a1, a1, a2
	mv	ra, s1
	add	a1, a1, s1
	lbu	s1, 3(a5)
	sub	a4, s11, a4
	add	a4, s2, a4
	lbu	a2, 0(a4)
	sub	a4, s11, s1
	lbu	s1, 4(a5)
	add	a4, s2, a4
	lbu	s6, 0(a4)
	lbu	a4, 5(a5)
	sub	a5, s11, s1
	add	a5, s2, a5
	lbu	s9, 0(a5)
	sub	a4, s11, a4
	add	a4, s2, a4
	lbu	s5, 0(a4)
	sw	a2, 180(sp)
	add	a1, a1, a2
	add	a1, a1, s6
	add	a1, a1, s9
	add	a1, a1, s5
	addi	a0, a0, 6
	add	a4, s0, a0
	lbu	a4, 0(a4)
	lw	a2, 196(sp)
	add	a0, a0, a2
	add	a5, s0, a0
	lbu	s1, 0(a5)
	sub	a4, s11, a4
	add	a4, s2, a4
	lbu	s10, 0(a4)
	sub	a4, s11, s1
	lbu	s1, 1(a5)
	add	a4, s2, a4
	lbu	a4, 0(a4)
	lbu	a2, 2(a5)
	sub	a5, s11, s1
	add	a5, s2, a5
	lbu	a5, 0(a5)
	sub	a2, s11, a2
	add	a2, s2, a2
	lbu	s3, 0(a2)
	add	a1, a1, s10
	add	a1, a1, a4
	add	a1, a1, a5
	add	a1, a1, s3
	addi	a1, a1, 100
	bge	a1, t6, .LBB16_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB16_6 Depth=2
	add	s1, a0, s0
	lbu	a2, 4(s1)
	sub	a2, s11, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 172(sp)
	add	a1, a2, a1
	bge	a1, t6, .LBB16_5
# %bb.8:                                # %if.then165
                                        #   in Loop: Header=BB16_6 Depth=2
	lbu	a2, 5(s1)
	sub	a2, s11, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 168(sp)
	add	s1, a2, a1
	bge	s1, t6, .LBB16_5
# %bb.9:                                # %if.then175
                                        #   in Loop: Header=BB16_6 Depth=2
	addi	a0, a0, 6
	add	a1, s0, a0
	lbu	a1, 0(a1)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	sw	a1, 160(sp)
	add	s1, a1, s1
	bge	s1, t6, .LBB16_5
# %bb.10:                               # %if.then184
                                        #   in Loop: Header=BB16_6 Depth=2
	lw	a1, 196(sp)
	add	a7, a0, a1
	add	a0, s0, a7
	lbu	a0, 0(a0)
	sub	a0, s11, a0
	add	a0, s2, a0
	lbu	a0, 0(a0)
	sw	a0, 148(sp)
	add	s1, a0, s1
	bge	s1, t6, .LBB16_5
# %bb.11:                               # %if.then197
                                        #   in Loop: Header=BB16_6 Depth=2
	add	a0, a7, s0
	lbu	a1, 1(a0)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	sw	a1, 128(sp)
	add	a1, a1, s1
	bge	a1, t6, .LBB16_5
# %bb.12:                               # %if.then207
                                        #   in Loop: Header=BB16_6 Depth=2
	lbu	a2, 2(a0)
	sub	a2, s11, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 120(sp)
	add	a1, a2, a1
	bge	a1, t6, .LBB16_5
# %bb.13:                               # %if.then217
                                        #   in Loop: Header=BB16_6 Depth=2
	lbu	a2, 3(a0)
	sub	a2, s11, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 116(sp)
	add	a1, a2, a1
	bge	a1, t6, .LBB16_5
# %bb.14:                               # %if.then227
                                        #   in Loop: Header=BB16_6 Depth=2
	lbu	a2, 4(a0)
	sub	a2, s11, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 100(sp)
	add	a1, a2, a1
	bge	a1, t6, .LBB16_5
# %bb.15:                               # %if.then237
                                        #   in Loop: Header=BB16_6 Depth=2
	lbu	a0, 5(a0)
	sub	a0, s11, a0
	add	a0, s2, a0
	lbu	a0, 0(a0)
	sw	a0, 96(sp)
	add	s1, a0, a1
	bge	s1, t6, .LBB16_5
# %bb.16:                               # %if.then247
                                        #   in Loop: Header=BB16_6 Depth=2
	addi	a0, a7, 6
	add	a1, s0, a0
	lbu	a1, 0(a1)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	sw	a1, 92(sp)
	add	s1, a1, s1
	bge	s1, t6, .LBB16_5
# %bb.17:                               # %if.then256
                                        #   in Loop: Header=BB16_6 Depth=2
	add	a0, a0, t5
	add	a1, s0, a0
	lbu	a1, 0(a1)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	sw	a1, 88(sp)
	add	s1, a1, s1
	bge	s1, t6, .LBB16_5
# %bb.18:                               # %if.then269
                                        #   in Loop: Header=BB16_6 Depth=2
	add	a7, a0, s0
	lbu	a1, 1(a7)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	sw	a1, 84(sp)
	add	a1, a1, s1
	bge	a1, t6, .LBB16_5
# %bb.19:                               # %if.then279
                                        #   in Loop: Header=BB16_6 Depth=2
	lbu	a2, 2(a7)
	sub	a2, s11, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	sw	a2, 80(sp)
	add	a1, a2, a1
	bge	a1, t6, .LBB16_5
# %bb.20:                               # %if.then289
                                        #   in Loop: Header=BB16_6 Depth=2
	lbu	a2, 3(a7)
	sub	a2, s11, a2
	add	a2, s2, a2
	lbu	a2, 0(a2)
	add	s1, a2, a1
	bge	s1, t6, .LBB16_5
# %bb.21:                               # %if.then299
                                        #   in Loop: Header=BB16_6 Depth=2
	addi	a0, a0, 4
	add	a1, s0, a0
	lbu	a1, 0(a1)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	a7, 0(a1)
	add	s1, a7, s1
	bge	s1, t6, .LBB16_5
# %bb.22:                               # %if.then308
                                        #   in Loop: Header=BB16_6 Depth=2
	lw	a1, 184(sp)
	add	a0, a0, a1
	add	a1, s0, a0
	lbu	a1, 0(a1)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	sw	a1, 76(sp)
	add	s1, a1, s1
	bge	s1, t6, .LBB16_5
# %bb.23:                               # %if.then321
                                        #   in Loop: Header=BB16_6 Depth=2
	add	a0, a0, s0
	lbu	a1, 1(a0)
	sub	a1, s11, a1
	add	a1, s2, a1
	lbu	a1, 0(a1)
	sw	a1, 72(sp)
	add	a1, a1, s1
	bge	a1, t6, .LBB16_5
# %bb.24:                               # %if.then331
                                        #   in Loop: Header=BB16_6 Depth=2
	lbu	a0, 2(a0)
	sub	a0, s11, a0
	add	a0, s2, a0
	lbu	a0, 0(a0)
	add	s1, a0, a1
	bge	s1, t6, .LBB16_5
# %bb.25:                               # %if.then340
                                        #   in Loop: Header=BB16_6 Depth=2
	sw	t0, 28(sp)
	sw	a0, 36(sp)
	add	a0, t1, t0
	mv	s0, a6
	add	a0, a0, a6
	sw	a0, 40(sp)
	slli	a0, t2, 1
	sw	a0, 68(sp)
	slli	a0, s7, 1
	sw	a0, 56(sp)
	slli	a0, t3, 1
	sw	a0, 52(sp)
	slli	a0, s4, 1
	sw	a0, 48(sp)
	slli	a0, a3, 1
	sw	a0, 16(sp)
	sw	ra, 60(sp)
	slli	a0, ra, 1
	sw	a0, 20(sp)
	slli	a0, a5, 1
	sw	a0, 24(sp)
	lw	a0, 128(sp)
	slli	a0, a0, 1
	sw	a0, 32(sp)
	lw	a0, 88(sp)
	slli	a0, a0, 1
	sw	a0, 64(sp)
	slli	a0, a7, 1
	sw	a0, 88(sp)
	sw	t4, 44(sp)
	sub	a0, s10, t4
	sub	a0, a0, a4
	lw	a1, 160(sp)
	add	a0, a0, a1
	lw	a1, 148(sp)
	sub	a0, a0, a1
	lw	a1, 92(sp)
	add	a0, a0, a1
	addi	a1, zero, 3
	sw	s1, 160(sp)
	sw	a2, 12(sp)
	call	__mulsi3
	lw	a1, 168(sp)
	add	a1, a1, s5
	lw	a2, 96(sp)
	add	a1, a1, a2
	slli	a1, a1, 1
	lw	a2, 28(sp)
	sub	a2, s0, a2
	lw	a3, 68(sp)
	sub	a2, a2, a3
	sub	a2, a2, s7
	add	a2, a2, s4
	lw	s7, 16(sp)
	add	a2, a2, s7
	lw	a3, 20(sp)
	sub	a2, a2, a3
	lw	s0, 180(sp)
	sub	a2, a2, s0
	add	a2, a2, s9
	lw	a3, 24(sp)
	sub	a2, a2, a3
	sub	a2, a2, s3
	lw	a3, 172(sp)
	add	a2, a2, a3
	lw	a3, 32(sp)
	sub	a2, a2, a3
	lw	s4, 120(sp)
	sub	a2, a2, s4
	lw	a3, 100(sp)
	add	a2, a2, a3
	lw	a3, 64(sp)
	sub	a2, a2, a3
	lw	s1, 84(sp)
	sub	a2, a2, s1
	lw	s3, 12(sp)
	add	a2, a2, s3
	lw	a3, 88(sp)
	add	a2, a2, a3
	lw	a3, 76(sp)
	sub	a2, a2, a3
	lw	a4, 36(sp)
	add	a2, a2, a4
	add	a0, a2, a0
	add	a0, a0, a1
	sw	a0, 172(sp)
	lw	a0, 40(sp)
	sub	a0, a3, a0
	lw	a1, 72(sp)
	add	a0, a0, a1
	add	a0, a0, a4
	addi	a1, zero, 3
	call	__mulsi3
	lw	a1, 80(sp)
	add	a1, a1, s1
	add	a1, a1, s3
	slli	a1, a1, 1
	lw	a2, 68(sp)
	lw	a3, 56(sp)
	add	a2, a3, a2
	lw	a3, 52(sp)
	add	a2, a2, a3
	lw	a3, 48(sp)
	add	a2, a2, a3
	add	a2, a2, s7
	lw	a3, 44(sp)
	add	a2, a2, a3
	lw	a3, 60(sp)
	add	a2, a2, a3
	add	a2, a2, s0
	add	a2, a2, s6
	add	a2, a2, s9
	add	a2, a2, s5
	add	a2, a2, s10
	lw	a3, 148(sp)
	sub	a2, a3, a2
	lw	a3, 128(sp)
	add	a2, a2, a3
	add	a2, a2, s4
	lw	a3, 116(sp)
	add	a2, a2, a3
	lw	a3, 100(sp)
	add	a2, a2, a3
	lw	a3, 96(sp)
	add	a2, a2, a3
	lw	a3, 92(sp)
	add	a2, a2, a3
	lw	a3, 64(sp)
	add	a2, a2, a3
	lw	s7, 172(sp)
	lw	a3, 88(sp)
	add	a2, a2, a3
	add	a0, a2, a0
	add	s6, a0, a1
	mv	a0, s7
	mv	a1, s7
	call	__mulsi3
	mv	s3, a0
	mv	a0, s6
	mv	a1, s6
	call	__mulsi3
	mv	s4, a0
	add	s1, a0, s3
	lw	a0, 160(sp)
	lw	a1, 160(sp)
	call	__mulsi3
	lw	t6, 132(sp)
	lw	t5, 140(sp)
	lw	s0, 136(sp)
	srli	a0, a0, 1
	bge	a0, s1, .LBB16_5
# %bb.26:                               # %if.then697
                                        #   in Loop: Header=BB16_6 Depth=2
	bgeu	s4, s3, .LBB16_29
# %bb.27:                               # %if.then700
                                        #   in Loop: Header=BB16_6 Depth=2
	mv	a0, s6
	call	__floatsisf
	mv	s0, a0
	srai	a0, s7, 31
	add	a1, s7, a0
	xor	s4, a1, a0
	mv	a0, s4
	call	__floatsisf
	mv	a1, a0
	mv	a0, s0
	call	__divsf3
	mv	s0, a0
	mv	a0, s4
	mv	a1, s7
	call	__divsi3
	mv	s5, a0
	mv	a0, s0
	mv	a1, zero
	call	__ltsf2
	mv	s4, a0
	mv	a0, s0
	call	__extendsfdf2
	addi	s3, zero, -1
	blt	s3, s4, .LBB16_31
# %bb.28:                               # %cond.true
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 785920
	j	.LBB16_32
.LBB16_29:                              # %if.else
                                        #   in Loop: Header=BB16_6 Depth=2
	mv	a0, s7
	call	__floatsisf
	mv	s0, a0
	srai	a0, s6, 31
	add	a1, s6, a0
	xor	s4, a1, a0
	mv	a0, s4
	call	__floatsisf
	mv	a1, a0
	mv	a0, s0
	call	__divsf3
	mv	s9, a0
	mv	a0, s4
	mv	a1, s6
	call	__divsi3
	mv	s10, a0
	lw	a0, 164(sp)
	add	a0, s10, a0
	lw	a1, 144(sp)
	call	__mulsi3
	add	s1, a0, s8
	mv	a0, s9
	mv	a1, zero
	call	__ltsf2
	mv	s4, a0
	mv	a0, s9
	call	__extendsfdf2
	addi	s5, zero, -1
	blt	s5, s4, .LBB16_34
# %bb.30:                               # %cond.true793
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 785920
	j	.LBB16_35
.LBB16_31:                              # %cond.false
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 261632
.LBB16_32:                              # %cond.end
                                        #   in Loop: Header=BB16_6 Depth=2
	mv	a2, zero
	call	__adddf3
	call	__fixdfsi
	lw	a1, 164(sp)
	add	a0, a0, a1
	lw	a1, 144(sp)
	call	__mulsi3
	add	a1, s5, s8
	add	a0, a1, a0
	lw	a1, 136(sp)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	sub	a0, s11, a0
	add	a0, s2, a0
	lbu	s9, 0(a0)
	mv	a0, s0
	mv	a1, s0
	call	__addsf3
	mv	s4, a0
	mv	a1, zero
	call	__ltsf2
	mv	s1, a0
	mv	a0, s4
	call	__extendsfdf2
	blt	s3, s1, .LBB16_37
# %bb.33:                               # %cond.true729
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 785920
	j	.LBB16_38
.LBB16_34:                              # %cond.false797
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 261632
.LBB16_35:                              # %cond.end801
                                        #   in Loop: Header=BB16_6 Depth=2
	mv	a2, zero
	call	__adddf3
	call	__fixdfsi
	add	a0, s1, a0
	lw	a1, 136(sp)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	sub	a0, s11, a0
	add	a0, s2, a0
	lbu	s0, 0(a0)
	slli	a0, s10, 1
	lw	a1, 164(sp)
	add	a0, a0, a1
	lw	a1, 144(sp)
	call	__mulsi3
	add	s1, a0, s8
	mv	a0, s9
	mv	a1, s9
	call	__addsf3
	mv	s4, a0
	mv	a1, zero
	call	__ltsf2
	mv	s3, a0
	mv	a0, s4
	call	__extendsfdf2
	blt	s5, s3, .LBB16_40
# %bb.36:                               # %cond.true818
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 785920
	j	.LBB16_41
.LBB16_37:                              # %cond.false734
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 261632
.LBB16_38:                              # %cond.end739
                                        #   in Loop: Header=BB16_6 Depth=2
	mv	a2, zero
	call	__adddf3
	call	__fixdfsi
	lw	a1, 164(sp)
	add	a0, a0, a1
	lw	a1, 144(sp)
	call	__mulsi3
	slli	a1, s5, 1
	add	a1, a1, s8
	add	a0, a1, a0
	lw	a1, 136(sp)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	sub	a0, s11, a0
	add	a0, s2, a0
	lbu	a0, 0(a0)
	add	s1, a0, s9
	lui	a1, 263168
	mv	a0, s0
	call	__mulsf3
	mv	s4, a0
	mv	a1, zero
	call	__ltsf2
	mv	s0, a0
	mv	a0, s4
	call	__extendsfdf2
	blt	s3, s0, .LBB16_43
# %bb.39:                               # %cond.true757
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 785920
	j	.LBB16_44
.LBB16_40:                              # %cond.false823
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 261632
.LBB16_41:                              # %cond.end828
                                        #   in Loop: Header=BB16_6 Depth=2
	mv	a2, zero
	call	__adddf3
	call	__fixdfsi
	add	a0, s1, a0
	lw	a1, 136(sp)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	sub	a0, s11, a0
	add	a0, s2, a0
	lbu	a0, 0(a0)
	add	s3, a0, s0
	addi	a1, zero, 3
	mv	a0, s10
	call	__mulsi3
	lw	a1, 164(sp)
	add	a0, a0, a1
	lw	a1, 144(sp)
	call	__mulsi3
	add	s1, a0, s8
	lui	a1, 263168
	mv	a0, s9
	call	__mulsf3
	mv	s4, a0
	mv	a1, zero
	call	__ltsf2
	mv	s0, a0
	mv	a0, s4
	call	__extendsfdf2
	blt	s5, s0, .LBB16_45
# %bb.42:                               # %cond.true846
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 785920
	j	.LBB16_46
.LBB16_43:                              # %cond.false762
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 261632
.LBB16_44:                              # %cond.end767
                                        #   in Loop: Header=BB16_6 Depth=2
	mv	a2, zero
	call	__adddf3
	call	__fixdfsi
	lw	a1, 164(sp)
	add	a0, a0, a1
	lw	a1, 144(sp)
	call	__mulsi3
	mv	s4, a0
	addi	a1, zero, 3
	mv	a0, s5
	call	__mulsi3
	add	a0, a0, s8
	add	a0, a0, s4
	lw	s0, 136(sp)
	add	a0, s0, a0
	lbu	a0, 0(a0)
	sub	a0, s11, a0
	add	a0, s2, a0
	lbu	a0, 0(a0)
	add	a0, s1, a0
	j	.LBB16_47
.LBB16_45:                              # %cond.false851
                                        #   in Loop: Header=BB16_6 Depth=2
	lui	a3, 261632
.LBB16_46:                              # %cond.end856
                                        #   in Loop: Header=BB16_6 Depth=2
	mv	a2, zero
	call	__adddf3
	call	__fixdfsi
	add	a0, s1, a0
	lw	s0, 136(sp)
	add	a0, s0, a0
	lbu	a0, 0(a0)
	sub	a0, s11, a0
	add	a0, s2, a0
	lbu	a0, 0(a0)
	add	a0, s3, a0
.LBB16_47:                              # %if.end
                                        #   in Loop: Header=BB16_6 Depth=2
	lw	t5, 140(sp)
	lw	t6, 132(sp)
	addi	a1, zero, 291
	lw	a2, 160(sp)
	blt	a0, a1, .LBB16_5
# %bb.48:                               # %if.then869
                                        #   in Loop: Header=BB16_6 Depth=2
	sub	a0, t6, a2
	lw	a1, 176(sp)
	slli	s1, a1, 2
	lw	a1, 124(sp)
	add	a1, a1, s1
	sw	a0, 0(a1)
	addi	a1, zero, 51
	mv	a0, s7
	mv	s0, a2
	call	__mulsi3
	mv	a1, s0
	call	__divsi3
	lw	a1, 112(sp)
	add	a1, a1, s1
	sw	a0, 0(a1)
	addi	a1, zero, 51
	mv	a0, s6
	call	__mulsi3
	mv	a1, s0
	call	__divsi3
	lw	t6, 132(sp)
	lw	t5, 140(sp)
	lw	s0, 136(sp)
	lw	a1, 108(sp)
	add	a1, a1, s1
	sw	a0, 0(a1)
	j	.LBB16_5
.LBB16_49:                              # %for.cond911.preheader
	addi	a5, zero, 6
	lw	a0, 152(sp)
	blt	a0, a5, .LBB16_108
# %bb.50:                               # %for.cond916.preheader.lr.ph
	mv	s6, zero
	sw	zero, 192(sp)
	addi	s7, zero, 5
	addi	s11, zero, 1
	lui	a0, 4
	addi	a0, a0, -1384
	sw	a0, 188(sp)
	j	.LBB16_52
.LBB16_51:                              # %for.inc1385
                                        #   in Loop: Header=BB16_52 Depth=1
	addi	a0, s7, 1
	sltu	a1, a0, s7
	add	s6, s6, a1
	mv	s7, a0
	lw	a1, 152(sp)
	bge	a0, a1, .LBB16_109
.LBB16_52:                              # %for.cond916.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_57 Depth 2
	blt	t5, a5, .LBB16_51
# %bb.53:                               # %for.body920.lr.ph
                                        #   in Loop: Header=BB16_52 Depth=1
	mv	a0, s7
	lw	s1, 144(sp)
	mv	a1, s1
	call	__mulsi3
	mv	s8, a0
	addi	a0, zero, -3
	add	s0, s7, a0
	mv	a0, s0
	mv	a1, s1
	call	__mulsi3
	mv	s2, a0
	addi	a0, s0, 1
	mv	a1, s1
	call	__mulsi3
	mv	s10, a0
	addi	a0, s0, 2
	mv	a1, s1
	call	__mulsi3
	sw	a0, 200(sp)
	addi	a0, s7, 1
	mv	a1, s1
	call	__mulsi3
	sw	a0, 196(sp)
	addi	a0, s7, 2
	mv	a1, s1
	call	__mulsi3
	mv	s4, a0
	addi	a0, s7, 3
	mv	a1, s1
	call	__mulsi3
	addi	a5, zero, 6
	lw	t5, 140(sp)
	lw	a4, 124(sp)
	mv	s5, a0
	mv	s3, zero
	addi	s0, zero, 5
	j	.LBB16_57
.LBB16_54:                              #   in Loop: Header=BB16_57 Depth=2
	lw	a4, 124(sp)
.LBB16_55:                              #   in Loop: Header=BB16_57 Depth=2
	lw	t5, 140(sp)
	addi	a5, zero, 6
.LBB16_56:                              # %for.inc1382
                                        #   in Loop: Header=BB16_57 Depth=2
	addi	a0, s0, 1
	sltu	a1, a0, s0
	add	s3, s3, a1
	mv	s0, a0
	bge	a0, t5, .LBB16_51
.LBB16_57:                              # %for.body920
                                        #   Parent Loop BB16_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s9, s0, s8
	slli	s1, s9, 2
	add	a0, a4, s1
	lw	a0, 0(a0)
	blt	a0, s11, .LBB16_56
# %bb.58:                               # %if.then927
                                        #   in Loop: Header=BB16_57 Depth=2
	add	a1, s0, s2
	slli	a2, a1, 2
	add	a1, a2, a4
	lw	a3, -12(a1)
	bge	a3, a0, .LBB16_56
# %bb.59:                               # %land.lhs.true
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -8(a1)
	bge	a3, a0, .LBB16_56
# %bb.60:                               # %land.lhs.true944
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -4(a1)
	bge	a3, a0, .LBB16_56
# %bb.61:                               # %land.lhs.true953
                                        #   in Loop: Header=BB16_57 Depth=2
	add	a2, a4, a2
	lw	a2, 0(a2)
	bge	a2, a0, .LBB16_56
# %bb.62:                               # %land.lhs.true961
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 4(a1)
	bge	a2, a0, .LBB16_56
# %bb.63:                               # %land.lhs.true970
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 8(a1)
	bge	a2, a0, .LBB16_56
# %bb.64:                               # %land.lhs.true979
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a1, 12(a1)
	bge	a1, a0, .LBB16_56
# %bb.65:                               # %land.lhs.true988
                                        #   in Loop: Header=BB16_57 Depth=2
	add	a1, s0, s10
	slli	a2, a1, 2
	add	a1, a2, a4
	lw	a3, -12(a1)
	bge	a3, a0, .LBB16_56
# %bb.66:                               # %land.lhs.true997
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -8(a1)
	bge	a3, a0, .LBB16_56
# %bb.67:                               # %land.lhs.true1006
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -4(a1)
	bge	a3, a0, .LBB16_56
# %bb.68:                               # %land.lhs.true1015
                                        #   in Loop: Header=BB16_57 Depth=2
	add	a2, a4, a2
	lw	a2, 0(a2)
	bge	a2, a0, .LBB16_56
# %bb.69:                               # %land.lhs.true1023
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 4(a1)
	bge	a2, a0, .LBB16_56
# %bb.70:                               # %land.lhs.true1032
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 8(a1)
	bge	a2, a0, .LBB16_56
# %bb.71:                               # %land.lhs.true1041
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a1, 12(a1)
	bge	a1, a0, .LBB16_56
# %bb.72:                               # %land.lhs.true1050
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a1, 200(sp)
	add	a1, s0, a1
	slli	a2, a1, 2
	add	a1, a2, a4
	lw	a3, -12(a1)
	bge	a3, a0, .LBB16_56
# %bb.73:                               # %land.lhs.true1059
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -8(a1)
	bge	a3, a0, .LBB16_56
# %bb.74:                               # %land.lhs.true1068
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -4(a1)
	bge	a3, a0, .LBB16_56
# %bb.75:                               # %land.lhs.true1077
                                        #   in Loop: Header=BB16_57 Depth=2
	add	a2, a4, a2
	lw	a2, 0(a2)
	bge	a2, a0, .LBB16_56
# %bb.76:                               # %land.lhs.true1085
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 4(a1)
	bge	a2, a0, .LBB16_56
# %bb.77:                               # %land.lhs.true1094
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 8(a1)
	bge	a2, a0, .LBB16_56
# %bb.78:                               # %land.lhs.true1103
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a1, 12(a1)
	bge	a1, a0, .LBB16_55
# %bb.79:                               # %land.lhs.true1112
                                        #   in Loop: Header=BB16_57 Depth=2
	add	a1, s1, a4
	lw	a2, -12(a1)
	bge	a2, a0, .LBB16_54
# %bb.80:                               # %land.lhs.true1120
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, -8(a1)
	bge	a2, a0, .LBB16_54
# %bb.81:                               # %land.lhs.true1128
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, -4(a1)
	bge	a2, a0, .LBB16_54
# %bb.82:                               # %land.lhs.true1136
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 4(a1)
	blt	a0, a2, .LBB16_54
# %bb.83:                               # %land.lhs.true1144
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 8(a1)
	blt	a0, a2, .LBB16_54
# %bb.84:                               # %land.lhs.true1152
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a1, 12(a1)
	blt	a0, a1, .LBB16_54
# %bb.85:                               # %land.lhs.true1160
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a1, 196(sp)
	add	a1, s0, a1
	slli	a2, a1, 2
	lw	a1, 124(sp)
	add	a1, a2, a1
	lw	a3, -12(a1)
	blt	a0, a3, .LBB16_54
# %bb.86:                               # %land.lhs.true1169
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -8(a1)
	blt	a0, a3, .LBB16_54
# %bb.87:                               # %land.lhs.true1178
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -4(a1)
	blt	a0, a3, .LBB16_54
# %bb.88:                               # %land.lhs.true1187
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, 124(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB16_54
# %bb.89:                               # %land.lhs.true1195
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 4(a1)
	blt	a0, a2, .LBB16_54
# %bb.90:                               # %land.lhs.true1204
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 8(a1)
	blt	a0, a2, .LBB16_54
# %bb.91:                               # %land.lhs.true1213
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a1, 12(a1)
	blt	a0, a1, .LBB16_54
# %bb.92:                               # %land.lhs.true1222
                                        #   in Loop: Header=BB16_57 Depth=2
	add	a1, s0, s4
	slli	a2, a1, 2
	lw	a1, 124(sp)
	add	a1, a2, a1
	lw	a3, -12(a1)
	blt	a0, a3, .LBB16_54
# %bb.93:                               # %land.lhs.true1231
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -8(a1)
	blt	a0, a3, .LBB16_54
# %bb.94:                               # %land.lhs.true1240
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -4(a1)
	blt	a0, a3, .LBB16_54
# %bb.95:                               # %land.lhs.true1249
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, 124(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB16_54
# %bb.96:                               # %land.lhs.true1257
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 4(a1)
	blt	a0, a2, .LBB16_54
# %bb.97:                               # %land.lhs.true1266
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 8(a1)
	blt	a0, a2, .LBB16_54
# %bb.98:                               # %land.lhs.true1275
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a1, 12(a1)
	blt	a0, a1, .LBB16_54
# %bb.99:                               # %land.lhs.true1284
                                        #   in Loop: Header=BB16_57 Depth=2
	add	a1, s0, s5
	slli	a2, a1, 2
	lw	a1, 124(sp)
	add	a1, a2, a1
	lw	a3, -12(a1)
	blt	a0, a3, .LBB16_54
# %bb.100:                              # %land.lhs.true1293
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -8(a1)
	blt	a0, a3, .LBB16_54
# %bb.101:                              # %land.lhs.true1302
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, -4(a1)
	blt	a0, a3, .LBB16_54
# %bb.102:                              # %land.lhs.true1311
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a3, 124(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB16_54
# %bb.103:                              # %land.lhs.true1319
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 4(a1)
	blt	a0, a2, .LBB16_54
# %bb.104:                              # %land.lhs.true1328
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a2, 8(a1)
	blt	a0, a2, .LBB16_54
# %bb.105:                              # %land.lhs.true1337
                                        #   in Loop: Header=BB16_57 Depth=2
	lw	a1, 12(a1)
	blt	a0, a1, .LBB16_54
# %bb.106:                              # %if.then1346
                                        #   in Loop: Header=BB16_57 Depth=2
	addi	a1, zero, 24
	lw	a0, 192(sp)
	call	__mulsi3
	lw	a1, 104(sp)
	add	a0, a1, a0
	sw	zero, 8(a0)
	sw	s0, 0(a0)
	sw	s7, 4(a0)
	lw	a1, 112(sp)
	add	a1, a1, s1
	lw	a1, 0(a1)
	sw	a1, 12(a0)
	lw	a1, 108(sp)
	add	a1, a1, s1
	lw	a1, 0(a1)
	sw	a1, 16(a0)
	lw	a1, 136(sp)
	add	a1, a1, s9
	lbu	a1, 0(a1)
	lw	a2, 192(sp)
	addi	a2, a2, 1
	sw	a1, 20(a0)
	lw	a4, 124(sp)
	lw	t5, 140(sp)
	sw	a2, 192(sp)
	addi	a5, zero, 6
	lw	a0, 188(sp)
	bne	a2, a0, .LBB16_56
# %bb.107:                              # %if.then1377
	lui	a0, %hi(.Lstr15)
	addi	a0, a0, %lo(.Lstr15)
	call	puts
	addi	a0, zero, 1
	call	exit
.LBB16_108:
	sw	zero, 192(sp)
.LBB16_109:                             # %for.end1387
	addi	a1, zero, 24
	lw	a0, 192(sp)
	call	__mulsi3
	lw	a1, 104(sp)
	add	a0, a1, a0
	addi	a1, zero, 7
	sw	a1, 8(a0)
	lw	a0, 112(sp)
	call	free
	lw	a0, 108(sp)
	lw	s11, 204(sp)
	lw	s10, 208(sp)
	lw	s9, 212(sp)
	lw	s8, 216(sp)
	lw	s7, 220(sp)
	lw	s6, 224(sp)
	lw	s5, 228(sp)
	lw	s4, 232(sp)
	lw	s3, 236(sp)
	lw	s2, 240(sp)
	lw	s1, 244(sp)
	lw	s0, 248(sp)
	lw	ra, 252(sp)
	addi	sp, sp, 256
	tail	free
.Lfunc_end16:
	.size	susan_corners, .Lfunc_end16-susan_corners
	.cfi_endproc
                                        # -- End function
	.globl	susan_corners_quick     # -- Begin function susan_corners_quick
	.p2align	2
	.type	susan_corners_quick,@function
susan_corners_quick:                    # @susan_corners_quick
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -224
	.cfi_def_cfa_offset 224
	sw	ra, 220(sp)
	sw	s0, 216(sp)
	sw	s1, 212(sp)
	sw	s2, 208(sp)
	sw	s3, 204(sp)
	sw	s4, 200(sp)
	sw	s5, 196(sp)
	sw	s6, 192(sp)
	sw	s7, 188(sp)
	sw	s8, 184(sp)
	sw	s9, 180(sp)
	sw	s10, 176(sp)
	sw	s11, 172(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s7, a6
	mv	s0, a5
	mv	s9, a4
	mv	s2, a3
	mv	s5, a2
	mv	s1, a1
	mv	s10, a0
	mv	a0, a6
	mv	a1, a5
	call	__mulsi3
	slli	a2, a0, 2
	mv	a0, s1
	mv	a1, zero
	call	memset
	addi	a0, s7, -7
	addi	t3, zero, 7
	bge	t3, a0, .LBB17_28
# %bb.1:                                # %accept_cond.lr.ph
	sw	a0, 160(sp)
	sw	s1, 132(sp)
	sw	s9, 136(sp)
	mv	s8, zero
	mv	s3, zero
	mv	s11, zero
	mv	t4, zero
	addi	t2, s0, -7
	addi	s9, s0, -3
	addi	s6, s0, -5
	sw	s0, 156(sp)
	addi	s4, s0, -6
	addi	t5, s7, -14
	addi	t6, zero, 8
	sw	t2, 168(sp)
	sw	t5, 152(sp)
	j	.LBB17_4
.LBB17_2:                               # %for.end
                                        #   in Loop: Header=BB17_4 Depth=1
	addi	t4, t4, 1
.LBB17_3:                               # %for.inc358
                                        #   in Loop: Header=BB17_4 Depth=1
	addi	a0, t3, 1
	sltu	a1, a0, t3
	add	s8, s8, a1
	addi	a1, s3, 1
	sltu	a2, a1, s3
	add	s11, s11, a2
	mv	t3, a0
	mv	s3, a1
	beq	a1, t5, .LBB17_29
.LBB17_4:                               # %accept_cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_8 Depth 2
	andi	a0, s3, 255
	bnez	a0, .LBB17_3
# %bb.5:                                # %for.cond3.preheader
                                        #   in Loop: Header=BB17_4 Depth=1
	blt	t2, t6, .LBB17_2
# %bb.6:                                # %for.body7.lr.ph
                                        #   in Loop: Header=BB17_4 Depth=1
	addi	a0, zero, -3
	add	a0, t3, a0
	lw	s0, 156(sp)
	mv	a1, s0
	mv	s1, t3
	sw	t4, 164(sp)
	call	__mulsi3
	mv	s7, a0
	mv	a0, s1
	mv	a1, s0
	call	__mulsi3
	addi	t6, zero, 8
	lw	t5, 152(sp)
	lw	t4, 164(sp)
	mv	t3, s1
	lw	t2, 168(sp)
	mv	t0, zero
	addi	t1, zero, 7
	j	.LBB17_8
.LBB17_7:                               # %for.inc
                                        #   in Loop: Header=BB17_8 Depth=2
	addi	a1, t1, 1
	sltu	a2, a1, t1
	add	t0, t0, a2
	mv	t1, a1
	beq	a1, t2, .LBB17_2
.LBB17_8:                               # %for.body7
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a3, t1, s7
	add	a7, t1, a0
	add	a4, s10, a7
	lbu	a4, 0(a4)
	add	a5, s10, a3
	lbu	s1, -1(a5)
	lbu	a5, 0(a5)
	sub	s1, a4, s1
	add	s1, s5, s1
	lbu	a6, 0(s1)
	sub	a5, a4, a5
	add	a5, s5, a5
	lbu	a5, 0(a5)
	addi	a3, a3, 1
	add	a1, s10, a3
	lbu	a1, 0(a1)
	add	a3, a3, s9
	add	a2, s10, a3
	lbu	s1, 0(a2)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	sub	s1, a4, s1
	add	s1, s5, s1
	lbu	s1, 0(s1)
	lbu	s0, 1(a2)
	add	a5, a6, a5
	add	a1, a5, a1
	add	a1, a1, s1
	sub	a5, a4, s0
	lbu	s1, 2(a2)
	add	a5, s5, a5
	lbu	a5, 0(a5)
	lbu	a2, 3(a2)
	sub	s1, a4, s1
	add	s1, s5, s1
	lbu	s1, 0(s1)
	sub	a2, a4, a2
	add	a2, s5, a2
	lbu	a2, 0(a2)
	addi	a3, a3, 4
	add	s0, s10, a3
	lbu	s0, 0(s0)
	add	a1, a1, a5
	add	a1, a1, s1
	add	a1, a1, a2
	sub	a2, a4, s0
	add	a3, a3, s6
	add	a5, s10, a3
	lbu	s1, 0(a5)
	add	a2, s5, a2
	lbu	a2, 0(a2)
	lbu	s0, 1(a5)
	sub	s1, a4, s1
	add	s1, s5, s1
	lbu	s1, 0(s1)
	sub	s0, a4, s0
	add	s0, s5, s0
	lbu	s0, 0(s0)
	add	a1, a1, a2
	lbu	a2, 2(a5)
	add	a1, a1, s1
	add	a1, a1, s0
	lbu	s1, 3(a5)
	sub	a2, a4, a2
	add	a2, s5, a2
	lbu	a2, 0(a2)
	sub	s1, a4, s1
	lbu	s0, 4(a5)
	add	s1, s5, s1
	lbu	s1, 0(s1)
	lbu	a5, 5(a5)
	sub	s0, a4, s0
	add	s0, s5, s0
	lbu	s0, 0(s0)
	sub	a5, a4, a5
	add	a5, s5, a5
	lbu	a5, 0(a5)
	add	a1, a1, a2
	add	a1, a1, s1
	add	a1, a1, s0
	add	a1, a1, a5
	addi	a2, a3, 6
	add	a3, s10, a2
	lbu	a3, 0(a3)
	add	a5, a2, s4
	add	a2, s10, a5
	lbu	s1, 0(a2)
	sub	a3, a4, a3
	add	a3, s5, a3
	lbu	a3, 0(a3)
	sub	s1, a4, s1
	lbu	s0, 1(a2)
	add	s1, s5, s1
	lbu	s1, 0(s1)
	lbu	a2, 2(a2)
	sub	s0, a4, s0
	add	s0, s5, s0
	lbu	s0, 0(s0)
	sub	a2, a4, a2
	add	a2, s5, a2
	lbu	a2, 0(a2)
	add	a1, a1, a3
	add	a1, a1, s1
	add	a1, a1, s0
	add	a1, a1, a2
	addi	a3, a1, 100
	bge	a3, s2, .LBB17_7
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB17_8 Depth=2
	add	s1, a5, s10
	lbu	a1, 4(s1)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	a3, a1, a3
	bge	a3, s2, .LBB17_7
# %bb.10:                               # %if.then158
                                        #   in Loop: Header=BB17_8 Depth=2
	lbu	a1, 5(s1)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	s1, a1, a3
	bge	s1, s2, .LBB17_7
# %bb.11:                               # %if.then168
                                        #   in Loop: Header=BB17_8 Depth=2
	addi	a5, a5, 6
	add	a1, s10, a5
	lbu	a1, 0(a1)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	s1, a1, s1
	bge	s1, s2, .LBB17_7
# %bb.12:                               # %if.then177
                                        #   in Loop: Header=BB17_8 Depth=2
	add	a5, a5, s4
	add	a1, s10, a5
	lbu	a1, 0(a1)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	s1, a1, s1
	bge	s1, s2, .LBB17_7
# %bb.13:                               # %if.then190
                                        #   in Loop: Header=BB17_8 Depth=2
	add	a6, a5, s10
	lbu	a1, 1(a6)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	a3, a1, s1
	bge	a3, s2, .LBB17_7
# %bb.14:                               # %if.then200
                                        #   in Loop: Header=BB17_8 Depth=2
	lbu	a1, 2(a6)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	a3, a1, a3
	bge	a3, s2, .LBB17_7
# %bb.15:                               # %if.then210
                                        #   in Loop: Header=BB17_8 Depth=2
	lbu	a1, 3(a6)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	a3, a1, a3
	bge	a3, s2, .LBB17_7
# %bb.16:                               # %if.then220
                                        #   in Loop: Header=BB17_8 Depth=2
	lbu	a1, 4(a6)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	a3, a1, a3
	bge	a3, s2, .LBB17_7
# %bb.17:                               # %if.then230
                                        #   in Loop: Header=BB17_8 Depth=2
	lbu	a1, 5(a6)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	s1, a1, a3
	bge	s1, s2, .LBB17_7
# %bb.18:                               # %if.then240
                                        #   in Loop: Header=BB17_8 Depth=2
	addi	a5, a5, 6
	add	a1, s10, a5
	lbu	a1, 0(a1)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	s1, a1, s1
	bge	s1, s2, .LBB17_7
# %bb.19:                               # %if.then249
                                        #   in Loop: Header=BB17_8 Depth=2
	add	a5, a5, s6
	add	a1, s10, a5
	lbu	a1, 0(a1)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	s1, a1, s1
	bge	s1, s2, .LBB17_7
# %bb.20:                               # %if.then262
                                        #   in Loop: Header=BB17_8 Depth=2
	add	a6, a5, s10
	lbu	a1, 1(a6)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	a3, a1, s1
	bge	a3, s2, .LBB17_7
# %bb.21:                               # %if.then272
                                        #   in Loop: Header=BB17_8 Depth=2
	lbu	a1, 2(a6)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	a3, a1, a3
	bge	a3, s2, .LBB17_7
# %bb.22:                               # %if.then282
                                        #   in Loop: Header=BB17_8 Depth=2
	lbu	a1, 3(a6)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	s1, a1, a3
	bge	s1, s2, .LBB17_7
# %bb.23:                               # %if.then292
                                        #   in Loop: Header=BB17_8 Depth=2
	addi	a5, a5, 4
	add	a1, s10, a5
	lbu	a1, 0(a1)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	s1, a1, s1
	bge	s1, s2, .LBB17_7
# %bb.24:                               # %if.then301
                                        #   in Loop: Header=BB17_8 Depth=2
	add	a5, a5, s9
	add	a1, s10, a5
	lbu	a1, 0(a1)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	s1, a1, s1
	bge	s1, s2, .LBB17_7
# %bb.25:                               # %if.then314
                                        #   in Loop: Header=BB17_8 Depth=2
	add	a5, a5, s10
	lbu	a1, 1(a5)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	a3, a1, s1
	bge	a3, s2, .LBB17_7
# %bb.26:                               # %if.then324
                                        #   in Loop: Header=BB17_8 Depth=2
	lbu	a1, 2(a5)
	sub	a1, a4, a1
	add	a1, s5, a1
	lbu	a1, 0(a1)
	add	a3, a1, a3
	bge	a3, s2, .LBB17_7
# %bb.27:                               # %if.then333
                                        #   in Loop: Header=BB17_8 Depth=2
	sub	a1, s2, a3
	slli	a2, a7, 2
	lw	a3, 132(sp)
	add	a2, a3, a2
	sw	a1, 0(a2)
	j	.LBB17_7
.LBB17_28:                              # %for.end360.thread
	lui	a0, %hi(.L.str28)
	addi	a0, a0, %lo(.L.str28)
	mv	a1, zero
	call	printf
	sw	zero, 140(sp)
	j	.LBB17_91
.LBB17_29:                              # %for.end360
	lui	a0, %hi(.L.str28)
	addi	a0, a0, %lo(.L.str28)
	mv	a1, t4
	call	printf
	addi	a7, zero, 8
	lw	a6, 160(sp)
	blt	a6, a7, .LBB17_90
# %bb.30:                               # %for.cond366.preheader.lr.ph
	mv	s11, zero
	sw	zero, 140(sp)
	addi	s5, zero, 7
	addi	s2, zero, 1
	lui	a0, 4
	addi	a0, a0, -1384
	sw	a0, 128(sp)
	lw	s9, 136(sp)
	lw	s4, 156(sp)
	lw	s1, 132(sp)
	lw	a5, 168(sp)
	j	.LBB17_32
.LBB17_31:                              # %for.inc1325
                                        #   in Loop: Header=BB17_32 Depth=1
	addi	a0, s5, 1
	sltu	a1, a0, s5
	add	s11, s11, a1
	mv	s5, a0
	bge	a0, a6, .LBB17_91
.LBB17_32:                              # %for.cond366.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_37 Depth 2
	blt	a5, a7, .LBB17_31
# %bb.33:                               # %for.body370.lr.ph
                                        #   in Loop: Header=BB17_32 Depth=1
	mv	a0, s5
	mv	a1, s4
	call	__mulsi3
	mv	s6, a0
	addi	a0, zero, -3
	add	s0, s5, a0
	mv	a0, s0
	mv	a1, s4
	call	__mulsi3
	mv	s7, a0
	addi	a0, s0, 1
	mv	a1, s4
	call	__mulsi3
	sw	a0, 164(sp)
	addi	a0, s0, 2
	mv	a1, s4
	call	__mulsi3
	sw	a0, 152(sp)
	addi	a0, s5, 1
	mv	a1, s4
	call	__mulsi3
	sw	a0, 148(sp)
	addi	a0, s5, 2
	mv	a1, s4
	call	__mulsi3
	sw	a0, 144(sp)
	addi	a0, s5, 3
	mv	a1, s4
	call	__mulsi3
	addi	a7, zero, 8
	lw	a5, 168(sp)
	lw	a6, 160(sp)
	mv	t0, a0
	mv	s0, zero
	addi	s8, zero, 7
	j	.LBB17_37
.LBB17_34:                              #   in Loop: Header=BB17_37 Depth=2
	lw	s9, 136(sp)
.LBB17_35:                              #   in Loop: Header=BB17_37 Depth=2
	lw	s4, 156(sp)
.LBB17_36:                              # %for.inc1322
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	a0, s8, 1
	sltu	a1, a0, s8
	add	s0, s0, a1
	mv	s8, a0
	bge	a0, a5, .LBB17_31
.LBB17_37:                              # %for.body370
                                        #   Parent Loop BB17_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s3, s8, s6
	slli	a1, s3, 2
	add	a0, s1, a1
	lw	a0, 0(a0)
	blt	a0, s2, .LBB17_36
# %bb.38:                               # %if.then377
                                        #   in Loop: Header=BB17_37 Depth=2
	add	a2, s8, s7
	slli	a3, a2, 2
	add	a2, a3, s1
	lw	a4, -12(a2)
	bge	a4, a0, .LBB17_36
# %bb.39:                               # %land.lhs.true
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a4, -8(a2)
	bge	a4, a0, .LBB17_36
# %bb.40:                               # %land.lhs.true394
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a4, -4(a2)
	bge	a4, a0, .LBB17_36
# %bb.41:                               # %land.lhs.true403
                                        #   in Loop: Header=BB17_37 Depth=2
	add	a3, s1, a3
	lw	a3, 0(a3)
	bge	a3, a0, .LBB17_36
# %bb.42:                               # %land.lhs.true411
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, 4(a2)
	bge	a3, a0, .LBB17_36
# %bb.43:                               # %land.lhs.true420
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, 8(a2)
	bge	a3, a0, .LBB17_36
# %bb.44:                               # %land.lhs.true429
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 12(a2)
	bge	a2, a0, .LBB17_36
# %bb.45:                               # %land.lhs.true438
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 164(sp)
	add	t1, s8, a2
	slli	a3, t1, 2
	add	a2, a3, s1
	lw	a4, -12(a2)
	bge	a4, a0, .LBB17_36
# %bb.46:                               # %land.lhs.true447
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	s4, t1, -2
	slli	a4, s4, 2
	add	a4, s1, a4
	lw	a4, 0(a4)
	bge	a4, a0, .LBB17_35
# %bb.47:                               # %land.lhs.true456
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	s9, t1, -1
	slli	a4, s9, 2
	add	a4, s1, a4
	lw	a4, 0(a4)
	bge	a4, a0, .LBB17_34
# %bb.48:                               # %land.lhs.true465
                                        #   in Loop: Header=BB17_37 Depth=2
	add	a3, s1, a3
	lw	a3, 0(a3)
	bge	a3, a0, .LBB17_34
# %bb.49:                               # %land.lhs.true473
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	t2, t1, 1
	slli	a3, t2, 2
	add	a3, s1, a3
	lw	a3, 0(a3)
	bge	a3, a0, .LBB17_34
# %bb.50:                               # %land.lhs.true482
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	t3, t1, 2
	slli	a3, t3, 2
	add	a3, s1, a3
	lw	a3, 0(a3)
	bge	a3, a0, .LBB17_87
# %bb.51:                               # %land.lhs.true491
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 12(a2)
	bge	a2, a0, .LBB17_87
# %bb.52:                               # %land.lhs.true500
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 152(sp)
	add	a2, s8, a2
	slli	a3, a2, 2
	lw	s1, 132(sp)
	add	t4, a3, s1
	lw	a4, -12(t4)
	bge	a4, a0, .LBB17_34
# %bb.53:                               # %land.lhs.true509
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	t5, a2, -2
	slli	a4, t5, 2
	add	a4, s1, a4
	lw	a4, 0(a4)
	bge	a4, a0, .LBB17_34
# %bb.54:                               # %land.lhs.true518
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	t6, a2, -1
	slli	a4, t6, 2
	add	a4, s1, a4
	lw	a4, 0(a4)
	bge	a4, a0, .LBB17_34
# %bb.55:                               # %land.lhs.true527
                                        #   in Loop: Header=BB17_37 Depth=2
	add	a3, s1, a3
	lw	a3, 0(a3)
	bge	a3, a0, .LBB17_34
# %bb.56:                               # %land.lhs.true535
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	a4, a2, 1
	slli	a3, a4, 2
	add	a3, s1, a3
	lw	a3, 0(a3)
	bge	a3, a0, .LBB17_34
# %bb.57:                               # %land.lhs.true544
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	ra, a2, 2
	slli	a3, ra, 2
	add	a3, s1, a3
	lw	a3, 0(a3)
	bge	a3, a0, .LBB17_87
# %bb.58:                               # %land.lhs.true553
                                        #   in Loop: Header=BB17_37 Depth=2
	sw	ra, 96(sp)
	sw	a4, 100(sp)
	sw	t6, 104(sp)
	sw	t5, 108(sp)
	sw	a2, 112(sp)
	sw	t3, 116(sp)
	sw	t2, 120(sp)
	sw	t0, 124(sp)
	lw	a2, 12(t4)
	bge	a2, a0, .LBB17_86
# %bb.59:                               # %land.lhs.true562
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 132(sp)
	add	a1, a1, a2
	lw	a2, -12(a1)
	bge	a2, a0, .LBB17_86
# %bb.60:                               # %land.lhs.true570
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	a2, s3, -2
	sw	a2, 92(sp)
	slli	a2, a2, 2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	bge	a2, a0, .LBB17_86
# %bb.61:                               # %land.lhs.true578
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	a2, s3, -1
	sw	a2, 88(sp)
	slli	a2, a2, 2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	bge	a2, a0, .LBB17_86
# %bb.62:                               # %land.lhs.true586
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	a2, s3, 1
	sw	a2, 84(sp)
	slli	a2, a2, 2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB17_86
# %bb.63:                               # %land.lhs.true594
                                        #   in Loop: Header=BB17_37 Depth=2
	addi	a2, s3, 2
	sw	a2, 80(sp)
	slli	a2, a2, 2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB17_86
# %bb.64:                               # %land.lhs.true602
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a1, 12(a1)
	blt	a0, a1, .LBB17_86
# %bb.65:                               # %land.lhs.true610
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a1, 148(sp)
	add	a1, s8, a1
	sw	a1, 76(sp)
	slli	a2, a1, 2
	lw	a1, 132(sp)
	add	a1, a2, a1
	lw	a3, -12(a1)
	blt	a0, a3, .LBB17_86
# %bb.66:                               # %land.lhs.true619
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, 76(sp)
	addi	a3, a3, -2
	sw	a3, 72(sp)
	slli	a3, a3, 2
	lw	a4, 132(sp)
	add	a3, a4, a3
	lw	a3, 0(a3)
	blt	a0, a3, .LBB17_86
# %bb.67:                               # %land.lhs.true628
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, 76(sp)
	addi	a3, a3, -1
	sw	a3, 68(sp)
	slli	a3, a3, 2
	lw	a4, 132(sp)
	add	a3, a4, a3
	lw	a3, 0(a3)
	blt	a0, a3, .LBB17_86
# %bb.68:                               # %land.lhs.true637
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB17_86
# %bb.69:                               # %land.lhs.true645
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 76(sp)
	addi	a2, a2, 1
	sw	a2, 64(sp)
	slli	a2, a2, 2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB17_86
# %bb.70:                               # %land.lhs.true654
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 76(sp)
	addi	a2, a2, 2
	sw	a2, 60(sp)
	slli	a2, a2, 2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB17_86
# %bb.71:                               # %land.lhs.true663
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a1, 12(a1)
	blt	a0, a1, .LBB17_86
# %bb.72:                               # %land.lhs.true672
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a1, 144(sp)
	add	a1, s8, a1
	sw	a1, 56(sp)
	slli	a2, a1, 2
	lw	a1, 132(sp)
	add	a1, a2, a1
	lw	a3, -12(a1)
	blt	a0, a3, .LBB17_86
# %bb.73:                               # %land.lhs.true681
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, 56(sp)
	addi	a3, a3, -2
	sw	a3, 52(sp)
	slli	a3, a3, 2
	lw	a4, 132(sp)
	add	a3, a4, a3
	lw	a3, 0(a3)
	blt	a0, a3, .LBB17_86
# %bb.74:                               # %land.lhs.true690
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, 56(sp)
	addi	a3, a3, -1
	sw	a3, 48(sp)
	slli	a3, a3, 2
	lw	a4, 132(sp)
	add	a3, a4, a3
	lw	a3, 0(a3)
	blt	a0, a3, .LBB17_86
# %bb.75:                               # %land.lhs.true699
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB17_86
# %bb.76:                               # %land.lhs.true707
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 56(sp)
	addi	a2, a2, 1
	sw	a2, 44(sp)
	slli	a2, a2, 2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB17_86
# %bb.77:                               # %land.lhs.true716
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 56(sp)
	addi	a2, a2, 2
	sw	a2, 40(sp)
	slli	a2, a2, 2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB17_86
# %bb.78:                               # %land.lhs.true725
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a1, 12(a1)
	blt	a0, a1, .LBB17_86
# %bb.79:                               # %land.lhs.true734
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a1, 124(sp)
	add	a1, s8, a1
	slli	a2, a1, 2
	lw	a1, 132(sp)
	add	a1, a2, a1
	lw	a3, -12(a1)
	blt	a0, a3, .LBB17_86
# %bb.80:                               # %land.lhs.true743
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, -8(a1)
	blt	a0, a3, .LBB17_86
# %bb.81:                               # %land.lhs.true752
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, -4(a1)
	blt	a0, a3, .LBB17_86
# %bb.82:                               # %land.lhs.true761
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a3, 132(sp)
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a0, a2, .LBB17_86
# %bb.83:                               # %land.lhs.true769
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 4(a1)
	blt	a0, a2, .LBB17_86
# %bb.84:                               # %land.lhs.true778
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a2, 8(a1)
	blt	a0, a2, .LBB17_86
# %bb.85:                               # %land.lhs.true787
                                        #   in Loop: Header=BB17_37 Depth=2
	lw	a1, 12(a1)
	bge	a0, a1, .LBB17_88
.LBB17_86:                              #   in Loop: Header=BB17_37 Depth=2
	lw	s9, 136(sp)
	lw	s4, 156(sp)
	lw	s1, 132(sp)
	lw	a6, 160(sp)
	lw	a5, 168(sp)
	addi	a7, zero, 8
	lw	t0, 124(sp)
	j	.LBB17_36
.LBB17_87:                              #   in Loop: Header=BB17_37 Depth=2
	lw	s9, 136(sp)
	lw	s4, 156(sp)
	lw	s1, 132(sp)
	j	.LBB17_36
.LBB17_88:                              # %if.then796
                                        #   in Loop: Header=BB17_37 Depth=2
	mv	s1, t1
	addi	a1, zero, 24
	lw	a0, 140(sp)
	call	__mulsi3
	lw	a1, 136(sp)
	add	a0, a1, a0
	sw	a0, 36(sp)
	sw	zero, 8(a0)
	sw	s8, 0(a0)
	sw	s5, 4(a0)
	add	a0, s10, s4
	sw	a0, 20(sp)
	lbu	a0, 0(a0)
	add	a1, s10, s9
	sw	a1, 28(sp)
	lbu	a1, 0(a1)
	add	a3, s10, s1
	sw	a3, 32(sp)
	lw	a2, 120(sp)
	add	a4, s10, a2
	sw	a4, 24(sp)
	lw	a2, 116(sp)
	add	a5, s10, a2
	sw	a5, 12(sp)
	lbu	a2, 0(a3)
	lbu	a3, 0(a4)
	lbu	a4, 0(a5)
	add	a0, a1, a0
	add	a0, a0, a2
	add	a0, a0, a3
	add	a0, a0, a4
	lw	a1, 108(sp)
	add	a1, s10, a1
	sw	a1, 16(sp)
	lbu	a1, 0(a1)
	lw	a2, 104(sp)
	add	a4, s10, a2
	sw	a4, 116(sp)
	lw	a2, 112(sp)
	add	a3, s10, a2
	sw	a3, 120(sp)
	lw	a2, 100(sp)
	add	a5, s10, a2
	sw	a5, 108(sp)
	lbu	a2, 0(a4)
	lbu	a3, 0(a3)
	lbu	a4, 0(a5)
	add	a0, a0, a1
	add	a0, a0, a2
	add	a0, a0, a3
	add	a0, a0, a4
	lw	a1, 96(sp)
	add	a1, s10, a1
	sw	a1, 4(sp)
	lbu	a1, 0(a1)
	lw	a2, 92(sp)
	add	a3, s10, a2
	sw	a3, 8(sp)
	lw	a2, 88(sp)
	add	a4, s10, a2
	sw	a4, 104(sp)
	add	a2, s10, s3
	lbu	a3, 0(a3)
	lbu	a4, 0(a4)
	lbu	a2, 0(a2)
	add	a0, a0, a1
	add	a0, a0, a3
	add	a0, a0, a4
	add	a0, a0, a2
	lw	a1, 84(sp)
	add	a1, s10, a1
	sw	a1, 100(sp)
	lbu	a1, 0(a1)
	lw	a2, 80(sp)
	add	a2, s10, a2
	sw	a2, 0(sp)
	lbu	a2, 0(a2)
	lw	a3, 72(sp)
	add	a5, s10, a3
	sw	a5, 72(sp)
	lw	a3, 68(sp)
	add	a4, s10, a3
	sw	a4, 96(sp)
	lbu	a3, 0(a5)
	lbu	a4, 0(a4)
	add	a0, a0, a1
	add	a0, a0, a2
	add	a0, a0, a3
	add	a0, a0, a4
	lw	a1, 76(sp)
	add	a1, s10, a1
	sw	a1, 112(sp)
	lbu	a1, 0(a1)
	lw	a2, 64(sp)
	add	a2, s10, a2
	sw	a2, 88(sp)
	lbu	a2, 0(a2)
	lw	a3, 60(sp)
	add	s9, s10, a3
	lw	a3, 52(sp)
	add	s4, s10, a3
	lbu	a3, 0(s9)
	lbu	a4, 0(s4)
	add	a0, a0, a1
	add	a0, a0, a2
	add	a0, a0, a3
	add	a0, a0, a4
	lw	a1, 48(sp)
	add	a1, s10, a1
	sw	a1, 84(sp)
	lbu	a1, 0(a1)
	lw	a2, 56(sp)
	add	a2, s10, a2
	sw	a2, 92(sp)
	lbu	a2, 0(a2)
	lw	a3, 44(sp)
	add	s1, s10, a3
	lw	a3, 40(sp)
	add	s3, s10, a3
	lbu	a3, 0(s1)
	lbu	a4, 0(s3)
	add	a0, a0, a1
	add	a0, a0, a2
	add	a0, a0, a3
	add	a0, a0, a4
	addi	a1, zero, 25
	call	__divsi3
	lw	a1, 36(sp)
	sw	a0, 20(a1)
	lw	a0, 12(sp)
	lbu	t2, 0(a0)
	lw	a0, 4(sp)
	lbu	a2, 0(a0)
	sw	a2, 80(sp)
	lw	a0, 0(sp)
	lbu	a0, 0(a0)
	lbu	a7, 0(s9)
	lbu	t3, 0(s3)
	lw	a1, 20(sp)
	lbu	t4, 0(a1)
	lw	a1, 16(sp)
	lbu	t0, 0(a1)
	lw	a1, 8(sp)
	lbu	a3, 0(a1)
	lw	a1, 72(sp)
	lbu	t1, 0(a1)
	lbu	s3, 0(s4)
	add	a1, a2, t2
	add	a0, a1, a0
	add	a0, a0, a7
	add	a0, a0, t3
	sub	a0, a0, t4
	sub	a0, a0, t0
	sub	a0, a0, a3
	sub	a0, a0, t1
	sub	a0, a0, s3
	lw	a1, 24(sp)
	lbu	a6, 0(a1)
	lw	a1, 108(sp)
	lbu	t5, 0(a1)
	lw	a1, 100(sp)
	lbu	a4, 0(a1)
	lw	a1, 88(sp)
	lbu	t6, 0(a1)
	lbu	s1, 0(s1)
	lw	a1, 28(sp)
	lbu	a3, 0(a1)
	lw	a1, 116(sp)
	lbu	s4, 0(a1)
	lw	a1, 104(sp)
	lbu	a2, 0(a1)
	lw	a1, 96(sp)
	lbu	s9, 0(a1)
	lw	a1, 84(sp)
	lbu	a5, 0(a1)
	slli	ra, a0, 1
	add	a0, t5, a6
	add	a0, a0, a4
	add	a0, a0, t6
	add	a0, a0, s1
	sub	a0, a0, a3
	sub	a0, a0, s4
	sub	a0, a0, a2
	sub	a0, a0, s9
	sub	a0, a0, a5
	add	a0, a0, ra
	lw	a1, 92(sp)
	lbu	a2, 0(a1)
	lw	a1, 32(sp)
	lbu	a4, 0(a1)
	sub	a1, t3, t2
	sub	a1, a1, t4
	add	a1, a1, s3
	sub	a1, a1, a6
	add	a1, a1, s1
	sub	a1, a1, a3
	add	a1, a1, a5
	add	a1, a1, a2
	sub	a1, a1, a4
	lw	a2, 112(sp)
	lbu	a2, 0(a2)
	lw	a3, 120(sp)
	lbu	a3, 0(a3)
	slli	a1, a1, 1
	lw	a4, 80(sp)
	sub	a4, a7, a4
	sub	a4, a4, t0
	add	a4, a4, t1
	sub	a4, a4, t5
	add	a4, a4, t6
	sub	a4, a4, s4
	add	a4, a4, s9
	lw	s9, 136(sp)
	add	a2, a4, a2
	sub	a2, a2, a3
	add	s3, a2, a1
	addi	a1, zero, 15
	call	__divsi3
	lw	s1, 36(sp)
	sw	a0, 12(s1)
	addi	a1, zero, 15
	mv	a0, s3
	call	__divsi3
	lw	a1, 140(sp)
	addi	a1, a1, 1
	sw	a0, 16(s1)
	lw	s4, 156(sp)
	lw	s1, 132(sp)
	lw	a6, 160(sp)
	lw	a5, 168(sp)
	addi	a7, zero, 8
	sw	a1, 140(sp)
	lw	a0, 128(sp)
	lw	t0, 124(sp)
	bne	a1, a0, .LBB17_36
# %bb.89:                               # %if.then1317
	lui	a0, %hi(.Lstr16)
	addi	a0, a0, %lo(.Lstr16)
	call	puts
	addi	a0, zero, 1
	call	exit
.LBB17_90:
	sw	zero, 140(sp)
	lw	s9, 136(sp)
.LBB17_91:                              # %for.end1327
	addi	a1, zero, 24
	lw	a0, 140(sp)
	call	__mulsi3
	add	a0, s9, a0
	addi	a1, zero, 7
	sw	a1, 8(a0)
	lw	s11, 172(sp)
	lw	s10, 176(sp)
	lw	s9, 180(sp)
	lw	s8, 184(sp)
	lw	s7, 188(sp)
	lw	s6, 192(sp)
	lw	s5, 196(sp)
	lw	s4, 200(sp)
	lw	s3, 204(sp)
	lw	s2, 208(sp)
	lw	s1, 212(sp)
	lw	s0, 216(sp)
	lw	ra, 220(sp)
	addi	sp, sp, 224
	ret
.Lfunc_end17:
	.size	susan_corners_quick, .Lfunc_end17-susan_corners_quick
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -2032
	.cfi_def_cfa_offset 2032
	sw	ra, 2028(sp)
	sw	s0, 2024(sp)
	sw	s1, 2020(sp)
	sw	s2, 2016(sp)
	sw	s3, 2012(sp)
	sw	s4, 2008(sp)
	sw	s5, 2004(sp)
	sw	s6, 2000(sp)
	sw	s7, 1996(sp)
	sw	s8, 1992(sp)
	sw	s9, 1988(sp)
	sw	s10, 1984(sp)
	sw	s11, 1980(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	lui	a2, 87
	addi	a2, a2, 1728
	sub	sp, sp, a2
	.cfi_def_cfa_offset 360112
	addi	a2, zero, 2
	bge	a2, a0, .LBB18_56
# %bb.1:                                # %if.end
	mv	s11, a1
	mv	s1, a0
	lw	a0, 4(a1)
	lui	a1, 88
	addi	a1, a1, -392
	add	a1, sp, a1
	mv	a1, a1
	lui	a2, 88
	addi	a2, a2, -404
	add	a2, sp, a2
	mv	a2, a2
	lui	a3, 88
	addi	a3, a3, -408
	add	a3, sp, a3
	mv	a3, a3
	call	get_image
	addi	a0, zero, 4
	addi	s9, zero, 1
	mv	s10, zero
	blt	s1, a0, .LBB18_30
# %bb.2:                                # %while.body.preheader
	sw	zero, 16(sp)
	sw	zero, 24(sp)
	mv	s4, zero
	mv	s7, zero
	addi	s0, zero, 3
	addi	a0, zero, 20
	sw	a0, 28(sp)
	addi	a0, zero, 1
	sw	a0, 20(sp)
	lui	s5, 264192
	addi	s2, zero, 45
	addi	s6, zero, 109
	addi	s8, zero, 98
	addi	s3, zero, 112
	j	.LBB18_5
.LBB18_3:                               # %sw.bb12
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	s4, zero, 1
.LBB18_4:                               # %if.end39
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	s0, s0, 1
	bge	s0, s1, .LBB18_31
.LBB18_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	slli	a0, s0, 2
	add	a0, s11, a0
	lw	a0, 0(a0)
	lbu	a1, 0(a0)
	bne	a1, s2, .LBB18_56
# %bb.6:                                # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	lb	a0, 1(a0)
	blt	s6, a0, .LBB18_12
# %bb.7:                                # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	bge	s8, a0, .LBB18_17
# %bb.8:                                # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	a1, zero, 99
	beq	a0, a1, .LBB18_24
# %bb.9:                                # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	a1, zero, 100
	beq	a0, a1, .LBB18_26
# %bb.10:                               # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	a1, zero, 101
	bne	a0, a1, .LBB18_4
# %bb.11:                               # %sw.bb7
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	s10, zero, 1
	j	.LBB18_4
.LBB18_12:                              # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	bge	s3, a0, .LBB18_20
# %bb.13:                               # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	a1, zero, 113
	beq	a0, a1, .LBB18_25
# %bb.14:                               # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	a1, zero, 116
	beq	a0, a1, .LBB18_28
# %bb.15:                               # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	a1, zero, 115
	bne	a0, a1, .LBB18_4
# %bb.16:                               # %sw.bb
                                        #   in Loop: Header=BB18_5 Depth=1
	mv	s10, zero
	j	.LBB18_4
.LBB18_17:                              # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	a1, zero, 51
	beq	a0, a1, .LBB18_3
# %bb.18:                               # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	bne	a0, s8, .LBB18_4
# %bb.19:                               # %sw.bb11
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	a0, zero, 1
	sw	a0, 24(sp)
	j	.LBB18_4
.LBB18_20:                              # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	a1, zero, 110
	beq	a0, a1, .LBB18_23
# %bb.21:                               # %if.then5
                                        #   in Loop: Header=BB18_5 Depth=1
	bne	a0, s3, .LBB18_4
# %bb.22:                               # %sw.bb9
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	s7, zero, 1
	j	.LBB18_4
.LBB18_23:                              # %sw.bb10
                                        #   in Loop: Header=BB18_5 Depth=1
	sw	zero, 20(sp)
	j	.LBB18_4
.LBB18_24:                              # %sw.bb8
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	s10, zero, 2
	j	.LBB18_4
.LBB18_25:                              # %sw.bb13
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	a0, zero, 1
	sw	a0, 16(sp)
	j	.LBB18_4
.LBB18_26:                              # %sw.bb14
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	s0, s0, 1
	bge	s0, s1, .LBB18_57
# %bb.27:                               # %if.end19
                                        #   in Loop: Header=BB18_5 Depth=1
	slli	a0, s0, 2
	add	a0, s11, a0
	lw	a0, 0(a0)
	call	atof
	call	__truncdfsf2
	mv	s5, a0
	mv	a1, zero
	call	__ltsf2
	addi	a1, zero, -1
	bge	a1, a0, .LBB18_3
	j	.LBB18_4
.LBB18_28:                              # %sw.bb28
                                        #   in Loop: Header=BB18_5 Depth=1
	addi	s0, s0, 1
	bge	s0, s1, .LBB18_58
# %bb.29:                               # %if.end34
                                        #   in Loop: Header=BB18_5 Depth=1
	slli	a0, s0, 2
	add	a0, s11, a0
	lw	a0, 0(a0)
	call	atoi
	sw	a0, 28(sp)
	j	.LBB18_4
.LBB18_30:
	sw	zero, 16(sp)
	sw	zero, 24(sp)
	mv	s4, zero
	mv	s7, zero
	addi	a0, zero, 20
	sw	a0, 28(sp)
	lui	s5, 264192
	addi	a0, zero, 1
	sw	a0, 20(sp)
.LBB18_31:                              # %while.end
	xori	a0, s7, 1
	or	a0, a0, s10
	beqz	a0, .LBB18_33
# %bb.32:                               # %while.end
	mv	s9, s10
.LBB18_33:                              # %while.end
	addi	a0, zero, 2
	beq	s9, a0, .LBB18_40
# %bb.34:                               # %while.end
	addi	a0, zero, 1
	beq	s9, a0, .LBB18_37
# %bb.35:                               # %while.end
	bnez	s9, .LBB18_55
# %bb.36:                               # %sw.bb47
	lui	a0, 88
	addi	a0, a0, -400
	add	a0, sp, a0
	mv	a0, a0
	addi	a2, zero, 2
	lw	a1, 28(sp)
	call	setup_brightness_lut
	lui	a0, 88
	addi	a0, a0, -392
	add	a0, sp, a0
	lw	a1, 0(a0)
	lui	a0, 88
	addi	a0, a0, -404
	add	a0, sp, a0
	lw	a3, 0(a0)
	lui	a0, 88
	addi	a0, a0, -408
	add	a0, sp, a0
	lw	a4, 0(a0)
	lui	a0, 88
	addi	a0, a0, -400
	add	a0, sp, a0
	lw	a5, 0(a0)
	mv	a0, s4
	mv	a2, s5
	call	susan_smoothing
	j	.LBB18_55
.LBB18_37:                              # %sw.bb48
	lui	a0, 88
	addi	a0, a0, -404
	add	a0, sp, a0
	lw	a1, 0(a0)
	lui	a0, 88
	addi	a0, a0, -408
	add	a0, sp, a0
	lw	a0, 0(a0)
	call	__mulsi3
	srai	a1, a0, 31
	srli	a2, a0, 30
	slli	a1, a1, 2
	or	a1, a1, a2
	slli	a0, a0, 2
	call	malloc
	mv	s5, a0
	lui	a0, 88
	addi	a0, a0, -400
	add	a0, sp, a0
	mv	a0, a0
	addi	a2, zero, 6
	lw	a1, 28(sp)
	call	setup_brightness_lut
	lui	a0, 88
	beqz	s7, .LBB18_42
# %bb.38:                               # %if.then52
	addi	a0, a0, -392
	add	a0, sp, a0
	lw	a0, 0(a0)
	lui	a1, 88
	addi	a1, a1, -400
	add	a1, sp, a1
	lw	a2, 0(a1)
	lui	a1, 88
	addi	a1, a1, -404
	add	a1, sp, a1
	lw	a4, 0(a1)
	lui	a1, 88
	addi	a1, a1, -408
	add	a1, sp, a1
	lw	a5, 0(a1)
	lui	a1, 1
	addi	a3, a1, -1446
	mv	a1, s5
	beqz	s4, .LBB18_46
# %bb.39:                               # %if.then54
	call	susan_principle_small
	j	.LBB18_47
.LBB18_40:                              # %sw.bb79
	lui	a0, 88
	addi	a0, a0, -404
	add	a0, sp, a0
	lw	a1, 0(a0)
	lui	a0, 88
	addi	a0, a0, -408
	add	a0, sp, a0
	lw	a0, 0(a0)
	call	__mulsi3
	srai	a1, a0, 31
	srli	a2, a0, 30
	slli	a1, a1, 2
	or	a1, a1, a2
	slli	a0, a0, 2
	call	malloc
	mv	s4, a0
	lui	a0, 88
	addi	a0, a0, -400
	add	a0, sp, a0
	mv	a0, a0
	addi	a2, zero, 6
	lw	a1, 28(sp)
	call	setup_brightness_lut
	lui	a0, 88
	addi	a0, a0, -392
	add	a0, sp, a0
	beqz	s7, .LBB18_44
# %bb.41:                               # %if.then85
	lw	a0, 0(a0)
	lui	a1, 88
	addi	a1, a1, -400
	add	a1, sp, a1
	lw	a2, 0(a1)
	lui	a1, 88
	addi	a1, a1, -404
	add	a1, sp, a1
	lw	a4, 0(a1)
	lui	a1, 88
	addi	a1, a1, -408
	add	a1, sp, a1
	lw	a5, 0(a1)
	addi	a3, zero, 1850
	mv	a1, s4
	call	susan_principle
	lui	a0, 88
	addi	a0, a0, -392
	add	a0, sp, a0
	lw	s1, 0(a0)
	lui	a0, 88
	addi	a0, a0, -404
	add	a0, sp, a0
	lw	a1, 0(a0)
	lui	a0, 88
	addi	a0, a0, -408
	add	a0, sp, a0
	lw	a0, 0(a0)
	call	__mulsi3
	mv	a2, a0
	mv	a0, s4
	j	.LBB18_48
.LBB18_42:                              # %if.else61
	addi	a0, a0, -404
	add	a0, sp, a0
	lw	a1, 0(a0)
	lui	a0, 88
	addi	a0, a0, -408
	add	a0, sp, a0
	lw	a0, 0(a0)
	call	__mulsi3
	srai	a1, a0, 31
	call	malloc
	lui	a1, 88
	addi	a1, a1, -404
	add	a1, sp, a1
	lw	a1, 0(a1)
	lui	a2, 88
	addi	a2, a2, -408
	add	a2, sp, a2
	lw	a2, 0(a2)
	mv	s1, a0
	mv	a0, a2
	call	__mulsi3
	mv	a2, a0
	addi	a1, zero, 100
	mv	a0, s1
	call	memset
	lui	a0, 88
	addi	a0, a0, -392
	add	a0, sp, a0
	lw	a0, 0(a0)
	lui	a1, 88
	addi	a1, a1, -400
	add	a1, sp, a1
	lw	a3, 0(a1)
	lui	a1, 88
	addi	a1, a1, -404
	add	a1, sp, a1
	lw	a5, 0(a1)
	lui	a1, 88
	addi	a1, a1, -408
	add	a1, sp, a1
	lw	a6, 0(a1)
	lui	a1, 1
	addi	a4, a1, -1446
	mv	a1, s5
	mv	a2, s1
	beqz	s4, .LBB18_49
# %bb.43:                               # %if.then68
	call	susan_edges_small
	j	.LBB18_50
.LBB18_44:                              # %if.else89
	lw	a0, 0(a0)
	lui	a1, 88
	addi	a1, a1, -400
	add	a1, sp, a1
	lw	a2, 0(a1)
	lui	a1, 88
	addi	a1, a1, -404
	add	a1, sp, a1
	lw	a5, 0(a1)
	lui	a1, 88
	addi	a1, a1, -408
	add	a1, sp, a1
	lw	a6, 0(a1)
	lw	a1, 16(sp)
	beqz	a1, .LBB18_53
# %bb.45:                               # %if.then91
	addi	a4, sp, 32
	addi	a3, zero, 1850
	mv	a1, s4
	call	susan_corners_quick
	j	.LBB18_54
.LBB18_46:                              # %if.else56
	call	susan_principle
.LBB18_47:                              # %if.end58
	lui	a0, 88
	addi	a0, a0, -392
	add	a0, sp, a0
	lw	s1, 0(a0)
	lui	a0, 88
	addi	a0, a0, -404
	add	a0, sp, a0
	lw	a1, 0(a0)
	lui	a0, 88
	addi	a0, a0, -408
	add	a0, sp, a0
	lw	a0, 0(a0)
	call	__mulsi3
	mv	a2, a0
	mv	a0, s5
.LBB18_48:                              # %sw.epilog100
	mv	a1, s1
	call	int_to_uchar
	j	.LBB18_55
.LBB18_49:                              # %if.else70
	call	susan_edges
.LBB18_50:                              # %if.end72
	lw	s0, 24(sp)
	lw	a0, 20(sp)
	beqz	a0, .LBB18_52
# %bb.51:                               # %if.then74
	lui	a0, 88
	addi	a0, a0, -404
	add	a0, sp, a0
	lw	a2, 0(a0)
	lui	a0, 88
	addi	a0, a0, -408
	add	a0, sp, a0
	lw	a3, 0(a0)
	mv	a0, s5
	mv	a1, s1
	call	susan_thin
.LBB18_52:                              # %if.end76
	lui	a0, 88
	addi	a0, a0, -392
	add	a0, sp, a0
	lw	a0, 0(a0)
	lui	a1, 88
	addi	a1, a1, -404
	add	a1, sp, a1
	lw	a2, 0(a1)
	lui	a1, 88
	addi	a1, a1, -408
	add	a1, sp, a1
	lw	a3, 0(a1)
	mv	a1, s1
	mv	a4, s0
	call	edge_draw
	j	.LBB18_55
.LBB18_53:                              # %if.else93
	addi	a4, sp, 32
	addi	a3, zero, 1850
	mv	a1, s4
	call	susan_corners
.LBB18_54:                              # %if.end96
	lw	a3, 24(sp)
	lui	a0, 88
	addi	a0, a0, -392
	add	a0, sp, a0
	lw	a0, 0(a0)
	lui	a1, 88
	addi	a1, a1, -404
	add	a1, sp, a1
	lw	a2, 0(a1)
	addi	a1, sp, 32
	call	corner_draw
.LBB18_55:                              # %sw.epilog100
	lw	a0, 8(s11)
	lui	a1, 88
	addi	a1, a1, -392
	add	a1, sp, a1
	lw	a1, 0(a1)
	lui	a2, 88
	addi	a2, a2, -404
	add	a2, sp, a2
	lw	a2, 0(a2)
	lui	a3, 88
	addi	a3, a3, -408
	add	a3, sp, a3
	lw	a3, 0(a3)
	call	put_image
	mv	a0, zero
	lui	a1, 87
	addi	a1, a1, 1728
	add	sp, sp, a1
	lw	s11, 1980(sp)
	lw	s10, 1984(sp)
	lw	s9, 1988(sp)
	lw	s8, 1992(sp)
	lw	s7, 1996(sp)
	lw	s6, 2000(sp)
	lw	s5, 2004(sp)
	lw	s4, 2008(sp)
	lw	s3, 2012(sp)
	lw	s2, 2016(sp)
	lw	s1, 2020(sp)
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.LBB18_56:                              # %if.then
	call	usage
.LBB18_57:                              # %if.then17
	lui	a0, %hi(.Lstr17)
	addi	a0, a0, %lo(.Lstr17)
	j	.LBB18_59
.LBB18_58:                              # %if.then32
	lui	a0, %hi(.Lstr18)
	addi	a0, a0, %lo(.Lstr18)
.LBB18_59:                              # %if.then17
	call	puts
	mv	a0, zero
	call	exit
.Lfunc_end18:
	.size	main, .Lfunc_end18-main
	.cfi_endproc
                                        # -- End function
	.globl	accept_roi_begin        # -- Begin function accept_roi_begin
	.p2align	2
	.type	accept_roi_begin,@function
accept_roi_begin:                       # @accept_roi_begin
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	mv	a0, sp
	mv	a1, zero
	call	gettimeofday
	lw	a0, 0(sp)
	lw	a1, 4(sp)
	call	__floatdidf
	lw	a2, 8(sp)
	lw	a3, 12(sp)
	mv	s0, a0
	mv	s1, a1
	mv	a0, a2
	mv	a1, a3
	call	__floatdidf
	lui	a2, 658271
	addi	a2, a2, -627
	lui	a3, 256780
	addi	a3, a3, 1783
	call	__muldf3
	mv	a2, a0
	mv	a3, a1
	mv	a0, s0
	mv	a1, s1
	call	__adddf3
	lui	a2, %hi(time_begin)
	addi	a3, a2, %lo(time_begin)
	sw	a1, 4(a3)
	sw	a0, %lo(time_begin)(a2)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end19:
	.size	accept_roi_begin, .Lfunc_end19-accept_roi_begin
	.cfi_endproc
                                        # -- End function
	.globl	accept_roi_end          # -- Begin function accept_roi_end
	.p2align	2
	.type	accept_roi_end,@function
accept_roi_end:                         # @accept_roi_end
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	mv	a0, sp
	mv	a1, zero
	call	gettimeofday
	lw	a0, 0(sp)
	lw	a1, 4(sp)
	call	__floatdidf
	lw	a2, 8(sp)
	lw	a3, 12(sp)
	mv	s0, a0
	mv	s1, a1
	mv	a0, a2
	mv	a1, a3
	call	__floatdidf
	lui	a2, 658271
	addi	a2, a2, -627
	lui	a3, 256780
	addi	a3, a3, 1783
	call	__muldf3
	mv	a2, a0
	mv	a3, a1
	mv	a0, s0
	mv	a1, s1
	call	__adddf3
	lui	a3, %hi(time_begin)
	lw	a2, %lo(time_begin)(a3)
	addi	a3, a3, %lo(time_begin)
	lw	a3, 4(a3)
	call	__subdf3
	mv	s2, a0
	mv	s1, a1
	lui	a0, %hi(.L.str31)
	addi	a0, a0, %lo(.L.str31)
	lui	a1, %hi(.L.str132)
	addi	a1, a1, %lo(.L.str132)
	call	fopen
	mv	s0, a0
	lui	a0, %hi(.L.str233)
	addi	a1, a0, %lo(.L.str233)
	mv	a0, s0
	mv	a2, s2
	mv	a3, s1
	call	fprintf
	mv	a0, s0
	call	fclose
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end20:
	.size	accept_roi_end, .Lfunc_end20-accept_roi_end
	.cfi_endproc
                                        # -- End function
	.globl	fastpow2                # -- Begin function fastpow2
	.p2align	2
	.type	fastpow2,@function
fastpow2:                               # @fastpow2
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	sw	s2, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	mv	s1, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	lui	a1, 260096
	and	s2, a0, a1
	lui	a1, 798656
	lui	s0, 798656
	mv	a0, s1
	call	__ltsf2
	bltz	a0, .LBB21_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB21_2:                               # %entry
	mv	a0, s0
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	s1, a0
	lui	a0, 274217
	addi	a1, a0, -943
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 264623
	addi	a0, a0, 1528
	mv	a1, s1
	call	__subsf3
	mv	a1, a0
	lui	a0, 269789
	addi	a0, a0, 766
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 785388
	addi	a1, a0, -883
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lw	s2, 0(sp)
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end21:
	.size	fastpow2, .Lfunc_end21-fastpow2
	.cfi_endproc
                                        # -- End function
	.globl	fastexp                 # -- Begin function fastexp
	.p2align	2
	.type	fastexp,@function
fastexp:                                # @fastexp
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	sw	s2, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	lui	a1, 261003
	addi	a1, a1, -1477
	call	__mulsf3
	mv	s1, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	lui	a1, 260096
	and	s2, a0, a1
	lui	a1, 798656
	lui	s0, 798656
	mv	a0, s1
	call	__ltsf2
	bltz	a0, .LBB22_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB22_2:                               # %entry
	mv	a0, s0
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	s1, a0
	lui	a0, 274217
	addi	a1, a0, -943
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 264623
	addi	a0, a0, 1528
	mv	a1, s1
	call	__subsf3
	mv	a1, a0
	lui	a0, 269789
	addi	a0, a0, 766
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 785388
	addi	a1, a0, -883
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lw	s2, 0(sp)
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end22:
	.size	fastexp, .Lfunc_end22-fastexp
	.cfi_endproc
                                        # -- End function
	.globl	fasterpow2              # -- Begin function fasterpow2
	.p2align	2
	.type	fasterpow2,@function
fasterpow2:                             # @fasterpow2
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	mv	s1, a0
	lui	a1, 798656
	lui	s0, 798656
	call	__ltsf2
	bltz	a0, .LBB23_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB23_2:                               # %entry
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end23:
	.size	fasterpow2, .Lfunc_end23-fasterpow2
	.cfi_endproc
                                        # -- End function
	.globl	fasterexp               # -- Begin function fasterexp
	.p2align	2
	.type	fasterexp,@function
fasterexp:                              # @fasterexp
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	lui	a1, 261003
	addi	a1, a1, -1477
	call	__mulsf3
	mv	s1, a0
	lui	a1, 798656
	lui	s0, 798656
	call	__ltsf2
	bltz	a0, .LBB24_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB24_2:                               # %entry
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end24:
	.size	fasterexp, .Lfunc_end24-fasterexp
	.cfi_endproc
                                        # -- End function
	.globl	fastlog2                # -- Begin function fastlog2
	.p2align	2
	.type	fastlog2,@function
fastlog2:                               # @fastlog2
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	lui	a1, 2048
	addi	a1, a1, -1
	and	a1, a0, a1
	lui	a2, 258048
	or	s0, a1, a2
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798599
	addi	a1, a1, 887
	call	__addsf3
	mv	s1, a0
	lui	a0, 785404
	addi	a1, a0, -139
	mv	a0, s0
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	lui	a0, 256836
	addi	a1, a0, 1273
	mv	a0, s0
	call	__addsf3
	mv	a1, a0
	lui	a0, 785871
	addi	a0, a0, -1629
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end25:
	.size	fastlog2, .Lfunc_end25-fastlog2
	.cfi_endproc
                                        # -- End function
	.globl	fastlog                 # -- Begin function fastlog
	.p2align	2
	.type	fastlog,@function
fastlog:                                # @fastlog
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	lui	a1, 2048
	addi	a1, a1, -1
	and	a1, a0, a1
	lui	a2, 258048
	or	s0, a1, a2
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798599
	addi	a1, a1, 887
	call	__addsf3
	mv	s1, a0
	lui	a0, 785404
	addi	a1, a0, -139
	mv	a0, s0
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	lui	a0, 256836
	addi	a1, a0, 1273
	mv	a0, s0
	call	__addsf3
	mv	a1, a0
	lui	a0, 785871
	addi	a0, a0, -1629
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 258839
	addi	a1, a1, 536
	call	__mulsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end26:
	.size	fastlog, .Lfunc_end26-fastlog
	.cfi_endproc
                                        # -- End function
	.globl	fasterlog2              # -- Begin function fasterlog2
	.p2align	2
	.type	fasterlog2,@function
fasterlog2:                             # @fasterlog2
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798686
	addi	a1, a1, 681
	call	__addsf3
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end27:
	.size	fasterlog2, .Lfunc_end27-fasterlog2
	.cfi_endproc
                                        # -- End function
	.globl	fasterlog               # -- Begin function fasterlog
	.p2align	2
	.type	fasterlog,@function
fasterlog:                              # @fasterlog
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	call	__floatunsisf
	lui	a1, 211735
	addi	a1, a1, 536
	call	__mulsf3
	lui	a1, 797440
	addi	a1, a1, -1315
	call	__addsf3
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end28:
	.size	fasterlog, .Lfunc_end28-fasterlog
	.cfi_endproc
                                        # -- End function
	.globl	fasterfc                # -- Begin function fasterfc
	.p2align	2
	.type	fasterfc,@function
fasterfc:                               # @fasterfc
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	sw	s5, 4(sp)
	sw	s6, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	mv	s5, a0
	lui	a0, 265016
	addi	a1, a0, 988
	mv	a0, s5
	call	__mulsf3
	mv	s0, a0
	mv	a0, s5
	mv	a1, s5
	call	__mulsf3
	mv	a1, a0
	call	__mulsf3
	mv	s3, a0
	lui	a0, 524288
	or	s2, s0, a0
	lui	a0, 263527
	addi	a1, a0, 1583
	mv	a0, s5
	call	__mulsf3
	mv	s0, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	lui	a1, 260096
	and	s6, a0, a1
	lui	a1, 798656
	lui	s4, 798656
	mv	a0, s0
	call	__ltsf2
	lui	s1, 798656
	bltz	a0, .LBB29_2
# %bb.1:                                # %entry
	mv	s1, s0
.LBB29_2:                               # %entry
	mv	a0, s1
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	mv	a1, a0
	mv	a0, s6
	call	__addsf3
	mv	s0, a0
	lui	a0, 274217
	addi	a1, a0, -943
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	lui	a0, 264623
	addi	a0, a0, 1528
	mv	a1, s0
	call	__subsf3
	mv	a1, a0
	lui	a0, 269789
	addi	a0, a0, 766
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	lui	a0, 785388
	addi	a1, a0, -883
	mv	a0, s0
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lui	a1, 260096
	call	__addsf3
	mv	a1, a0
	lui	a0, 262144
	call	__divsf3
	mv	s0, a0
	lui	a0, 776510
	addi	a1, a0, -1885
	mv	a0, s5
	call	__mulsf3
	mv	s1, a0
	lui	a0, 268139
	addi	a1, a0, 234
	mv	a0, s3
	call	__mulsf3
	lui	a1, 784384
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	s1, a0
	lui	a1, 798656
	mv	a0, s2
	call	__ltsf2
	bltz	a0, .LBB29_4
# %bb.3:                                # %entry
	mv	s4, s2
.LBB29_4:                               # %entry
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s4
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lw	s6, 0(sp)
	lw	s5, 4(sp)
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end29:
	.size	fasterfc, .Lfunc_end29-fasterfc
	.cfi_endproc
                                        # -- End function
	.globl	fastererfc              # -- Begin function fastererfc
	.p2align	2
	.type	fastererfc,@function
fastererfc:                             # @fastererfc
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	lui	a1, 263527
	addi	a1, a1, 1583
	call	__mulsf3
	mv	s1, a0
	lui	a1, 798656
	lui	s0, 798656
	call	__ltsf2
	bltz	a0, .LBB30_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB30_2:                               # %entry
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lui	a1, 260096
	call	__addsf3
	mv	a1, a0
	lui	a0, 262144
	call	__divsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end30:
	.size	fastererfc, .Lfunc_end30-fastererfc
	.cfi_endproc
                                        # -- End function
	.globl	fasterf                 # -- Begin function fasterf
	.p2align	2
	.type	fasterf,@function
fasterf:                                # @fasterf
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	sw	s5, 4(sp)
	sw	s6, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	mv	s5, a0
	lui	a0, 265016
	addi	a1, a0, 988
	mv	a0, s5
	call	__mulsf3
	mv	s0, a0
	mv	a0, s5
	mv	a1, s5
	call	__mulsf3
	mv	a1, a0
	call	__mulsf3
	mv	s3, a0
	lui	a0, 524288
	or	s2, s0, a0
	lui	a0, 263527
	addi	a1, a0, 1583
	mv	a0, s5
	call	__mulsf3
	mv	s0, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	lui	a1, 260096
	and	s6, a0, a1
	lui	a1, 798656
	lui	s4, 798656
	mv	a0, s0
	call	__ltsf2
	lui	s1, 798656
	bltz	a0, .LBB31_2
# %bb.1:                                # %entry
	mv	s1, s0
.LBB31_2:                               # %entry
	mv	a0, s1
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	mv	a1, a0
	mv	a0, s6
	call	__addsf3
	mv	s0, a0
	lui	a0, 274217
	addi	a1, a0, -943
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	lui	a0, 264623
	addi	a0, a0, 1528
	mv	a1, s0
	call	__subsf3
	mv	a1, a0
	lui	a0, 269789
	addi	a0, a0, 766
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	lui	a0, 785388
	addi	a1, a0, -883
	mv	a0, s0
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lui	a1, 260096
	call	__addsf3
	mv	a1, a0
	lui	a0, 262144
	call	__divsf3
	mv	s0, a0
	lui	a0, 776510
	addi	a1, a0, -1885
	mv	a0, s5
	call	__mulsf3
	mv	s1, a0
	lui	a0, 268139
	addi	a1, a0, 234
	mv	a0, s3
	call	__mulsf3
	lui	a1, 784384
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	s1, a0
	lui	a1, 798656
	mv	a0, s2
	call	__ltsf2
	bltz	a0, .LBB31_4
# %bb.3:                                # %entry
	mv	s4, s2
.LBB31_4:                               # %entry
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s4
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	a1, a0
	lui	a0, 260096
	call	__subsf3
	lw	s6, 0(sp)
	lw	s5, 4(sp)
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end31:
	.size	fasterf, .Lfunc_end31-fasterf
	.cfi_endproc
                                        # -- End function
	.globl	fastererf               # -- Begin function fastererf
	.p2align	2
	.type	fastererf,@function
fastererf:                              # @fastererf
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	lui	a1, 263527
	addi	a1, a1, 1583
	call	__mulsf3
	mv	s1, a0
	lui	a1, 798656
	lui	s0, 798656
	call	__ltsf2
	bltz	a0, .LBB32_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB32_2:                               # %entry
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lui	a1, 260096
	call	__addsf3
	mv	a1, a0
	lui	a0, 786432
	call	__divsf3
	lui	a1, 260096
	call	__addsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end32:
	.size	fastererf, .Lfunc_end32-fastererf
	.cfi_endproc
                                        # -- End function
	.globl	fastinverseerf          # -- Begin function fastinverseerf
	.p2align	2
	.type	fastinverseerf,@function
fastinverseerf:                         # @fastinverseerf
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	mv	s3, a0
	mv	a1, a0
	call	__mulsf3
	mv	s2, a0
	lui	a1, 260096
	mv	a0, s3
	call	__addsf3
	mv	s0, a0
	lui	a0, 260096
	mv	a1, s3
	call	__subsf3
	mv	a1, a0
	mv	a0, s0
	call	__divsf3
	lui	a1, 2048
	addi	a1, a1, -1
	and	a1, a0, a1
	lui	a2, 258048
	or	s0, a1, a2
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798599
	addi	a1, a1, 887
	call	__addsf3
	mv	s1, a0
	lui	a0, 785404
	addi	a1, a0, -139
	mv	a0, s0
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	lui	a0, 256836
	addi	a1, a0, 1273
	mv	a0, s0
	call	__addsf3
	mv	a1, a0
	lui	a0, 785871
	addi	a0, a0, -1629
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 256410
	addi	a1, a1, -102
	call	__mulsf3
	mv	s0, a0
	lui	a0, 776515
	addi	a1, a0, 1577
	mv	a0, s2
	call	__mulsf3
	lui	a1, 248419
	addi	a1, a1, 694
	call	__addsf3
	mv	a1, s3
	call	__mulsf3
	mv	s1, a0
	lui	a0, 783589
	addi	a1, a0, 1164
	mv	a0, s2
	call	__mulsf3
	lui	a1, 260060
	addi	a1, a1, 1545
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__divsf3
	mv	a1, s0
	call	__addsf3
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end33:
	.size	fastinverseerf, .Lfunc_end33-fastinverseerf
	.cfi_endproc
                                        # -- End function
	.globl	fasterinverseerf        # -- Begin function fasterinverseerf
	.p2align	2
	.type	fasterinverseerf,@function
fasterinverseerf:                       # @fasterinverseerf
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	mv	s0, a0
	lui	a1, 260096
	call	__addsf3
	mv	s1, a0
	lui	a0, 260096
	mv	a1, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s1
	call	__divsf3
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798686
	addi	a1, a1, 681
	call	__addsf3
	lui	a1, 256410
	addi	a1, a1, -102
	call	__mulsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end34:
	.size	fasterinverseerf, .Lfunc_end34-fasterinverseerf
	.cfi_endproc
                                        # -- End function
	.globl	fastlgamma              # -- Begin function fastlgamma
	.p2align	2
	.type	fastlgamma,@function
fastlgamma:                             # @fastlgamma
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	sw	s1, 36(sp)
	sw	s2, 32(sp)
	sw	s3, 28(sp)
	sw	s4, 24(sp)
	sw	s5, 20(sp)
	sw	s6, 16(sp)
	sw	s7, 12(sp)
	sw	s8, 8(sp)
	sw	s9, 4(sp)
	sw	s10, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	mv	s7, a0
	lui	a1, 260096
	call	__addsf3
	mv	a1, s7
	call	__mulsf3
	mv	s1, a0
	lui	a1, 262144
	mv	a0, s7
	call	__addsf3
	mv	a1, s1
	call	__mulsf3
	lui	a1, 2048
	addi	s9, a1, -1
	and	a1, a0, s9
	lui	s10, 258048
	or	s1, a1, s10
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798599
	addi	s2, a1, 887
	mv	a1, s2
	call	__addsf3
	mv	s0, a0
	lui	a0, 261116
	addi	s3, a0, -139
	mv	a0, s1
	mv	a1, s3
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	s0, a0
	lui	a0, 256836
	addi	s4, a0, 1273
	mv	a0, s1
	mv	a1, s4
	call	__addsf3
	mv	a1, a0
	lui	a0, 261583
	addi	s5, a0, -1629
	mv	a0, s5
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	lui	a1, 258839
	addi	s8, a1, 536
	mv	a1, s8
	call	__mulsf3
	mv	s6, a0
	lui	a1, 263168
	mv	a0, s7
	call	__addsf3
	mv	s1, a0
	lui	a0, 786515
	addi	a0, a0, 28
	mv	a1, s7
	call	__subsf3
	mv	s0, a0
	lui	a0, 252587
	addi	a0, a0, -1370
	mv	a1, s1
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	a1, s6
	call	__subsf3
	mv	s6, a0
	lui	a1, 262656
	mv	a0, s7
	call	__addsf3
	mv	s7, a0
	and	a0, s1, s9
	or	s0, a0, s10
	mv	a0, s1
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	mv	a1, s2
	call	__addsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s3
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s4
	call	__addsf3
	mv	a1, a0
	mv	a0, s5
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	mv	a1, s8
	call	__mulsf3
	mv	a1, a0
	mv	a0, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s6
	call	__addsf3
	lw	s10, 0(sp)
	lw	s9, 4(sp)
	lw	s8, 8(sp)
	lw	s7, 12(sp)
	lw	s6, 16(sp)
	lw	s5, 20(sp)
	lw	s4, 24(sp)
	lw	s3, 28(sp)
	lw	s2, 32(sp)
	lw	s1, 36(sp)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end35:
	.size	fastlgamma, .Lfunc_end35-fastlgamma
	.cfi_endproc
                                        # -- End function
	.globl	fasterlgamma            # -- Begin function fasterlgamma
	.p2align	2
	.type	fasterlgamma,@function
fasterlgamma:                           # @fasterlgamma
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	mv	s0, a0
	lui	a0, 776800
	addi	a0, a0, 910
	mv	a1, s0
	call	__subsf3
	mv	s2, a0
	mv	a0, s0
	call	__floatunsisf
	lui	a1, 211735
	addi	s3, a1, 536
	mv	a1, s3
	call	__mulsf3
	lui	a1, 797440
	addi	s1, a1, -1315
	mv	a1, s1
	call	__addsf3
	mv	a1, a0
	mv	a0, s2
	call	__subsf3
	mv	s2, a0
	lui	a1, 258048
	mv	a0, s0
	call	__addsf3
	mv	s4, a0
	lui	a1, 260096
	mv	a0, s0
	call	__addsf3
	call	__floatunsisf
	mv	a1, s3
	call	__mulsf3
	mv	a1, s1
	call	__addsf3
	mv	a1, a0
	mv	a0, s4
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end36:
	.size	fasterlgamma, .Lfunc_end36-fasterlgamma
	.cfi_endproc
                                        # -- End function
	.globl	fastdigamma             # -- Begin function fastdigamma
	.p2align	2
	.type	fastdigamma,@function
fastdigamma:                            # @fastdigamma
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	mv	s4, a0
	lui	a1, 262144
	call	__addsf3
	mv	s3, a0
	lui	a0, 2048
	addi	a0, a0, -1
	and	a0, s3, a0
	lui	a1, 258048
	or	s0, a0, a1
	mv	a0, s3
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798599
	addi	a1, a1, 887
	call	__addsf3
	mv	s1, a0
	lui	a0, 785404
	addi	a1, a0, -139
	mv	a0, s0
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	lui	a0, 256836
	addi	a1, a0, 1273
	mv	a0, s0
	call	__addsf3
	mv	a1, a0
	lui	a0, 785871
	addi	a0, a0, -1629
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 258839
	addi	a1, a1, 536
	call	__mulsf3
	mv	s2, a0
	lui	a1, 794368
	mv	a0, s4
	call	__mulsf3
	lui	a1, 798688
	call	__addsf3
	mv	a1, s4
	call	__mulsf3
	lui	a1, 799184
	call	__addsf3
	mv	a1, s4
	call	__mulsf3
	lui	a1, 795648
	call	__addsf3
	mv	s0, a0
	lui	a1, 267264
	mv	a0, s4
	call	__mulsf3
	mv	s1, a0
	lui	a1, 260096
	mv	a0, s4
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s3
	call	__mulsf3
	mv	a1, a0
	mv	a0, s3
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__divsf3
	mv	a1, s2
	call	__addsf3
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end37:
	.size	fastdigamma, .Lfunc_end37-fastdigamma
	.cfi_endproc
                                        # -- End function
	.globl	fasterdigamma           # -- Begin function fasterdigamma
	.p2align	2
	.type	fasterdigamma,@function
fasterdigamma:                          # @fasterdigamma
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	mv	s0, a0
	lui	a1, 260096
	call	__addsf3
	mv	s1, a0
	lui	a0, 784384
	mv	a1, s0
	call	__divsf3
	mv	s0, a0
	mv	a0, s1
	mv	a1, s1
	call	__addsf3
	mv	a1, a0
	lui	a0, 260096
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	s0, a0
	mv	a0, s1
	call	__floatunsisf
	lui	a1, 211735
	addi	a1, a1, 536
	call	__mulsf3
	lui	a1, 797440
	addi	a1, a1, -1315
	call	__addsf3
	mv	a1, s0
	call	__addsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end38:
	.size	fasterdigamma, .Lfunc_end38-fasterdigamma
	.cfi_endproc
                                        # -- End function
	.globl	fastsinh                # -- Begin function fastsinh
	.p2align	2
	.type	fastsinh,@function
fastsinh:                               # @fastsinh
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	sw	s1, 36(sp)
	sw	s2, 32(sp)
	sw	s3, 28(sp)
	sw	s4, 24(sp)
	sw	s5, 20(sp)
	sw	s6, 16(sp)
	sw	s7, 12(sp)
	sw	s8, 8(sp)
	sw	s9, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	mv	s2, a0
	lui	a0, 261003
	addi	a1, a0, -1477
	mv	a0, s2
	call	__mulsf3
	mv	s1, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	lui	s9, 260096
	and	s3, a0, s9
	lui	a1, 798656
	lui	s8, 798656
	mv	a0, s1
	call	__ltsf2
	lui	s0, 798656
	bltz	a0, .LBB39_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB39_2:                               # %entry
	mv	a0, s0
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s3
	call	__addsf3
	mv	s1, a0
	lui	a0, 274217
	addi	s3, a0, -943
	mv	a0, s0
	mv	a1, s3
	call	__addsf3
	mv	s0, a0
	lui	a0, 264623
	addi	s4, a0, 1528
	mv	a0, s4
	mv	a1, s1
	call	__subsf3
	mv	a1, a0
	lui	a0, 269789
	addi	s5, a0, 766
	mv	a0, s5
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 261100
	addi	s7, a0, -883
	mv	a0, s1
	mv	a1, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	s6, a0
	lui	a0, 785291
	addi	a1, a0, -1477
	mv	a0, s2
	call	__mulsf3
	mv	s0, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	and	s1, a0, s9
	lui	a1, 798656
	mv	a0, s0
	call	__ltsf2
	bltz	a0, .LBB39_4
# %bb.3:                                # %entry
	mv	s8, s0
.LBB39_4:                               # %entry
	mv	a0, s8
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s8
	call	__subsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	mv	a0, s8
	mv	a1, s3
	call	__addsf3
	mv	s1, a0
	mv	a0, s4
	mv	a1, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s5
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	a1, a0
	mv	a0, s6
	call	__subsf3
	lui	a1, 258048
	call	__mulsf3
	lw	s9, 4(sp)
	lw	s8, 8(sp)
	lw	s7, 12(sp)
	lw	s6, 16(sp)
	lw	s5, 20(sp)
	lw	s4, 24(sp)
	lw	s3, 28(sp)
	lw	s2, 32(sp)
	lw	s1, 36(sp)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end39:
	.size	fastsinh, .Lfunc_end39-fastsinh
	.cfi_endproc
                                        # -- End function
	.globl	fastersinh              # -- Begin function fastersinh
	.p2align	2
	.type	fastersinh,@function
fastersinh:                             # @fastersinh
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	mv	s1, a0
	lui	a0, 261003
	addi	a1, a0, -1477
	mv	a0, s1
	call	__mulsf3
	mv	s0, a0
	lui	a1, 798656
	lui	s2, 798656
	call	__ltsf2
	mv	a1, a0
	lui	a0, 798656
	bltz	a1, .LBB40_2
# %bb.1:                                # %entry
	mv	a0, s0
.LBB40_2:                               # %entry
	lui	a1, 274398
	addi	s0, a1, 681
	mv	a1, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	s3, a0
	lui	a0, 785291
	addi	a1, a0, -1477
	mv	a0, s1
	call	__mulsf3
	mv	s1, a0
	lui	a1, 798656
	call	__ltsf2
	bltz	a0, .LBB40_4
# %bb.3:                                # %entry
	mv	s2, s1
.LBB40_4:                               # %entry
	mv	a0, s2
	mv	a1, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	a1, a0
	mv	a0, s3
	call	__subsf3
	lui	a1, 258048
	call	__mulsf3
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end40:
	.size	fastersinh, .Lfunc_end40-fastersinh
	.cfi_endproc
                                        # -- End function
	.globl	fastcosh                # -- Begin function fastcosh
	.p2align	2
	.type	fastcosh,@function
fastcosh:                               # @fastcosh
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	sw	s1, 36(sp)
	sw	s2, 32(sp)
	sw	s3, 28(sp)
	sw	s4, 24(sp)
	sw	s5, 20(sp)
	sw	s6, 16(sp)
	sw	s7, 12(sp)
	sw	s8, 8(sp)
	sw	s9, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	mv	s2, a0
	lui	a0, 261003
	addi	a1, a0, -1477
	mv	a0, s2
	call	__mulsf3
	mv	s1, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	lui	s9, 260096
	and	s3, a0, s9
	lui	a1, 798656
	lui	s8, 798656
	mv	a0, s1
	call	__ltsf2
	lui	s0, 798656
	bltz	a0, .LBB41_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB41_2:                               # %entry
	mv	a0, s0
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s3
	call	__addsf3
	mv	s1, a0
	lui	a0, 274217
	addi	s3, a0, -943
	mv	a0, s0
	mv	a1, s3
	call	__addsf3
	mv	s0, a0
	lui	a0, 264623
	addi	s4, a0, 1528
	mv	a0, s4
	mv	a1, s1
	call	__subsf3
	mv	a1, a0
	lui	a0, 269789
	addi	s5, a0, 766
	mv	a0, s5
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 261100
	addi	s7, a0, -883
	mv	a0, s1
	mv	a1, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	s6, a0
	lui	a0, 785291
	addi	a1, a0, -1477
	mv	a0, s2
	call	__mulsf3
	mv	s0, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	and	s1, a0, s9
	lui	a1, 798656
	mv	a0, s0
	call	__ltsf2
	bltz	a0, .LBB41_4
# %bb.3:                                # %entry
	mv	s8, s0
.LBB41_4:                               # %entry
	mv	a0, s8
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s8
	call	__subsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	mv	a0, s8
	mv	a1, s3
	call	__addsf3
	mv	s1, a0
	mv	a0, s4
	mv	a1, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s5
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	a1, a0
	mv	a0, s6
	call	__addsf3
	lui	a1, 258048
	call	__mulsf3
	lw	s9, 4(sp)
	lw	s8, 8(sp)
	lw	s7, 12(sp)
	lw	s6, 16(sp)
	lw	s5, 20(sp)
	lw	s4, 24(sp)
	lw	s3, 28(sp)
	lw	s2, 32(sp)
	lw	s1, 36(sp)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end41:
	.size	fastcosh, .Lfunc_end41-fastcosh
	.cfi_endproc
                                        # -- End function
	.globl	fastercosh              # -- Begin function fastercosh
	.p2align	2
	.type	fastercosh,@function
fastercosh:                             # @fastercosh
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	mv	s1, a0
	lui	a0, 261003
	addi	a1, a0, -1477
	mv	a0, s1
	call	__mulsf3
	mv	s0, a0
	lui	a1, 798656
	lui	s2, 798656
	call	__ltsf2
	mv	a1, a0
	lui	a0, 798656
	bltz	a1, .LBB42_2
# %bb.1:                                # %entry
	mv	a0, s0
.LBB42_2:                               # %entry
	lui	a1, 274398
	addi	s0, a1, 681
	mv	a1, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	s3, a0
	lui	a0, 785291
	addi	a1, a0, -1477
	mv	a0, s1
	call	__mulsf3
	mv	s1, a0
	lui	a1, 798656
	call	__ltsf2
	bltz	a0, .LBB42_4
# %bb.3:                                # %entry
	mv	s2, s1
.LBB42_4:                               # %entry
	mv	a0, s2
	mv	a1, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	a1, a0
	mv	a0, s3
	call	__addsf3
	lui	a1, 258048
	call	__mulsf3
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end42:
	.size	fastercosh, .Lfunc_end42-fastercosh
	.cfi_endproc
                                        # -- End function
	.globl	fasttanh                # -- Begin function fasttanh
	.p2align	2
	.type	fasttanh,@function
fasttanh:                               # @fasttanh
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	sw	s2, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	lui	a1, 786432
	call	__mulsf3
	lui	a1, 261003
	addi	a1, a1, -1477
	call	__mulsf3
	mv	s1, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	lui	a1, 260096
	and	s2, a0, a1
	lui	a1, 798656
	lui	s0, 798656
	mv	a0, s1
	call	__ltsf2
	bltz	a0, .LBB43_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB43_2:                               # %entry
	mv	a0, s0
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	s1, a0
	lui	a0, 274217
	addi	a1, a0, -943
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 264623
	addi	a0, a0, 1528
	mv	a1, s1
	call	__subsf3
	mv	a1, a0
	lui	a0, 269789
	addi	a0, a0, 766
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 785388
	addi	a1, a0, -883
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lui	a1, 260096
	call	__addsf3
	mv	a1, a0
	lui	a0, 262144
	call	__divsf3
	lui	a1, 784384
	call	__addsf3
	lw	s2, 0(sp)
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end43:
	.size	fasttanh, .Lfunc_end43-fasttanh
	.cfi_endproc
                                        # -- End function
	.globl	fastertanh              # -- Begin function fastertanh
	.p2align	2
	.type	fastertanh,@function
fastertanh:                             # @fastertanh
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	lui	a1, 786432
	call	__mulsf3
	lui	a1, 261003
	addi	a1, a1, -1477
	call	__mulsf3
	mv	s1, a0
	lui	a1, 798656
	lui	s0, 798656
	call	__ltsf2
	bltz	a0, .LBB44_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB44_2:                               # %entry
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lui	a1, 260096
	call	__addsf3
	mv	a1, a0
	lui	a0, 262144
	call	__divsf3
	lui	a1, 784384
	call	__addsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end44:
	.size	fastertanh, .Lfunc_end44-fastertanh
	.cfi_endproc
                                        # -- End function
	.globl	fastlambertw            # -- Begin function fastlambertw
	.p2align	2
	.type	fastlambertw,@function
fastlambertw:                           # @fastlambertw
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	sw	s1, 52(sp)
	sw	s2, 48(sp)
	sw	s3, 44(sp)
	sw	s4, 40(sp)
	sw	s5, 36(sp)
	sw	s6, 32(sp)
	sw	s7, 28(sp)
	sw	s8, 24(sp)
	sw	s9, 20(sp)
	sw	s10, 16(sp)
	sw	s11, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s3, a0
	lui	a0, 262415
	addi	a1, a0, -832
	mv	a0, s3
	call	__ltsf2
	srai	a1, a0, 31
	lui	a2, 262400
	addi	a2, a2, 1539
	and	s0, a1, a2
	bltz	a0, .LBB45_2
# %bb.1:                                # %entry
	lui	s2, 524288
	lui	a0, 260096
	j	.LBB45_3
.LBB45_2:
	lui	a0, 261216
	addi	a0, a0, -79
	lui	a1, 259022
	addi	s2, a1, -386
.LBB45_3:                               # %entry
	mv	a1, s3
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lui	a1, 2048
	addi	s11, a1, -1
	and	a1, a0, s11
	lui	s10, 258048
	or	s1, a1, s10
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798599
	addi	s4, a1, 887
	mv	a1, s4
	call	__addsf3
	mv	s0, a0
	lui	a0, 261116
	addi	s5, a0, -139
	mv	a0, s1
	mv	a1, s5
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	s0, a0
	lui	a0, 256836
	addi	s6, a0, 1273
	mv	a0, s1
	mv	a1, s6
	call	__addsf3
	mv	a1, a0
	lui	a0, 261583
	addi	s7, a0, -1629
	mv	a0, s7
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	lui	a1, 258839
	addi	s8, a1, 536
	mv	a1, s8
	call	__mulsf3
	mv	s9, a0
	and	a0, a0, s11
	or	s0, a0, s10
	mv	a0, s9
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	mv	a1, s4
	call	__addsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s5
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s6
	call	__addsf3
	mv	a1, a0
	mv	a0, s7
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	mv	a1, s8
	call	__mulsf3
	mv	s0, a0
	mv	a0, s2
	mv	a1, s9
	call	__subsf3
	mv	a1, s0
	call	__addsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s9
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	mv	s2, a0
	lui	a0, 261003
	addi	a1, a0, -1477
	mv	a0, s2
	call	__mulsf3
	mv	s0, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	lui	a1, 260096
	and	s4, a0, a1
	lui	a1, 798656
	lui	s1, 798656
	mv	a0, s0
	call	__ltsf2
	bltz	a0, .LBB45_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB45_5:                               # %entry
	mv	a0, s1
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	mv	a1, a0
	mv	a0, s4
	call	__addsf3
	mv	s0, a0
	lui	a0, 274217
	addi	a1, a0, -943
	mv	a0, s1
	call	__addsf3
	mv	s1, a0
	lui	a0, 264623
	addi	a0, a0, 1528
	mv	a1, s0
	call	__subsf3
	mv	a1, a0
	lui	a0, 269789
	addi	a0, a0, 766
	call	__divsf3
	mv	a1, s1
	call	__addsf3
	mv	s1, a0
	lui	a0, 785388
	addi	a1, a0, -883
	mv	a0, s0
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	a1, s3
	call	__mulsf3
	mv	s0, a0
	mv	a1, s2
	call	__subsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s0
	call	__addsf3
	mv	s3, a0
	lui	a1, 264192
	mv	a0, s0
	call	__mulsf3
	mv	s0, a0
	mv	a0, s2
	mv	a1, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s3
	call	__subsf3
	mv	s0, a0
	lui	a0, 262144
	mv	a1, s2
	call	__subsf3
	mv	a1, s1
	call	__mulsf3
	lui	a1, 262144
	call	__addsf3
	mv	a1, a0
	mv	a0, s0
	call	__divsf3
	lw	s11, 12(sp)
	lw	s10, 16(sp)
	lw	s9, 20(sp)
	lw	s8, 24(sp)
	lw	s7, 28(sp)
	lw	s6, 32(sp)
	lw	s5, 36(sp)
	lw	s4, 40(sp)
	lw	s3, 44(sp)
	lw	s2, 48(sp)
	lw	s1, 52(sp)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end45:
	.size	fastlambertw, .Lfunc_end45-fastlambertw
	.cfi_endproc
                                        # -- End function
	.globl	fasterlambertw          # -- Begin function fasterlambertw
	.p2align	2
	.type	fasterlambertw,@function
fasterlambertw:                         # @fasterlambertw
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	mv	s2, a0
	lui	a0, 262415
	addi	a1, a0, -832
	mv	a0, s2
	call	__ltsf2
	mv	a1, a0
	bltz	a0, .LBB46_2
# %bb.1:                                # %entry
	lui	a0, 260096
	j	.LBB46_3
.LBB46_2:
	lui	a0, 261216
	addi	a0, a0, -79
.LBB46_3:                               # %entry
	srai	a1, a1, 31
	lui	a2, 262400
	addi	a2, a2, 1539
	and	s0, a1, a2
	lui	a2, 783310
	addi	a2, a2, -386
	and	s3, a1, a2
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	call	__floatunsisf
	lui	a1, 211735
	addi	s4, a1, 536
	mv	a1, s4
	call	__mulsf3
	lui	a1, 797440
	addi	s1, a1, -1315
	mv	a1, s1
	call	__addsf3
	mv	s0, a0
	call	__floatunsisf
	mv	a1, s4
	call	__mulsf3
	mv	a1, s1
	call	__addsf3
	mv	s1, a0
	mv	a0, s3
	mv	a1, s0
	call	__addsf3
	mv	a1, s1
	call	__subsf3
	mv	s3, a0
	mv	a0, s1
	mv	a1, s0
	call	__divsf3
	mv	a1, a0
	mv	a0, s3
	call	__addsf3
	mv	s3, a0
	lui	a0, 785291
	addi	a1, a0, -1477
	mv	a0, s3
	call	__mulsf3
	mv	s0, a0
	lui	a1, 798656
	lui	s1, 798656
	call	__ltsf2
	bltz	a0, .LBB46_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB46_5:                               # %entry
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s1
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	s0, a0
	mv	a0, s3
	mv	a1, s3
	call	__mulsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	lui	a1, 260096
	mv	a0, s3
	call	__addsf3
	mv	a1, a0
	mv	a0, s0
	call	__divsf3
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end46:
	.size	fasterlambertw, .Lfunc_end46-fasterlambertw
	.cfi_endproc
                                        # -- End function
	.globl	fastlambertwexpx        # -- Begin function fastlambertwexpx
	.p2align	2
	.type	fastlambertwexpx,@function
fastlambertwexpx:                       # @fastlambertwexpx
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	sw	s1, 52(sp)
	sw	s2, 48(sp)
	sw	s3, 44(sp)
	sw	s4, 40(sp)
	sw	s5, 36(sp)
	sw	s6, 32(sp)
	sw	s7, 28(sp)
	sw	s8, 24(sp)
	sw	s9, 20(sp)
	sw	s10, 16(sp)
	sw	s11, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s2, a0
	lui	a0, 260458
	addi	s0, a0, -1633
	mv	a0, s2
	mv	a1, s0
	call	fmaxf
	mv	s9, a0
	mv	a0, s2
	mv	a1, s0
	call	__ltsf2
	addi	a1, zero, -1
	blt	a1, a0, .LBB47_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s8, a0
	j	.LBB47_3
.LBB47_2:
	mv	s8, zero
.LBB47_3:                               # %cond.end
	lui	a0, 2048
	addi	s10, a0, -1
	and	a0, s9, s10
	lui	s11, 258048
	or	s0, a0, s11
	mv	a0, s9
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798599
	addi	s3, a1, 887
	mv	a1, s3
	call	__addsf3
	mv	s1, a0
	lui	a0, 261116
	addi	s4, a0, -139
	mv	a0, s0
	mv	a1, s4
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	mv	s1, a0
	lui	a0, 256836
	addi	s5, a0, 1273
	mv	a0, s0
	mv	a1, s5
	call	__addsf3
	mv	a1, a0
	lui	a0, 261583
	addi	s6, a0, -1629
	mv	a0, s6
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__subsf3
	lui	a1, 258839
	addi	s7, a1, 536
	mv	a1, s7
	call	__mulsf3
	mv	s0, a0
	lui	a1, 798656
	lui	s1, 798656
	mv	a0, s8
	call	__ltsf2
	bltz	a0, .LBB47_5
# %bb.4:                                # %cond.end
	mv	s1, s8
.LBB47_5:                               # %cond.end
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s1
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	s8, a0
	mv	a0, s9
	mv	a1, s0
	call	__subsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s9
	call	__divsf3
	mv	a1, s1
	call	__addsf3
	mv	a1, s8
	call	__mulsf3
	mv	s1, a0
	and	a0, a0, s10
	or	s8, a0, s11
	mv	a0, s1
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	mv	a1, s3
	call	__addsf3
	mv	s0, a0
	mv	a0, s8
	mv	a1, s4
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	s0, a0
	mv	a0, s8
	mv	a1, s5
	call	__addsf3
	mv	a1, a0
	mv	a0, s6
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	a1, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__subsf3
	mv	s0, a0
	lui	a1, 262144
	call	__addsf3
	mv	s2, a0
	mv	a0, s0
	mv	a1, s0
	call	__addsf3
	lui	a1, 263168
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	s2, a0
	lui	a0, 262144
	mv	a1, s0
	call	__subsf3
	mv	s0, a0
	mv	a0, s1
	mv	a1, s1
	call	__addsf3
	lui	a1, 264704
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, s0
	call	__addsf3
	mv	a1, a0
	mv	a0, s2
	call	__divsf3
	lw	s11, 12(sp)
	lw	s10, 16(sp)
	lw	s9, 20(sp)
	lw	s8, 24(sp)
	lw	s7, 28(sp)
	lw	s6, 32(sp)
	lw	s5, 36(sp)
	lw	s4, 40(sp)
	lw	s3, 44(sp)
	lw	s2, 48(sp)
	lw	s1, 52(sp)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end47:
	.size	fastlambertwexpx, .Lfunc_end47-fastlambertwexpx
	.cfi_endproc
                                        # -- End function
	.globl	fasterlambertwexpx      # -- Begin function fasterlambertwexpx
	.p2align	2
	.type	fasterlambertwexpx,@function
fasterlambertwexpx:                     # @fasterlambertwexpx
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	sw	s5, 4(sp)
	sw	s6, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	mv	s2, a0
	lui	a0, 260458
	addi	s0, a0, -1633
	mv	a0, s2
	mv	a1, s0
	call	fmaxf
	mv	s5, a0
	mv	a0, s2
	mv	a1, s0
	call	__ltsf2
	addi	a1, zero, -1
	blt	a1, a0, .LBB48_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s6, a0
	j	.LBB48_3
.LBB48_2:
	mv	s6, zero
.LBB48_3:                               # %cond.end
	mv	a0, s5
	call	__floatunsisf
	lui	a1, 211735
	addi	s3, a1, 536
	mv	a1, s3
	call	__mulsf3
	lui	a1, 797440
	addi	s4, a1, -1315
	mv	a1, s4
	call	__addsf3
	mv	s0, a0
	lui	a1, 798656
	lui	s1, 798656
	mv	a0, s6
	call	__ltsf2
	bltz	a0, .LBB48_5
# %bb.4:                                # %cond.end
	mv	s1, s6
.LBB48_5:                               # %cond.end
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s1
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	mv	s6, a0
	mv	a0, s5
	mv	a1, s0
	call	__subsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s5
	call	__divsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	a1, s6
	call	__mulsf3
	mv	s0, a0
	call	__floatunsisf
	mv	a1, s3
	call	__mulsf3
	mv	a1, s4
	call	__addsf3
	mv	s1, a0
	lui	a1, 260096
	mv	a0, s2
	call	__addsf3
	mv	a1, s1
	call	__subsf3
	mv	a1, a0
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	lui	a1, 260096
	mv	a0, s0
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__divsf3
	lw	s6, 0(sp)
	lw	s5, 4(sp)
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end48:
	.size	fasterlambertwexpx, .Lfunc_end48-fasterlambertwexpx
	.cfi_endproc
                                        # -- End function
	.globl	fastpow                 # -- Begin function fastpow
	.p2align	2
	.type	fastpow,@function
fastpow:                                # @fastpow
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	sw	s2, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	mv	s2, a1
	lui	a1, 2048
	addi	a1, a1, -1
	and	a1, a0, a1
	lui	a2, 258048
	or	s1, a1, a2
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798599
	addi	a1, a1, 887
	call	__addsf3
	mv	s0, a0
	lui	a0, 785404
	addi	a1, a0, -139
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 256836
	addi	a1, a0, 1273
	mv	a0, s1
	call	__addsf3
	mv	a1, a0
	lui	a0, 785871
	addi	a0, a0, -1629
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	a1, s2
	call	__mulsf3
	mv	s1, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	lui	a1, 260096
	and	s2, a0, a1
	lui	a1, 798656
	lui	s0, 798656
	mv	a0, s1
	call	__ltsf2
	bltz	a0, .LBB49_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB49_2:                               # %entry
	mv	a0, s0
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	s1, a0
	lui	a0, 274217
	addi	a1, a0, -943
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 264623
	addi	a0, a0, 1528
	mv	a1, s1
	call	__subsf3
	mv	a1, a0
	lui	a0, 269789
	addi	a0, a0, 766
	call	__divsf3
	mv	a1, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 785388
	addi	a1, a0, -883
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lw	s2, 0(sp)
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end49:
	.size	fastpow, .Lfunc_end49-fastpow
	.cfi_endproc
                                        # -- End function
	.globl	fasterpow               # -- Begin function fasterpow
	.p2align	2
	.type	fasterpow,@function
fasterpow:                              # @fasterpow
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	mv	s0, a1
	call	__floatunsisf
	lui	a1, 212992
	call	__mulsf3
	lui	a1, 798686
	addi	a1, a1, 681
	call	__addsf3
	mv	a1, s0
	call	__mulsf3
	mv	s1, a0
	lui	a1, 798656
	lui	s0, 798656
	call	__ltsf2
	bltz	a0, .LBB50_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB50_2:                               # %entry
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end50:
	.size	fasterpow, .Lfunc_end50-fasterpow
	.cfi_endproc
                                        # -- End function
	.globl	fastsigmoid             # -- Begin function fastsigmoid
	.p2align	2
	.type	fastsigmoid,@function
fastsigmoid:                            # @fastsigmoid
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	sw	s2, 0(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	lui	a1, 785291
	addi	a1, a1, -1477
	call	__mulsf3
	mv	s1, a0
	mv	a1, zero
	call	__ltsf2
	srai	a0, a0, 31
	lui	a1, 260096
	and	s2, a0, a1
	lui	a1, 798656
	lui	s0, 798656
	mv	a0, s1
	call	__ltsf2
	bltz	a0, .LBB51_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB51_2:                               # %entry
	mv	a0, s0
	call	__fixsfsi
	call	__floatsisf
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	s1, a0
	lui	a0, 274217
	addi	a1, a0, -943
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 264623
	addi	a0, a0, 1528
	mv	a1, s1
	call	__subsf3
	mv	a1, a0
	lui	a0, 269789
	addi	a0, a0, 766
	call	__divsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 785388
	addi	a1, a0, -883
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lui	a1, 260096
	call	__addsf3
	mv	a1, a0
	lui	a0, 260096
	call	__divsf3
	lw	s2, 0(sp)
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end51:
	.size	fastsigmoid, .Lfunc_end51-fastsigmoid
	.cfi_endproc
                                        # -- End function
	.globl	fastersigmoid           # -- Begin function fastersigmoid
	.p2align	2
	.type	fastersigmoid,@function
fastersigmoid:                          # @fastersigmoid
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	lui	a1, 785291
	addi	a1, a1, -1477
	call	__mulsf3
	mv	s1, a0
	lui	a1, 798656
	lui	s0, 798656
	call	__ltsf2
	bltz	a0, .LBB52_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB52_2:                               # %entry
	lui	a0, 274398
	addi	a1, a0, 681
	mv	a0, s0
	call	__addsf3
	lui	a1, 307200
	call	__mulsf3
	call	__fixunssfsi
	lui	a1, 260096
	call	__addsf3
	mv	a1, a0
	lui	a0, 260096
	call	__divsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end52:
	.size	fastersigmoid, .Lfunc_end52-fastersigmoid
	.cfi_endproc
                                        # -- End function
	.globl	fastsin                 # -- Begin function fastsin
	.p2align	2
	.type	fastsin,@function
fastsin:                                # @fastsin
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	mv	s0, a0
	lui	a0, 524288
	and	s4, s0, a0
	addi	a0, a0, -1
	and	s2, s0, a0
	lui	a0, 260656
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 781560
	addi	a1, a0, 379
	mv	a0, s0
	call	__mulsf3
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	mv	a1, a0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 255240
	addi	a0, a0, 1751
	or	s2, s4, a0
	lui	a0, 247677
	addi	a0, a0, -358
	or	s3, s4, a0
	lui	a0, 767283
	addi	a0, a0, 535
	xor	s4, s4, a0
	lui	a0, 259213
	addi	a1, a0, 353
	mv	a0, s0
	call	__mulsf3
	mv	s0, a0
	mv	a0, s4
	mv	a1, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s3
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end53:
	.size	fastsin, .Lfunc_end53-fastsin
	.cfi_endproc
                                        # -- End function
	.globl	fastersin               # -- Begin function fastersin
	.p2align	2
	.type	fastersin,@function
fastersin:                              # @fastersin
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	mv	s0, a0
	lui	a0, 524288
	and	s3, s0, a0
	addi	a0, a0, -1
	and	s2, s0, a0
	lui	a0, 260656
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 781560
	addi	a1, a0, 379
	mv	a0, s0
	call	__mulsf3
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	lui	a0, 255559
	addi	a0, a0, 108
	or	a0, s3, a0
	mv	a1, s0
	call	__mulsf3
	lui	a1, 259180
	addi	a1, a1, -620
	call	__addsf3
	mv	a1, a0
	mv	a0, s0
	call	__mulsf3
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end54:
	.size	fastersin, .Lfunc_end54-fastersin
	.cfi_endproc
                                        # -- End function
	.globl	fastsinfull             # -- Begin function fastsinfull
	.p2align	2
	.type	fastsinfull,@function
fastsinfull:                            # @fastsinfull
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	mv	s0, a0
	lui	a0, 254512
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	call	__fixsfsi
	mv	s2, a0
	mv	a0, s0
	mv	a1, zero
	call	__ltsf2
	lui	s1, 782336
	bltz	a0, .LBB55_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB55_2:                               # %entry
	mv	a0, s2
	call	__floatsisf
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 265361
	addi	a1, a1, -37
	call	__mulsf3
	mv	a1, s0
	call	__subsf3
	mv	s0, a0
	lui	a0, 524288
	and	s4, s0, a0
	addi	a0, a0, -1
	and	s2, s0, a0
	lui	a0, 260656
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 781560
	addi	a1, a0, 379
	mv	a0, s0
	call	__mulsf3
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	mv	a1, a0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 255240
	addi	a0, a0, 1751
	or	s2, s4, a0
	lui	a0, 247677
	addi	a0, a0, -358
	or	s3, s4, a0
	lui	a0, 767283
	addi	a0, a0, 535
	xor	s4, s4, a0
	lui	a0, 259213
	addi	a1, a0, 353
	mv	a0, s0
	call	__mulsf3
	mv	s0, a0
	mv	a0, s4
	mv	a1, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s3
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end55:
	.size	fastsinfull, .Lfunc_end55-fastsinfull
	.cfi_endproc
                                        # -- End function
	.globl	fastersinfull           # -- Begin function fastersinfull
	.p2align	2
	.type	fastersinfull,@function
fastersinfull:                          # @fastersinfull
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	mv	s0, a0
	lui	a0, 254512
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	call	__fixsfsi
	mv	s2, a0
	mv	a0, s0
	mv	a1, zero
	call	__ltsf2
	lui	s1, 782336
	bltz	a0, .LBB56_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB56_2:                               # %entry
	mv	a0, s2
	call	__floatsisf
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 265361
	addi	a1, a1, -37
	call	__mulsf3
	mv	a1, s0
	call	__subsf3
	mv	s0, a0
	lui	a0, 524288
	and	s3, s0, a0
	addi	a0, a0, -1
	and	s2, s0, a0
	lui	a0, 260656
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 781560
	addi	a1, a0, 379
	mv	a0, s0
	call	__mulsf3
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	lui	a0, 255559
	addi	a0, a0, 108
	or	a0, s3, a0
	mv	a1, s0
	call	__mulsf3
	lui	a1, 259180
	addi	a1, a1, -620
	call	__addsf3
	mv	a1, a0
	mv	a0, s0
	call	__mulsf3
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end56:
	.size	fastersinfull, .Lfunc_end56-fastersinfull
	.cfi_endproc
                                        # -- End function
	.globl	fastcos                 # -- Begin function fastcos
	.p2align	2
	.type	fastcos,@function
fastcos:                                # @fastcos
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	mv	s0, a0
	lui	a0, 261265
	addi	s1, a0, -37
	mv	a0, s0
	mv	a1, s1
	call	__gtsf2
	blez	a0, .LBB57_2
# %bb.1:
	lui	a0, 788845
	addi	s1, a0, -1052
.LBB57_2:                               # %entry
	mv	a0, s1
	mv	a1, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 524288
	and	s4, s0, a0
	addi	a0, a0, -1
	and	s2, s0, a0
	lui	a0, 260656
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 781560
	addi	a1, a0, 379
	mv	a0, s0
	call	__mulsf3
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	mv	a1, a0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 255240
	addi	a0, a0, 1751
	or	s2, s4, a0
	lui	a0, 247677
	addi	a0, a0, -358
	or	s3, s4, a0
	lui	a0, 767283
	addi	a0, a0, 535
	xor	s4, s4, a0
	lui	a0, 259213
	addi	a1, a0, 353
	mv	a0, s0
	call	__mulsf3
	mv	s0, a0
	mv	a0, s4
	mv	a1, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s3
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end57:
	.size	fastcos, .Lfunc_end57-fastcos
	.cfi_endproc
                                        # -- End function
	.globl	fastercos               # -- Begin function fastercos
	.p2align	2
	.type	fastercos,@function
fastercos:                              # @fastercos
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	lui	a1, 524288
	addi	a1, a1, -1
	and	a0, a0, a1
	lui	a1, 782896
	addi	a1, a1, -1661
	call	__mulsf3
	lui	a1, 260096
	call	__addsf3
	mv	s0, a0
	lui	a0, 258238
	addi	a1, a0, 447
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	mv	a0, s0
	mv	a1, s0
	call	__mulsf3
	mv	a1, a0
	lui	a0, 260096
	call	__subsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end58:
	.size	fastercos, .Lfunc_end58-fastercos
	.cfi_endproc
                                        # -- End function
	.globl	fastcosfull             # -- Begin function fastcosfull
	.p2align	2
	.type	fastcosfull,@function
fastcosfull:                            # @fastcosfull
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	lui	a1, 261265
	addi	a1, a1, -37
	call	__addsf3
	mv	s0, a0
	lui	a0, 254512
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	call	__fixsfsi
	mv	s2, a0
	mv	a0, s0
	mv	a1, zero
	call	__ltsf2
	lui	s1, 782336
	bltz	a0, .LBB59_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB59_2:                               # %entry
	mv	a0, s2
	call	__floatsisf
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 265361
	addi	a1, a1, -37
	call	__mulsf3
	mv	a1, s0
	call	__subsf3
	mv	s0, a0
	lui	a0, 524288
	and	s4, s0, a0
	addi	a0, a0, -1
	and	s2, s0, a0
	lui	a0, 260656
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 781560
	addi	a1, a0, 379
	mv	a0, s0
	call	__mulsf3
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	mv	a1, a0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 255240
	addi	a0, a0, 1751
	or	s2, s4, a0
	lui	a0, 247677
	addi	a0, a0, -358
	or	s3, s4, a0
	lui	a0, 767283
	addi	a0, a0, 535
	xor	s4, s4, a0
	lui	a0, 259213
	addi	a1, a0, 353
	mv	a0, s0
	call	__mulsf3
	mv	s0, a0
	mv	a0, s4
	mv	a1, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s3
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end59:
	.size	fastcosfull, .Lfunc_end59-fastcosfull
	.cfi_endproc
                                        # -- End function
	.globl	fastercosfull           # -- Begin function fastercosfull
	.p2align	2
	.type	fastercosfull,@function
fastercosfull:                          # @fastercosfull
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	lui	a1, 261265
	addi	a1, a1, -37
	call	__addsf3
	mv	s0, a0
	lui	a0, 254512
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	call	__fixsfsi
	mv	s2, a0
	mv	a0, s0
	mv	a1, zero
	call	__ltsf2
	lui	s1, 782336
	bltz	a0, .LBB60_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB60_2:                               # %entry
	mv	a0, s2
	call	__floatsisf
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 265361
	addi	a1, a1, -37
	call	__mulsf3
	mv	a1, s0
	call	__subsf3
	mv	s0, a0
	lui	a0, 524288
	and	s3, s0, a0
	addi	a0, a0, -1
	and	s2, s0, a0
	lui	a0, 260656
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 781560
	addi	a1, a0, 379
	mv	a0, s0
	call	__mulsf3
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	lui	a0, 255559
	addi	a0, a0, 108
	or	a0, s3, a0
	mv	a1, s0
	call	__mulsf3
	lui	a1, 259180
	addi	a1, a1, -620
	call	__addsf3
	mv	a1, a0
	mv	a0, s0
	call	__mulsf3
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end60:
	.size	fastercosfull, .Lfunc_end60-fastercosfull
	.cfi_endproc
                                        # -- End function
	.globl	fasttan                 # -- Begin function fasttan
	.p2align	2
	.type	fasttan,@function
fasttan:                                # @fasttan
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	sw	s1, 52(sp)
	sw	s2, 48(sp)
	sw	s3, 44(sp)
	sw	s4, 40(sp)
	sw	s5, 36(sp)
	sw	s6, 32(sp)
	sw	s7, 28(sp)
	sw	s8, 24(sp)
	sw	s9, 20(sp)
	sw	s10, 16(sp)
	sw	s11, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s6, a0
	lui	a0, 524288
	and	s5, s6, a0
	addi	a0, a0, -1
	sw	a0, 8(sp)
	and	s4, s6, a0
	lui	a0, 260656
	addi	s2, a0, -1661
	mv	a0, s6
	mv	a1, s2
	call	__mulsf3
	mv	s0, a0
	lui	a0, 257272
	addi	s3, a0, 379
	mv	a0, s6
	mv	a1, s3
	call	__mulsf3
	mv	a1, s4
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	s0, a0
	mv	a1, a0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 255240
	addi	s11, a0, 1751
	or	s4, s5, s11
	lui	a0, 247677
	addi	s9, a0, -358
	or	s7, s5, s9
	lui	a0, 767283
	addi	s10, a0, 535
	xor	s8, s5, s10
	lui	a0, 259213
	addi	s5, a0, 353
	mv	a0, s0
	mv	a1, s5
	call	__mulsf3
	mv	s0, a0
	mv	a0, s8
	mv	a1, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s7
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s4
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s4, a0
	lui	a0, 261265
	addi	a1, a0, -37
	mv	a0, s6
	call	__addsf3
	mv	s0, a0
	lui	a0, 524288
	and	s1, s0, a0
	lw	a0, 8(sp)
	and	s6, s0, a0
	mv	a0, s0
	mv	a1, s2
	call	__mulsf3
	mv	s2, a0
	mv	a0, s0
	mv	a1, s3
	call	__mulsf3
	mv	a1, s6
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__subsf3
	mv	s0, a0
	mv	a1, a0
	call	__mulsf3
	mv	s7, a0
	or	s2, s1, s11
	or	s3, s1, s9
	xor	s6, s1, s10
	mv	a0, s0
	mv	a1, s5
	call	__mulsf3
	mv	s0, a0
	mv	a0, s6
	mv	a1, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s3
	call	__addsf3
	mv	a1, a0
	mv	a0, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	a1, a0
	mv	a0, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	a1, a0
	mv	a0, s4
	call	__divsf3
	lw	s11, 12(sp)
	lw	s10, 16(sp)
	lw	s9, 20(sp)
	lw	s8, 24(sp)
	lw	s7, 28(sp)
	lw	s6, 32(sp)
	lw	s5, 36(sp)
	lw	s4, 40(sp)
	lw	s3, 44(sp)
	lw	s2, 48(sp)
	lw	s1, 52(sp)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end61:
	.size	fasttan, .Lfunc_end61-fasttan
	.cfi_endproc
                                        # -- End function
	.globl	fastertan               # -- Begin function fastertan
	.p2align	2
	.type	fastertan,@function
fastertan:                              # @fastertan
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	mv	s0, a0
	lui	a0, 524288
	and	s3, s0, a0
	addi	a0, a0, -1
	and	s2, s0, a0
	lui	a0, 260656
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 781560
	addi	a1, a0, 379
	mv	a0, s0
	call	__mulsf3
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	lui	a0, 255559
	addi	a0, a0, 108
	or	a0, s3, a0
	mv	a1, s0
	call	__mulsf3
	lui	a1, 259180
	addi	a1, a1, -620
	call	__addsf3
	mv	a1, a0
	mv	a0, s0
	call	__mulsf3
	mv	s3, a0
	lui	a0, 782896
	addi	a1, a0, -1661
	mv	a0, s2
	call	__mulsf3
	lui	a1, 260096
	call	__addsf3
	mv	s1, a0
	lui	a0, 258238
	addi	a1, a0, 447
	mv	a0, s1
	call	__mulsf3
	mv	s0, a0
	mv	a0, s1
	mv	a1, s1
	call	__mulsf3
	mv	a1, a0
	lui	a0, 260096
	call	__subsf3
	mv	a1, a0
	mv	a0, s0
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	a1, a0
	mv	a0, s3
	call	__divsf3
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end62:
	.size	fastertan, .Lfunc_end62-fastertan
	.cfi_endproc
                                        # -- End function
	.globl	fasttanfull             # -- Begin function fasttanfull
	.p2align	2
	.type	fasttanfull,@function
fasttanfull:                            # @fasttanfull
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	sw	s1, 52(sp)
	sw	s2, 48(sp)
	sw	s3, 44(sp)
	sw	s4, 40(sp)
	sw	s5, 36(sp)
	sw	s6, 32(sp)
	sw	s7, 28(sp)
	sw	s8, 24(sp)
	sw	s9, 20(sp)
	sw	s10, 16(sp)
	sw	s11, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s0, a0
	lui	a0, 254512
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	call	__fixsfsi
	mv	s2, a0
	mv	a0, s0
	mv	a1, zero
	call	__ltsf2
	lui	s1, 782336
	bltz	a0, .LBB63_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB63_2:                               # %entry
	mv	a0, s2
	call	__floatsisf
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 789649
	addi	a1, a1, -37
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s6, a0
	lui	a0, 524288
	and	s5, s6, a0
	addi	a0, a0, -1
	sw	a0, 8(sp)
	and	s4, s6, a0
	lui	a0, 260656
	addi	s2, a0, -1661
	mv	a0, s6
	mv	a1, s2
	call	__mulsf3
	mv	s0, a0
	lui	a0, 257272
	addi	s3, a0, 379
	mv	a0, s6
	mv	a1, s3
	call	__mulsf3
	mv	a1, s4
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__subsf3
	mv	s0, a0
	mv	a1, a0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 255240
	addi	s11, a0, 1751
	or	s4, s5, s11
	lui	a0, 247677
	addi	s9, a0, -358
	or	s7, s5, s9
	lui	a0, 767283
	addi	s10, a0, 535
	xor	s8, s5, s10
	lui	a0, 259213
	addi	s5, a0, 353
	mv	a0, s0
	mv	a1, s5
	call	__mulsf3
	mv	s0, a0
	mv	a0, s8
	mv	a1, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s7
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s4
	call	__addsf3
	mv	a1, a0
	mv	a0, s1
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s4, a0
	lui	a0, 261265
	addi	s0, a0, -37
	mv	a0, s6
	mv	a1, s0
	call	__gtsf2
	blez	a0, .LBB63_4
# %bb.3:
	lui	a0, 788845
	addi	s0, a0, -1052
.LBB63_4:                               # %entry
	mv	a0, s6
	mv	a1, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 524288
	and	s1, s0, a0
	lw	a0, 8(sp)
	and	s6, s0, a0
	mv	a0, s0
	mv	a1, s2
	call	__mulsf3
	mv	s2, a0
	mv	a0, s0
	mv	a1, s3
	call	__mulsf3
	mv	a1, s6
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__subsf3
	mv	s0, a0
	mv	a1, a0
	call	__mulsf3
	mv	s7, a0
	or	s2, s1, s11
	or	s3, s1, s9
	xor	s6, s1, s10
	mv	a0, s0
	mv	a1, s5
	call	__mulsf3
	mv	s0, a0
	mv	a0, s6
	mv	a1, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s3
	call	__addsf3
	mv	a1, a0
	mv	a0, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s2
	call	__addsf3
	mv	a1, a0
	mv	a0, s7
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	a1, a0
	mv	a0, s4
	call	__divsf3
	lw	s11, 12(sp)
	lw	s10, 16(sp)
	lw	s9, 20(sp)
	lw	s8, 24(sp)
	lw	s7, 28(sp)
	lw	s6, 32(sp)
	lw	s5, 36(sp)
	lw	s4, 40(sp)
	lw	s3, 44(sp)
	lw	s2, 48(sp)
	lw	s1, 52(sp)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end63:
	.size	fasttanfull, .Lfunc_end63-fasttanfull
	.cfi_endproc
                                        # -- End function
	.globl	fastertanfull           # -- Begin function fastertanfull
	.p2align	2
	.type	fastertanfull,@function
fastertanfull:                          # @fastertanfull
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	mv	s0, a0
	lui	a0, 254512
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	call	__fixsfsi
	mv	s2, a0
	mv	a0, s0
	mv	a1, zero
	call	__ltsf2
	lui	s1, 782336
	bltz	a0, .LBB64_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB64_2:                               # %entry
	mv	a0, s2
	call	__floatsisf
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	lui	a1, 789649
	addi	a1, a1, -37
	call	__mulsf3
	mv	a1, a0
	mv	a0, s0
	call	__addsf3
	mv	s0, a0
	lui	a0, 524288
	and	s3, s0, a0
	addi	a0, a0, -1
	and	s2, s0, a0
	lui	a0, 260656
	addi	a1, a0, -1661
	mv	a0, s0
	call	__mulsf3
	mv	s1, a0
	lui	a0, 781560
	addi	a1, a0, 379
	mv	a0, s0
	call	__mulsf3
	mv	a1, s2
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	s0, a0
	lui	a0, 255559
	addi	a0, a0, 108
	or	a0, s3, a0
	mv	a1, s0
	call	__mulsf3
	lui	a1, 259180
	addi	a1, a1, -620
	call	__addsf3
	mv	a1, a0
	mv	a0, s0
	call	__mulsf3
	mv	s3, a0
	lui	a0, 782896
	addi	a1, a0, -1661
	mv	a0, s2
	call	__mulsf3
	lui	a1, 260096
	call	__addsf3
	mv	s1, a0
	lui	a0, 258238
	addi	a1, a0, 447
	mv	a0, s1
	call	__mulsf3
	mv	s0, a0
	mv	a0, s1
	mv	a1, s1
	call	__mulsf3
	mv	a1, a0
	lui	a0, 260096
	call	__subsf3
	mv	a1, a0
	mv	a0, s0
	call	__mulsf3
	mv	a1, a0
	mv	a0, s1
	call	__addsf3
	mv	a1, a0
	mv	a0, s3
	call	__divsf3
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end64:
	.size	fastertanfull, .Lfunc_end64-fastertanfull
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: susan <in.pgm> <out.pgm> [options]\n\n"
	.size	.L.str, 44

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"-s : Smoothing mode (default)\n"
	.size	.L.str1, 31

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"-e : Edges mode\n"
	.size	.L.str2, 17

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"-c : Corners mode\n\n"
	.size	.L.str3, 20

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"See source code for more information about setting the thresholds\n"
	.size	.L.str4, 67

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	"-t <thresh> : Brightness threshold, all modes (default=20)\n"
	.size	.L.str5, 60

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\n"
	.size	.L.str6, 107

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	"-3 : Use flat 3x3 mask, edges or smoothing mode\n"
	.size	.L.str7, 49

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	"-n : No post-processing on the binary edge map (runs much faster); edges mode\n"
	.size	.L.str8, 79

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\n"
	.size	.L.str9, 111

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\n"
	.size	.L.str10, 108

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\n"
	.size	.L.str11, 91

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	"\nSUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\n"
	.size	.L.str12, 77

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	"Image %s not binary PGM.\n"
	.size	.L.str13, 26

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	"is"
	.size	.L.str14, 3

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	"r"
	.size	.L.str15, 2

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	"Can't input image %s.\n"
	.size	.L.str16, 23

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	"Image %s does not have binary PGM header.\n"
	.size	.L.str17, 43

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	"\n1.Image %s is wrong size.\n"
	.size	.L.str18, 28

	.type	.Lput_image.texto1,@object # @put_image.texto1
	.section	.rodata,"a",@progbits
.Lput_image.texto1:
	.asciz	"P5\000\000\000\000\000\000\000"
	.size	.Lput_image.texto1, 10

	.type	.Lput_image.texto2,@object # @put_image.texto2
.Lput_image.texto2:
	.asciz	"512 512\000\000"
	.size	.Lput_image.texto2, 10

	.type	.Lput_image.texto3,@object # @put_image.texto3
.Lput_image.texto3:
	.asciz	"255\n\000\000\000\000\000"
	.size	.Lput_image.texto3, 10

	.type	.L.str19,@object        # @.str19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str19:
	.asciz	"wb"
	.size	.L.str19, 3

	.type	.L.str20,@object        # @.str20
.L.str20:
	.asciz	"%s\n"
	.size	.L.str20, 4

	.type	.L.str21,@object        # @.str21
.L.str21:
	.asciz	"%s"
	.size	.L.str21, 3

	.type	.L.str22,@object        # @.str22
.L.str22:
	.asciz	"Distance_thresh (%f) too big for integer arithmetic.\n"
	.size	.L.str22, 54

	.type	.L.str23,@object        # @.str23
.L.str23:
	.asciz	"Either reduce it to <=15 or recompile with variable \"total\"\n"
	.size	.L.str23, 61

	.type	.L.str24,@object        # @.str24
.L.str24:
	.asciz	"as a float: see top \"defines\" section.\n"
	.size	.L.str24, 40

	.type	.L.str25,@object        # @.str25
.L.str25:
	.asciz	"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\n"
	.size	.L.str25, 65

	.type	.L.str26,@object        # @.str26
.L.str26:
	.asciz	"\nNumber Corner = %d"
	.size	.L.str26, 20

	.type	.L.str27,@object        # @.str27
.L.str27:
	.asciz	"Too many corners.\n"
	.size	.L.str27, 19

	.type	.L.str28,@object        # @.str28
.L.str28:
	.asciz	"\nEntra no loop = %d"
	.size	.L.str28, 20

	.type	.L.str29,@object        # @.str29
.L.str29:
	.asciz	"No argument following -d\n"
	.size	.L.str29, 26

	.type	.L.str30,@object        # @.str30
.L.str30:
	.asciz	"No argument following -t\n"
	.size	.L.str30, 26

	.type	time_begin,@object      # @time_begin
	.section	.sbss,"aw",@nobits
	.p2align	3
time_begin:
	.quad	0                       # double 0
	.size	time_begin, 8

	.type	.L.str31,@object        # @.str31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str31:
	.asciz	"accept_time.txt"
	.size	.L.str31, 16

	.type	.L.str132,@object       # @.str132
.L.str132:
	.asciz	"w"
	.size	.L.str132, 2

	.type	.L.str233,@object       # @.str233
.L.str233:
	.asciz	"%f\n"
	.size	.L.str233, 4

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"Usage: susan <in.pgm> <out.pgm> [options]\n"
	.size	.Lstr, 43

	.type	.Lstr1,@object          # @str1
	.p2align	4
.Lstr1:
	.asciz	"-s : Smoothing mode (default)"
	.size	.Lstr1, 30

	.type	.Lstr2,@object          # @str2
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr2:
	.asciz	"-e : Edges mode"
	.size	.Lstr2, 16

	.type	.Lstr3,@object          # @str3
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr3:
	.asciz	"-c : Corners mode\n"
	.size	.Lstr3, 19

	.type	.Lstr4,@object          # @str4
	.p2align	4
.Lstr4:
	.asciz	"See source code for more information about setting the thresholds"
	.size	.Lstr4, 66

	.type	.Lstr5,@object          # @str5
	.p2align	4
.Lstr5:
	.asciz	"-t <thresh> : Brightness threshold, all modes (default=20)"
	.size	.Lstr5, 59

	.type	.Lstr6,@object          # @str6
	.p2align	4
.Lstr6:
	.asciz	"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)"
	.size	.Lstr6, 106

	.type	.Lstr7,@object          # @str7
	.p2align	4
.Lstr7:
	.asciz	"-3 : Use flat 3x3 mask, edges or smoothing mode"
	.size	.Lstr7, 48

	.type	.Lstr8,@object          # @str8
	.p2align	4
.Lstr8:
	.asciz	"-n : No post-processing on the binary edge map (runs much faster); edges mode"
	.size	.Lstr8, 78

	.type	.Lstr9,@object          # @str9
	.p2align	4
.Lstr9:
	.asciz	"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode"
	.size	.Lstr9, 110

	.type	.Lstr10,@object         # @str10
	.p2align	4
.Lstr10:
	.asciz	"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode"
	.size	.Lstr10, 107

	.type	.Lstr11,@object         # @str11
	.p2align	4
.Lstr11:
	.asciz	"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)"
	.size	.Lstr11, 90

	.type	.Lstr12,@object         # @str12
	.p2align	4
.Lstr12:
	.asciz	"\nSUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk"
	.size	.Lstr12, 76

	.type	.Lstr13,@object         # @str13
	.p2align	4
.Lstr13:
	.asciz	"Either reduce it to <=15 or recompile with variable \"total\""
	.size	.Lstr13, 60

	.type	.Lstr14,@object         # @str14
	.p2align	4
.Lstr14:
	.asciz	"as a float: see top \"defines\" section."
	.size	.Lstr14, 39

	.type	.Lstr15,@object         # @str15
	.p2align	4
.Lstr15:
	.asciz	"Too many corners."
	.size	.Lstr15, 18

	.type	.Lstr16,@object         # @str16
	.p2align	4
.Lstr16:
	.asciz	"Too many corners."
	.size	.Lstr16, 18

	.type	.Lstr17,@object         # @str17
	.p2align	4
.Lstr17:
	.asciz	"No argument following -d"
	.size	.Lstr17, 25

	.type	.Lstr18,@object         # @str18
	.p2align	4
.Lstr18:
	.asciz	"No argument following -t"
	.size	.Lstr18, 25

	.section	".note.GNU-stack","",@progbits
