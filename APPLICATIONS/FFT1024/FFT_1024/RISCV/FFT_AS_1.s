	.text
	.file	"app.opt.bc"
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
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
	lui	a0, 4
	mv	a1, zero
	call	malloc
	mv	s5, a0
	mv	a2, zero
	mv	a0, zero
	lui	a1, %hi(entrada1024)
	addi	a7, a1, %lo(entrada1024)
	lui	a3, %hi(entrada1024i)
	addi	a3, a3, %lo(entrada1024i)
	addi	a6, zero, 1024
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli	a5, a2, 3
	add	s1, a5, a7
	lw	a4, 0(s1)
	lw	s1, 4(s1)
	slli	s0, a2, 4
	add	s0, s5, s0
	add	a5, a5, a3
	lw	a1, 4(a5)
	lw	a5, 0(a5)
	sw	s1, 4(s0)
	sw	a4, 0(s0)
	sw	a1, 12(s0)
	sw	a5, 8(s0)
	addi	a1, a2, 1
	sltu	a2, a1, a2
	add	a0, a0, a2
	mv	a2, a1
	bne	a1, a6, .LBB0_1
# %bb.2:                                # %for.end
	call	clock
	mv	s3, a0
	mv	s2, a1
	call	accept_roi_begin
	addi	a1, zero, 1024
	mv	a0, s5
	call	reverteBit
	addi	a1, zero, 1024
	mv	a0, s5
	call	fft
	call	accept_roi_end
	call	clock
	mv	s1, a0
	mv	s4, a1
	addi	a1, zero, 1024
	mv	a0, s5
	call	mostraResultado
	lui	a0, %hi(.Lstr1)
	addi	a0, a0, %lo(.Lstr1)
	call	puts
	sltu	a0, s1, s3
	sub	a1, s4, s2
	sub	a1, a1, a0
	sub	a0, s1, s3
	call	__floatdidf
	mv	s2, a0
	mv	s1, a1
	lui	a3, 264436
	mv	a2, zero
	call	__muldf3
	lui	a2, 266984
	addi	s0, a2, 1152
	mv	a2, zero
	mv	a3, s0
	call	__divdf3
	mv	a2, a0
	lui	a0, %hi(.L.str1)
	addi	a0, a0, %lo(.L.str1)
	mv	a3, a1
	call	printf
	mv	a0, s2
	mv	a1, s1
	mv	a2, zero
	mv	a3, s0
	call	__divdf3
	lui	a2, %hi(.L.str2)
	addi	a2, a2, %lo(.L.str2)
	mv	a3, a0
	mv	a0, a2
	mv	a2, a3
	mv	a3, a1
	lw	s5, 4(sp)
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	tail	printf
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	reverteBit              # -- Begin function reverteBit
	.p2align	2
	.type	reverteBit,@function
reverteBit:                             # @reverteBit
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	addi	a6, a1, -1
	addi	a2, zero, 2
	blt	a6, a2, .LBB1_7
# %bb.1:                                # %while.cond.preheader.lr.ph
	mv	a7, zero
	mv	a3, zero
	addi	t0, zero, 1
	j	.LBB1_3
.LBB1_2:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	addi	a2, t0, 1
	sltu	a4, a2, t0
	add	a7, a7, a4
	mv	t0, a2
	beq	a2, a6, .LBB1_7
.LBB1_3:                                # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	mv	a2, a1
.LBB1_4:                                # %while.cond
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a5, a3
	srli	a3, a2, 31
	add	a2, a2, a3
	srai	a2, a2, 1
	sub	a3, a5, a2
	bge	a5, a2, .LBB1_4
# %bb.5:                                # %while.end
                                        #   in Loop: Header=BB1_3 Depth=1
	add	a3, a2, a5
	bge	t0, a3, .LBB1_2
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB1_3 Depth=1
	slli	a2, t0, 4
	add	a2, a0, a2
	lw	a5, 8(a2)
	sw	a5, 8(sp)
	lw	a5, 0(a2)
	sw	a5, 0(sp)
	lw	a5, 12(a2)
	sw	a5, 12(sp)
	lw	a5, 4(a2)
	sw	a5, 4(sp)
	slli	a5, a3, 4
	add	a5, a0, a5
	lw	a4, 8(a5)
	sw	a4, 8(a2)
	lw	a4, 0(a5)
	sw	a4, 0(a2)
	lw	a4, 12(a5)
	sw	a4, 12(a2)
	lw	a4, 4(a5)
	sw	a4, 4(a2)
	lw	a2, 8(sp)
	sw	a2, 8(a5)
	lw	a2, 0(sp)
	sw	a2, 0(a5)
	lw	a2, 12(sp)
	sw	a2, 12(a5)
	lw	a2, 4(sp)
	sw	a2, 4(a5)
	j	.LBB1_2
.LBB1_7:                                # %for.end
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	reverteBit, .Lfunc_end1-reverteBit
	.cfi_endproc
                                        # -- End function
	.globl	fft                     # -- Begin function fft
	.p2align	2
	.type	fft,@function
fft:                                    # @fft
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -176
	.cfi_def_cfa_offset 176
	sw	ra, 172(sp)
	sw	s0, 168(sp)
	sw	s1, 164(sp)
	sw	s2, 160(sp)
	sw	s3, 156(sp)
	sw	s4, 152(sp)
	sw	s5, 148(sp)
	sw	s6, 144(sp)
	sw	s7, 140(sp)
	sw	s8, 136(sp)
	sw	s9, 132(sp)
	sw	s10, 128(sp)
	sw	s11, 124(sp)
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
	mv	s1, a1
	mv	s10, a0
	mv	a0, a1
	call	__floatsidf
	call	log2
	call	__fixdfsi
	mv	s0, a0
	srai	a0, s1, 31
	srli	a1, s1, 28
	slli	a0, a0, 4
	or	a1, a0, a1
	slli	a0, s1, 4
	call	malloc
	addi	a1, zero, 1
	blt	s0, a1, .LBB2_16
# %bb.1:                                # %for.cond5.preheader.lr.ph
	mv	s3, a0
	addi	a0, s0, 1
	sw	a0, 8(sp)
	addi	s8, zero, 2
	addi	a1, zero, 1
	sw	s1, 16(sp)
	j	.LBB2_3
.LBB2_2:                                # %for.end52
                                        #   in Loop: Header=BB2_3 Depth=1
	lw	a1, 12(sp)
	addi	a1, a1, 1
	slli	s8, s8, 1
	lw	a0, 8(sp)
	beq	a1, a0, .LBB2_16
.LBB2_3:                                # %for.cond5.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #       Child Loop BB2_11 Depth 3
                                        #     Child Loop BB2_15 Depth 2
	sw	a1, 12(sp)
	addi	a0, zero, 1
	blt	s8, a0, .LBB2_13
# %bb.4:                                # %accept_cond.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	mv	s4, zero
	mv	a1, zero
	srli	a0, s8, 31
	add	a0, s8, a0
	srai	s5, a0, 1
	j	.LBB2_6
.LBB2_5:                                # %for.inc39
                                        #   in Loop: Header=BB2_6 Depth=2
	addi	a0, s4, 1
	sltu	a1, a0, s4
	lw	a2, 20(sp)
	add	a1, a2, a1
	mv	s4, a0
	beq	a0, s8, .LBB2_13
.LBB2_6:                                # %accept_cond
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_11 Depth 3
	sw	a1, 20(sp)
	andi	a0, s4, 1
	bnez	a0, .LBB2_5
# %bb.7:                                # %for.cond9.preheader
                                        #   in Loop: Header=BB2_6 Depth=2
	lw	a0, 16(sp)
	mv	a1, s8
	call	__divsi3
	mv	s11, a0
	addi	a0, zero, 1
	blt	s11, a0, .LBB2_5
# %bb.8:                                # %for.body13.lr.ph
                                        #   in Loop: Header=BB2_6 Depth=2
	mv	s2, zero
	mv	s6, zero
	j	.LBB2_11
.LBB2_9:                                # %if.else
                                        #   in Loop: Header=BB2_11 Depth=3
	add	s1, s5, s7
	addi	a0, sp, 56
	mv	a1, s4
	mv	a2, s8
	call	W
	lw	a7, 64(sp)
	lw	a6, 60(sp)
	lw	a5, 56(sp)
	slli	a0, s1, 4
	add	a0, s10, a0
	lbu	a1, 1(a0)
	lbu	a2, 0(a0)
	lbu	a3, 3(a0)
	lbu	a4, 2(a0)
	slli	a1, a1, 8
	or	a1, a1, a2
	slli	a2, a3, 8
	or	a2, a2, a4
	slli	a2, a2, 16
	or	a1, a2, a1
	lbu	a2, 5(a0)
	lbu	a3, 4(a0)
	lbu	a4, 7(a0)
	lbu	s1, 6(a0)
	slli	a2, a2, 8
	or	a2, a2, a3
	slli	a3, a4, 8
	or	a3, a3, s1
	slli	a3, a3, 16
	or	a2, a3, a2
	lbu	a3, 9(a0)
	lbu	a4, 8(a0)
	lbu	s1, 11(a0)
	lbu	s0, 10(a0)
	slli	a3, a3, 8
	or	a3, a3, a4
	slli	a4, s1, 8
	or	a4, a4, s0
	lbu	s1, 13(a0)
	slli	a4, a4, 16
	or	a3, a4, a3
	lbu	a4, 12(a0)
	slli	s1, s1, 8
	lbu	s0, 15(a0)
	lbu	a0, 14(a0)
	or	a4, s1, a4
	lw	s1, 68(sp)
	slli	s0, s0, 8
	or	a0, s0, a0
	slli	a0, a0, 16
	or	a4, a0, a4
	sw	s1, 0(sp)
	addi	a0, sp, 40
	call	mult
	lw	a7, 48(sp)
	lw	a6, 44(sp)
	lw	a5, 40(sp)
	slli	s7, s7, 4
	add	a0, s10, s7
	lbu	a1, 1(a0)
	lbu	a2, 0(a0)
	lbu	a3, 3(a0)
	lbu	a4, 2(a0)
	slli	a1, a1, 8
	or	a1, a1, a2
	slli	a2, a3, 8
	or	a2, a2, a4
	slli	a2, a2, 16
	or	a1, a2, a1
	lbu	a2, 5(a0)
	lbu	a3, 4(a0)
	lbu	a4, 7(a0)
	lbu	s1, 6(a0)
	slli	a2, a2, 8
	or	a2, a2, a3
	slli	a3, a4, 8
	or	a3, a3, s1
	slli	a3, a3, 16
	or	a2, a3, a2
	lbu	a3, 9(a0)
	lbu	a4, 8(a0)
	lbu	s1, 11(a0)
	lbu	s0, 10(a0)
	slli	a3, a3, 8
	or	a3, a3, a4
	slli	a4, s1, 8
	or	a4, a4, s0
	lbu	s1, 13(a0)
	slli	a4, a4, 16
	or	a3, a4, a3
	lbu	a4, 12(a0)
	slli	s1, s1, 8
	lbu	s0, 15(a0)
	lbu	a0, 14(a0)
	or	a4, s1, a4
	lw	s1, 52(sp)
	slli	s0, s0, 8
	or	a0, s0, a0
	slli	a0, a0, 16
	or	a4, a0, a4
	sw	s1, 0(sp)
	addi	a0, sp, 24
	call	soma
	lw	a0, 36(sp)
	lw	a1, 24(sp)
	lw	a2, 28(sp)
	lw	a3, 32(sp)
.LBB2_10:                               # %for.inc
                                        #   in Loop: Header=BB2_11 Depth=3
	add	a4, s3, s7
	sw	a1, 0(a4)
	sw	a2, 4(a4)
	sw	a3, 8(a4)
	sw	a0, 12(a4)
	addi	a0, s2, 1
	sltu	a1, a0, s2
	add	s6, s6, a1
	mv	s2, a0
	beq	a0, s11, .LBB2_5
.LBB2_11:                               # %for.body13
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s2
	mv	a1, s8
	call	__mulsi3
	add	s7, a0, s4
	blt	s4, s5, .LBB2_9
# %bb.12:                               # %if.then
                                        #   in Loop: Header=BB2_11 Depth=3
	sub	s9, s7, s5
	addi	a0, sp, 104
	mv	a1, s4
	mv	a2, s8
	call	W
	lw	a7, 112(sp)
	lw	a6, 108(sp)
	lw	a5, 104(sp)
	slli	s7, s7, 4
	add	a0, s10, s7
	lbu	a1, 1(a0)
	lbu	a2, 0(a0)
	lbu	a3, 3(a0)
	lbu	a4, 2(a0)
	slli	a1, a1, 8
	or	a1, a1, a2
	slli	a2, a3, 8
	or	a2, a2, a4
	slli	a2, a2, 16
	or	a1, a2, a1
	lbu	a2, 5(a0)
	lbu	a3, 4(a0)
	lbu	a4, 7(a0)
	lbu	s0, 6(a0)
	slli	a2, a2, 8
	or	a2, a2, a3
	slli	a3, a4, 8
	or	a3, a3, s0
	slli	a3, a3, 16
	or	a2, a3, a2
	lbu	a3, 9(a0)
	lbu	a4, 8(a0)
	lbu	s0, 11(a0)
	lbu	s1, 10(a0)
	slli	a3, a3, 8
	or	a3, a3, a4
	slli	a4, s0, 8
	or	a4, a4, s1
	lbu	s1, 13(a0)
	slli	a4, a4, 16
	or	a3, a4, a3
	lbu	a4, 12(a0)
	slli	s1, s1, 8
	lbu	s0, 15(a0)
	lbu	a0, 14(a0)
	or	a4, s1, a4
	lw	s1, 116(sp)
	slli	s0, s0, 8
	or	a0, s0, a0
	slli	a0, a0, 16
	or	a4, a0, a4
	sw	s1, 0(sp)
	addi	a0, sp, 88
	call	mult
	lw	a7, 96(sp)
	lw	a6, 92(sp)
	lw	a5, 88(sp)
	slli	a0, s9, 4
	add	a0, s10, a0
	lbu	a1, 1(a0)
	lbu	a2, 0(a0)
	lbu	a3, 3(a0)
	lbu	a4, 2(a0)
	slli	a1, a1, 8
	or	a1, a1, a2
	slli	a2, a3, 8
	or	a2, a2, a4
	slli	a2, a2, 16
	or	a1, a2, a1
	lbu	a2, 5(a0)
	lbu	a3, 4(a0)
	lbu	a4, 7(a0)
	lbu	s1, 6(a0)
	slli	a2, a2, 8
	or	a2, a2, a3
	slli	a3, a4, 8
	or	a3, a3, s1
	slli	a3, a3, 16
	or	a2, a3, a2
	lbu	a3, 9(a0)
	lbu	a4, 8(a0)
	lbu	s1, 11(a0)
	lbu	s0, 10(a0)
	slli	a3, a3, 8
	or	a3, a3, a4
	slli	a4, s1, 8
	or	a4, a4, s0
	lbu	s1, 13(a0)
	slli	a4, a4, 16
	or	a3, a4, a3
	lbu	a4, 12(a0)
	slli	s1, s1, 8
	lbu	s0, 15(a0)
	lbu	a0, 14(a0)
	or	a4, s1, a4
	lw	s1, 100(sp)
	slli	s0, s0, 8
	or	a0, s0, a0
	slli	a0, a0, 16
	or	a4, a0, a4
	sw	s1, 0(sp)
	addi	a0, sp, 72
	call	soma
	lw	a0, 84(sp)
	lw	a1, 72(sp)
	lw	a2, 76(sp)
	lw	a3, 80(sp)
	j	.LBB2_10
.LBB2_13:                               # %for.cond42.loopexit
                                        #   in Loop: Header=BB2_3 Depth=1
	lw	s1, 16(sp)
	addi	a0, zero, 1
	blt	s1, a0, .LBB2_2
# %bb.14:                               # %for.body45.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	mv	a1, zero
	mv	a0, zero
.LBB2_15:                               # %for.body45
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a2, a1, 4
	add	a3, s3, a2
	lw	a4, 12(a3)
	add	a2, s10, a2
	sw	a4, 12(a2)
	lw	a4, 8(a3)
	sw	a4, 8(a2)
	lw	a4, 4(a3)
	sw	a4, 4(a2)
	lw	a3, 0(a3)
	sw	a3, 0(a2)
	addi	a2, a1, 1
	sltu	a1, a2, a1
	add	a0, a0, a1
	mv	a1, a2
	bne	a2, s1, .LBB2_15
	j	.LBB2_2
.LBB2_16:                               # %for.end56
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	lw	s11, 124(sp)
	lw	s10, 128(sp)
	lw	s9, 132(sp)
	lw	s8, 136(sp)
	lw	s7, 140(sp)
	lw	s6, 144(sp)
	lw	s5, 148(sp)
	lw	s4, 152(sp)
	lw	s3, 156(sp)
	lw	s2, 160(sp)
	lw	s1, 164(sp)
	lw	s0, 168(sp)
	lw	ra, 172(sp)
	addi	sp, sp, 176
	tail	puts
.Lfunc_end2:
	.size	fft, .Lfunc_end2-fft
	.cfi_endproc
                                        # -- End function
	.globl	mostraResultado         # -- Begin function mostraResultado
	.p2align	2
	.type	mostraResultado,@function
mostraResultado:                        # @mostraResultado
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
	addi	a2, zero, 1
	blt	a1, a2, .LBB3_3
# %bb.1:                                # %for.body.preheader
	mv	s3, a1
	mv	s2, a0
	mv	s0, zero
	mv	s1, zero
	lui	a0, %hi(.L.str4)
	addi	s4, a0, %lo(.L.str4)
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli	a0, s0, 4
	add	a0, s2, a0
	lw	a5, 12(a0)
	lw	a4, 8(a0)
	lw	a3, 4(a0)
	lw	a2, 0(a0)
	mv	a0, s4
	mv	a1, s0
	call	printf
	addi	a0, s0, 1
	sltu	a1, a0, s0
	add	s1, s1, a1
	mv	s0, a0
	bne	a0, s3, .LBB3_2
.LBB3_3:                                # %for.end
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	mostraResultado, .Lfunc_end3-mostraResultado
	.cfi_endproc
                                        # -- End function
	.globl	soma                    # -- Begin function soma
	.p2align	2
	.type	soma,@function
soma:                                   # @soma
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
	lw	s2, 32(sp)
	mv	s3, a7
	mv	s4, a4
	mv	s1, a3
	mv	s0, a0
	mv	a0, a1
	mv	a1, a2
	mv	a2, a5
	mv	a3, a6
	call	__adddf3
	mv	s5, a0
	mv	s6, a1
	mv	a0, s1
	mv	a1, s4
	mv	a2, s3
	mv	a3, s2
	call	__adddf3
	sw	a1, 12(s0)
	sw	a0, 8(s0)
	sw	s6, 4(s0)
	sw	s5, 0(s0)
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
	.size	soma, .Lfunc_end4-soma
	.cfi_endproc
                                        # -- End function
	.globl	mult                    # -- Begin function mult
	.p2align	2
	.type	mult,@function
mult:                                   # @mult
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
	lw	s6, 48(sp)
	mv	s7, a7
	mv	s2, a6
	mv	s3, a5
	mv	s4, a4
	mv	s5, a3
	mv	s8, a2
	mv	s1, a1
	mv	s0, a0
	mv	a0, a1
	mv	a1, a2
	mv	a2, a5
	mv	a3, a6
	call	__muldf3
	mv	s9, a0
	mv	s10, a1
	mv	a0, s5
	mv	a1, s4
	mv	a2, s7
	mv	a3, s6
	call	__muldf3
	mv	a2, a0
	mv	a3, a1
	mv	a0, s9
	mv	a1, s10
	call	__subdf3
	mv	s9, a0
	mv	s10, a1
	mv	a0, s1
	mv	a1, s8
	mv	a2, s7
	mv	a3, s6
	call	__muldf3
	mv	s1, a0
	mv	s6, a1
	mv	a0, s5
	mv	a1, s4
	mv	a2, s3
	mv	a3, s2
	call	__muldf3
	mv	a2, s1
	mv	a3, s6
	call	__adddf3
	sw	a1, 12(s0)
	sw	a0, 8(s0)
	sw	s10, 4(s0)
	sw	s9, 0(s0)
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
.Lfunc_end5:
	.size	mult, .Lfunc_end5-mult
	.cfi_endproc
                                        # -- End function
	.globl	W                       # -- Begin function W
	.p2align	2
	.type	W,@function
W:                                      # @W
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
	mv	s2, a2
	mv	s4, a0
	slli	a0, a1, 1
	call	__floatsidf
	lui	a2, 345155
	addi	a2, a2, -744
	lui	a3, 262290
	addi	a3, a3, 507
	call	__muldf3
	mv	s0, a0
	mv	s3, a1
	mv	a0, s2
	call	__floatsidf
	mv	a2, a0
	mv	a3, a1
	mv	a0, s0
	mv	a1, s3
	call	__divdf3
	mv	s0, a0
	mv	s1, a1
	call	cos
	mv	s2, a0
	mv	s3, a1
	mv	a0, s0
	mv	a1, s1
	call	sin
	lui	a2, 524288
	xor	a1, a1, a2
	sw	s3, 4(s4)
	sw	s2, 0(s4)
	sw	a0, 8(s4)
	sw	a1, 12(s4)
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end6:
	.size	W, .Lfunc_end6-W
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
.Lfunc_end7:
	.size	accept_roi_begin, .Lfunc_end7-accept_roi_begin
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
	lui	a0, %hi(.L.str5)
	addi	a0, a0, %lo(.L.str5)
	lui	a1, %hi(.L.str16)
	addi	a1, a1, %lo(.L.str16)
	call	fopen
	mv	s0, a0
	lui	a0, %hi(.L.str27)
	addi	a1, a0, %lo(.L.str27)
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
.Lfunc_end8:
	.size	accept_roi_end, .Lfunc_end8-accept_roi_end
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
	bltz	a0, .LBB9_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	fastpow2, .Lfunc_end9-fastpow2
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
	bltz	a0, .LBB10_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB10_2:                               # %entry
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
.Lfunc_end10:
	.size	fastexp, .Lfunc_end10-fastexp
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
	bltz	a0, .LBB11_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB11_2:                               # %entry
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
.Lfunc_end11:
	.size	fasterpow2, .Lfunc_end11-fasterpow2
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
	bltz	a0, .LBB12_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB12_2:                               # %entry
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
.Lfunc_end12:
	.size	fasterexp, .Lfunc_end12-fasterexp
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
.Lfunc_end13:
	.size	fastlog2, .Lfunc_end13-fastlog2
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
.Lfunc_end14:
	.size	fastlog, .Lfunc_end14-fastlog
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
.Lfunc_end15:
	.size	fasterlog2, .Lfunc_end15-fasterlog2
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
.Lfunc_end16:
	.size	fasterlog, .Lfunc_end16-fasterlog
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
	bltz	a0, .LBB17_2
# %bb.1:                                # %entry
	mv	s1, s0
.LBB17_2:                               # %entry
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
	bltz	a0, .LBB17_4
# %bb.3:                                # %entry
	mv	s4, s2
.LBB17_4:                               # %entry
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
.Lfunc_end17:
	.size	fasterfc, .Lfunc_end17-fasterfc
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
	bltz	a0, .LBB18_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB18_2:                               # %entry
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
.Lfunc_end18:
	.size	fastererfc, .Lfunc_end18-fastererfc
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
	bltz	a0, .LBB19_2
# %bb.1:                                # %entry
	mv	s1, s0
.LBB19_2:                               # %entry
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
	bltz	a0, .LBB19_4
# %bb.3:                                # %entry
	mv	s4, s2
.LBB19_4:                               # %entry
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
.Lfunc_end19:
	.size	fasterf, .Lfunc_end19-fasterf
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
	bltz	a0, .LBB20_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB20_2:                               # %entry
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
.Lfunc_end20:
	.size	fastererf, .Lfunc_end20-fastererf
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
.Lfunc_end21:
	.size	fastinverseerf, .Lfunc_end21-fastinverseerf
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
.Lfunc_end22:
	.size	fasterinverseerf, .Lfunc_end22-fasterinverseerf
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
.Lfunc_end23:
	.size	fastlgamma, .Lfunc_end23-fastlgamma
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
.Lfunc_end24:
	.size	fasterlgamma, .Lfunc_end24-fasterlgamma
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
.Lfunc_end25:
	.size	fastdigamma, .Lfunc_end25-fastdigamma
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
.Lfunc_end26:
	.size	fasterdigamma, .Lfunc_end26-fasterdigamma
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
	bltz	a0, .LBB27_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB27_2:                               # %entry
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
	bltz	a0, .LBB27_4
# %bb.3:                                # %entry
	mv	s8, s0
.LBB27_4:                               # %entry
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
.Lfunc_end27:
	.size	fastsinh, .Lfunc_end27-fastsinh
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
	bltz	a1, .LBB28_2
# %bb.1:                                # %entry
	mv	a0, s0
.LBB28_2:                               # %entry
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
	bltz	a0, .LBB28_4
# %bb.3:                                # %entry
	mv	s2, s1
.LBB28_4:                               # %entry
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
.Lfunc_end28:
	.size	fastersinh, .Lfunc_end28-fastersinh
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
	bltz	a0, .LBB29_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB29_2:                               # %entry
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
	bltz	a0, .LBB29_4
# %bb.3:                                # %entry
	mv	s8, s0
.LBB29_4:                               # %entry
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
.Lfunc_end29:
	.size	fastcosh, .Lfunc_end29-fastcosh
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
	bltz	a1, .LBB30_2
# %bb.1:                                # %entry
	mv	a0, s0
.LBB30_2:                               # %entry
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
	bltz	a0, .LBB30_4
# %bb.3:                                # %entry
	mv	s2, s1
.LBB30_4:                               # %entry
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
.Lfunc_end30:
	.size	fastercosh, .Lfunc_end30-fastercosh
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
	bltz	a0, .LBB31_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB31_2:                               # %entry
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
.Lfunc_end31:
	.size	fasttanh, .Lfunc_end31-fasttanh
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
	lui	a0, 262144
	call	__divsf3
	lui	a1, 784384
	call	__addsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end32:
	.size	fastertanh, .Lfunc_end32-fastertanh
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
	bltz	a0, .LBB33_2
# %bb.1:                                # %entry
	lui	s2, 524288
	lui	a0, 260096
	j	.LBB33_3
.LBB33_2:
	lui	a0, 261216
	addi	a0, a0, -79
	lui	a1, 259022
	addi	s2, a1, -386
.LBB33_3:                               # %entry
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
	bltz	a0, .LBB33_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB33_5:                               # %entry
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
.Lfunc_end33:
	.size	fastlambertw, .Lfunc_end33-fastlambertw
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
	bltz	a0, .LBB34_2
# %bb.1:                                # %entry
	lui	a0, 260096
	j	.LBB34_3
.LBB34_2:
	lui	a0, 261216
	addi	a0, a0, -79
.LBB34_3:                               # %entry
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
	bltz	a0, .LBB34_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB34_5:                               # %entry
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
.Lfunc_end34:
	.size	fasterlambertw, .Lfunc_end34-fasterlambertw
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
	blt	a1, a0, .LBB35_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s8, a0
	j	.LBB35_3
.LBB35_2:
	mv	s8, zero
.LBB35_3:                               # %cond.end
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
	bltz	a0, .LBB35_5
# %bb.4:                                # %cond.end
	mv	s1, s8
.LBB35_5:                               # %cond.end
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
.Lfunc_end35:
	.size	fastlambertwexpx, .Lfunc_end35-fastlambertwexpx
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
	blt	a1, a0, .LBB36_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s6, a0
	j	.LBB36_3
.LBB36_2:
	mv	s6, zero
.LBB36_3:                               # %cond.end
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
	bltz	a0, .LBB36_5
# %bb.4:                                # %cond.end
	mv	s1, s6
.LBB36_5:                               # %cond.end
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
.Lfunc_end36:
	.size	fasterlambertwexpx, .Lfunc_end36-fasterlambertwexpx
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
	bltz	a0, .LBB37_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB37_2:                               # %entry
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
.Lfunc_end37:
	.size	fastpow, .Lfunc_end37-fastpow
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
	bltz	a0, .LBB38_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB38_2:                               # %entry
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
.Lfunc_end38:
	.size	fasterpow, .Lfunc_end38-fasterpow
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
.Lfunc_end39:
	.size	fastsigmoid, .Lfunc_end39-fastsigmoid
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
	bltz	a0, .LBB40_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB40_2:                               # %entry
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
.Lfunc_end40:
	.size	fastersigmoid, .Lfunc_end40-fastersigmoid
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
.Lfunc_end41:
	.size	fastsin, .Lfunc_end41-fastsin
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
.Lfunc_end42:
	.size	fastersin, .Lfunc_end42-fastersin
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
	bltz	a0, .LBB43_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB43_2:                               # %entry
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
.Lfunc_end43:
	.size	fastsinfull, .Lfunc_end43-fastsinfull
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
	bltz	a0, .LBB44_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB44_2:                               # %entry
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
.Lfunc_end44:
	.size	fastersinfull, .Lfunc_end44-fastersinfull
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
	blez	a0, .LBB45_2
# %bb.1:
	lui	a0, 788845
	addi	s1, a0, -1052
.LBB45_2:                               # %entry
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
.Lfunc_end45:
	.size	fastcos, .Lfunc_end45-fastcos
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
.Lfunc_end46:
	.size	fastercos, .Lfunc_end46-fastercos
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
	bltz	a0, .LBB47_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB47_2:                               # %entry
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
.Lfunc_end47:
	.size	fastcosfull, .Lfunc_end47-fastcosfull
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
	bltz	a0, .LBB48_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB48_2:                               # %entry
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
.Lfunc_end48:
	.size	fastercosfull, .Lfunc_end48-fastercosfull
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
.Lfunc_end49:
	.size	fasttan, .Lfunc_end49-fasttan
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
.Lfunc_end50:
	.size	fastertan, .Lfunc_end50-fastertan
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
	bltz	a0, .LBB51_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB51_2:                               # %entry
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
	blez	a0, .LBB51_4
# %bb.3:
	lui	a0, 788845
	addi	s0, a0, -1052
.LBB51_4:                               # %entry
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
.Lfunc_end51:
	.size	fasttanfull, .Lfunc_end51-fasttanfull
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
	bltz	a0, .LBB52_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB52_2:                               # %entry
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
.Lfunc_end52:
	.size	fastertanfull, .Lfunc_end52-fastertanfull
	.cfi_endproc
                                        # -- End function
	.type	entrada1024,@object     # @entrada1024
	.data
	.globl	entrada1024
	.p2align	4
entrada1024:
	.quad	4607182418800017408     # double 1
	.quad	4611686018427387904     # double 2
	.quad	4613937818241073152     # double 3
	.quad	4616189618054758400     # double 4
	.quad	4617315517961601024     # double 5
	.quad	4618441417868443648     # double 6
	.quad	4619567317775286272     # double 7
	.quad	4620693217682128896     # double 8
	.quad	4621256167635550208     # double 9
	.quad	4621819117588971520     # double 10
	.quad	4622382067542392832     # double 11
	.quad	4622945017495814144     # double 12
	.quad	4623507967449235456     # double 13
	.quad	4624070917402656768     # double 14
	.quad	4624633867356078080     # double 15
	.quad	4625196817309499392     # double 16
	.quad	4625478292286210048     # double 17
	.quad	4625759767262920704     # double 18
	.quad	4626041242239631360     # double 19
	.quad	4626322717216342016     # double 20
	.quad	4626604192193052672     # double 21
	.quad	4626885667169763328     # double 22
	.quad	4627167142146473984     # double 23
	.quad	4627448617123184640     # double 24
	.quad	4627730092099895296     # double 25
	.quad	4628011567076605952     # double 26
	.quad	4628293042053316608     # double 27
	.quad	4628574517030027264     # double 28
	.quad	4628855992006737920     # double 29
	.quad	4629137466983448576     # double 30
	.quad	4629418941960159232     # double 31
	.quad	4629700416936869888     # double 32
	.quad	4629841154425225216     # double 33
	.quad	4629981891913580544     # double 34
	.quad	4630122629401935872     # double 35
	.quad	4630263366890291200     # double 36
	.quad	4630404104378646528     # double 37
	.quad	4630544841867001856     # double 38
	.quad	4630685579355357184     # double 39
	.quad	4630826316843712512     # double 40
	.quad	4630967054332067840     # double 41
	.quad	4631107791820423168     # double 42
	.quad	4631248529308778496     # double 43
	.quad	4631389266797133824     # double 44
	.quad	4631530004285489152     # double 45
	.quad	4631670741773844480     # double 46
	.quad	4631811479262199808     # double 47
	.quad	4631952216750555136     # double 48
	.quad	4632092954238910464     # double 49
	.quad	4632233691727265792     # double 50
	.quad	4632374429215621120     # double 51
	.quad	4632515166703976448     # double 52
	.quad	4632655904192331776     # double 53
	.quad	4632796641680687104     # double 54
	.quad	4632937379169042432     # double 55
	.quad	4633078116657397760     # double 56
	.quad	4633218854145753088     # double 57
	.quad	4633359591634108416     # double 58
	.quad	4633500329122463744     # double 59
	.quad	4633641066610819072     # double 60
	.quad	4633781804099174400     # double 61
	.quad	4633922541587529728     # double 62
	.quad	4634063279075885056     # double 63
	.quad	4634204016564240384     # double 64
	.quad	4634274385308418048     # double 65
	.quad	4634344754052595712     # double 66
	.quad	4634415122796773376     # double 67
	.quad	4634485491540951040     # double 68
	.quad	4634555860285128704     # double 69
	.quad	4634626229029306368     # double 70
	.quad	4634696597773484032     # double 71
	.quad	4634766966517661696     # double 72
	.quad	4634837335261839360     # double 73
	.quad	4634907704006017024     # double 74
	.quad	4634978072750194688     # double 75
	.quad	4635048441494372352     # double 76
	.quad	4635118810238550016     # double 77
	.quad	4635189178982727680     # double 78
	.quad	4635259547726905344     # double 79
	.quad	4635329916471083008     # double 80
	.quad	4635400285215260672     # double 81
	.quad	4635470653959438336     # double 82
	.quad	4635541022703616000     # double 83
	.quad	4635611391447793664     # double 84
	.quad	4635681760191971328     # double 85
	.quad	4635752128936148992     # double 86
	.quad	4635822497680326656     # double 87
	.quad	4635892866424504320     # double 88
	.quad	4635963235168681984     # double 89
	.quad	4636033603912859648     # double 90
	.quad	4636103972657037312     # double 91
	.quad	4636174341401214976     # double 92
	.quad	4636244710145392640     # double 93
	.quad	4636315078889570304     # double 94
	.quad	4636385447633747968     # double 95
	.quad	4636455816377925632     # double 96
	.quad	4636526185122103296     # double 97
	.quad	4636596553866280960     # double 98
	.quad	4636666922610458624     # double 99
	.quad	4636737291354636288     # double 100
	.quad	4636807660098813952     # double 101
	.quad	4636878028842991616     # double 102
	.quad	4636948397587169280     # double 103
	.quad	4637018766331346944     # double 104
	.quad	4637089135075524608     # double 105
	.quad	4637159503819702272     # double 106
	.quad	4637229872563879936     # double 107
	.quad	4637300241308057600     # double 108
	.quad	4637370610052235264     # double 109
	.quad	4637440978796412928     # double 110
	.quad	4637511347540590592     # double 111
	.quad	4637581716284768256     # double 112
	.quad	4637652085028945920     # double 113
	.quad	4637722453773123584     # double 114
	.quad	4637792822517301248     # double 115
	.quad	4637863191261478912     # double 116
	.quad	4637933560005656576     # double 117
	.quad	4638003928749834240     # double 118
	.quad	4638074297494011904     # double 119
	.quad	4638144666238189568     # double 120
	.quad	4638215034982367232     # double 121
	.quad	4638285403726544896     # double 122
	.quad	4638355772470722560     # double 123
	.quad	4638426141214900224     # double 124
	.quad	4638496509959077888     # double 125
	.quad	4638566878703255552     # double 126
	.quad	4638637247447433216     # double 127
	.quad	4638707616191610880     # double 128
	.quad	4638742800563699712     # double 129
	.quad	4638777984935788544     # double 130
	.quad	4638813169307877376     # double 131
	.quad	4638848353679966208     # double 132
	.quad	4638883538052055040     # double 133
	.quad	4638918722424143872     # double 134
	.quad	4638953906796232704     # double 135
	.quad	4638989091168321536     # double 136
	.quad	4639024275540410368     # double 137
	.quad	4639059459912499200     # double 138
	.quad	4639094644284588032     # double 139
	.quad	4639129828656676864     # double 140
	.quad	4639165013028765696     # double 141
	.quad	4639200197400854528     # double 142
	.quad	4639235381772943360     # double 143
	.quad	4639270566145032192     # double 144
	.quad	4639305750517121024     # double 145
	.quad	4639340934889209856     # double 146
	.quad	4639376119261298688     # double 147
	.quad	4639411303633387520     # double 148
	.quad	4639446488005476352     # double 149
	.quad	4639481672377565184     # double 150
	.quad	4639516856749654016     # double 151
	.quad	4639552041121742848     # double 152
	.quad	4639587225493831680     # double 153
	.quad	4639622409865920512     # double 154
	.quad	4639657594238009344     # double 155
	.quad	4639692778610098176     # double 156
	.quad	4639727962982187008     # double 157
	.quad	4639763147354275840     # double 158
	.quad	4639798331726364672     # double 159
	.quad	4639833516098453504     # double 160
	.quad	4639868700470542336     # double 161
	.quad	4639903884842631168     # double 162
	.quad	4639939069214720000     # double 163
	.quad	4639974253586808832     # double 164
	.quad	4640009437958897664     # double 165
	.quad	4640044622330986496     # double 166
	.quad	4640079806703075328     # double 167
	.quad	4640114991075164160     # double 168
	.quad	4640150175447252992     # double 169
	.quad	4640185359819341824     # double 170
	.quad	4640220544191430656     # double 171
	.quad	4640255728563519488     # double 172
	.quad	4640290912935608320     # double 173
	.quad	4640326097307697152     # double 174
	.quad	4640361281679785984     # double 175
	.quad	4640396466051874816     # double 176
	.quad	4640431650423963648     # double 177
	.quad	4640466834796052480     # double 178
	.quad	4640502019168141312     # double 179
	.quad	4640537203540230144     # double 180
	.quad	4640572387912318976     # double 181
	.quad	4640607572284407808     # double 182
	.quad	4640642756656496640     # double 183
	.quad	4640677941028585472     # double 184
	.quad	4640713125400674304     # double 185
	.quad	4640748309772763136     # double 186
	.quad	4640783494144851968     # double 187
	.quad	4640818678516940800     # double 188
	.quad	4640853862889029632     # double 189
	.quad	4640889047261118464     # double 190
	.quad	4640924231633207296     # double 191
	.quad	4640959416005296128     # double 192
	.quad	4640994600377384960     # double 193
	.quad	4641029784749473792     # double 194
	.quad	4641064969121562624     # double 195
	.quad	4641100153493651456     # double 196
	.quad	4641135337865740288     # double 197
	.quad	4641170522237829120     # double 198
	.quad	4641205706609917952     # double 199
	.quad	4641240890982006784     # double 200
	.quad	4641276075354095616     # double 201
	.quad	4641311259726184448     # double 202
	.quad	4641346444098273280     # double 203
	.quad	4641381628470362112     # double 204
	.quad	4641416812842450944     # double 205
	.quad	4641451997214539776     # double 206
	.quad	4641487181586628608     # double 207
	.quad	4641522365958717440     # double 208
	.quad	4641557550330806272     # double 209
	.quad	4641592734702895104     # double 210
	.quad	4641627919074983936     # double 211
	.quad	4641663103447072768     # double 212
	.quad	4641698287819161600     # double 213
	.quad	4641733472191250432     # double 214
	.quad	4641768656563339264     # double 215
	.quad	4641803840935428096     # double 216
	.quad	4641839025307516928     # double 217
	.quad	4641874209679605760     # double 218
	.quad	4641909394051694592     # double 219
	.quad	4641944578423783424     # double 220
	.quad	4641979762795872256     # double 221
	.quad	4642014947167961088     # double 222
	.quad	4642050131540049920     # double 223
	.quad	4642085315912138752     # double 224
	.quad	4642120500284227584     # double 225
	.quad	4642155684656316416     # double 226
	.quad	4642190869028405248     # double 227
	.quad	4642226053400494080     # double 228
	.quad	4642261237772582912     # double 229
	.quad	4642296422144671744     # double 230
	.quad	4642331606516760576     # double 231
	.quad	4642366790888849408     # double 232
	.quad	4642401975260938240     # double 233
	.quad	4642437159633027072     # double 234
	.quad	4642472344005115904     # double 235
	.quad	4642507528377204736     # double 236
	.quad	4642542712749293568     # double 237
	.quad	4642577897121382400     # double 238
	.quad	4642613081493471232     # double 239
	.quad	4642648265865560064     # double 240
	.quad	4642683450237648896     # double 241
	.quad	4642718634609737728     # double 242
	.quad	4642753818981826560     # double 243
	.quad	4642789003353915392     # double 244
	.quad	4642824187726004224     # double 245
	.quad	4642859372098093056     # double 246
	.quad	4642894556470181888     # double 247
	.quad	4642929740842270720     # double 248
	.quad	4642964925214359552     # double 249
	.quad	4643000109586448384     # double 250
	.quad	4643035293958537216     # double 251
	.quad	4643070478330626048     # double 252
	.quad	4643105662702714880     # double 253
	.quad	4643140847074803712     # double 254
	.quad	4643176031446892544     # double 255
	.quad	4643211215818981376     # double 256
	.quad	4643228808005025792     # double 257
	.quad	4643246400191070208     # double 258
	.quad	4643263992377114624     # double 259
	.quad	4643281584563159040     # double 260
	.quad	4643299176749203456     # double 261
	.quad	4643316768935247872     # double 262
	.quad	4643334361121292288     # double 263
	.quad	4643351953307336704     # double 264
	.quad	4643369545493381120     # double 265
	.quad	4643387137679425536     # double 266
	.quad	4643404729865469952     # double 267
	.quad	4643422322051514368     # double 268
	.quad	4643439914237558784     # double 269
	.quad	4643457506423603200     # double 270
	.quad	4643475098609647616     # double 271
	.quad	4643492690795692032     # double 272
	.quad	4643510282981736448     # double 273
	.quad	4643527875167780864     # double 274
	.quad	4643545467353825280     # double 275
	.quad	4643563059539869696     # double 276
	.quad	4643580651725914112     # double 277
	.quad	4643598243911958528     # double 278
	.quad	4643615836098002944     # double 279
	.quad	4643633428284047360     # double 280
	.quad	4643651020470091776     # double 281
	.quad	4643668612656136192     # double 282
	.quad	4643686204842180608     # double 283
	.quad	4643703797028225024     # double 284
	.quad	4643721389214269440     # double 285
	.quad	4643738981400313856     # double 286
	.quad	4643756573586358272     # double 287
	.quad	4643774165772402688     # double 288
	.quad	4643791757958447104     # double 289
	.quad	4643809350144491520     # double 290
	.quad	4643826942330535936     # double 291
	.quad	4643844534516580352     # double 292
	.quad	4643862126702624768     # double 293
	.quad	4643879718888669184     # double 294
	.quad	4643897311074713600     # double 295
	.quad	4643914903260758016     # double 296
	.quad	4643932495446802432     # double 297
	.quad	4643950087632846848     # double 298
	.quad	4643967679818891264     # double 299
	.quad	4643985272004935680     # double 300
	.quad	4644002864190980096     # double 301
	.quad	4644020456377024512     # double 302
	.quad	4644038048563068928     # double 303
	.quad	4644055640749113344     # double 304
	.quad	4644073232935157760     # double 305
	.quad	4644090825121202176     # double 306
	.quad	4644108417307246592     # double 307
	.quad	4644126009493291008     # double 308
	.quad	4644143601679335424     # double 309
	.quad	4644161193865379840     # double 310
	.quad	4644178786051424256     # double 311
	.quad	4644196378237468672     # double 312
	.quad	4644213970423513088     # double 313
	.quad	4644231562609557504     # double 314
	.quad	4644249154795601920     # double 315
	.quad	4644266746981646336     # double 316
	.quad	4644284339167690752     # double 317
	.quad	4644301931353735168     # double 318
	.quad	4644319523539779584     # double 319
	.quad	4644337115725824000     # double 320
	.quad	4644354707911868416     # double 321
	.quad	4644372300097912832     # double 322
	.quad	4644389892283957248     # double 323
	.quad	4644407484470001664     # double 324
	.quad	4644425076656046080     # double 325
	.quad	4644442668842090496     # double 326
	.quad	4644460261028134912     # double 327
	.quad	4644477853214179328     # double 328
	.quad	4644495445400223744     # double 329
	.quad	4644513037586268160     # double 330
	.quad	4644530629772312576     # double 331
	.quad	4644548221958356992     # double 332
	.quad	4644565814144401408     # double 333
	.quad	4644583406330445824     # double 334
	.quad	4644600998516490240     # double 335
	.quad	4644618590702534656     # double 336
	.quad	4644636182888579072     # double 337
	.quad	4644653775074623488     # double 338
	.quad	4644671367260667904     # double 339
	.quad	4644688959446712320     # double 340
	.quad	4644706551632756736     # double 341
	.quad	4644724143818801152     # double 342
	.quad	4644741736004845568     # double 343
	.quad	4644759328190889984     # double 344
	.quad	4644776920376934400     # double 345
	.quad	4644794512562978816     # double 346
	.quad	4644812104749023232     # double 347
	.quad	4644829696935067648     # double 348
	.quad	4644847289121112064     # double 349
	.quad	4644864881307156480     # double 350
	.quad	4644882473493200896     # double 351
	.quad	4644900065679245312     # double 352
	.quad	4644917657865289728     # double 353
	.quad	4644935250051334144     # double 354
	.quad	4644952842237378560     # double 355
	.quad	4644970434423422976     # double 356
	.quad	4644988026609467392     # double 357
	.quad	4645005618795511808     # double 358
	.quad	4645023210981556224     # double 359
	.quad	4645040803167600640     # double 360
	.quad	4645058395353645056     # double 361
	.quad	4645075987539689472     # double 362
	.quad	4645093579725733888     # double 363
	.quad	4645111171911778304     # double 364
	.quad	4645128764097822720     # double 365
	.quad	4645146356283867136     # double 366
	.quad	4645163948469911552     # double 367
	.quad	4645181540655955968     # double 368
	.quad	4645199132842000384     # double 369
	.quad	4645216725028044800     # double 370
	.quad	4645234317214089216     # double 371
	.quad	4645251909400133632     # double 372
	.quad	4645269501586178048     # double 373
	.quad	4645287093772222464     # double 374
	.quad	4645304685958266880     # double 375
	.quad	4645322278144311296     # double 376
	.quad	4645339870330355712     # double 377
	.quad	4645357462516400128     # double 378
	.quad	4645375054702444544     # double 379
	.quad	4645392646888488960     # double 380
	.quad	4645410239074533376     # double 381
	.quad	4645427831260577792     # double 382
	.quad	4645445423446622208     # double 383
	.quad	4645463015632666624     # double 384
	.quad	4645480607818711040     # double 385
	.quad	4645498200004755456     # double 386
	.quad	4645515792190799872     # double 387
	.quad	4645533384376844288     # double 388
	.quad	4645550976562888704     # double 389
	.quad	4645568568748933120     # double 390
	.quad	4645586160934977536     # double 391
	.quad	4645603753121021952     # double 392
	.quad	4645621345307066368     # double 393
	.quad	4645638937493110784     # double 394
	.quad	4645656529679155200     # double 395
	.quad	4645674121865199616     # double 396
	.quad	4645691714051244032     # double 397
	.quad	4645709306237288448     # double 398
	.quad	4645726898423332864     # double 399
	.quad	4645744490609377280     # double 400
	.quad	4645762082795421696     # double 401
	.quad	4645779674981466112     # double 402
	.quad	4645797267167510528     # double 403
	.quad	4645814859353554944     # double 404
	.quad	4645832451539599360     # double 405
	.quad	4645850043725643776     # double 406
	.quad	4645867635911688192     # double 407
	.quad	4645885228097732608     # double 408
	.quad	4645902820283777024     # double 409
	.quad	4645920412469821440     # double 410
	.quad	4645938004655865856     # double 411
	.quad	4645955596841910272     # double 412
	.quad	4645973189027954688     # double 413
	.quad	4645990781213999104     # double 414
	.quad	4646008373400043520     # double 415
	.quad	4646025965586087936     # double 416
	.quad	4646043557772132352     # double 417
	.quad	4646061149958176768     # double 418
	.quad	4646078742144221184     # double 419
	.quad	4646096334330265600     # double 420
	.quad	4646113926516310016     # double 421
	.quad	4646131518702354432     # double 422
	.quad	4646149110888398848     # double 423
	.quad	4646166703074443264     # double 424
	.quad	4646184295260487680     # double 425
	.quad	4646201887446532096     # double 426
	.quad	4646219479632576512     # double 427
	.quad	4646237071818620928     # double 428
	.quad	4646254664004665344     # double 429
	.quad	4646272256190709760     # double 430
	.quad	4646289848376754176     # double 431
	.quad	4646307440562798592     # double 432
	.quad	4646325032748843008     # double 433
	.quad	4646342624934887424     # double 434
	.quad	4646360217120931840     # double 435
	.quad	4646377809306976256     # double 436
	.quad	4646395401493020672     # double 437
	.quad	4646412993679065088     # double 438
	.quad	4646430585865109504     # double 439
	.quad	4646448178051153920     # double 440
	.quad	4646465770237198336     # double 441
	.quad	4646483362423242752     # double 442
	.quad	4646500954609287168     # double 443
	.quad	4646518546795331584     # double 444
	.quad	4646536138981376000     # double 445
	.quad	4646553731167420416     # double 446
	.quad	4646571323353464832     # double 447
	.quad	4646588915539509248     # double 448
	.quad	4646606507725553664     # double 449
	.quad	4646624099911598080     # double 450
	.quad	4646641692097642496     # double 451
	.quad	4646659284283686912     # double 452
	.quad	4646676876469731328     # double 453
	.quad	4646694468655775744     # double 454
	.quad	4646712060841820160     # double 455
	.quad	4646729653027864576     # double 456
	.quad	4646747245213908992     # double 457
	.quad	4646764837399953408     # double 458
	.quad	4646782429585997824     # double 459
	.quad	4646800021772042240     # double 460
	.quad	4646817613958086656     # double 461
	.quad	4646835206144131072     # double 462
	.quad	4646852798330175488     # double 463
	.quad	4646870390516219904     # double 464
	.quad	4646887982702264320     # double 465
	.quad	4646905574888308736     # double 466
	.quad	4646923167074353152     # double 467
	.quad	4646940759260397568     # double 468
	.quad	4646958351446441984     # double 469
	.quad	4646975943632486400     # double 470
	.quad	4646993535818530816     # double 471
	.quad	4647011128004575232     # double 472
	.quad	4647028720190619648     # double 473
	.quad	4647046312376664064     # double 474
	.quad	4647063904562708480     # double 475
	.quad	4647081496748752896     # double 476
	.quad	4647099088934797312     # double 477
	.quad	4647116681120841728     # double 478
	.quad	4647134273306886144     # double 479
	.quad	4647151865492930560     # double 480
	.quad	4647169457678974976     # double 481
	.quad	4647187049865019392     # double 482
	.quad	4647204642051063808     # double 483
	.quad	4647222234237108224     # double 484
	.quad	4647239826423152640     # double 485
	.quad	4647257418609197056     # double 486
	.quad	4647275010795241472     # double 487
	.quad	4647292602981285888     # double 488
	.quad	4647310195167330304     # double 489
	.quad	4647327787353374720     # double 490
	.quad	4647345379539419136     # double 491
	.quad	4647362971725463552     # double 492
	.quad	4647380563911507968     # double 493
	.quad	4647398156097552384     # double 494
	.quad	4647415748283596800     # double 495
	.quad	4647433340469641216     # double 496
	.quad	4647450932655685632     # double 497
	.quad	4647468524841730048     # double 498
	.quad	4647486117027774464     # double 499
	.quad	4647503709213818880     # double 500
	.quad	4647521301399863296     # double 501
	.quad	4647538893585907712     # double 502
	.quad	4647556485771952128     # double 503
	.quad	4647574077957996544     # double 504
	.quad	4647591670144040960     # double 505
	.quad	4647609262330085376     # double 506
	.quad	4647626854516129792     # double 507
	.quad	4647644446702174208     # double 508
	.quad	4647662038888218624     # double 509
	.quad	4647679631074263040     # double 510
	.quad	4647697223260307456     # double 511
	.quad	4647714815446351872     # double 512
	.quad	4647723611539374080     # double 513
	.quad	4647732407632396288     # double 514
	.quad	4647741203725418496     # double 515
	.quad	4647749999818440704     # double 516
	.quad	4647758795911462912     # double 517
	.quad	4647767592004485120     # double 518
	.quad	4647776388097507328     # double 519
	.quad	4647785184190529536     # double 520
	.quad	4647793980283551744     # double 521
	.quad	4647802776376573952     # double 522
	.quad	4647811572469596160     # double 523
	.quad	4647820368562618368     # double 524
	.quad	4647829164655640576     # double 525
	.quad	4647837960748662784     # double 526
	.quad	4647846756841684992     # double 527
	.quad	4647855552934707200     # double 528
	.quad	4647864349027729408     # double 529
	.quad	4647873145120751616     # double 530
	.quad	4647881941213773824     # double 531
	.quad	4647890737306796032     # double 532
	.quad	4647899533399818240     # double 533
	.quad	4647908329492840448     # double 534
	.quad	4647917125585862656     # double 535
	.quad	4647925921678884864     # double 536
	.quad	4647934717771907072     # double 537
	.quad	4647943513864929280     # double 538
	.quad	4647952309957951488     # double 539
	.quad	4647961106050973696     # double 540
	.quad	4647969902143995904     # double 541
	.quad	4647978698237018112     # double 542
	.quad	4647987494330040320     # double 543
	.quad	4647996290423062528     # double 544
	.quad	4648005086516084736     # double 545
	.quad	4648013882609106944     # double 546
	.quad	4648022678702129152     # double 547
	.quad	4648031474795151360     # double 548
	.quad	4648040270888173568     # double 549
	.quad	4648049066981195776     # double 550
	.quad	4648057863074217984     # double 551
	.quad	4648066659167240192     # double 552
	.quad	4648075455260262400     # double 553
	.quad	4648084251353284608     # double 554
	.quad	4648093047446306816     # double 555
	.quad	4648101843539329024     # double 556
	.quad	4648110639632351232     # double 557
	.quad	4648119435725373440     # double 558
	.quad	4648128231818395648     # double 559
	.quad	4648137027911417856     # double 560
	.quad	4648145824004440064     # double 561
	.quad	4648154620097462272     # double 562
	.quad	4648163416190484480     # double 563
	.quad	4648172212283506688     # double 564
	.quad	4648181008376528896     # double 565
	.quad	4648189804469551104     # double 566
	.quad	4648198600562573312     # double 567
	.quad	4648207396655595520     # double 568
	.quad	4648216192748617728     # double 569
	.quad	4648224988841639936     # double 570
	.quad	4648233784934662144     # double 571
	.quad	4648242581027684352     # double 572
	.quad	4648251377120706560     # double 573
	.quad	4648260173213728768     # double 574
	.quad	4648268969306750976     # double 575
	.quad	4648277765399773184     # double 576
	.quad	4648286561492795392     # double 577
	.quad	4648295357585817600     # double 578
	.quad	4648304153678839808     # double 579
	.quad	4648312949771862016     # double 580
	.quad	4648321745864884224     # double 581
	.quad	4648330541957906432     # double 582
	.quad	4648339338050928640     # double 583
	.quad	4648348134143950848     # double 584
	.quad	4648356930236973056     # double 585
	.quad	4648365726329995264     # double 586
	.quad	4648374522423017472     # double 587
	.quad	4648383318516039680     # double 588
	.quad	4648392114609061888     # double 589
	.quad	4648400910702084096     # double 590
	.quad	4648409706795106304     # double 591
	.quad	4648418502888128512     # double 592
	.quad	4648427298981150720     # double 593
	.quad	4648436095074172928     # double 594
	.quad	4648444891167195136     # double 595
	.quad	4648453687260217344     # double 596
	.quad	4648462483353239552     # double 597
	.quad	4648471279446261760     # double 598
	.quad	4648480075539283968     # double 599
	.quad	4648488871632306176     # double 600
	.quad	4648497667725328384     # double 601
	.quad	4648506463818350592     # double 602
	.quad	4648515259911372800     # double 603
	.quad	4648524056004395008     # double 604
	.quad	4648532852097417216     # double 605
	.quad	4648541648190439424     # double 606
	.quad	4648550444283461632     # double 607
	.quad	4648559240376483840     # double 608
	.quad	4648568036469506048     # double 609
	.quad	4648576832562528256     # double 610
	.quad	4648585628655550464     # double 611
	.quad	4648594424748572672     # double 612
	.quad	4648603220841594880     # double 613
	.quad	4648612016934617088     # double 614
	.quad	4648620813027639296     # double 615
	.quad	4648629609120661504     # double 616
	.quad	4648638405213683712     # double 617
	.quad	4648647201306705920     # double 618
	.quad	4648655997399728128     # double 619
	.quad	4648664793492750336     # double 620
	.quad	4648673589585772544     # double 621
	.quad	4648682385678794752     # double 622
	.quad	4648691181771816960     # double 623
	.quad	4648699977864839168     # double 624
	.quad	4648708773957861376     # double 625
	.quad	4648717570050883584     # double 626
	.quad	4648726366143905792     # double 627
	.quad	4648735162236928000     # double 628
	.quad	4648743958329950208     # double 629
	.quad	4648752754422972416     # double 630
	.quad	4648761550515994624     # double 631
	.quad	4648770346609016832     # double 632
	.quad	4648779142702039040     # double 633
	.quad	4648787938795061248     # double 634
	.quad	4648796734888083456     # double 635
	.quad	4648805530981105664     # double 636
	.quad	4648814327074127872     # double 637
	.quad	4648823123167150080     # double 638
	.quad	4648831919260172288     # double 639
	.quad	4648840715353194496     # double 640
	.quad	4648849511446216704     # double 641
	.quad	4648858307539238912     # double 642
	.quad	4648867103632261120     # double 643
	.quad	4648875899725283328     # double 644
	.quad	4648884695818305536     # double 645
	.quad	4648893491911327744     # double 646
	.quad	4648902288004349952     # double 647
	.quad	4648911084097372160     # double 648
	.quad	4648919880190394368     # double 649
	.quad	4648928676283416576     # double 650
	.quad	4648937472376438784     # double 651
	.quad	4648946268469460992     # double 652
	.quad	4648955064562483200     # double 653
	.quad	4648963860655505408     # double 654
	.quad	4648972656748527616     # double 655
	.quad	4648981452841549824     # double 656
	.quad	4648990248934572032     # double 657
	.quad	4648999045027594240     # double 658
	.quad	4649007841120616448     # double 659
	.quad	4649016637213638656     # double 660
	.quad	4649025433306660864     # double 661
	.quad	4649034229399683072     # double 662
	.quad	4649043025492705280     # double 663
	.quad	4649051821585727488     # double 664
	.quad	4649060617678749696     # double 665
	.quad	4649069413771771904     # double 666
	.quad	4649078209864794112     # double 667
	.quad	4649087005957816320     # double 668
	.quad	4649095802050838528     # double 669
	.quad	4649104598143860736     # double 670
	.quad	4649113394236882944     # double 671
	.quad	4649122190329905152     # double 672
	.quad	4649130986422927360     # double 673
	.quad	4649139782515949568     # double 674
	.quad	4649148578608971776     # double 675
	.quad	4649157374701993984     # double 676
	.quad	4649166170795016192     # double 677
	.quad	4649174966888038400     # double 678
	.quad	4649183762981060608     # double 679
	.quad	4649192559074082816     # double 680
	.quad	4649201355167105024     # double 681
	.quad	4649210151260127232     # double 682
	.quad	4649218947353149440     # double 683
	.quad	4649227743446171648     # double 684
	.quad	4649236539539193856     # double 685
	.quad	4649245335632216064     # double 686
	.quad	4649254131725238272     # double 687
	.quad	4649262927818260480     # double 688
	.quad	4649271723911282688     # double 689
	.quad	4649280520004304896     # double 690
	.quad	4649289316097327104     # double 691
	.quad	4649298112190349312     # double 692
	.quad	4649306908283371520     # double 693
	.quad	4649315704376393728     # double 694
	.quad	4649324500469415936     # double 695
	.quad	4649333296562438144     # double 696
	.quad	4649342092655460352     # double 697
	.quad	4649350888748482560     # double 698
	.quad	4649359684841504768     # double 699
	.quad	4649368480934526976     # double 700
	.quad	4649377277027549184     # double 701
	.quad	4649386073120571392     # double 702
	.quad	4649394869213593600     # double 703
	.quad	4649403665306615808     # double 704
	.quad	4649412461399638016     # double 705
	.quad	4649421257492660224     # double 706
	.quad	4649430053585682432     # double 707
	.quad	4649438849678704640     # double 708
	.quad	4649447645771726848     # double 709
	.quad	4649456441864749056     # double 710
	.quad	4649465237957771264     # double 711
	.quad	4649474034050793472     # double 712
	.quad	4649482830143815680     # double 713
	.quad	4649491626236837888     # double 714
	.quad	4649500422329860096     # double 715
	.quad	4649509218422882304     # double 716
	.quad	4649518014515904512     # double 717
	.quad	4649526810608926720     # double 718
	.quad	4649535606701948928     # double 719
	.quad	4649544402794971136     # double 720
	.quad	4649553198887993344     # double 721
	.quad	4649561994981015552     # double 722
	.quad	4649570791074037760     # double 723
	.quad	4649579587167059968     # double 724
	.quad	4649588383260082176     # double 725
	.quad	4649597179353104384     # double 726
	.quad	4649605975446126592     # double 727
	.quad	4649614771539148800     # double 728
	.quad	4649623567632171008     # double 729
	.quad	4649632363725193216     # double 730
	.quad	4649641159818215424     # double 731
	.quad	4649649955911237632     # double 732
	.quad	4649658752004259840     # double 733
	.quad	4649667548097282048     # double 734
	.quad	4649676344190304256     # double 735
	.quad	4649685140283326464     # double 736
	.quad	4649693936376348672     # double 737
	.quad	4649702732469370880     # double 738
	.quad	4649711528562393088     # double 739
	.quad	4649720324655415296     # double 740
	.quad	4649729120748437504     # double 741
	.quad	4649737916841459712     # double 742
	.quad	4649746712934481920     # double 743
	.quad	4649755509027504128     # double 744
	.quad	4649764305120526336     # double 745
	.quad	4649773101213548544     # double 746
	.quad	4649781897306570752     # double 747
	.quad	4649790693399592960     # double 748
	.quad	4649799489492615168     # double 749
	.quad	4649808285585637376     # double 750
	.quad	4649817081678659584     # double 751
	.quad	4649825877771681792     # double 752
	.quad	4649834673864704000     # double 753
	.quad	4649843469957726208     # double 754
	.quad	4649852266050748416     # double 755
	.quad	4649861062143770624     # double 756
	.quad	4649869858236792832     # double 757
	.quad	4649878654329815040     # double 758
	.quad	4649887450422837248     # double 759
	.quad	4649896246515859456     # double 760
	.quad	4649905042608881664     # double 761
	.quad	4649913838701903872     # double 762
	.quad	4649922634794926080     # double 763
	.quad	4649931430887948288     # double 764
	.quad	4649940226980970496     # double 765
	.quad	4649949023073992704     # double 766
	.quad	4649957819167014912     # double 767
	.quad	4649966615260037120     # double 768
	.quad	4649975411353059328     # double 769
	.quad	4649984207446081536     # double 770
	.quad	4649993003539103744     # double 771
	.quad	4650001799632125952     # double 772
	.quad	4650010595725148160     # double 773
	.quad	4650019391818170368     # double 774
	.quad	4650028187911192576     # double 775
	.quad	4650036984004214784     # double 776
	.quad	4650045780097236992     # double 777
	.quad	4650054576190259200     # double 778
	.quad	4650063372283281408     # double 779
	.quad	4650072168376303616     # double 780
	.quad	4650080964469325824     # double 781
	.quad	4650089760562348032     # double 782
	.quad	4650098556655370240     # double 783
	.quad	4650107352748392448     # double 784
	.quad	4650116148841414656     # double 785
	.quad	4650124944934436864     # double 786
	.quad	4650133741027459072     # double 787
	.quad	4650142537120481280     # double 788
	.quad	4650151333213503488     # double 789
	.quad	4650160129306525696     # double 790
	.quad	4650168925399547904     # double 791
	.quad	4650177721492570112     # double 792
	.quad	4650186517585592320     # double 793
	.quad	4650195313678614528     # double 794
	.quad	4650204109771636736     # double 795
	.quad	4650212905864658944     # double 796
	.quad	4650221701957681152     # double 797
	.quad	4650230498050703360     # double 798
	.quad	4650239294143725568     # double 799
	.quad	4650248090236747776     # double 800
	.quad	4650256886329769984     # double 801
	.quad	4650265682422792192     # double 802
	.quad	4650274478515814400     # double 803
	.quad	4650283274608836608     # double 804
	.quad	4650292070701858816     # double 805
	.quad	4650300866794881024     # double 806
	.quad	4650309662887903232     # double 807
	.quad	4650318458980925440     # double 808
	.quad	4650327255073947648     # double 809
	.quad	4650336051166969856     # double 810
	.quad	4650344847259992064     # double 811
	.quad	4650353643353014272     # double 812
	.quad	4650362439446036480     # double 813
	.quad	4650371235539058688     # double 814
	.quad	4650380031632080896     # double 815
	.quad	4650388827725103104     # double 816
	.quad	4650397623818125312     # double 817
	.quad	4650406419911147520     # double 818
	.quad	4650415216004169728     # double 819
	.quad	4650424012097191936     # double 820
	.quad	4650432808190214144     # double 821
	.quad	4650441604283236352     # double 822
	.quad	4650450400376258560     # double 823
	.quad	4650459196469280768     # double 824
	.quad	4650467992562302976     # double 825
	.quad	4650476788655325184     # double 826
	.quad	4650485584748347392     # double 827
	.quad	4650494380841369600     # double 828
	.quad	4650503176934391808     # double 829
	.quad	4650511973027414016     # double 830
	.quad	4650520769120436224     # double 831
	.quad	4650529565213458432     # double 832
	.quad	4650538361306480640     # double 833
	.quad	4650547157399502848     # double 834
	.quad	4650555953492525056     # double 835
	.quad	4650564749585547264     # double 836
	.quad	4650573545678569472     # double 837
	.quad	4650582341771591680     # double 838
	.quad	4650591137864613888     # double 839
	.quad	4650599933957636096     # double 840
	.quad	4650608730050658304     # double 841
	.quad	4650617526143680512     # double 842
	.quad	4650626322236702720     # double 843
	.quad	4650635118329724928     # double 844
	.quad	4650643914422747136     # double 845
	.quad	4650652710515769344     # double 846
	.quad	4650661506608791552     # double 847
	.quad	4650670302701813760     # double 848
	.quad	4650679098794835968     # double 849
	.quad	4650687894887858176     # double 850
	.quad	4650696690980880384     # double 851
	.quad	4650705487073902592     # double 852
	.quad	4650714283166924800     # double 853
	.quad	4650723079259947008     # double 854
	.quad	4650731875352969216     # double 855
	.quad	4650740671445991424     # double 856
	.quad	4650749467539013632     # double 857
	.quad	4650758263632035840     # double 858
	.quad	4650767059725058048     # double 859
	.quad	4650775855818080256     # double 860
	.quad	4650784651911102464     # double 861
	.quad	4650793448004124672     # double 862
	.quad	4650802244097146880     # double 863
	.quad	4650811040190169088     # double 864
	.quad	4650819836283191296     # double 865
	.quad	4650828632376213504     # double 866
	.quad	4650837428469235712     # double 867
	.quad	4650846224562257920     # double 868
	.quad	4650855020655280128     # double 869
	.quad	4650863816748302336     # double 870
	.quad	4650872612841324544     # double 871
	.quad	4650881408934346752     # double 872
	.quad	4650890205027368960     # double 873
	.quad	4650899001120391168     # double 874
	.quad	4650907797213413376     # double 875
	.quad	4650916593306435584     # double 876
	.quad	4650925389399457792     # double 877
	.quad	4650934185492480000     # double 878
	.quad	4650942981585502208     # double 879
	.quad	4650951777678524416     # double 880
	.quad	4650960573771546624     # double 881
	.quad	4650969369864568832     # double 882
	.quad	4650978165957591040     # double 883
	.quad	4650986962050613248     # double 884
	.quad	4650995758143635456     # double 885
	.quad	4651004554236657664     # double 886
	.quad	4651013350329679872     # double 887
	.quad	4651022146422702080     # double 888
	.quad	4651030942515724288     # double 889
	.quad	4651039738608746496     # double 890
	.quad	4651048534701768704     # double 891
	.quad	4651057330794790912     # double 892
	.quad	4651066126887813120     # double 893
	.quad	4651074922980835328     # double 894
	.quad	4651083719073857536     # double 895
	.quad	4651092515166879744     # double 896
	.quad	4651101311259901952     # double 897
	.quad	4651110107352924160     # double 898
	.quad	4651118903445946368     # double 899
	.quad	4651127699538968576     # double 900
	.quad	4651136495631990784     # double 901
	.quad	4651145291725012992     # double 902
	.quad	4651154087818035200     # double 903
	.quad	4651162883911057408     # double 904
	.quad	4651171680004079616     # double 905
	.quad	4651180476097101824     # double 906
	.quad	4651189272190124032     # double 907
	.quad	4651198068283146240     # double 908
	.quad	4651206864376168448     # double 909
	.quad	4651215660469190656     # double 910
	.quad	4651224456562212864     # double 911
	.quad	4651233252655235072     # double 912
	.quad	4651242048748257280     # double 913
	.quad	4651250844841279488     # double 914
	.quad	4651259640934301696     # double 915
	.quad	4651268437027323904     # double 916
	.quad	4651277233120346112     # double 917
	.quad	4651286029213368320     # double 918
	.quad	4651294825306390528     # double 919
	.quad	4651303621399412736     # double 920
	.quad	4651312417492434944     # double 921
	.quad	4651321213585457152     # double 922
	.quad	4651330009678479360     # double 923
	.quad	4651338805771501568     # double 924
	.quad	4651347601864523776     # double 925
	.quad	4651356397957545984     # double 926
	.quad	4651365194050568192     # double 927
	.quad	4651373990143590400     # double 928
	.quad	4651382786236612608     # double 929
	.quad	4651391582329634816     # double 930
	.quad	4651400378422657024     # double 931
	.quad	4651409174515679232     # double 932
	.quad	4651417970608701440     # double 933
	.quad	4651426766701723648     # double 934
	.quad	4651435562794745856     # double 935
	.quad	4651444358887768064     # double 936
	.quad	4651453154980790272     # double 937
	.quad	4651461951073812480     # double 938
	.quad	4651470747166834688     # double 939
	.quad	4651479543259856896     # double 940
	.quad	4651488339352879104     # double 941
	.quad	4651497135445901312     # double 942
	.quad	4651505931538923520     # double 943
	.quad	4651514727631945728     # double 944
	.quad	4651523523724967936     # double 945
	.quad	4651532319817990144     # double 946
	.quad	4651541115911012352     # double 947
	.quad	4651549912004034560     # double 948
	.quad	4651558708097056768     # double 949
	.quad	4651567504190078976     # double 950
	.quad	4651576300283101184     # double 951
	.quad	4651585096376123392     # double 952
	.quad	4651593892469145600     # double 953
	.quad	4651602688562167808     # double 954
	.quad	4651611484655190016     # double 955
	.quad	4651620280748212224     # double 956
	.quad	4651629076841234432     # double 957
	.quad	4651637872934256640     # double 958
	.quad	4651646669027278848     # double 959
	.quad	4651655465120301056     # double 960
	.quad	4651664261213323264     # double 961
	.quad	4651673057306345472     # double 962
	.quad	4651681853399367680     # double 963
	.quad	4651690649492389888     # double 964
	.quad	4651699445585412096     # double 965
	.quad	4651708241678434304     # double 966
	.quad	4651717037771456512     # double 967
	.quad	4651725833864478720     # double 968
	.quad	4651734629957500928     # double 969
	.quad	4651743426050523136     # double 970
	.quad	4651752222143545344     # double 971
	.quad	4651761018236567552     # double 972
	.quad	4651769814329589760     # double 973
	.quad	4651778610422611968     # double 974
	.quad	4651787406515634176     # double 975
	.quad	4651796202608656384     # double 976
	.quad	4651804998701678592     # double 977
	.quad	4651813794794700800     # double 978
	.quad	4651822590887723008     # double 979
	.quad	4651831386980745216     # double 980
	.quad	4651840183073767424     # double 981
	.quad	4651848979166789632     # double 982
	.quad	4651857775259811840     # double 983
	.quad	4651866571352834048     # double 984
	.quad	4651875367445856256     # double 985
	.quad	4651884163538878464     # double 986
	.quad	4651892959631900672     # double 987
	.quad	4651901755724922880     # double 988
	.quad	4651910551817945088     # double 989
	.quad	4651919347910967296     # double 990
	.quad	4651928144003989504     # double 991
	.quad	4651936940097011712     # double 992
	.quad	4651945736190033920     # double 993
	.quad	4651954532283056128     # double 994
	.quad	4651963328376078336     # double 995
	.quad	4651972124469100544     # double 996
	.quad	4651980920562122752     # double 997
	.quad	4651989716655144960     # double 998
	.quad	4651998512748167168     # double 999
	.quad	4652007308841189376     # double 1000
	.quad	4652016104934211584     # double 1001
	.quad	4652024901027233792     # double 1002
	.quad	4652033697120256000     # double 1003
	.quad	4652042493213278208     # double 1004
	.quad	4652051289306300416     # double 1005
	.quad	4652060085399322624     # double 1006
	.quad	4652068881492344832     # double 1007
	.quad	4652077677585367040     # double 1008
	.quad	4652086473678389248     # double 1009
	.quad	4652095269771411456     # double 1010
	.quad	4652104065864433664     # double 1011
	.quad	4652112861957455872     # double 1012
	.quad	4652121658050478080     # double 1013
	.quad	4652130454143500288     # double 1014
	.quad	4652139250236522496     # double 1015
	.quad	4652148046329544704     # double 1016
	.quad	4652156842422566912     # double 1017
	.quad	4652165638515589120     # double 1018
	.quad	4652174434608611328     # double 1019
	.quad	4652183230701633536     # double 1020
	.quad	4652192026794655744     # double 1021
	.quad	4652200822887677952     # double 1022
	.quad	4652209618980700160     # double 1023
	.quad	4652218415073722368     # double 1024
	.size	entrada1024, 8192

	.type	entrada1024i,@object    # @entrada1024i
	.globl	entrada1024i
	.p2align	4
entrada1024i:
	.quad	4652218415073722368     # double 1024
	.quad	4652209618980700160     # double 1023
	.quad	4652200822887677952     # double 1022
	.quad	4652192026794655744     # double 1021
	.quad	4652183230701633536     # double 1020
	.quad	4652174434608611328     # double 1019
	.quad	4652165638515589120     # double 1018
	.quad	4652156842422566912     # double 1017
	.quad	4652148046329544704     # double 1016
	.quad	4652139250236522496     # double 1015
	.quad	4652130454143500288     # double 1014
	.quad	4652121658050478080     # double 1013
	.quad	4652112861957455872     # double 1012
	.quad	4652104065864433664     # double 1011
	.quad	4652095269771411456     # double 1010
	.quad	4652086473678389248     # double 1009
	.quad	4652077677585367040     # double 1008
	.quad	4652068881492344832     # double 1007
	.quad	4652060085399322624     # double 1006
	.quad	4652051289306300416     # double 1005
	.quad	4652042493213278208     # double 1004
	.quad	4652033697120256000     # double 1003
	.quad	4652024901027233792     # double 1002
	.quad	4652016104934211584     # double 1001
	.quad	4652007308841189376     # double 1000
	.quad	4651998512748167168     # double 999
	.quad	4651989716655144960     # double 998
	.quad	4651980920562122752     # double 997
	.quad	4651972124469100544     # double 996
	.quad	4651963328376078336     # double 995
	.quad	4651954532283056128     # double 994
	.quad	4651945736190033920     # double 993
	.quad	4651936940097011712     # double 992
	.quad	4651928144003989504     # double 991
	.quad	4651919347910967296     # double 990
	.quad	4651910551817945088     # double 989
	.quad	4651901755724922880     # double 988
	.quad	4651892959631900672     # double 987
	.quad	4651884163538878464     # double 986
	.quad	4651875367445856256     # double 985
	.quad	4651866571352834048     # double 984
	.quad	4651857775259811840     # double 983
	.quad	4651848979166789632     # double 982
	.quad	4651840183073767424     # double 981
	.quad	4651831386980745216     # double 980
	.quad	4651822590887723008     # double 979
	.quad	4651813794794700800     # double 978
	.quad	4651804998701678592     # double 977
	.quad	4651796202608656384     # double 976
	.quad	4651787406515634176     # double 975
	.quad	4651778610422611968     # double 974
	.quad	4651769814329589760     # double 973
	.quad	4651761018236567552     # double 972
	.quad	4651752222143545344     # double 971
	.quad	4651743426050523136     # double 970
	.quad	4651734629957500928     # double 969
	.quad	4651725833864478720     # double 968
	.quad	4651717037771456512     # double 967
	.quad	4651708241678434304     # double 966
	.quad	4651699445585412096     # double 965
	.quad	4651690649492389888     # double 964
	.quad	4651681853399367680     # double 963
	.quad	4651673057306345472     # double 962
	.quad	4651664261213323264     # double 961
	.quad	4651655465120301056     # double 960
	.quad	4651646669027278848     # double 959
	.quad	4651637872934256640     # double 958
	.quad	4651629076841234432     # double 957
	.quad	4651620280748212224     # double 956
	.quad	4651611484655190016     # double 955
	.quad	4651602688562167808     # double 954
	.quad	4651593892469145600     # double 953
	.quad	4651585096376123392     # double 952
	.quad	4651576300283101184     # double 951
	.quad	4651567504190078976     # double 950
	.quad	4651558708097056768     # double 949
	.quad	4651549912004034560     # double 948
	.quad	4651541115911012352     # double 947
	.quad	4651532319817990144     # double 946
	.quad	4651523523724967936     # double 945
	.quad	4651514727631945728     # double 944
	.quad	4651505931538923520     # double 943
	.quad	4651497135445901312     # double 942
	.quad	4651488339352879104     # double 941
	.quad	4651479543259856896     # double 940
	.quad	4651470747166834688     # double 939
	.quad	4651461951073812480     # double 938
	.quad	4651453154980790272     # double 937
	.quad	4651444358887768064     # double 936
	.quad	4651435562794745856     # double 935
	.quad	4651426766701723648     # double 934
	.quad	4651417970608701440     # double 933
	.quad	4651409174515679232     # double 932
	.quad	4651400378422657024     # double 931
	.quad	4651391582329634816     # double 930
	.quad	4651382786236612608     # double 929
	.quad	4651373990143590400     # double 928
	.quad	4651365194050568192     # double 927
	.quad	4651356397957545984     # double 926
	.quad	4651347601864523776     # double 925
	.quad	4651338805771501568     # double 924
	.quad	4651330009678479360     # double 923
	.quad	4651321213585457152     # double 922
	.quad	4651312417492434944     # double 921
	.quad	4651303621399412736     # double 920
	.quad	4651294825306390528     # double 919
	.quad	4651286029213368320     # double 918
	.quad	4651277233120346112     # double 917
	.quad	4651268437027323904     # double 916
	.quad	4651259640934301696     # double 915
	.quad	4651250844841279488     # double 914
	.quad	4651242048748257280     # double 913
	.quad	4651233252655235072     # double 912
	.quad	4651224456562212864     # double 911
	.quad	4651215660469190656     # double 910
	.quad	4651206864376168448     # double 909
	.quad	4651198068283146240     # double 908
	.quad	4651189272190124032     # double 907
	.quad	4651180476097101824     # double 906
	.quad	4651171680004079616     # double 905
	.quad	4651162883911057408     # double 904
	.quad	4651154087818035200     # double 903
	.quad	4651145291725012992     # double 902
	.quad	4651136495631990784     # double 901
	.quad	4651127699538968576     # double 900
	.quad	4651118903445946368     # double 899
	.quad	4651110107352924160     # double 898
	.quad	4651101311259901952     # double 897
	.quad	4651092515166879744     # double 896
	.quad	4651083719073857536     # double 895
	.quad	4651074922980835328     # double 894
	.quad	4651066126887813120     # double 893
	.quad	4651057330794790912     # double 892
	.quad	4651048534701768704     # double 891
	.quad	4651039738608746496     # double 890
	.quad	4651030942515724288     # double 889
	.quad	4651022146422702080     # double 888
	.quad	4651013350329679872     # double 887
	.quad	4651004554236657664     # double 886
	.quad	4650995758143635456     # double 885
	.quad	4650986962050613248     # double 884
	.quad	4650978165957591040     # double 883
	.quad	4650969369864568832     # double 882
	.quad	4650960573771546624     # double 881
	.quad	4650951777678524416     # double 880
	.quad	4650942981585502208     # double 879
	.quad	4650934185492480000     # double 878
	.quad	4650925389399457792     # double 877
	.quad	4650916593306435584     # double 876
	.quad	4650907797213413376     # double 875
	.quad	4650899001120391168     # double 874
	.quad	4650890205027368960     # double 873
	.quad	4650881408934346752     # double 872
	.quad	4650872612841324544     # double 871
	.quad	4650863816748302336     # double 870
	.quad	4650855020655280128     # double 869
	.quad	4650846224562257920     # double 868
	.quad	4650837428469235712     # double 867
	.quad	4650828632376213504     # double 866
	.quad	4650819836283191296     # double 865
	.quad	4650811040190169088     # double 864
	.quad	4650802244097146880     # double 863
	.quad	4650793448004124672     # double 862
	.quad	4650784651911102464     # double 861
	.quad	4650775855818080256     # double 860
	.quad	4650767059725058048     # double 859
	.quad	4650758263632035840     # double 858
	.quad	4650749467539013632     # double 857
	.quad	4650740671445991424     # double 856
	.quad	4650731875352969216     # double 855
	.quad	4650723079259947008     # double 854
	.quad	4650714283166924800     # double 853
	.quad	4650705487073902592     # double 852
	.quad	4650696690980880384     # double 851
	.quad	4650687894887858176     # double 850
	.quad	4650679098794835968     # double 849
	.quad	4650670302701813760     # double 848
	.quad	4650661506608791552     # double 847
	.quad	4650652710515769344     # double 846
	.quad	4650643914422747136     # double 845
	.quad	4650635118329724928     # double 844
	.quad	4650626322236702720     # double 843
	.quad	4650617526143680512     # double 842
	.quad	4650608730050658304     # double 841
	.quad	4650599933957636096     # double 840
	.quad	4650591137864613888     # double 839
	.quad	4650582341771591680     # double 838
	.quad	4650573545678569472     # double 837
	.quad	4650564749585547264     # double 836
	.quad	4650555953492525056     # double 835
	.quad	4650547157399502848     # double 834
	.quad	4650538361306480640     # double 833
	.quad	4650529565213458432     # double 832
	.quad	4650520769120436224     # double 831
	.quad	4650511973027414016     # double 830
	.quad	4650503176934391808     # double 829
	.quad	4650494380841369600     # double 828
	.quad	4650485584748347392     # double 827
	.quad	4650476788655325184     # double 826
	.quad	4650467992562302976     # double 825
	.quad	4650459196469280768     # double 824
	.quad	4650450400376258560     # double 823
	.quad	4650441604283236352     # double 822
	.quad	4650432808190214144     # double 821
	.quad	4650424012097191936     # double 820
	.quad	4650415216004169728     # double 819
	.quad	4650406419911147520     # double 818
	.quad	4650397623818125312     # double 817
	.quad	4650388827725103104     # double 816
	.quad	4650380031632080896     # double 815
	.quad	4650371235539058688     # double 814
	.quad	4650362439446036480     # double 813
	.quad	4650353643353014272     # double 812
	.quad	4650344847259992064     # double 811
	.quad	4650336051166969856     # double 810
	.quad	4650327255073947648     # double 809
	.quad	4650318458980925440     # double 808
	.quad	4650309662887903232     # double 807
	.quad	4650300866794881024     # double 806
	.quad	4650292070701858816     # double 805
	.quad	4650283274608836608     # double 804
	.quad	4650274478515814400     # double 803
	.quad	4650265682422792192     # double 802
	.quad	4650256886329769984     # double 801
	.quad	4650248090236747776     # double 800
	.quad	4650239294143725568     # double 799
	.quad	4650230498050703360     # double 798
	.quad	4650221701957681152     # double 797
	.quad	4650212905864658944     # double 796
	.quad	4650204109771636736     # double 795
	.quad	4650195313678614528     # double 794
	.quad	4650186517585592320     # double 793
	.quad	4650177721492570112     # double 792
	.quad	4650168925399547904     # double 791
	.quad	4650160129306525696     # double 790
	.quad	4650151333213503488     # double 789
	.quad	4650142537120481280     # double 788
	.quad	4650133741027459072     # double 787
	.quad	4650124944934436864     # double 786
	.quad	4650116148841414656     # double 785
	.quad	4650107352748392448     # double 784
	.quad	4650098556655370240     # double 783
	.quad	4650089760562348032     # double 782
	.quad	4650080964469325824     # double 781
	.quad	4650072168376303616     # double 780
	.quad	4650063372283281408     # double 779
	.quad	4650054576190259200     # double 778
	.quad	4650045780097236992     # double 777
	.quad	4650036984004214784     # double 776
	.quad	4650028187911192576     # double 775
	.quad	4650019391818170368     # double 774
	.quad	4650010595725148160     # double 773
	.quad	4650001799632125952     # double 772
	.quad	4649993003539103744     # double 771
	.quad	4649984207446081536     # double 770
	.quad	4649975411353059328     # double 769
	.quad	4649966615260037120     # double 768
	.quad	4649957819167014912     # double 767
	.quad	4649949023073992704     # double 766
	.quad	4649940226980970496     # double 765
	.quad	4649931430887948288     # double 764
	.quad	4649922634794926080     # double 763
	.quad	4649913838701903872     # double 762
	.quad	4649905042608881664     # double 761
	.quad	4649896246515859456     # double 760
	.quad	4649887450422837248     # double 759
	.quad	4649878654329815040     # double 758
	.quad	4649869858236792832     # double 757
	.quad	4649861062143770624     # double 756
	.quad	4649852266050748416     # double 755
	.quad	4649843469957726208     # double 754
	.quad	4649834673864704000     # double 753
	.quad	4649825877771681792     # double 752
	.quad	4649817081678659584     # double 751
	.quad	4649808285585637376     # double 750
	.quad	4649799489492615168     # double 749
	.quad	4649790693399592960     # double 748
	.quad	4649781897306570752     # double 747
	.quad	4649773101213548544     # double 746
	.quad	4649764305120526336     # double 745
	.quad	4649755509027504128     # double 744
	.quad	4649746712934481920     # double 743
	.quad	4649737916841459712     # double 742
	.quad	4649729120748437504     # double 741
	.quad	4649720324655415296     # double 740
	.quad	4649711528562393088     # double 739
	.quad	4649702732469370880     # double 738
	.quad	4649693936376348672     # double 737
	.quad	4649685140283326464     # double 736
	.quad	4649676344190304256     # double 735
	.quad	4649667548097282048     # double 734
	.quad	4649658752004259840     # double 733
	.quad	4649649955911237632     # double 732
	.quad	4649641159818215424     # double 731
	.quad	4649632363725193216     # double 730
	.quad	4649623567632171008     # double 729
	.quad	4649614771539148800     # double 728
	.quad	4649605975446126592     # double 727
	.quad	4649597179353104384     # double 726
	.quad	4649588383260082176     # double 725
	.quad	4649579587167059968     # double 724
	.quad	4649570791074037760     # double 723
	.quad	4649561994981015552     # double 722
	.quad	4649553198887993344     # double 721
	.quad	4649544402794971136     # double 720
	.quad	4649535606701948928     # double 719
	.quad	4649526810608926720     # double 718
	.quad	4649518014515904512     # double 717
	.quad	4649509218422882304     # double 716
	.quad	4649500422329860096     # double 715
	.quad	4649491626236837888     # double 714
	.quad	4649482830143815680     # double 713
	.quad	4649474034050793472     # double 712
	.quad	4649465237957771264     # double 711
	.quad	4649456441864749056     # double 710
	.quad	4649447645771726848     # double 709
	.quad	4649438849678704640     # double 708
	.quad	4649430053585682432     # double 707
	.quad	4649421257492660224     # double 706
	.quad	4649412461399638016     # double 705
	.quad	4649403665306615808     # double 704
	.quad	4649394869213593600     # double 703
	.quad	4649386073120571392     # double 702
	.quad	4649377277027549184     # double 701
	.quad	4649368480934526976     # double 700
	.quad	4649359684841504768     # double 699
	.quad	4649350888748482560     # double 698
	.quad	4649342092655460352     # double 697
	.quad	4649333296562438144     # double 696
	.quad	4649324500469415936     # double 695
	.quad	4649315704376393728     # double 694
	.quad	4649306908283371520     # double 693
	.quad	4649298112190349312     # double 692
	.quad	4649289316097327104     # double 691
	.quad	4649280520004304896     # double 690
	.quad	4649271723911282688     # double 689
	.quad	4649262927818260480     # double 688
	.quad	4649254131725238272     # double 687
	.quad	4649245335632216064     # double 686
	.quad	4649236539539193856     # double 685
	.quad	4649227743446171648     # double 684
	.quad	4649218947353149440     # double 683
	.quad	4649210151260127232     # double 682
	.quad	4649201355167105024     # double 681
	.quad	4649192559074082816     # double 680
	.quad	4649183762981060608     # double 679
	.quad	4649174966888038400     # double 678
	.quad	4649166170795016192     # double 677
	.quad	4649157374701993984     # double 676
	.quad	4649148578608971776     # double 675
	.quad	4649139782515949568     # double 674
	.quad	4649130986422927360     # double 673
	.quad	4649122190329905152     # double 672
	.quad	4649113394236882944     # double 671
	.quad	4649104598143860736     # double 670
	.quad	4649095802050838528     # double 669
	.quad	4649087005957816320     # double 668
	.quad	4649078209864794112     # double 667
	.quad	4649069413771771904     # double 666
	.quad	4649060617678749696     # double 665
	.quad	4649051821585727488     # double 664
	.quad	4649043025492705280     # double 663
	.quad	4649034229399683072     # double 662
	.quad	4649025433306660864     # double 661
	.quad	4649016637213638656     # double 660
	.quad	4649007841120616448     # double 659
	.quad	4648999045027594240     # double 658
	.quad	4648990248934572032     # double 657
	.quad	4648981452841549824     # double 656
	.quad	4648972656748527616     # double 655
	.quad	4648963860655505408     # double 654
	.quad	4648955064562483200     # double 653
	.quad	4648946268469460992     # double 652
	.quad	4648937472376438784     # double 651
	.quad	4648928676283416576     # double 650
	.quad	4648919880190394368     # double 649
	.quad	4648911084097372160     # double 648
	.quad	4648902288004349952     # double 647
	.quad	4648893491911327744     # double 646
	.quad	4648884695818305536     # double 645
	.quad	4648875899725283328     # double 644
	.quad	4648867103632261120     # double 643
	.quad	4648858307539238912     # double 642
	.quad	4648849511446216704     # double 641
	.quad	4648840715353194496     # double 640
	.quad	4648831919260172288     # double 639
	.quad	4648823123167150080     # double 638
	.quad	4648814327074127872     # double 637
	.quad	4648805530981105664     # double 636
	.quad	4648796734888083456     # double 635
	.quad	4648787938795061248     # double 634
	.quad	4648779142702039040     # double 633
	.quad	4648770346609016832     # double 632
	.quad	4648761550515994624     # double 631
	.quad	4648752754422972416     # double 630
	.quad	4648743958329950208     # double 629
	.quad	4648735162236928000     # double 628
	.quad	4648726366143905792     # double 627
	.quad	4648717570050883584     # double 626
	.quad	4648708773957861376     # double 625
	.quad	4648699977864839168     # double 624
	.quad	4648691181771816960     # double 623
	.quad	4648682385678794752     # double 622
	.quad	4648673589585772544     # double 621
	.quad	4648664793492750336     # double 620
	.quad	4648655997399728128     # double 619
	.quad	4648647201306705920     # double 618
	.quad	4648638405213683712     # double 617
	.quad	4648629609120661504     # double 616
	.quad	4648620813027639296     # double 615
	.quad	4648612016934617088     # double 614
	.quad	4648603220841594880     # double 613
	.quad	4648594424748572672     # double 612
	.quad	4648585628655550464     # double 611
	.quad	4648576832562528256     # double 610
	.quad	4648568036469506048     # double 609
	.quad	4648559240376483840     # double 608
	.quad	4648550444283461632     # double 607
	.quad	4648541648190439424     # double 606
	.quad	4648532852097417216     # double 605
	.quad	4648524056004395008     # double 604
	.quad	4648515259911372800     # double 603
	.quad	4648506463818350592     # double 602
	.quad	4648497667725328384     # double 601
	.quad	4648488871632306176     # double 600
	.quad	4648480075539283968     # double 599
	.quad	4648471279446261760     # double 598
	.quad	4648462483353239552     # double 597
	.quad	4648453687260217344     # double 596
	.quad	4648444891167195136     # double 595
	.quad	4648436095074172928     # double 594
	.quad	4648427298981150720     # double 593
	.quad	4648418502888128512     # double 592
	.quad	4648409706795106304     # double 591
	.quad	4648400910702084096     # double 590
	.quad	4648392114609061888     # double 589
	.quad	4648383318516039680     # double 588
	.quad	4648374522423017472     # double 587
	.quad	4648365726329995264     # double 586
	.quad	4648356930236973056     # double 585
	.quad	4648348134143950848     # double 584
	.quad	4648339338050928640     # double 583
	.quad	4648330541957906432     # double 582
	.quad	4648321745864884224     # double 581
	.quad	4648312949771862016     # double 580
	.quad	4648304153678839808     # double 579
	.quad	4648295357585817600     # double 578
	.quad	4648286561492795392     # double 577
	.quad	4648277765399773184     # double 576
	.quad	4648268969306750976     # double 575
	.quad	4648260173213728768     # double 574
	.quad	4648251377120706560     # double 573
	.quad	4648242581027684352     # double 572
	.quad	4648233784934662144     # double 571
	.quad	4648224988841639936     # double 570
	.quad	4648216192748617728     # double 569
	.quad	4648207396655595520     # double 568
	.quad	4648198600562573312     # double 567
	.quad	4648189804469551104     # double 566
	.quad	4648181008376528896     # double 565
	.quad	4648172212283506688     # double 564
	.quad	4648163416190484480     # double 563
	.quad	4648154620097462272     # double 562
	.quad	4648145824004440064     # double 561
	.quad	4648137027911417856     # double 560
	.quad	4648128231818395648     # double 559
	.quad	4648119435725373440     # double 558
	.quad	4648110639632351232     # double 557
	.quad	4648101843539329024     # double 556
	.quad	4648093047446306816     # double 555
	.quad	4648084251353284608     # double 554
	.quad	4648075455260262400     # double 553
	.quad	4648066659167240192     # double 552
	.quad	4648057863074217984     # double 551
	.quad	4648049066981195776     # double 550
	.quad	4648040270888173568     # double 549
	.quad	4648031474795151360     # double 548
	.quad	4648022678702129152     # double 547
	.quad	4648013882609106944     # double 546
	.quad	4648005086516084736     # double 545
	.quad	4647996290423062528     # double 544
	.quad	4647987494330040320     # double 543
	.quad	4647978698237018112     # double 542
	.quad	4647969902143995904     # double 541
	.quad	4647961106050973696     # double 540
	.quad	4647952309957951488     # double 539
	.quad	4647943513864929280     # double 538
	.quad	4647934717771907072     # double 537
	.quad	4647925921678884864     # double 536
	.quad	4647917125585862656     # double 535
	.quad	4647908329492840448     # double 534
	.quad	4647899533399818240     # double 533
	.quad	4647890737306796032     # double 532
	.quad	4647881941213773824     # double 531
	.quad	4647873145120751616     # double 530
	.quad	4647864349027729408     # double 529
	.quad	4647855552934707200     # double 528
	.quad	4647846756841684992     # double 527
	.quad	4647837960748662784     # double 526
	.quad	4647829164655640576     # double 525
	.quad	4647820368562618368     # double 524
	.quad	4647811572469596160     # double 523
	.quad	4647802776376573952     # double 522
	.quad	4647793980283551744     # double 521
	.quad	4647785184190529536     # double 520
	.quad	4647776388097507328     # double 519
	.quad	4647767592004485120     # double 518
	.quad	4647758795911462912     # double 517
	.quad	4647749999818440704     # double 516
	.quad	4647741203725418496     # double 515
	.quad	4647732407632396288     # double 514
	.quad	4647723611539374080     # double 513
	.quad	4647714815446351872     # double 512
	.quad	4647697223260307456     # double 511
	.quad	4647679631074263040     # double 510
	.quad	4647662038888218624     # double 509
	.quad	4647644446702174208     # double 508
	.quad	4647626854516129792     # double 507
	.quad	4647609262330085376     # double 506
	.quad	4647591670144040960     # double 505
	.quad	4647574077957996544     # double 504
	.quad	4647556485771952128     # double 503
	.quad	4647538893585907712     # double 502
	.quad	4647521301399863296     # double 501
	.quad	4647503709213818880     # double 500
	.quad	4647486117027774464     # double 499
	.quad	4647468524841730048     # double 498
	.quad	4647450932655685632     # double 497
	.quad	4647433340469641216     # double 496
	.quad	4647415748283596800     # double 495
	.quad	4647398156097552384     # double 494
	.quad	4647380563911507968     # double 493
	.quad	4647362971725463552     # double 492
	.quad	4647345379539419136     # double 491
	.quad	4647327787353374720     # double 490
	.quad	4647310195167330304     # double 489
	.quad	4647292602981285888     # double 488
	.quad	4647275010795241472     # double 487
	.quad	4647257418609197056     # double 486
	.quad	4647239826423152640     # double 485
	.quad	4647222234237108224     # double 484
	.quad	4647204642051063808     # double 483
	.quad	4647187049865019392     # double 482
	.quad	4647169457678974976     # double 481
	.quad	4647151865492930560     # double 480
	.quad	4647134273306886144     # double 479
	.quad	4647116681120841728     # double 478
	.quad	4647099088934797312     # double 477
	.quad	4647081496748752896     # double 476
	.quad	4647063904562708480     # double 475
	.quad	4647046312376664064     # double 474
	.quad	4647028720190619648     # double 473
	.quad	4647011128004575232     # double 472
	.quad	4646993535818530816     # double 471
	.quad	4646975943632486400     # double 470
	.quad	4646958351446441984     # double 469
	.quad	4646940759260397568     # double 468
	.quad	4646923167074353152     # double 467
	.quad	4646905574888308736     # double 466
	.quad	4646887982702264320     # double 465
	.quad	4646870390516219904     # double 464
	.quad	4646852798330175488     # double 463
	.quad	4646835206144131072     # double 462
	.quad	4646817613958086656     # double 461
	.quad	4646800021772042240     # double 460
	.quad	4646782429585997824     # double 459
	.quad	4646764837399953408     # double 458
	.quad	4646747245213908992     # double 457
	.quad	4646729653027864576     # double 456
	.quad	4646712060841820160     # double 455
	.quad	4646694468655775744     # double 454
	.quad	4646676876469731328     # double 453
	.quad	4646659284283686912     # double 452
	.quad	4646641692097642496     # double 451
	.quad	4646624099911598080     # double 450
	.quad	4646606507725553664     # double 449
	.quad	4646588915539509248     # double 448
	.quad	4646571323353464832     # double 447
	.quad	4646553731167420416     # double 446
	.quad	4646536138981376000     # double 445
	.quad	4646518546795331584     # double 444
	.quad	4646500954609287168     # double 443
	.quad	4646483362423242752     # double 442
	.quad	4646465770237198336     # double 441
	.quad	4646448178051153920     # double 440
	.quad	4646430585865109504     # double 439
	.quad	4646412993679065088     # double 438
	.quad	4646395401493020672     # double 437
	.quad	4646377809306976256     # double 436
	.quad	4646360217120931840     # double 435
	.quad	4646342624934887424     # double 434
	.quad	4646325032748843008     # double 433
	.quad	4646307440562798592     # double 432
	.quad	4646289848376754176     # double 431
	.quad	4646272256190709760     # double 430
	.quad	4646254664004665344     # double 429
	.quad	4646237071818620928     # double 428
	.quad	4646219479632576512     # double 427
	.quad	4646201887446532096     # double 426
	.quad	4646184295260487680     # double 425
	.quad	4646166703074443264     # double 424
	.quad	4646149110888398848     # double 423
	.quad	4646131518702354432     # double 422
	.quad	4646113926516310016     # double 421
	.quad	4646096334330265600     # double 420
	.quad	4646078742144221184     # double 419
	.quad	4646061149958176768     # double 418
	.quad	4646043557772132352     # double 417
	.quad	4646025965586087936     # double 416
	.quad	4646008373400043520     # double 415
	.quad	4645990781213999104     # double 414
	.quad	4645973189027954688     # double 413
	.quad	4645955596841910272     # double 412
	.quad	4645938004655865856     # double 411
	.quad	4645920412469821440     # double 410
	.quad	4645902820283777024     # double 409
	.quad	4645885228097732608     # double 408
	.quad	4645867635911688192     # double 407
	.quad	4645850043725643776     # double 406
	.quad	4645832451539599360     # double 405
	.quad	4645814859353554944     # double 404
	.quad	4645797267167510528     # double 403
	.quad	4645779674981466112     # double 402
	.quad	4645762082795421696     # double 401
	.quad	4645744490609377280     # double 400
	.quad	4645726898423332864     # double 399
	.quad	4645709306237288448     # double 398
	.quad	4645691714051244032     # double 397
	.quad	4645674121865199616     # double 396
	.quad	4645656529679155200     # double 395
	.quad	4645638937493110784     # double 394
	.quad	4645621345307066368     # double 393
	.quad	4645603753121021952     # double 392
	.quad	4645586160934977536     # double 391
	.quad	4645568568748933120     # double 390
	.quad	4645550976562888704     # double 389
	.quad	4645533384376844288     # double 388
	.quad	4645515792190799872     # double 387
	.quad	4645498200004755456     # double 386
	.quad	4645480607818711040     # double 385
	.quad	4645463015632666624     # double 384
	.quad	4645445423446622208     # double 383
	.quad	4645427831260577792     # double 382
	.quad	4645410239074533376     # double 381
	.quad	4645392646888488960     # double 380
	.quad	4645375054702444544     # double 379
	.quad	4645357462516400128     # double 378
	.quad	4645339870330355712     # double 377
	.quad	4645322278144311296     # double 376
	.quad	4645304685958266880     # double 375
	.quad	4645287093772222464     # double 374
	.quad	4645269501586178048     # double 373
	.quad	4645251909400133632     # double 372
	.quad	4645234317214089216     # double 371
	.quad	4645216725028044800     # double 370
	.quad	4645199132842000384     # double 369
	.quad	4645181540655955968     # double 368
	.quad	4645163948469911552     # double 367
	.quad	4645146356283867136     # double 366
	.quad	4645128764097822720     # double 365
	.quad	4645111171911778304     # double 364
	.quad	4645093579725733888     # double 363
	.quad	4645075987539689472     # double 362
	.quad	4645058395353645056     # double 361
	.quad	4645040803167600640     # double 360
	.quad	4645023210981556224     # double 359
	.quad	4645005618795511808     # double 358
	.quad	4644988026609467392     # double 357
	.quad	4644970434423422976     # double 356
	.quad	4644952842237378560     # double 355
	.quad	4644935250051334144     # double 354
	.quad	4644917657865289728     # double 353
	.quad	4644900065679245312     # double 352
	.quad	4644882473493200896     # double 351
	.quad	4644864881307156480     # double 350
	.quad	4644847289121112064     # double 349
	.quad	4644829696935067648     # double 348
	.quad	4644812104749023232     # double 347
	.quad	4644794512562978816     # double 346
	.quad	4644776920376934400     # double 345
	.quad	4644759328190889984     # double 344
	.quad	4644741736004845568     # double 343
	.quad	4644724143818801152     # double 342
	.quad	4644706551632756736     # double 341
	.quad	4644688959446712320     # double 340
	.quad	4644671367260667904     # double 339
	.quad	4644653775074623488     # double 338
	.quad	4644636182888579072     # double 337
	.quad	4644618590702534656     # double 336
	.quad	4644600998516490240     # double 335
	.quad	4644583406330445824     # double 334
	.quad	4644565814144401408     # double 333
	.quad	4644548221958356992     # double 332
	.quad	4644530629772312576     # double 331
	.quad	4644513037586268160     # double 330
	.quad	4644495445400223744     # double 329
	.quad	4644477853214179328     # double 328
	.quad	4644460261028134912     # double 327
	.quad	4644442668842090496     # double 326
	.quad	4644425076656046080     # double 325
	.quad	4644407484470001664     # double 324
	.quad	4644389892283957248     # double 323
	.quad	4644372300097912832     # double 322
	.quad	4644354707911868416     # double 321
	.quad	4644337115725824000     # double 320
	.quad	4644319523539779584     # double 319
	.quad	4644301931353735168     # double 318
	.quad	4644284339167690752     # double 317
	.quad	4644266746981646336     # double 316
	.quad	4644249154795601920     # double 315
	.quad	4644231562609557504     # double 314
	.quad	4644213970423513088     # double 313
	.quad	4644196378237468672     # double 312
	.quad	4644178786051424256     # double 311
	.quad	4644161193865379840     # double 310
	.quad	4644143601679335424     # double 309
	.quad	4644126009493291008     # double 308
	.quad	4644108417307246592     # double 307
	.quad	4644090825121202176     # double 306
	.quad	4644073232935157760     # double 305
	.quad	4644055640749113344     # double 304
	.quad	4644038048563068928     # double 303
	.quad	4644020456377024512     # double 302
	.quad	4644002864190980096     # double 301
	.quad	4643985272004935680     # double 300
	.quad	4643967679818891264     # double 299
	.quad	4643950087632846848     # double 298
	.quad	4643932495446802432     # double 297
	.quad	4643914903260758016     # double 296
	.quad	4643897311074713600     # double 295
	.quad	4643879718888669184     # double 294
	.quad	4643862126702624768     # double 293
	.quad	4643844534516580352     # double 292
	.quad	4643826942330535936     # double 291
	.quad	4643809350144491520     # double 290
	.quad	4643791757958447104     # double 289
	.quad	4643774165772402688     # double 288
	.quad	4643756573586358272     # double 287
	.quad	4643738981400313856     # double 286
	.quad	4643721389214269440     # double 285
	.quad	4643703797028225024     # double 284
	.quad	4643686204842180608     # double 283
	.quad	4643668612656136192     # double 282
	.quad	4643651020470091776     # double 281
	.quad	4643633428284047360     # double 280
	.quad	4643615836098002944     # double 279
	.quad	4643598243911958528     # double 278
	.quad	4643580651725914112     # double 277
	.quad	4643563059539869696     # double 276
	.quad	4643545467353825280     # double 275
	.quad	4643527875167780864     # double 274
	.quad	4643510282981736448     # double 273
	.quad	4643492690795692032     # double 272
	.quad	4643475098609647616     # double 271
	.quad	4643457506423603200     # double 270
	.quad	4643439914237558784     # double 269
	.quad	4643422322051514368     # double 268
	.quad	4643404729865469952     # double 267
	.quad	4643387137679425536     # double 266
	.quad	4643369545493381120     # double 265
	.quad	4643351953307336704     # double 264
	.quad	4643334361121292288     # double 263
	.quad	4643316768935247872     # double 262
	.quad	4643299176749203456     # double 261
	.quad	4643281584563159040     # double 260
	.quad	4643263992377114624     # double 259
	.quad	4643246400191070208     # double 258
	.quad	4643228808005025792     # double 257
	.quad	4643211215818981376     # double 256
	.quad	4643176031446892544     # double 255
	.quad	4643140847074803712     # double 254
	.quad	4643105662702714880     # double 253
	.quad	4643070478330626048     # double 252
	.quad	4643035293958537216     # double 251
	.quad	4643000109586448384     # double 250
	.quad	4642964925214359552     # double 249
	.quad	4642929740842270720     # double 248
	.quad	4642894556470181888     # double 247
	.quad	4642859372098093056     # double 246
	.quad	4642824187726004224     # double 245
	.quad	4642789003353915392     # double 244
	.quad	4642753818981826560     # double 243
	.quad	4642718634609737728     # double 242
	.quad	4642683450237648896     # double 241
	.quad	4642648265865560064     # double 240
	.quad	4642613081493471232     # double 239
	.quad	4642577897121382400     # double 238
	.quad	4642542712749293568     # double 237
	.quad	4642507528377204736     # double 236
	.quad	4642472344005115904     # double 235
	.quad	4642437159633027072     # double 234
	.quad	4642401975260938240     # double 233
	.quad	4642366790888849408     # double 232
	.quad	4642331606516760576     # double 231
	.quad	4642296422144671744     # double 230
	.quad	4642261237772582912     # double 229
	.quad	4642226053400494080     # double 228
	.quad	4642190869028405248     # double 227
	.quad	4642155684656316416     # double 226
	.quad	4642120500284227584     # double 225
	.quad	4642085315912138752     # double 224
	.quad	4642050131540049920     # double 223
	.quad	4642014947167961088     # double 222
	.quad	4641979762795872256     # double 221
	.quad	4641944578423783424     # double 220
	.quad	4641909394051694592     # double 219
	.quad	4641874209679605760     # double 218
	.quad	4641839025307516928     # double 217
	.quad	4641803840935428096     # double 216
	.quad	4641768656563339264     # double 215
	.quad	4641733472191250432     # double 214
	.quad	4641698287819161600     # double 213
	.quad	4641663103447072768     # double 212
	.quad	4641627919074983936     # double 211
	.quad	4641592734702895104     # double 210
	.quad	4641557550330806272     # double 209
	.quad	4641522365958717440     # double 208
	.quad	4641487181586628608     # double 207
	.quad	4641451997214539776     # double 206
	.quad	4641416812842450944     # double 205
	.quad	4641381628470362112     # double 204
	.quad	4641346444098273280     # double 203
	.quad	4641311259726184448     # double 202
	.quad	4641276075354095616     # double 201
	.quad	4641240890982006784     # double 200
	.quad	4641205706609917952     # double 199
	.quad	4641170522237829120     # double 198
	.quad	4641135337865740288     # double 197
	.quad	4641100153493651456     # double 196
	.quad	4641064969121562624     # double 195
	.quad	4641029784749473792     # double 194
	.quad	4640994600377384960     # double 193
	.quad	4640959416005296128     # double 192
	.quad	4640924231633207296     # double 191
	.quad	4640889047261118464     # double 190
	.quad	4640853862889029632     # double 189
	.quad	4640818678516940800     # double 188
	.quad	4640783494144851968     # double 187
	.quad	4640748309772763136     # double 186
	.quad	4640713125400674304     # double 185
	.quad	4640677941028585472     # double 184
	.quad	4640642756656496640     # double 183
	.quad	4640607572284407808     # double 182
	.quad	4640572387912318976     # double 181
	.quad	4640537203540230144     # double 180
	.quad	4640502019168141312     # double 179
	.quad	4640466834796052480     # double 178
	.quad	4640431650423963648     # double 177
	.quad	4640396466051874816     # double 176
	.quad	4640361281679785984     # double 175
	.quad	4640326097307697152     # double 174
	.quad	4640290912935608320     # double 173
	.quad	4640255728563519488     # double 172
	.quad	4640220544191430656     # double 171
	.quad	4640185359819341824     # double 170
	.quad	4640150175447252992     # double 169
	.quad	4640114991075164160     # double 168
	.quad	4640079806703075328     # double 167
	.quad	4640044622330986496     # double 166
	.quad	4640009437958897664     # double 165
	.quad	4639974253586808832     # double 164
	.quad	4639939069214720000     # double 163
	.quad	4639903884842631168     # double 162
	.quad	4639868700470542336     # double 161
	.quad	4639833516098453504     # double 160
	.quad	4639798331726364672     # double 159
	.quad	4639763147354275840     # double 158
	.quad	4639727962982187008     # double 157
	.quad	4639692778610098176     # double 156
	.quad	4639657594238009344     # double 155
	.quad	4639622409865920512     # double 154
	.quad	4639587225493831680     # double 153
	.quad	4639552041121742848     # double 152
	.quad	4639516856749654016     # double 151
	.quad	4639481672377565184     # double 150
	.quad	4639446488005476352     # double 149
	.quad	4639411303633387520     # double 148
	.quad	4639376119261298688     # double 147
	.quad	4639340934889209856     # double 146
	.quad	4639305750517121024     # double 145
	.quad	4639270566145032192     # double 144
	.quad	4639235381772943360     # double 143
	.quad	4639200197400854528     # double 142
	.quad	4639165013028765696     # double 141
	.quad	4639129828656676864     # double 140
	.quad	4639094644284588032     # double 139
	.quad	4639059459912499200     # double 138
	.quad	4639024275540410368     # double 137
	.quad	4638989091168321536     # double 136
	.quad	4638953906796232704     # double 135
	.quad	4638918722424143872     # double 134
	.quad	4638883538052055040     # double 133
	.quad	4638848353679966208     # double 132
	.quad	4638813169307877376     # double 131
	.quad	4638777984935788544     # double 130
	.quad	4638742800563699712     # double 129
	.quad	4638707616191610880     # double 128
	.quad	4638637247447433216     # double 127
	.quad	4638566878703255552     # double 126
	.quad	4638496509959077888     # double 125
	.quad	4638426141214900224     # double 124
	.quad	4638355772470722560     # double 123
	.quad	4638285403726544896     # double 122
	.quad	4638215034982367232     # double 121
	.quad	4638144666238189568     # double 120
	.quad	4638074297494011904     # double 119
	.quad	4638003928749834240     # double 118
	.quad	4637933560005656576     # double 117
	.quad	4637863191261478912     # double 116
	.quad	4637792822517301248     # double 115
	.quad	4637722453773123584     # double 114
	.quad	4637652085028945920     # double 113
	.quad	4637581716284768256     # double 112
	.quad	4637511347540590592     # double 111
	.quad	4637440978796412928     # double 110
	.quad	4637370610052235264     # double 109
	.quad	4637300241308057600     # double 108
	.quad	4637229872563879936     # double 107
	.quad	4637159503819702272     # double 106
	.quad	4637089135075524608     # double 105
	.quad	4637018766331346944     # double 104
	.quad	4636948397587169280     # double 103
	.quad	4636878028842991616     # double 102
	.quad	4636807660098813952     # double 101
	.quad	4636737291354636288     # double 100
	.quad	4636666922610458624     # double 99
	.quad	4636596553866280960     # double 98
	.quad	4636526185122103296     # double 97
	.quad	4636455816377925632     # double 96
	.quad	4636385447633747968     # double 95
	.quad	4636315078889570304     # double 94
	.quad	4636244710145392640     # double 93
	.quad	4636174341401214976     # double 92
	.quad	4636103972657037312     # double 91
	.quad	4636033603912859648     # double 90
	.quad	4635963235168681984     # double 89
	.quad	4635892866424504320     # double 88
	.quad	4635822497680326656     # double 87
	.quad	4635752128936148992     # double 86
	.quad	4635681760191971328     # double 85
	.quad	4635611391447793664     # double 84
	.quad	4635541022703616000     # double 83
	.quad	4635470653959438336     # double 82
	.quad	4635400285215260672     # double 81
	.quad	4635329916471083008     # double 80
	.quad	4635259547726905344     # double 79
	.quad	4635189178982727680     # double 78
	.quad	4635118810238550016     # double 77
	.quad	4635048441494372352     # double 76
	.quad	4634978072750194688     # double 75
	.quad	4634907704006017024     # double 74
	.quad	4634837335261839360     # double 73
	.quad	4634766966517661696     # double 72
	.quad	4634696597773484032     # double 71
	.quad	4634626229029306368     # double 70
	.quad	4634555860285128704     # double 69
	.quad	4634485491540951040     # double 68
	.quad	4634415122796773376     # double 67
	.quad	4634344754052595712     # double 66
	.quad	4634274385308418048     # double 65
	.quad	4634204016564240384     # double 64
	.quad	4634063279075885056     # double 63
	.quad	4633922541587529728     # double 62
	.quad	4633781804099174400     # double 61
	.quad	4633641066610819072     # double 60
	.quad	4633500329122463744     # double 59
	.quad	4633359591634108416     # double 58
	.quad	4633218854145753088     # double 57
	.quad	4633078116657397760     # double 56
	.quad	4632937379169042432     # double 55
	.quad	4632796641680687104     # double 54
	.quad	4632655904192331776     # double 53
	.quad	4632515166703976448     # double 52
	.quad	4632374429215621120     # double 51
	.quad	4632233691727265792     # double 50
	.quad	4632092954238910464     # double 49
	.quad	4631952216750555136     # double 48
	.quad	4631811479262199808     # double 47
	.quad	4631670741773844480     # double 46
	.quad	4631530004285489152     # double 45
	.quad	4631389266797133824     # double 44
	.quad	4631248529308778496     # double 43
	.quad	4631107791820423168     # double 42
	.quad	4630967054332067840     # double 41
	.quad	4630826316843712512     # double 40
	.quad	4630685579355357184     # double 39
	.quad	4630544841867001856     # double 38
	.quad	4630404104378646528     # double 37
	.quad	4630263366890291200     # double 36
	.quad	4630122629401935872     # double 35
	.quad	4629981891913580544     # double 34
	.quad	4629841154425225216     # double 33
	.quad	4629700416936869888     # double 32
	.quad	4629418941960159232     # double 31
	.quad	4629137466983448576     # double 30
	.quad	4628855992006737920     # double 29
	.quad	4628574517030027264     # double 28
	.quad	4628293042053316608     # double 27
	.quad	4628011567076605952     # double 26
	.quad	4627730092099895296     # double 25
	.quad	4627448617123184640     # double 24
	.quad	4627167142146473984     # double 23
	.quad	4626885667169763328     # double 22
	.quad	4626604192193052672     # double 21
	.quad	4626322717216342016     # double 20
	.quad	4626041242239631360     # double 19
	.quad	4625759767262920704     # double 18
	.quad	4625478292286210048     # double 17
	.quad	4625196817309499392     # double 16
	.quad	4624633867356078080     # double 15
	.quad	4624070917402656768     # double 14
	.quad	4623507967449235456     # double 13
	.quad	4622945017495814144     # double 12
	.quad	4622382067542392832     # double 11
	.quad	4621819117588971520     # double 10
	.quad	4621256167635550208     # double 9
	.quad	4620693217682128896     # double 8
	.quad	4619567317775286272     # double 7
	.quad	4618441417868443648     # double 6
	.quad	4617315517961601024     # double 5
	.quad	4616189618054758400     # double 4
	.quad	4613937818241073152     # double 3
	.quad	4611686018427387904     # double 2
	.quad	4607182418800017408     # double 1
	.size	entrada1024i, 8192

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" 1024 ENTRADAS FFT: \n"
	.size	.L.str, 22

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"Tempo total do calculo: %4.4f ms\n"
	.size	.L.str1, 34

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"Aproximadamente: %4.4f segundos\n"
	.size	.L.str2, 33

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"\n FFT 1024\n"
	.size	.L.str3, 12

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"X[%d] -> REAL: %.3lf , IMG: %.3lf \n"
	.size	.L.str4, 36

	.type	time_begin,@object      # @time_begin
	.section	.sbss,"aw",@nobits
	.p2align	3
time_begin:
	.quad	0                       # double 0
	.size	time_begin, 8

	.type	.L.str5,@object         # @.str5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str5:
	.asciz	"accept_time.txt"
	.size	.L.str5, 16

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	"w"
	.size	.L.str16, 2

	.type	.L.str27,@object        # @.str27
.L.str27:
	.asciz	"%f\n"
	.size	.L.str27, 4

	.type	.Lstr,@object           # @str
.Lstr:
	.asciz	"\n FFT 1024"
	.size	.Lstr, 11

	.type	.Lstr1,@object          # @str1
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr1:
	.asciz	" 1024 ENTRADAS FFT: "
	.size	.Lstr1, 21

	.section	".note.GNU-stack","",@progbits
