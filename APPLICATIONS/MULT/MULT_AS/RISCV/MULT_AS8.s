	.text
	.file	"app.opt.bc"
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
	lui	a0, 39
	addi	a0, a0, -1696
	sub	sp, sp, a0
	.cfi_def_cfa_offset 160080
	mv	s4, zero
	mv	s3, zero
	mv	s2, zero
	mv	s5, zero
	addi	s1, zero, 100
	lui	a0, 20
	addi	a0, a0, -1904
	add	a0, sp, a0
	mv	s8, a0
.LBB0_1:                                # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	addi	a2, zero, 100
	mv	a0, s2
	mv	a1, s5
	mv	a3, zero
	call	__muldi3
	mv	s0, zero
	mv	a1, zero
	mv	a4, s4
	mv	a3, s3
.LBB0_2:                                # %for.body5
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	a5, a4, 1
	sltu	a4, a5, a4
	add	a3, a3, a4
	add	a4, s0, a0
	slli	a4, a4, 3
	add	a4, s8, a4
	sw	a5, 0(a4)
	ori	a4, a4, 4
	sw	a3, 0(a4)
	addi	a2, s0, 1
	sltu	a4, a2, s0
	add	a1, a1, a4
	mv	s0, a2
	mv	a4, a5
	bne	a2, s1, .LBB0_2
# %bb.3:                                # %for.inc8
                                        #   in Loop: Header=BB0_1 Depth=1
	addi	a0, s4, 100
	sltu	a1, a0, s4
	add	s3, s3, a1
	addi	a1, s2, 1
	sltu	a2, a1, s2
	add	s5, s5, a2
	mv	s4, a0
	mv	s2, a1
	bne	a1, s1, .LBB0_1
# %bb.4:                                # %for.cond15.preheader.preheader
	mv	s4, zero
	mv	s3, zero
	mv	s2, zero
	mv	s5, zero
	addi	s1, zero, 100
	addi	s9, sp, 16
.LBB0_5:                                # %for.cond15.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	addi	a2, zero, 100
	mv	a0, s2
	mv	a1, s5
	mv	a3, zero
	call	__muldi3
	mv	s0, zero
	mv	a1, zero
	mv	a4, s4
	mv	a3, s3
.LBB0_6:                                # %for.body18
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	a5, a4, 1
	sltu	a4, a5, a4
	add	a3, a3, a4
	add	a4, s0, a0
	slli	a4, a4, 3
	add	a4, s9, a4
	sw	a5, 0(a4)
	ori	a4, a4, 4
	sw	a3, 0(a4)
	addi	a2, s0, 1
	sltu	a4, a2, s0
	add	a1, a1, a4
	mv	s0, a2
	mv	a4, a5
	bne	a2, s1, .LBB0_6
# %bb.7:                                # %for.inc28
                                        #   in Loop: Header=BB0_5 Depth=1
	addi	a0, s4, 100
	sltu	a1, a0, s4
	add	s3, s3, a1
	addi	a1, s2, 1
	sltu	a2, a1, s2
	add	s5, s5, a2
	mv	s4, a0
	mv	s2, a1
	bne	a1, s1, .LBB0_5
# %bb.8:                                # %accept_cond.preheader
	mv	s1, zero
	mv	a1, zero
	mv	s4, zero
	addi	s10, zero, 100
	lui	a0, %hi(.Lmain.m_result)
	addi	a0, a0, %lo(.Lmain.m_result)
	sw	a0, 8(sp)
	j	.LBB0_10
.LBB0_9:                                # %for.inc80
                                        #   in Loop: Header=BB0_10 Depth=1
	addi	a0, s1, 1
	sltu	a1, a0, s1
	lw	a2, 4(sp)
	add	a1, a2, a1
	mv	s1, a0
	beq	a0, s10, .LBB0_15
.LBB0_10:                               # %accept_cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_13 Depth 3
	andi	a0, s1, 255
	sw	a1, 4(sp)
	bnez	a0, .LBB0_9
# %bb.11:                               # %for.cond35.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addi	a2, zero, 100
	mv	a0, s1
	mv	a3, zero
	call	__muldi3
	mv	s5, a0
	mv	s11, zero
	mv	s2, zero
	sw	s1, 12(sp)
.LBB0_12:                               # %for.body38
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
	mv	s1, zero
	mv	s0, zero
	mv	s3, zero
.LBB0_13:                               # %for.body46
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a0, s1, s5
	slli	a0, a0, 3
	add	a0, s8, a0
	lw	s6, 0(a0)
	ori	a0, a0, 4
	lw	s7, 0(a0)
	addi	a2, zero, 100
	mv	a0, s1
	mv	a1, s0
	mv	a3, zero
	call	__muldi3
	add	a0, a0, s11
	slli	a0, a0, 3
	add	a1, s9, a0
	lw	a0, 0(a1)
	ori	a1, a1, 4
	lw	a1, 0(a1)
	mv	a2, s6
	mv	a3, s7
	call	__muldi3
	add	s3, a0, s3
	addi	a0, s1, 1
	sltu	a1, a0, s1
	add	s0, s0, a1
	mv	s1, a0
	bne	a0, s10, .LBB0_13
# %bb.14:                               # %for.end60
                                        #   in Loop: Header=BB0_12 Depth=2
	srai	s0, s3, 31
	addi	a1, zero, 800
	lw	s1, 12(sp)
	mv	a0, s1
	call	__mulsi3
	slli	a1, s11, 3
	add	a0, a0, a1
	lw	a1, 8(sp)
	add	a0, a0, a1
	lw	a1, 4(a0)
	lw	a0, 0(a0)
	xor	a1, s0, a1
	xor	a0, s3, a0
	or	a0, a0, a1
	seqz	a0, a0
	add	s4, a0, s4
	addi	a0, s11, 1
	sltu	a1, a0, s11
	add	s2, s2, a1
	mv	s11, a0
	bne	a0, s10, .LBB0_12
	j	.LBB0_9
.LBB0_15:                               # %for.end82
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	mv	a1, s4
	call	printf
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	mv	a0, zero
	lui	a1, 39
	addi	a1, a1, -1696
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
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
.Lfunc_end1:
	.size	accept_roi_begin, .Lfunc_end1-accept_roi_begin
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
	lui	a0, %hi(.L.str2)
	addi	a0, a0, %lo(.L.str2)
	lui	a1, %hi(.L.str13)
	addi	a1, a1, %lo(.L.str13)
	call	fopen
	mv	s0, a0
	lui	a0, %hi(.L.str24)
	addi	a1, a0, %lo(.L.str24)
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
.Lfunc_end2:
	.size	accept_roi_end, .Lfunc_end2-accept_roi_end
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
	bltz	a0, .LBB3_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB3_2:                                # %entry
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
.Lfunc_end3:
	.size	fastpow2, .Lfunc_end3-fastpow2
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
	bltz	a0, .LBB4_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB4_2:                                # %entry
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
.Lfunc_end4:
	.size	fastexp, .Lfunc_end4-fastexp
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
	bltz	a0, .LBB5_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB5_2:                                # %entry
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
.Lfunc_end5:
	.size	fasterpow2, .Lfunc_end5-fasterpow2
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
	bltz	a0, .LBB6_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB6_2:                                # %entry
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
.Lfunc_end6:
	.size	fasterexp, .Lfunc_end6-fasterexp
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
.Lfunc_end7:
	.size	fastlog2, .Lfunc_end7-fastlog2
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
.Lfunc_end8:
	.size	fastlog, .Lfunc_end8-fastlog
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
.Lfunc_end9:
	.size	fasterlog2, .Lfunc_end9-fasterlog2
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
.Lfunc_end10:
	.size	fasterlog, .Lfunc_end10-fasterlog
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
	bltz	a0, .LBB11_2
# %bb.1:                                # %entry
	mv	s1, s0
.LBB11_2:                               # %entry
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
	bltz	a0, .LBB11_4
# %bb.3:                                # %entry
	mv	s4, s2
.LBB11_4:                               # %entry
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
.Lfunc_end11:
	.size	fasterfc, .Lfunc_end11-fasterfc
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
.Lfunc_end12:
	.size	fastererfc, .Lfunc_end12-fastererfc
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
	bltz	a0, .LBB13_2
# %bb.1:                                # %entry
	mv	s1, s0
.LBB13_2:                               # %entry
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
	bltz	a0, .LBB13_4
# %bb.3:                                # %entry
	mv	s4, s2
.LBB13_4:                               # %entry
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
.Lfunc_end13:
	.size	fasterf, .Lfunc_end13-fasterf
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
	bltz	a0, .LBB14_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB14_2:                               # %entry
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
.Lfunc_end14:
	.size	fastererf, .Lfunc_end14-fastererf
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
.Lfunc_end15:
	.size	fastinverseerf, .Lfunc_end15-fastinverseerf
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
.Lfunc_end16:
	.size	fasterinverseerf, .Lfunc_end16-fasterinverseerf
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
.Lfunc_end17:
	.size	fastlgamma, .Lfunc_end17-fastlgamma
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
.Lfunc_end18:
	.size	fasterlgamma, .Lfunc_end18-fasterlgamma
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
.Lfunc_end19:
	.size	fastdigamma, .Lfunc_end19-fastdigamma
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
.Lfunc_end20:
	.size	fasterdigamma, .Lfunc_end20-fasterdigamma
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
	bltz	a0, .LBB21_4
# %bb.3:                                # %entry
	mv	s8, s0
.LBB21_4:                               # %entry
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
.Lfunc_end21:
	.size	fastsinh, .Lfunc_end21-fastsinh
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
	bltz	a1, .LBB22_2
# %bb.1:                                # %entry
	mv	a0, s0
.LBB22_2:                               # %entry
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
	bltz	a0, .LBB22_4
# %bb.3:                                # %entry
	mv	s2, s1
.LBB22_4:                               # %entry
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
.Lfunc_end22:
	.size	fastersinh, .Lfunc_end22-fastersinh
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
	bltz	a0, .LBB23_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB23_2:                               # %entry
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
	bltz	a0, .LBB23_4
# %bb.3:                                # %entry
	mv	s8, s0
.LBB23_4:                               # %entry
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
.Lfunc_end23:
	.size	fastcosh, .Lfunc_end23-fastcosh
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
	bltz	a1, .LBB24_2
# %bb.1:                                # %entry
	mv	a0, s0
.LBB24_2:                               # %entry
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
	bltz	a0, .LBB24_4
# %bb.3:                                # %entry
	mv	s2, s1
.LBB24_4:                               # %entry
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
.Lfunc_end24:
	.size	fastercosh, .Lfunc_end24-fastercosh
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
	bltz	a0, .LBB25_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB25_2:                               # %entry
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
.Lfunc_end25:
	.size	fasttanh, .Lfunc_end25-fasttanh
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
	bltz	a0, .LBB26_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB26_2:                               # %entry
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
.Lfunc_end26:
	.size	fastertanh, .Lfunc_end26-fastertanh
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
	bltz	a0, .LBB27_2
# %bb.1:                                # %entry
	lui	s2, 524288
	lui	a0, 260096
	j	.LBB27_3
.LBB27_2:
	lui	a0, 261216
	addi	a0, a0, -79
	lui	a1, 259022
	addi	s2, a1, -386
.LBB27_3:                               # %entry
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
	bltz	a0, .LBB27_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB27_5:                               # %entry
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
.Lfunc_end27:
	.size	fastlambertw, .Lfunc_end27-fastlambertw
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
	bltz	a0, .LBB28_2
# %bb.1:                                # %entry
	lui	a0, 260096
	j	.LBB28_3
.LBB28_2:
	lui	a0, 261216
	addi	a0, a0, -79
.LBB28_3:                               # %entry
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
	bltz	a0, .LBB28_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB28_5:                               # %entry
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
.Lfunc_end28:
	.size	fasterlambertw, .Lfunc_end28-fasterlambertw
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
	blt	a1, a0, .LBB29_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s8, a0
	j	.LBB29_3
.LBB29_2:
	mv	s8, zero
.LBB29_3:                               # %cond.end
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
	bltz	a0, .LBB29_5
# %bb.4:                                # %cond.end
	mv	s1, s8
.LBB29_5:                               # %cond.end
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
.Lfunc_end29:
	.size	fastlambertwexpx, .Lfunc_end29-fastlambertwexpx
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
	blt	a1, a0, .LBB30_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s6, a0
	j	.LBB30_3
.LBB30_2:
	mv	s6, zero
.LBB30_3:                               # %cond.end
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
	bltz	a0, .LBB30_5
# %bb.4:                                # %cond.end
	mv	s1, s6
.LBB30_5:                               # %cond.end
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
.Lfunc_end30:
	.size	fasterlambertwexpx, .Lfunc_end30-fasterlambertwexpx
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
.Lfunc_end31:
	.size	fastpow, .Lfunc_end31-fastpow
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
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end32:
	.size	fasterpow, .Lfunc_end32-fasterpow
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
	bltz	a0, .LBB33_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB33_2:                               # %entry
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
.Lfunc_end33:
	.size	fastsigmoid, .Lfunc_end33-fastsigmoid
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
	bltz	a0, .LBB34_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB34_2:                               # %entry
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
.Lfunc_end34:
	.size	fastersigmoid, .Lfunc_end34-fastersigmoid
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
.Lfunc_end35:
	.size	fastsin, .Lfunc_end35-fastsin
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
.Lfunc_end36:
	.size	fastersin, .Lfunc_end36-fastersin
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
	bltz	a0, .LBB37_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB37_2:                               # %entry
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
.Lfunc_end37:
	.size	fastsinfull, .Lfunc_end37-fastsinfull
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
	bltz	a0, .LBB38_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB38_2:                               # %entry
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
.Lfunc_end38:
	.size	fastersinfull, .Lfunc_end38-fastersinfull
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
	blez	a0, .LBB39_2
# %bb.1:
	lui	a0, 788845
	addi	s1, a0, -1052
.LBB39_2:                               # %entry
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
.Lfunc_end39:
	.size	fastcos, .Lfunc_end39-fastcos
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
.Lfunc_end40:
	.size	fastercos, .Lfunc_end40-fastercos
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
	bltz	a0, .LBB41_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB41_2:                               # %entry
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
.Lfunc_end41:
	.size	fastcosfull, .Lfunc_end41-fastcosfull
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
	bltz	a0, .LBB42_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB42_2:                               # %entry
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
.Lfunc_end42:
	.size	fastercosfull, .Lfunc_end42-fastercosfull
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
.Lfunc_end43:
	.size	fasttan, .Lfunc_end43-fasttan
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
.Lfunc_end44:
	.size	fastertan, .Lfunc_end44-fastertan
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
	bltz	a0, .LBB45_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB45_2:                               # %entry
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
	blez	a0, .LBB45_4
# %bb.3:
	lui	a0, 788845
	addi	s0, a0, -1052
.LBB45_4:                               # %entry
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
.Lfunc_end45:
	.size	fasttanfull, .Lfunc_end45-fasttanfull
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
	bltz	a0, .LBB46_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB46_2:                               # %entry
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
.Lfunc_end46:
	.size	fastertanfull, .Lfunc_end46-fastertanfull
	.cfi_endproc
                                        # -- End function
	.type	.Lmain.m_result,@object # @main.m_result
	.section	.rodata,"a",@progbits
	.p2align	4
.Lmain.m_result:
	.quad	33335050                # 0x1fca70a
	.quad	33340100                # 0x1fcbac4
	.quad	33345150                # 0x1fcce7e
	.quad	33350200                # 0x1fce238
	.quad	33355250                # 0x1fcf5f2
	.quad	33360300                # 0x1fd09ac
	.quad	33365350                # 0x1fd1d66
	.quad	33370400                # 0x1fd3120
	.quad	33375450                # 0x1fd44da
	.quad	33380500                # 0x1fd5894
	.quad	33385550                # 0x1fd6c4e
	.quad	33390600                # 0x1fd8008
	.quad	33395650                # 0x1fd93c2
	.quad	33400700                # 0x1fda77c
	.quad	33405750                # 0x1fdbb36
	.quad	33410800                # 0x1fdcef0
	.quad	33415850                # 0x1fde2aa
	.quad	33420900                # 0x1fdf664
	.quad	33425950                # 0x1fe0a1e
	.quad	33431000                # 0x1fe1dd8
	.quad	33436050                # 0x1fe3192
	.quad	33441100                # 0x1fe454c
	.quad	33446150                # 0x1fe5906
	.quad	33451200                # 0x1fe6cc0
	.quad	33456250                # 0x1fe807a
	.quad	33461300                # 0x1fe9434
	.quad	33466350                # 0x1fea7ee
	.quad	33471400                # 0x1febba8
	.quad	33476450                # 0x1fecf62
	.quad	33481500                # 0x1fee31c
	.quad	33486550                # 0x1fef6d6
	.quad	33491600                # 0x1ff0a90
	.quad	33496650                # 0x1ff1e4a
	.quad	33501700                # 0x1ff3204
	.quad	33506750                # 0x1ff45be
	.quad	33511800                # 0x1ff5978
	.quad	33516850                # 0x1ff6d32
	.quad	33521900                # 0x1ff80ec
	.quad	33526950                # 0x1ff94a6
	.quad	33532000                # 0x1ffa860
	.quad	33537050                # 0x1ffbc1a
	.quad	33542100                # 0x1ffcfd4
	.quad	33547150                # 0x1ffe38e
	.quad	33552200                # 0x1fff748
	.quad	33557250                # 0x2000b02
	.quad	33562300                # 0x2001ebc
	.quad	33567350                # 0x2003276
	.quad	33572400                # 0x2004630
	.quad	33577450                # 0x20059ea
	.quad	33582500                # 0x2006da4
	.quad	33587550                # 0x200815e
	.quad	33592600                # 0x2009518
	.quad	33597650                # 0x200a8d2
	.quad	33602700                # 0x200bc8c
	.quad	33607750                # 0x200d046
	.quad	33612800                # 0x200e400
	.quad	33617850                # 0x200f7ba
	.quad	33622900                # 0x2010b74
	.quad	33627950                # 0x2011f2e
	.quad	33633000                # 0x20132e8
	.quad	33638050                # 0x20146a2
	.quad	33643100                # 0x2015a5c
	.quad	33648150                # 0x2016e16
	.quad	33653200                # 0x20181d0
	.quad	33658250                # 0x201958a
	.quad	33663300                # 0x201a944
	.quad	33668350                # 0x201bcfe
	.quad	33673400                # 0x201d0b8
	.quad	33678450                # 0x201e472
	.quad	33683500                # 0x201f82c
	.quad	33688550                # 0x2020be6
	.quad	33693600                # 0x2021fa0
	.quad	33698650                # 0x202335a
	.quad	33703700                # 0x2024714
	.quad	33708750                # 0x2025ace
	.quad	33713800                # 0x2026e88
	.quad	33718850                # 0x2028242
	.quad	33723900                # 0x20295fc
	.quad	33728950                # 0x202a9b6
	.quad	33734000                # 0x202bd70
	.quad	33739050                # 0x202d12a
	.quad	33744100                # 0x202e4e4
	.quad	33749150                # 0x202f89e
	.quad	33754200                # 0x2030c58
	.quad	33759250                # 0x2032012
	.quad	33764300                # 0x20333cc
	.quad	33769350                # 0x2034786
	.quad	33774400                # 0x2035b40
	.quad	33779450                # 0x2036efa
	.quad	33784500                # 0x20382b4
	.quad	33789550                # 0x203966e
	.quad	33794600                # 0x203aa28
	.quad	33799650                # 0x203bde2
	.quad	33804700                # 0x203d19c
	.quad	33809750                # 0x203e556
	.quad	33814800                # 0x203f910
	.quad	33819850                # 0x2040cca
	.quad	33824900                # 0x2042084
	.quad	33829950                # 0x204343e
	.quad	33835000                # 0x20447f8
	.quad	82845050                # 0x4f01d7a
	.quad	82860100                # 0x4f05844
	.quad	82875150                # 0x4f0930e
	.quad	82890200                # 0x4f0cdd8
	.quad	82905250                # 0x4f108a2
	.quad	82920300                # 0x4f1436c
	.quad	82935350                # 0x4f17e36
	.quad	82950400                # 0x4f1b900
	.quad	82965450                # 0x4f1f3ca
	.quad	82980500                # 0x4f22e94
	.quad	82995550                # 0x4f2695e
	.quad	83010600                # 0x4f2a428
	.quad	83025650                # 0x4f2def2
	.quad	83040700                # 0x4f319bc
	.quad	83055750                # 0x4f35486
	.quad	83070800                # 0x4f38f50
	.quad	83085850                # 0x4f3ca1a
	.quad	83100900                # 0x4f404e4
	.quad	83115950                # 0x4f43fae
	.quad	83131000                # 0x4f47a78
	.quad	83146050                # 0x4f4b542
	.quad	83161100                # 0x4f4f00c
	.quad	83176150                # 0x4f52ad6
	.quad	83191200                # 0x4f565a0
	.quad	83206250                # 0x4f5a06a
	.quad	83221300                # 0x4f5db34
	.quad	83236350                # 0x4f615fe
	.quad	83251400                # 0x4f650c8
	.quad	83266450                # 0x4f68b92
	.quad	83281500                # 0x4f6c65c
	.quad	83296550                # 0x4f70126
	.quad	83311600                # 0x4f73bf0
	.quad	83326650                # 0x4f776ba
	.quad	83341700                # 0x4f7b184
	.quad	83356750                # 0x4f7ec4e
	.quad	83371800                # 0x4f82718
	.quad	83386850                # 0x4f861e2
	.quad	83401900                # 0x4f89cac
	.quad	83416950                # 0x4f8d776
	.quad	83432000                # 0x4f91240
	.quad	83447050                # 0x4f94d0a
	.quad	83462100                # 0x4f987d4
	.quad	83477150                # 0x4f9c29e
	.quad	83492200                # 0x4f9fd68
	.quad	83507250                # 0x4fa3832
	.quad	83522300                # 0x4fa72fc
	.quad	83537350                # 0x4faadc6
	.quad	83552400                # 0x4fae890
	.quad	83567450                # 0x4fb235a
	.quad	83582500                # 0x4fb5e24
	.quad	83597550                # 0x4fb98ee
	.quad	83612600                # 0x4fbd3b8
	.quad	83627650                # 0x4fc0e82
	.quad	83642700                # 0x4fc494c
	.quad	83657750                # 0x4fc8416
	.quad	83672800                # 0x4fcbee0
	.quad	83687850                # 0x4fcf9aa
	.quad	83702900                # 0x4fd3474
	.quad	83717950                # 0x4fd6f3e
	.quad	83733000                # 0x4fdaa08
	.quad	83748050                # 0x4fde4d2
	.quad	83763100                # 0x4fe1f9c
	.quad	83778150                # 0x4fe5a66
	.quad	83793200                # 0x4fe9530
	.quad	83808250                # 0x4fecffa
	.quad	83823300                # 0x4ff0ac4
	.quad	83838350                # 0x4ff458e
	.quad	83853400                # 0x4ff8058
	.quad	83868450                # 0x4ffbb22
	.quad	83883500                # 0x4fff5ec
	.quad	83898550                # 0x50030b6
	.quad	83913600                # 0x5006b80
	.quad	83928650                # 0x500a64a
	.quad	83943700                # 0x500e114
	.quad	83958750                # 0x5011bde
	.quad	83973800                # 0x50156a8
	.quad	83988850                # 0x5019172
	.quad	84003900                # 0x501cc3c
	.quad	84018950                # 0x5020706
	.quad	84034000                # 0x50241d0
	.quad	84049050                # 0x5027c9a
	.quad	84064100                # 0x502b764
	.quad	84079150                # 0x502f22e
	.quad	84094200                # 0x5032cf8
	.quad	84109250                # 0x50367c2
	.quad	84124300                # 0x503a28c
	.quad	84139350                # 0x503dd56
	.quad	84154400                # 0x5041820
	.quad	84169450                # 0x50452ea
	.quad	84184500                # 0x5048db4
	.quad	84199550                # 0x504c87e
	.quad	84214600                # 0x5050348
	.quad	84229650                # 0x5053e12
	.quad	84244700                # 0x50578dc
	.quad	84259750                # 0x505b3a6
	.quad	84274800                # 0x505ee70
	.quad	84289850                # 0x506293a
	.quad	84304900                # 0x5066404
	.quad	84319950                # 0x5069ece
	.quad	84335000                # 0x506d998
	.quad	132355050               # 0x7e393ea
	.quad	132380100               # 0x7e3f5c4
	.quad	132405150               # 0x7e4579e
	.quad	132430200               # 0x7e4b978
	.quad	132455250               # 0x7e51b52
	.quad	132480300               # 0x7e57d2c
	.quad	132505350               # 0x7e5df06
	.quad	132530400               # 0x7e640e0
	.quad	132555450               # 0x7e6a2ba
	.quad	132580500               # 0x7e70494
	.quad	132605550               # 0x7e7666e
	.quad	132630600               # 0x7e7c848
	.quad	132655650               # 0x7e82a22
	.quad	132680700               # 0x7e88bfc
	.quad	132705750               # 0x7e8edd6
	.quad	132730800               # 0x7e94fb0
	.quad	132755850               # 0x7e9b18a
	.quad	132780900               # 0x7ea1364
	.quad	132805950               # 0x7ea753e
	.quad	132831000               # 0x7ead718
	.quad	132856050               # 0x7eb38f2
	.quad	132881100               # 0x7eb9acc
	.quad	132906150               # 0x7ebfca6
	.quad	132931200               # 0x7ec5e80
	.quad	132956250               # 0x7ecc05a
	.quad	132981300               # 0x7ed2234
	.quad	133006350               # 0x7ed840e
	.quad	133031400               # 0x7ede5e8
	.quad	133056450               # 0x7ee47c2
	.quad	133081500               # 0x7eea99c
	.quad	133106550               # 0x7ef0b76
	.quad	133131600               # 0x7ef6d50
	.quad	133156650               # 0x7efcf2a
	.quad	133181700               # 0x7f03104
	.quad	133206750               # 0x7f092de
	.quad	133231800               # 0x7f0f4b8
	.quad	133256850               # 0x7f15692
	.quad	133281900               # 0x7f1b86c
	.quad	133306950               # 0x7f21a46
	.quad	133332000               # 0x7f27c20
	.quad	133357050               # 0x7f2ddfa
	.quad	133382100               # 0x7f33fd4
	.quad	133407150               # 0x7f3a1ae
	.quad	133432200               # 0x7f40388
	.quad	133457250               # 0x7f46562
	.quad	133482300               # 0x7f4c73c
	.quad	133507350               # 0x7f52916
	.quad	133532400               # 0x7f58af0
	.quad	133557450               # 0x7f5ecca
	.quad	133582500               # 0x7f64ea4
	.quad	133607550               # 0x7f6b07e
	.quad	133632600               # 0x7f71258
	.quad	133657650               # 0x7f77432
	.quad	133682700               # 0x7f7d60c
	.quad	133707750               # 0x7f837e6
	.quad	133732800               # 0x7f899c0
	.quad	133757850               # 0x7f8fb9a
	.quad	133782900               # 0x7f95d74
	.quad	133807950               # 0x7f9bf4e
	.quad	133833000               # 0x7fa2128
	.quad	133858050               # 0x7fa8302
	.quad	133883100               # 0x7fae4dc
	.quad	133908150               # 0x7fb46b6
	.quad	133933200               # 0x7fba890
	.quad	133958250               # 0x7fc0a6a
	.quad	133983300               # 0x7fc6c44
	.quad	134008350               # 0x7fcce1e
	.quad	134033400               # 0x7fd2ff8
	.quad	134058450               # 0x7fd91d2
	.quad	134083500               # 0x7fdf3ac
	.quad	134108550               # 0x7fe5586
	.quad	134133600               # 0x7feb760
	.quad	134158650               # 0x7ff193a
	.quad	134183700               # 0x7ff7b14
	.quad	134208750               # 0x7ffdcee
	.quad	134233800               # 0x8003ec8
	.quad	134258850               # 0x800a0a2
	.quad	134283900               # 0x801027c
	.quad	134308950               # 0x8016456
	.quad	134334000               # 0x801c630
	.quad	134359050               # 0x802280a
	.quad	134384100               # 0x80289e4
	.quad	134409150               # 0x802ebbe
	.quad	134434200               # 0x8034d98
	.quad	134459250               # 0x803af72
	.quad	134484300               # 0x804114c
	.quad	134509350               # 0x8047326
	.quad	134534400               # 0x804d500
	.quad	134559450               # 0x80536da
	.quad	134584500               # 0x80598b4
	.quad	134609550               # 0x805fa8e
	.quad	134634600               # 0x8065c68
	.quad	134659650               # 0x806be42
	.quad	134684700               # 0x807201c
	.quad	134709750               # 0x80781f6
	.quad	134734800               # 0x807e3d0
	.quad	134759850               # 0x80845aa
	.quad	134784900               # 0x808a784
	.quad	134809950               # 0x809095e
	.quad	134835000               # 0x8096b38
	.quad	181865050               # 0xad70a5a
	.quad	181900100               # 0xad79344
	.quad	181935150               # 0xad81c2e
	.quad	181970200               # 0xad8a518
	.quad	182005250               # 0xad92e02
	.quad	182040300               # 0xad9b6ec
	.quad	182075350               # 0xada3fd6
	.quad	182110400               # 0xadac8c0
	.quad	182145450               # 0xadb51aa
	.quad	182180500               # 0xadbda94
	.quad	182215550               # 0xadc637e
	.quad	182250600               # 0xadcec68
	.quad	182285650               # 0xadd7552
	.quad	182320700               # 0xaddfe3c
	.quad	182355750               # 0xade8726
	.quad	182390800               # 0xadf1010
	.quad	182425850               # 0xadf98fa
	.quad	182460900               # 0xae021e4
	.quad	182495950               # 0xae0aace
	.quad	182531000               # 0xae133b8
	.quad	182566050               # 0xae1bca2
	.quad	182601100               # 0xae2458c
	.quad	182636150               # 0xae2ce76
	.quad	182671200               # 0xae35760
	.quad	182706250               # 0xae3e04a
	.quad	182741300               # 0xae46934
	.quad	182776350               # 0xae4f21e
	.quad	182811400               # 0xae57b08
	.quad	182846450               # 0xae603f2
	.quad	182881500               # 0xae68cdc
	.quad	182916550               # 0xae715c6
	.quad	182951600               # 0xae79eb0
	.quad	182986650               # 0xae8279a
	.quad	183021700               # 0xae8b084
	.quad	183056750               # 0xae9396e
	.quad	183091800               # 0xae9c258
	.quad	183126850               # 0xaea4b42
	.quad	183161900               # 0xaead42c
	.quad	183196950               # 0xaeb5d16
	.quad	183232000               # 0xaebe600
	.quad	183267050               # 0xaec6eea
	.quad	183302100               # 0xaecf7d4
	.quad	183337150               # 0xaed80be
	.quad	183372200               # 0xaee09a8
	.quad	183407250               # 0xaee9292
	.quad	183442300               # 0xaef1b7c
	.quad	183477350               # 0xaefa466
	.quad	183512400               # 0xaf02d50
	.quad	183547450               # 0xaf0b63a
	.quad	183582500               # 0xaf13f24
	.quad	183617550               # 0xaf1c80e
	.quad	183652600               # 0xaf250f8
	.quad	183687650               # 0xaf2d9e2
	.quad	183722700               # 0xaf362cc
	.quad	183757750               # 0xaf3ebb6
	.quad	183792800               # 0xaf474a0
	.quad	183827850               # 0xaf4fd8a
	.quad	183862900               # 0xaf58674
	.quad	183897950               # 0xaf60f5e
	.quad	183933000               # 0xaf69848
	.quad	183968050               # 0xaf72132
	.quad	184003100               # 0xaf7aa1c
	.quad	184038150               # 0xaf83306
	.quad	184073200               # 0xaf8bbf0
	.quad	184108250               # 0xaf944da
	.quad	184143300               # 0xaf9cdc4
	.quad	184178350               # 0xafa56ae
	.quad	184213400               # 0xafadf98
	.quad	184248450               # 0xafb6882
	.quad	184283500               # 0xafbf16c
	.quad	184318550               # 0xafc7a56
	.quad	184353600               # 0xafd0340
	.quad	184388650               # 0xafd8c2a
	.quad	184423700               # 0xafe1514
	.quad	184458750               # 0xafe9dfe
	.quad	184493800               # 0xaff26e8
	.quad	184528850               # 0xaffafd2
	.quad	184563900               # 0xb0038bc
	.quad	184598950               # 0xb00c1a6
	.quad	184634000               # 0xb014a90
	.quad	184669050               # 0xb01d37a
	.quad	184704100               # 0xb025c64
	.quad	184739150               # 0xb02e54e
	.quad	184774200               # 0xb036e38
	.quad	184809250               # 0xb03f722
	.quad	184844300               # 0xb04800c
	.quad	184879350               # 0xb0508f6
	.quad	184914400               # 0xb0591e0
	.quad	184949450               # 0xb061aca
	.quad	184984500               # 0xb06a3b4
	.quad	185019550               # 0xb072c9e
	.quad	185054600               # 0xb07b588
	.quad	185089650               # 0xb083e72
	.quad	185124700               # 0xb08c75c
	.quad	185159750               # 0xb095046
	.quad	185194800               # 0xb09d930
	.quad	185229850               # 0xb0a621a
	.quad	185264900               # 0xb0aeb04
	.quad	185299950               # 0xb0b73ee
	.quad	185335000               # 0xb0bfcd8
	.quad	231375050               # 0xdca80ca
	.quad	231420100               # 0xdcb30c4
	.quad	231465150               # 0xdcbe0be
	.quad	231510200               # 0xdcc90b8
	.quad	231555250               # 0xdcd40b2
	.quad	231600300               # 0xdcdf0ac
	.quad	231645350               # 0xdcea0a6
	.quad	231690400               # 0xdcf50a0
	.quad	231735450               # 0xdd0009a
	.quad	231780500               # 0xdd0b094
	.quad	231825550               # 0xdd1608e
	.quad	231870600               # 0xdd21088
	.quad	231915650               # 0xdd2c082
	.quad	231960700               # 0xdd3707c
	.quad	232005750               # 0xdd42076
	.quad	232050800               # 0xdd4d070
	.quad	232095850               # 0xdd5806a
	.quad	232140900               # 0xdd63064
	.quad	232185950               # 0xdd6e05e
	.quad	232231000               # 0xdd79058
	.quad	232276050               # 0xdd84052
	.quad	232321100               # 0xdd8f04c
	.quad	232366150               # 0xdd9a046
	.quad	232411200               # 0xdda5040
	.quad	232456250               # 0xddb003a
	.quad	232501300               # 0xddbb034
	.quad	232546350               # 0xddc602e
	.quad	232591400               # 0xddd1028
	.quad	232636450               # 0xdddc022
	.quad	232681500               # 0xdde701c
	.quad	232726550               # 0xddf2016
	.quad	232771600               # 0xddfd010
	.quad	232816650               # 0xde0800a
	.quad	232861700               # 0xde13004
	.quad	232906750               # 0xde1dffe
	.quad	232951800               # 0xde28ff8
	.quad	232996850               # 0xde33ff2
	.quad	233041900               # 0xde3efec
	.quad	233086950               # 0xde49fe6
	.quad	233132000               # 0xde54fe0
	.quad	233177050               # 0xde5ffda
	.quad	233222100               # 0xde6afd4
	.quad	233267150               # 0xde75fce
	.quad	233312200               # 0xde80fc8
	.quad	233357250               # 0xde8bfc2
	.quad	233402300               # 0xde96fbc
	.quad	233447350               # 0xdea1fb6
	.quad	233492400               # 0xdeacfb0
	.quad	233537450               # 0xdeb7faa
	.quad	233582500               # 0xdec2fa4
	.quad	233627550               # 0xdecdf9e
	.quad	233672600               # 0xded8f98
	.quad	233717650               # 0xdee3f92
	.quad	233762700               # 0xdeeef8c
	.quad	233807750               # 0xdef9f86
	.quad	233852800               # 0xdf04f80
	.quad	233897850               # 0xdf0ff7a
	.quad	233942900               # 0xdf1af74
	.quad	233987950               # 0xdf25f6e
	.quad	234033000               # 0xdf30f68
	.quad	234078050               # 0xdf3bf62
	.quad	234123100               # 0xdf46f5c
	.quad	234168150               # 0xdf51f56
	.quad	234213200               # 0xdf5cf50
	.quad	234258250               # 0xdf67f4a
	.quad	234303300               # 0xdf72f44
	.quad	234348350               # 0xdf7df3e
	.quad	234393400               # 0xdf88f38
	.quad	234438450               # 0xdf93f32
	.quad	234483500               # 0xdf9ef2c
	.quad	234528550               # 0xdfa9f26
	.quad	234573600               # 0xdfb4f20
	.quad	234618650               # 0xdfbff1a
	.quad	234663700               # 0xdfcaf14
	.quad	234708750               # 0xdfd5f0e
	.quad	234753800               # 0xdfe0f08
	.quad	234798850               # 0xdfebf02
	.quad	234843900               # 0xdff6efc
	.quad	234888950               # 0xe001ef6
	.quad	234934000               # 0xe00cef0
	.quad	234979050               # 0xe017eea
	.quad	235024100               # 0xe022ee4
	.quad	235069150               # 0xe02dede
	.quad	235114200               # 0xe038ed8
	.quad	235159250               # 0xe043ed2
	.quad	235204300               # 0xe04eecc
	.quad	235249350               # 0xe059ec6
	.quad	235294400               # 0xe064ec0
	.quad	235339450               # 0xe06feba
	.quad	235384500               # 0xe07aeb4
	.quad	235429550               # 0xe085eae
	.quad	235474600               # 0xe090ea8
	.quad	235519650               # 0xe09bea2
	.quad	235564700               # 0xe0a6e9c
	.quad	235609750               # 0xe0b1e96
	.quad	235654800               # 0xe0bce90
	.quad	235699850               # 0xe0c7e8a
	.quad	235744900               # 0xe0d2e84
	.quad	235789950               # 0xe0dde7e
	.quad	235835000               # 0xe0e8e78
	.quad	280885050               # 0x10bdf73a
	.quad	280940100               # 0x10bece44
	.quad	280995150               # 0x10bfa54e
	.quad	281050200               # 0x10c07c58
	.quad	281105250               # 0x10c15362
	.quad	281160300               # 0x10c22a6c
	.quad	281215350               # 0x10c30176
	.quad	281270400               # 0x10c3d880
	.quad	281325450               # 0x10c4af8a
	.quad	281380500               # 0x10c58694
	.quad	281435550               # 0x10c65d9e
	.quad	281490600               # 0x10c734a8
	.quad	281545650               # 0x10c80bb2
	.quad	281600700               # 0x10c8e2bc
	.quad	281655750               # 0x10c9b9c6
	.quad	281710800               # 0x10ca90d0
	.quad	281765850               # 0x10cb67da
	.quad	281820900               # 0x10cc3ee4
	.quad	281875950               # 0x10cd15ee
	.quad	281931000               # 0x10cdecf8
	.quad	281986050               # 0x10cec402
	.quad	282041100               # 0x10cf9b0c
	.quad	282096150               # 0x10d07216
	.quad	282151200               # 0x10d14920
	.quad	282206250               # 0x10d2202a
	.quad	282261300               # 0x10d2f734
	.quad	282316350               # 0x10d3ce3e
	.quad	282371400               # 0x10d4a548
	.quad	282426450               # 0x10d57c52
	.quad	282481500               # 0x10d6535c
	.quad	282536550               # 0x10d72a66
	.quad	282591600               # 0x10d80170
	.quad	282646650               # 0x10d8d87a
	.quad	282701700               # 0x10d9af84
	.quad	282756750               # 0x10da868e
	.quad	282811800               # 0x10db5d98
	.quad	282866850               # 0x10dc34a2
	.quad	282921900               # 0x10dd0bac
	.quad	282976950               # 0x10dde2b6
	.quad	283032000               # 0x10deb9c0
	.quad	283087050               # 0x10df90ca
	.quad	283142100               # 0x10e067d4
	.quad	283197150               # 0x10e13ede
	.quad	283252200               # 0x10e215e8
	.quad	283307250               # 0x10e2ecf2
	.quad	283362300               # 0x10e3c3fc
	.quad	283417350               # 0x10e49b06
	.quad	283472400               # 0x10e57210
	.quad	283527450               # 0x10e6491a
	.quad	283582500               # 0x10e72024
	.quad	283637550               # 0x10e7f72e
	.quad	283692600               # 0x10e8ce38
	.quad	283747650               # 0x10e9a542
	.quad	283802700               # 0x10ea7c4c
	.quad	283857750               # 0x10eb5356
	.quad	283912800               # 0x10ec2a60
	.quad	283967850               # 0x10ed016a
	.quad	284022900               # 0x10edd874
	.quad	284077950               # 0x10eeaf7e
	.quad	284133000               # 0x10ef8688
	.quad	284188050               # 0x10f05d92
	.quad	284243100               # 0x10f1349c
	.quad	284298150               # 0x10f20ba6
	.quad	284353200               # 0x10f2e2b0
	.quad	284408250               # 0x10f3b9ba
	.quad	284463300               # 0x10f490c4
	.quad	284518350               # 0x10f567ce
	.quad	284573400               # 0x10f63ed8
	.quad	284628450               # 0x10f715e2
	.quad	284683500               # 0x10f7ecec
	.quad	284738550               # 0x10f8c3f6
	.quad	284793600               # 0x10f99b00
	.quad	284848650               # 0x10fa720a
	.quad	284903700               # 0x10fb4914
	.quad	284958750               # 0x10fc201e
	.quad	285013800               # 0x10fcf728
	.quad	285068850               # 0x10fdce32
	.quad	285123900               # 0x10fea53c
	.quad	285178950               # 0x10ff7c46
	.quad	285234000               # 0x11005350
	.quad	285289050               # 0x11012a5a
	.quad	285344100               # 0x11020164
	.quad	285399150               # 0x1102d86e
	.quad	285454200               # 0x1103af78
	.quad	285509250               # 0x11048682
	.quad	285564300               # 0x11055d8c
	.quad	285619350               # 0x11063496
	.quad	285674400               # 0x11070ba0
	.quad	285729450               # 0x1107e2aa
	.quad	285784500               # 0x1108b9b4
	.quad	285839550               # 0x110990be
	.quad	285894600               # 0x110a67c8
	.quad	285949650               # 0x110b3ed2
	.quad	286004700               # 0x110c15dc
	.quad	286059750               # 0x110cece6
	.quad	286114800               # 0x110dc3f0
	.quad	286169850               # 0x110e9afa
	.quad	286224900               # 0x110f7204
	.quad	286279950               # 0x1110490e
	.quad	286335000               # 0x11112018
	.quad	330395050               # 0x13b16daa
	.quad	330460100               # 0x13b26bc4
	.quad	330525150               # 0x13b369de
	.quad	330590200               # 0x13b467f8
	.quad	330655250               # 0x13b56612
	.quad	330720300               # 0x13b6642c
	.quad	330785350               # 0x13b76246
	.quad	330850400               # 0x13b86060
	.quad	330915450               # 0x13b95e7a
	.quad	330980500               # 0x13ba5c94
	.quad	331045550               # 0x13bb5aae
	.quad	331110600               # 0x13bc58c8
	.quad	331175650               # 0x13bd56e2
	.quad	331240700               # 0x13be54fc
	.quad	331305750               # 0x13bf5316
	.quad	331370800               # 0x13c05130
	.quad	331435850               # 0x13c14f4a
	.quad	331500900               # 0x13c24d64
	.quad	331565950               # 0x13c34b7e
	.quad	331631000               # 0x13c44998
	.quad	331696050               # 0x13c547b2
	.quad	331761100               # 0x13c645cc
	.quad	331826150               # 0x13c743e6
	.quad	331891200               # 0x13c84200
	.quad	331956250               # 0x13c9401a
	.quad	332021300               # 0x13ca3e34
	.quad	332086350               # 0x13cb3c4e
	.quad	332151400               # 0x13cc3a68
	.quad	332216450               # 0x13cd3882
	.quad	332281500               # 0x13ce369c
	.quad	332346550               # 0x13cf34b6
	.quad	332411600               # 0x13d032d0
	.quad	332476650               # 0x13d130ea
	.quad	332541700               # 0x13d22f04
	.quad	332606750               # 0x13d32d1e
	.quad	332671800               # 0x13d42b38
	.quad	332736850               # 0x13d52952
	.quad	332801900               # 0x13d6276c
	.quad	332866950               # 0x13d72586
	.quad	332932000               # 0x13d823a0
	.quad	332997050               # 0x13d921ba
	.quad	333062100               # 0x13da1fd4
	.quad	333127150               # 0x13db1dee
	.quad	333192200               # 0x13dc1c08
	.quad	333257250               # 0x13dd1a22
	.quad	333322300               # 0x13de183c
	.quad	333387350               # 0x13df1656
	.quad	333452400               # 0x13e01470
	.quad	333517450               # 0x13e1128a
	.quad	333582500               # 0x13e210a4
	.quad	333647550               # 0x13e30ebe
	.quad	333712600               # 0x13e40cd8
	.quad	333777650               # 0x13e50af2
	.quad	333842700               # 0x13e6090c
	.quad	333907750               # 0x13e70726
	.quad	333972800               # 0x13e80540
	.quad	334037850               # 0x13e9035a
	.quad	334102900               # 0x13ea0174
	.quad	334167950               # 0x13eaff8e
	.quad	334233000               # 0x13ebfda8
	.quad	334298050               # 0x13ecfbc2
	.quad	334363100               # 0x13edf9dc
	.quad	334428150               # 0x13eef7f6
	.quad	334493200               # 0x13eff610
	.quad	334558250               # 0x13f0f42a
	.quad	334623300               # 0x13f1f244
	.quad	334688350               # 0x13f2f05e
	.quad	334753400               # 0x13f3ee78
	.quad	334818450               # 0x13f4ec92
	.quad	334883500               # 0x13f5eaac
	.quad	334948550               # 0x13f6e8c6
	.quad	335013600               # 0x13f7e6e0
	.quad	335078650               # 0x13f8e4fa
	.quad	335143700               # 0x13f9e314
	.quad	335208750               # 0x13fae12e
	.quad	335273800               # 0x13fbdf48
	.quad	335338850               # 0x13fcdd62
	.quad	335403900               # 0x13fddb7c
	.quad	335468950               # 0x13fed996
	.quad	335534000               # 0x13ffd7b0
	.quad	335599050               # 0x1400d5ca
	.quad	335664100               # 0x1401d3e4
	.quad	335729150               # 0x1402d1fe
	.quad	335794200               # 0x1403d018
	.quad	335859250               # 0x1404ce32
	.quad	335924300               # 0x1405cc4c
	.quad	335989350               # 0x1406ca66
	.quad	336054400               # 0x1407c880
	.quad	336119450               # 0x1408c69a
	.quad	336184500               # 0x1409c4b4
	.quad	336249550               # 0x140ac2ce
	.quad	336314600               # 0x140bc0e8
	.quad	336379650               # 0x140cbf02
	.quad	336444700               # 0x140dbd1c
	.quad	336509750               # 0x140ebb36
	.quad	336574800               # 0x140fb950
	.quad	336639850               # 0x1410b76a
	.quad	336704900               # 0x1411b584
	.quad	336769950               # 0x1412b39e
	.quad	336835000               # 0x1413b1b8
	.quad	379905050               # 0x16a4e41a
	.quad	379980100               # 0x16a60944
	.quad	380055150               # 0x16a72e6e
	.quad	380130200               # 0x16a85398
	.quad	380205250               # 0x16a978c2
	.quad	380280300               # 0x16aa9dec
	.quad	380355350               # 0x16abc316
	.quad	380430400               # 0x16ace840
	.quad	380505450               # 0x16ae0d6a
	.quad	380580500               # 0x16af3294
	.quad	380655550               # 0x16b057be
	.quad	380730600               # 0x16b17ce8
	.quad	380805650               # 0x16b2a212
	.quad	380880700               # 0x16b3c73c
	.quad	380955750               # 0x16b4ec66
	.quad	381030800               # 0x16b61190
	.quad	381105850               # 0x16b736ba
	.quad	381180900               # 0x16b85be4
	.quad	381255950               # 0x16b9810e
	.quad	381331000               # 0x16baa638
	.quad	381406050               # 0x16bbcb62
	.quad	381481100               # 0x16bcf08c
	.quad	381556150               # 0x16be15b6
	.quad	381631200               # 0x16bf3ae0
	.quad	381706250               # 0x16c0600a
	.quad	381781300               # 0x16c18534
	.quad	381856350               # 0x16c2aa5e
	.quad	381931400               # 0x16c3cf88
	.quad	382006450               # 0x16c4f4b2
	.quad	382081500               # 0x16c619dc
	.quad	382156550               # 0x16c73f06
	.quad	382231600               # 0x16c86430
	.quad	382306650               # 0x16c9895a
	.quad	382381700               # 0x16caae84
	.quad	382456750               # 0x16cbd3ae
	.quad	382531800               # 0x16ccf8d8
	.quad	382606850               # 0x16ce1e02
	.quad	382681900               # 0x16cf432c
	.quad	382756950               # 0x16d06856
	.quad	382832000               # 0x16d18d80
	.quad	382907050               # 0x16d2b2aa
	.quad	382982100               # 0x16d3d7d4
	.quad	383057150               # 0x16d4fcfe
	.quad	383132200               # 0x16d62228
	.quad	383207250               # 0x16d74752
	.quad	383282300               # 0x16d86c7c
	.quad	383357350               # 0x16d991a6
	.quad	383432400               # 0x16dab6d0
	.quad	383507450               # 0x16dbdbfa
	.quad	383582500               # 0x16dd0124
	.quad	383657550               # 0x16de264e
	.quad	383732600               # 0x16df4b78
	.quad	383807650               # 0x16e070a2
	.quad	383882700               # 0x16e195cc
	.quad	383957750               # 0x16e2baf6
	.quad	384032800               # 0x16e3e020
	.quad	384107850               # 0x16e5054a
	.quad	384182900               # 0x16e62a74
	.quad	384257950               # 0x16e74f9e
	.quad	384333000               # 0x16e874c8
	.quad	384408050               # 0x16e999f2
	.quad	384483100               # 0x16eabf1c
	.quad	384558150               # 0x16ebe446
	.quad	384633200               # 0x16ed0970
	.quad	384708250               # 0x16ee2e9a
	.quad	384783300               # 0x16ef53c4
	.quad	384858350               # 0x16f078ee
	.quad	384933400               # 0x16f19e18
	.quad	385008450               # 0x16f2c342
	.quad	385083500               # 0x16f3e86c
	.quad	385158550               # 0x16f50d96
	.quad	385233600               # 0x16f632c0
	.quad	385308650               # 0x16f757ea
	.quad	385383700               # 0x16f87d14
	.quad	385458750               # 0x16f9a23e
	.quad	385533800               # 0x16fac768
	.quad	385608850               # 0x16fbec92
	.quad	385683900               # 0x16fd11bc
	.quad	385758950               # 0x16fe36e6
	.quad	385834000               # 0x16ff5c10
	.quad	385909050               # 0x1700813a
	.quad	385984100               # 0x1701a664
	.quad	386059150               # 0x1702cb8e
	.quad	386134200               # 0x1703f0b8
	.quad	386209250               # 0x170515e2
	.quad	386284300               # 0x17063b0c
	.quad	386359350               # 0x17076036
	.quad	386434400               # 0x17088560
	.quad	386509450               # 0x1709aa8a
	.quad	386584500               # 0x170acfb4
	.quad	386659550               # 0x170bf4de
	.quad	386734600               # 0x170d1a08
	.quad	386809650               # 0x170e3f32
	.quad	386884700               # 0x170f645c
	.quad	386959750               # 0x17108986
	.quad	387034800               # 0x1711aeb0
	.quad	387109850               # 0x1712d3da
	.quad	387184900               # 0x1713f904
	.quad	387259950               # 0x17151e2e
	.quad	387335000               # 0x17164358
	.quad	429415050               # 0x19985a8a
	.quad	429500100               # 0x1999a6c4
	.quad	429585150               # 0x199af2fe
	.quad	429670200               # 0x199c3f38
	.quad	429755250               # 0x199d8b72
	.quad	429840300               # 0x199ed7ac
	.quad	429925350               # 0x19a023e6
	.quad	430010400               # 0x19a17020
	.quad	430095450               # 0x19a2bc5a
	.quad	430180500               # 0x19a40894
	.quad	430265550               # 0x19a554ce
	.quad	430350600               # 0x19a6a108
	.quad	430435650               # 0x19a7ed42
	.quad	430520700               # 0x19a9397c
	.quad	430605750               # 0x19aa85b6
	.quad	430690800               # 0x19abd1f0
	.quad	430775850               # 0x19ad1e2a
	.quad	430860900               # 0x19ae6a64
	.quad	430945950               # 0x19afb69e
	.quad	431031000               # 0x19b102d8
	.quad	431116050               # 0x19b24f12
	.quad	431201100               # 0x19b39b4c
	.quad	431286150               # 0x19b4e786
	.quad	431371200               # 0x19b633c0
	.quad	431456250               # 0x19b77ffa
	.quad	431541300               # 0x19b8cc34
	.quad	431626350               # 0x19ba186e
	.quad	431711400               # 0x19bb64a8
	.quad	431796450               # 0x19bcb0e2
	.quad	431881500               # 0x19bdfd1c
	.quad	431966550               # 0x19bf4956
	.quad	432051600               # 0x19c09590
	.quad	432136650               # 0x19c1e1ca
	.quad	432221700               # 0x19c32e04
	.quad	432306750               # 0x19c47a3e
	.quad	432391800               # 0x19c5c678
	.quad	432476850               # 0x19c712b2
	.quad	432561900               # 0x19c85eec
	.quad	432646950               # 0x19c9ab26
	.quad	432732000               # 0x19caf760
	.quad	432817050               # 0x19cc439a
	.quad	432902100               # 0x19cd8fd4
	.quad	432987150               # 0x19cedc0e
	.quad	433072200               # 0x19d02848
	.quad	433157250               # 0x19d17482
	.quad	433242300               # 0x19d2c0bc
	.quad	433327350               # 0x19d40cf6
	.quad	433412400               # 0x19d55930
	.quad	433497450               # 0x19d6a56a
	.quad	433582500               # 0x19d7f1a4
	.quad	433667550               # 0x19d93dde
	.quad	433752600               # 0x19da8a18
	.quad	433837650               # 0x19dbd652
	.quad	433922700               # 0x19dd228c
	.quad	434007750               # 0x19de6ec6
	.quad	434092800               # 0x19dfbb00
	.quad	434177850               # 0x19e1073a
	.quad	434262900               # 0x19e25374
	.quad	434347950               # 0x19e39fae
	.quad	434433000               # 0x19e4ebe8
	.quad	434518050               # 0x19e63822
	.quad	434603100               # 0x19e7845c
	.quad	434688150               # 0x19e8d096
	.quad	434773200               # 0x19ea1cd0
	.quad	434858250               # 0x19eb690a
	.quad	434943300               # 0x19ecb544
	.quad	435028350               # 0x19ee017e
	.quad	435113400               # 0x19ef4db8
	.quad	435198450               # 0x19f099f2
	.quad	435283500               # 0x19f1e62c
	.quad	435368550               # 0x19f33266
	.quad	435453600               # 0x19f47ea0
	.quad	435538650               # 0x19f5cada
	.quad	435623700               # 0x19f71714
	.quad	435708750               # 0x19f8634e
	.quad	435793800               # 0x19f9af88
	.quad	435878850               # 0x19fafbc2
	.quad	435963900               # 0x19fc47fc
	.quad	436048950               # 0x19fd9436
	.quad	436134000               # 0x19fee070
	.quad	436219050               # 0x1a002caa
	.quad	436304100               # 0x1a0178e4
	.quad	436389150               # 0x1a02c51e
	.quad	436474200               # 0x1a041158
	.quad	436559250               # 0x1a055d92
	.quad	436644300               # 0x1a06a9cc
	.quad	436729350               # 0x1a07f606
	.quad	436814400               # 0x1a094240
	.quad	436899450               # 0x1a0a8e7a
	.quad	436984500               # 0x1a0bdab4
	.quad	437069550               # 0x1a0d26ee
	.quad	437154600               # 0x1a0e7328
	.quad	437239650               # 0x1a0fbf62
	.quad	437324700               # 0x1a110b9c
	.quad	437409750               # 0x1a1257d6
	.quad	437494800               # 0x1a13a410
	.quad	437579850               # 0x1a14f04a
	.quad	437664900               # 0x1a163c84
	.quad	437749950               # 0x1a1788be
	.quad	437835000               # 0x1a18d4f8
	.quad	478925050               # 0x1c8bd0fa
	.quad	479020100               # 0x1c8d4444
	.quad	479115150               # 0x1c8eb78e
	.quad	479210200               # 0x1c902ad8
	.quad	479305250               # 0x1c919e22
	.quad	479400300               # 0x1c93116c
	.quad	479495350               # 0x1c9484b6
	.quad	479590400               # 0x1c95f800
	.quad	479685450               # 0x1c976b4a
	.quad	479780500               # 0x1c98de94
	.quad	479875550               # 0x1c9a51de
	.quad	479970600               # 0x1c9bc528
	.quad	480065650               # 0x1c9d3872
	.quad	480160700               # 0x1c9eabbc
	.quad	480255750               # 0x1ca01f06
	.quad	480350800               # 0x1ca19250
	.quad	480445850               # 0x1ca3059a
	.quad	480540900               # 0x1ca478e4
	.quad	480635950               # 0x1ca5ec2e
	.quad	480731000               # 0x1ca75f78
	.quad	480826050               # 0x1ca8d2c2
	.quad	480921100               # 0x1caa460c
	.quad	481016150               # 0x1cabb956
	.quad	481111200               # 0x1cad2ca0
	.quad	481206250               # 0x1cae9fea
	.quad	481301300               # 0x1cb01334
	.quad	481396350               # 0x1cb1867e
	.quad	481491400               # 0x1cb2f9c8
	.quad	481586450               # 0x1cb46d12
	.quad	481681500               # 0x1cb5e05c
	.quad	481776550               # 0x1cb753a6
	.quad	481871600               # 0x1cb8c6f0
	.quad	481966650               # 0x1cba3a3a
	.quad	482061700               # 0x1cbbad84
	.quad	482156750               # 0x1cbd20ce
	.quad	482251800               # 0x1cbe9418
	.quad	482346850               # 0x1cc00762
	.quad	482441900               # 0x1cc17aac
	.quad	482536950               # 0x1cc2edf6
	.quad	482632000               # 0x1cc46140
	.quad	482727050               # 0x1cc5d48a
	.quad	482822100               # 0x1cc747d4
	.quad	482917150               # 0x1cc8bb1e
	.quad	483012200               # 0x1cca2e68
	.quad	483107250               # 0x1ccba1b2
	.quad	483202300               # 0x1ccd14fc
	.quad	483297350               # 0x1cce8846
	.quad	483392400               # 0x1ccffb90
	.quad	483487450               # 0x1cd16eda
	.quad	483582500               # 0x1cd2e224
	.quad	483677550               # 0x1cd4556e
	.quad	483772600               # 0x1cd5c8b8
	.quad	483867650               # 0x1cd73c02
	.quad	483962700               # 0x1cd8af4c
	.quad	484057750               # 0x1cda2296
	.quad	484152800               # 0x1cdb95e0
	.quad	484247850               # 0x1cdd092a
	.quad	484342900               # 0x1cde7c74
	.quad	484437950               # 0x1cdfefbe
	.quad	484533000               # 0x1ce16308
	.quad	484628050               # 0x1ce2d652
	.quad	484723100               # 0x1ce4499c
	.quad	484818150               # 0x1ce5bce6
	.quad	484913200               # 0x1ce73030
	.quad	485008250               # 0x1ce8a37a
	.quad	485103300               # 0x1cea16c4
	.quad	485198350               # 0x1ceb8a0e
	.quad	485293400               # 0x1cecfd58
	.quad	485388450               # 0x1cee70a2
	.quad	485483500               # 0x1cefe3ec
	.quad	485578550               # 0x1cf15736
	.quad	485673600               # 0x1cf2ca80
	.quad	485768650               # 0x1cf43dca
	.quad	485863700               # 0x1cf5b114
	.quad	485958750               # 0x1cf7245e
	.quad	486053800               # 0x1cf897a8
	.quad	486148850               # 0x1cfa0af2
	.quad	486243900               # 0x1cfb7e3c
	.quad	486338950               # 0x1cfcf186
	.quad	486434000               # 0x1cfe64d0
	.quad	486529050               # 0x1cffd81a
	.quad	486624100               # 0x1d014b64
	.quad	486719150               # 0x1d02beae
	.quad	486814200               # 0x1d0431f8
	.quad	486909250               # 0x1d05a542
	.quad	487004300               # 0x1d07188c
	.quad	487099350               # 0x1d088bd6
	.quad	487194400               # 0x1d09ff20
	.quad	487289450               # 0x1d0b726a
	.quad	487384500               # 0x1d0ce5b4
	.quad	487479550               # 0x1d0e58fe
	.quad	487574600               # 0x1d0fcc48
	.quad	487669650               # 0x1d113f92
	.quad	487764700               # 0x1d12b2dc
	.quad	487859750               # 0x1d142626
	.quad	487954800               # 0x1d159970
	.quad	488049850               # 0x1d170cba
	.quad	488144900               # 0x1d188004
	.quad	488239950               # 0x1d19f34e
	.quad	488335000               # 0x1d1b6698
	.quad	528435050               # 0x1f7f476a
	.quad	528540100               # 0x1f80e1c4
	.quad	528645150               # 0x1f827c1e
	.quad	528750200               # 0x1f841678
	.quad	528855250               # 0x1f85b0d2
	.quad	528960300               # 0x1f874b2c
	.quad	529065350               # 0x1f88e586
	.quad	529170400               # 0x1f8a7fe0
	.quad	529275450               # 0x1f8c1a3a
	.quad	529380500               # 0x1f8db494
	.quad	529485550               # 0x1f8f4eee
	.quad	529590600               # 0x1f90e948
	.quad	529695650               # 0x1f9283a2
	.quad	529800700               # 0x1f941dfc
	.quad	529905750               # 0x1f95b856
	.quad	530010800               # 0x1f9752b0
	.quad	530115850               # 0x1f98ed0a
	.quad	530220900               # 0x1f9a8764
	.quad	530325950               # 0x1f9c21be
	.quad	530431000               # 0x1f9dbc18
	.quad	530536050               # 0x1f9f5672
	.quad	530641100               # 0x1fa0f0cc
	.quad	530746150               # 0x1fa28b26
	.quad	530851200               # 0x1fa42580
	.quad	530956250               # 0x1fa5bfda
	.quad	531061300               # 0x1fa75a34
	.quad	531166350               # 0x1fa8f48e
	.quad	531271400               # 0x1faa8ee8
	.quad	531376450               # 0x1fac2942
	.quad	531481500               # 0x1fadc39c
	.quad	531586550               # 0x1faf5df6
	.quad	531691600               # 0x1fb0f850
	.quad	531796650               # 0x1fb292aa
	.quad	531901700               # 0x1fb42d04
	.quad	532006750               # 0x1fb5c75e
	.quad	532111800               # 0x1fb761b8
	.quad	532216850               # 0x1fb8fc12
	.quad	532321900               # 0x1fba966c
	.quad	532426950               # 0x1fbc30c6
	.quad	532532000               # 0x1fbdcb20
	.quad	532637050               # 0x1fbf657a
	.quad	532742100               # 0x1fc0ffd4
	.quad	532847150               # 0x1fc29a2e
	.quad	532952200               # 0x1fc43488
	.quad	533057250               # 0x1fc5cee2
	.quad	533162300               # 0x1fc7693c
	.quad	533267350               # 0x1fc90396
	.quad	533372400               # 0x1fca9df0
	.quad	533477450               # 0x1fcc384a
	.quad	533582500               # 0x1fcdd2a4
	.quad	533687550               # 0x1fcf6cfe
	.quad	533792600               # 0x1fd10758
	.quad	533897650               # 0x1fd2a1b2
	.quad	534002700               # 0x1fd43c0c
	.quad	534107750               # 0x1fd5d666
	.quad	534212800               # 0x1fd770c0
	.quad	534317850               # 0x1fd90b1a
	.quad	534422900               # 0x1fdaa574
	.quad	534527950               # 0x1fdc3fce
	.quad	534633000               # 0x1fddda28
	.quad	534738050               # 0x1fdf7482
	.quad	534843100               # 0x1fe10edc
	.quad	534948150               # 0x1fe2a936
	.quad	535053200               # 0x1fe44390
	.quad	535158250               # 0x1fe5ddea
	.quad	535263300               # 0x1fe77844
	.quad	535368350               # 0x1fe9129e
	.quad	535473400               # 0x1feaacf8
	.quad	535578450               # 0x1fec4752
	.quad	535683500               # 0x1fede1ac
	.quad	535788550               # 0x1fef7c06
	.quad	535893600               # 0x1ff11660
	.quad	535998650               # 0x1ff2b0ba
	.quad	536103700               # 0x1ff44b14
	.quad	536208750               # 0x1ff5e56e
	.quad	536313800               # 0x1ff77fc8
	.quad	536418850               # 0x1ff91a22
	.quad	536523900               # 0x1ffab47c
	.quad	536628950               # 0x1ffc4ed6
	.quad	536734000               # 0x1ffde930
	.quad	536839050               # 0x1fff838a
	.quad	536944100               # 0x20011de4
	.quad	537049150               # 0x2002b83e
	.quad	537154200               # 0x20045298
	.quad	537259250               # 0x2005ecf2
	.quad	537364300               # 0x2007874c
	.quad	537469350               # 0x200921a6
	.quad	537574400               # 0x200abc00
	.quad	537679450               # 0x200c565a
	.quad	537784500               # 0x200df0b4
	.quad	537889550               # 0x200f8b0e
	.quad	537994600               # 0x20112568
	.quad	538099650               # 0x2012bfc2
	.quad	538204700               # 0x20145a1c
	.quad	538309750               # 0x2015f476
	.quad	538414800               # 0x20178ed0
	.quad	538519850               # 0x2019292a
	.quad	538624900               # 0x201ac384
	.quad	538729950               # 0x201c5dde
	.quad	538835000               # 0x201df838
	.quad	577945050               # 0x2272bdda
	.quad	578060100               # 0x22747f44
	.quad	578175150               # 0x227640ae
	.quad	578290200               # 0x22780218
	.quad	578405250               # 0x2279c382
	.quad	578520300               # 0x227b84ec
	.quad	578635350               # 0x227d4656
	.quad	578750400               # 0x227f07c0
	.quad	578865450               # 0x2280c92a
	.quad	578980500               # 0x22828a94
	.quad	579095550               # 0x22844bfe
	.quad	579210600               # 0x22860d68
	.quad	579325650               # 0x2287ced2
	.quad	579440700               # 0x2289903c
	.quad	579555750               # 0x228b51a6
	.quad	579670800               # 0x228d1310
	.quad	579785850               # 0x228ed47a
	.quad	579900900               # 0x229095e4
	.quad	580015950               # 0x2292574e
	.quad	580131000               # 0x229418b8
	.quad	580246050               # 0x2295da22
	.quad	580361100               # 0x22979b8c
	.quad	580476150               # 0x22995cf6
	.quad	580591200               # 0x229b1e60
	.quad	580706250               # 0x229cdfca
	.quad	580821300               # 0x229ea134
	.quad	580936350               # 0x22a0629e
	.quad	581051400               # 0x22a22408
	.quad	581166450               # 0x22a3e572
	.quad	581281500               # 0x22a5a6dc
	.quad	581396550               # 0x22a76846
	.quad	581511600               # 0x22a929b0
	.quad	581626650               # 0x22aaeb1a
	.quad	581741700               # 0x22acac84
	.quad	581856750               # 0x22ae6dee
	.quad	581971800               # 0x22b02f58
	.quad	582086850               # 0x22b1f0c2
	.quad	582201900               # 0x22b3b22c
	.quad	582316950               # 0x22b57396
	.quad	582432000               # 0x22b73500
	.quad	582547050               # 0x22b8f66a
	.quad	582662100               # 0x22bab7d4
	.quad	582777150               # 0x22bc793e
	.quad	582892200               # 0x22be3aa8
	.quad	583007250               # 0x22bffc12
	.quad	583122300               # 0x22c1bd7c
	.quad	583237350               # 0x22c37ee6
	.quad	583352400               # 0x22c54050
	.quad	583467450               # 0x22c701ba
	.quad	583582500               # 0x22c8c324
	.quad	583697550               # 0x22ca848e
	.quad	583812600               # 0x22cc45f8
	.quad	583927650               # 0x22ce0762
	.quad	584042700               # 0x22cfc8cc
	.quad	584157750               # 0x22d18a36
	.quad	584272800               # 0x22d34ba0
	.quad	584387850               # 0x22d50d0a
	.quad	584502900               # 0x22d6ce74
	.quad	584617950               # 0x22d88fde
	.quad	584733000               # 0x22da5148
	.quad	584848050               # 0x22dc12b2
	.quad	584963100               # 0x22ddd41c
	.quad	585078150               # 0x22df9586
	.quad	585193200               # 0x22e156f0
	.quad	585308250               # 0x22e3185a
	.quad	585423300               # 0x22e4d9c4
	.quad	585538350               # 0x22e69b2e
	.quad	585653400               # 0x22e85c98
	.quad	585768450               # 0x22ea1e02
	.quad	585883500               # 0x22ebdf6c
	.quad	585998550               # 0x22eda0d6
	.quad	586113600               # 0x22ef6240
	.quad	586228650               # 0x22f123aa
	.quad	586343700               # 0x22f2e514
	.quad	586458750               # 0x22f4a67e
	.quad	586573800               # 0x22f667e8
	.quad	586688850               # 0x22f82952
	.quad	586803900               # 0x22f9eabc
	.quad	586918950               # 0x22fbac26
	.quad	587034000               # 0x22fd6d90
	.quad	587149050               # 0x22ff2efa
	.quad	587264100               # 0x2300f064
	.quad	587379150               # 0x2302b1ce
	.quad	587494200               # 0x23047338
	.quad	587609250               # 0x230634a2
	.quad	587724300               # 0x2307f60c
	.quad	587839350               # 0x2309b776
	.quad	587954400               # 0x230b78e0
	.quad	588069450               # 0x230d3a4a
	.quad	588184500               # 0x230efbb4
	.quad	588299550               # 0x2310bd1e
	.quad	588414600               # 0x23127e88
	.quad	588529650               # 0x23143ff2
	.quad	588644700               # 0x2316015c
	.quad	588759750               # 0x2317c2c6
	.quad	588874800               # 0x23198430
	.quad	588989850               # 0x231b459a
	.quad	589104900               # 0x231d0704
	.quad	589219950               # 0x231ec86e
	.quad	589335000               # 0x232089d8
	.quad	627455050               # 0x2566344a
	.quad	627580100               # 0x25681cc4
	.quad	627705150               # 0x256a053e
	.quad	627830200               # 0x256bedb8
	.quad	627955250               # 0x256dd632
	.quad	628080300               # 0x256fbeac
	.quad	628205350               # 0x2571a726
	.quad	628330400               # 0x25738fa0
	.quad	628455450               # 0x2575781a
	.quad	628580500               # 0x25776094
	.quad	628705550               # 0x2579490e
	.quad	628830600               # 0x257b3188
	.quad	628955650               # 0x257d1a02
	.quad	629080700               # 0x257f027c
	.quad	629205750               # 0x2580eaf6
	.quad	629330800               # 0x2582d370
	.quad	629455850               # 0x2584bbea
	.quad	629580900               # 0x2586a464
	.quad	629705950               # 0x25888cde
	.quad	629831000               # 0x258a7558
	.quad	629956050               # 0x258c5dd2
	.quad	630081100               # 0x258e464c
	.quad	630206150               # 0x25902ec6
	.quad	630331200               # 0x25921740
	.quad	630456250               # 0x2593ffba
	.quad	630581300               # 0x2595e834
	.quad	630706350               # 0x2597d0ae
	.quad	630831400               # 0x2599b928
	.quad	630956450               # 0x259ba1a2
	.quad	631081500               # 0x259d8a1c
	.quad	631206550               # 0x259f7296
	.quad	631331600               # 0x25a15b10
	.quad	631456650               # 0x25a3438a
	.quad	631581700               # 0x25a52c04
	.quad	631706750               # 0x25a7147e
	.quad	631831800               # 0x25a8fcf8
	.quad	631956850               # 0x25aae572
	.quad	632081900               # 0x25accdec
	.quad	632206950               # 0x25aeb666
	.quad	632332000               # 0x25b09ee0
	.quad	632457050               # 0x25b2875a
	.quad	632582100               # 0x25b46fd4
	.quad	632707150               # 0x25b6584e
	.quad	632832200               # 0x25b840c8
	.quad	632957250               # 0x25ba2942
	.quad	633082300               # 0x25bc11bc
	.quad	633207350               # 0x25bdfa36
	.quad	633332400               # 0x25bfe2b0
	.quad	633457450               # 0x25c1cb2a
	.quad	633582500               # 0x25c3b3a4
	.quad	633707550               # 0x25c59c1e
	.quad	633832600               # 0x25c78498
	.quad	633957650               # 0x25c96d12
	.quad	634082700               # 0x25cb558c
	.quad	634207750               # 0x25cd3e06
	.quad	634332800               # 0x25cf2680
	.quad	634457850               # 0x25d10efa
	.quad	634582900               # 0x25d2f774
	.quad	634707950               # 0x25d4dfee
	.quad	634833000               # 0x25d6c868
	.quad	634958050               # 0x25d8b0e2
	.quad	635083100               # 0x25da995c
	.quad	635208150               # 0x25dc81d6
	.quad	635333200               # 0x25de6a50
	.quad	635458250               # 0x25e052ca
	.quad	635583300               # 0x25e23b44
	.quad	635708350               # 0x25e423be
	.quad	635833400               # 0x25e60c38
	.quad	635958450               # 0x25e7f4b2
	.quad	636083500               # 0x25e9dd2c
	.quad	636208550               # 0x25ebc5a6
	.quad	636333600               # 0x25edae20
	.quad	636458650               # 0x25ef969a
	.quad	636583700               # 0x25f17f14
	.quad	636708750               # 0x25f3678e
	.quad	636833800               # 0x25f55008
	.quad	636958850               # 0x25f73882
	.quad	637083900               # 0x25f920fc
	.quad	637208950               # 0x25fb0976
	.quad	637334000               # 0x25fcf1f0
	.quad	637459050               # 0x25feda6a
	.quad	637584100               # 0x2600c2e4
	.quad	637709150               # 0x2602ab5e
	.quad	637834200               # 0x260493d8
	.quad	637959250               # 0x26067c52
	.quad	638084300               # 0x260864cc
	.quad	638209350               # 0x260a4d46
	.quad	638334400               # 0x260c35c0
	.quad	638459450               # 0x260e1e3a
	.quad	638584500               # 0x261006b4
	.quad	638709550               # 0x2611ef2e
	.quad	638834600               # 0x2613d7a8
	.quad	638959650               # 0x2615c022
	.quad	639084700               # 0x2617a89c
	.quad	639209750               # 0x26199116
	.quad	639334800               # 0x261b7990
	.quad	639459850               # 0x261d620a
	.quad	639584900               # 0x261f4a84
	.quad	639709950               # 0x262132fe
	.quad	639835000               # 0x26231b78
	.quad	676965050               # 0x2859aaba
	.quad	677100100               # 0x285bba44
	.quad	677235150               # 0x285dc9ce
	.quad	677370200               # 0x285fd958
	.quad	677505250               # 0x2861e8e2
	.quad	677640300               # 0x2863f86c
	.quad	677775350               # 0x286607f6
	.quad	677910400               # 0x28681780
	.quad	678045450               # 0x286a270a
	.quad	678180500               # 0x286c3694
	.quad	678315550               # 0x286e461e
	.quad	678450600               # 0x287055a8
	.quad	678585650               # 0x28726532
	.quad	678720700               # 0x287474bc
	.quad	678855750               # 0x28768446
	.quad	678990800               # 0x287893d0
	.quad	679125850               # 0x287aa35a
	.quad	679260900               # 0x287cb2e4
	.quad	679395950               # 0x287ec26e
	.quad	679531000               # 0x2880d1f8
	.quad	679666050               # 0x2882e182
	.quad	679801100               # 0x2884f10c
	.quad	679936150               # 0x28870096
	.quad	680071200               # 0x28891020
	.quad	680206250               # 0x288b1faa
	.quad	680341300               # 0x288d2f34
	.quad	680476350               # 0x288f3ebe
	.quad	680611400               # 0x28914e48
	.quad	680746450               # 0x28935dd2
	.quad	680881500               # 0x28956d5c
	.quad	681016550               # 0x28977ce6
	.quad	681151600               # 0x28998c70
	.quad	681286650               # 0x289b9bfa
	.quad	681421700               # 0x289dab84
	.quad	681556750               # 0x289fbb0e
	.quad	681691800               # 0x28a1ca98
	.quad	681826850               # 0x28a3da22
	.quad	681961900               # 0x28a5e9ac
	.quad	682096950               # 0x28a7f936
	.quad	682232000               # 0x28aa08c0
	.quad	682367050               # 0x28ac184a
	.quad	682502100               # 0x28ae27d4
	.quad	682637150               # 0x28b0375e
	.quad	682772200               # 0x28b246e8
	.quad	682907250               # 0x28b45672
	.quad	683042300               # 0x28b665fc
	.quad	683177350               # 0x28b87586
	.quad	683312400               # 0x28ba8510
	.quad	683447450               # 0x28bc949a
	.quad	683582500               # 0x28bea424
	.quad	683717550               # 0x28c0b3ae
	.quad	683852600               # 0x28c2c338
	.quad	683987650               # 0x28c4d2c2
	.quad	684122700               # 0x28c6e24c
	.quad	684257750               # 0x28c8f1d6
	.quad	684392800               # 0x28cb0160
	.quad	684527850               # 0x28cd10ea
	.quad	684662900               # 0x28cf2074
	.quad	684797950               # 0x28d12ffe
	.quad	684933000               # 0x28d33f88
	.quad	685068050               # 0x28d54f12
	.quad	685203100               # 0x28d75e9c
	.quad	685338150               # 0x28d96e26
	.quad	685473200               # 0x28db7db0
	.quad	685608250               # 0x28dd8d3a
	.quad	685743300               # 0x28df9cc4
	.quad	685878350               # 0x28e1ac4e
	.quad	686013400               # 0x28e3bbd8
	.quad	686148450               # 0x28e5cb62
	.quad	686283500               # 0x28e7daec
	.quad	686418550               # 0x28e9ea76
	.quad	686553600               # 0x28ebfa00
	.quad	686688650               # 0x28ee098a
	.quad	686823700               # 0x28f01914
	.quad	686958750               # 0x28f2289e
	.quad	687093800               # 0x28f43828
	.quad	687228850               # 0x28f647b2
	.quad	687363900               # 0x28f8573c
	.quad	687498950               # 0x28fa66c6
	.quad	687634000               # 0x28fc7650
	.quad	687769050               # 0x28fe85da
	.quad	687904100               # 0x29009564
	.quad	688039150               # 0x2902a4ee
	.quad	688174200               # 0x2904b478
	.quad	688309250               # 0x2906c402
	.quad	688444300               # 0x2908d38c
	.quad	688579350               # 0x290ae316
	.quad	688714400               # 0x290cf2a0
	.quad	688849450               # 0x290f022a
	.quad	688984500               # 0x291111b4
	.quad	689119550               # 0x2913213e
	.quad	689254600               # 0x291530c8
	.quad	689389650               # 0x29174052
	.quad	689524700               # 0x29194fdc
	.quad	689659750               # 0x291b5f66
	.quad	689794800               # 0x291d6ef0
	.quad	689929850               # 0x291f7e7a
	.quad	690064900               # 0x29218e04
	.quad	690199950               # 0x29239d8e
	.quad	690335000               # 0x2925ad18
	.quad	726475050               # 0x2b4d212a
	.quad	726620100               # 0x2b4f57c4
	.quad	726765150               # 0x2b518e5e
	.quad	726910200               # 0x2b53c4f8
	.quad	727055250               # 0x2b55fb92
	.quad	727200300               # 0x2b58322c
	.quad	727345350               # 0x2b5a68c6
	.quad	727490400               # 0x2b5c9f60
	.quad	727635450               # 0x2b5ed5fa
	.quad	727780500               # 0x2b610c94
	.quad	727925550               # 0x2b63432e
	.quad	728070600               # 0x2b6579c8
	.quad	728215650               # 0x2b67b062
	.quad	728360700               # 0x2b69e6fc
	.quad	728505750               # 0x2b6c1d96
	.quad	728650800               # 0x2b6e5430
	.quad	728795850               # 0x2b708aca
	.quad	728940900               # 0x2b72c164
	.quad	729085950               # 0x2b74f7fe
	.quad	729231000               # 0x2b772e98
	.quad	729376050               # 0x2b796532
	.quad	729521100               # 0x2b7b9bcc
	.quad	729666150               # 0x2b7dd266
	.quad	729811200               # 0x2b800900
	.quad	729956250               # 0x2b823f9a
	.quad	730101300               # 0x2b847634
	.quad	730246350               # 0x2b86acce
	.quad	730391400               # 0x2b88e368
	.quad	730536450               # 0x2b8b1a02
	.quad	730681500               # 0x2b8d509c
	.quad	730826550               # 0x2b8f8736
	.quad	730971600               # 0x2b91bdd0
	.quad	731116650               # 0x2b93f46a
	.quad	731261700               # 0x2b962b04
	.quad	731406750               # 0x2b98619e
	.quad	731551800               # 0x2b9a9838
	.quad	731696850               # 0x2b9cced2
	.quad	731841900               # 0x2b9f056c
	.quad	731986950               # 0x2ba13c06
	.quad	732132000               # 0x2ba372a0
	.quad	732277050               # 0x2ba5a93a
	.quad	732422100               # 0x2ba7dfd4
	.quad	732567150               # 0x2baa166e
	.quad	732712200               # 0x2bac4d08
	.quad	732857250               # 0x2bae83a2
	.quad	733002300               # 0x2bb0ba3c
	.quad	733147350               # 0x2bb2f0d6
	.quad	733292400               # 0x2bb52770
	.quad	733437450               # 0x2bb75e0a
	.quad	733582500               # 0x2bb994a4
	.quad	733727550               # 0x2bbbcb3e
	.quad	733872600               # 0x2bbe01d8
	.quad	734017650               # 0x2bc03872
	.quad	734162700               # 0x2bc26f0c
	.quad	734307750               # 0x2bc4a5a6
	.quad	734452800               # 0x2bc6dc40
	.quad	734597850               # 0x2bc912da
	.quad	734742900               # 0x2bcb4974
	.quad	734887950               # 0x2bcd800e
	.quad	735033000               # 0x2bcfb6a8
	.quad	735178050               # 0x2bd1ed42
	.quad	735323100               # 0x2bd423dc
	.quad	735468150               # 0x2bd65a76
	.quad	735613200               # 0x2bd89110
	.quad	735758250               # 0x2bdac7aa
	.quad	735903300               # 0x2bdcfe44
	.quad	736048350               # 0x2bdf34de
	.quad	736193400               # 0x2be16b78
	.quad	736338450               # 0x2be3a212
	.quad	736483500               # 0x2be5d8ac
	.quad	736628550               # 0x2be80f46
	.quad	736773600               # 0x2bea45e0
	.quad	736918650               # 0x2bec7c7a
	.quad	737063700               # 0x2beeb314
	.quad	737208750               # 0x2bf0e9ae
	.quad	737353800               # 0x2bf32048
	.quad	737498850               # 0x2bf556e2
	.quad	737643900               # 0x2bf78d7c
	.quad	737788950               # 0x2bf9c416
	.quad	737934000               # 0x2bfbfab0
	.quad	738079050               # 0x2bfe314a
	.quad	738224100               # 0x2c0067e4
	.quad	738369150               # 0x2c029e7e
	.quad	738514200               # 0x2c04d518
	.quad	738659250               # 0x2c070bb2
	.quad	738804300               # 0x2c09424c
	.quad	738949350               # 0x2c0b78e6
	.quad	739094400               # 0x2c0daf80
	.quad	739239450               # 0x2c0fe61a
	.quad	739384500               # 0x2c121cb4
	.quad	739529550               # 0x2c14534e
	.quad	739674600               # 0x2c1689e8
	.quad	739819650               # 0x2c18c082
	.quad	739964700               # 0x2c1af71c
	.quad	740109750               # 0x2c1d2db6
	.quad	740254800               # 0x2c1f6450
	.quad	740399850               # 0x2c219aea
	.quad	740544900               # 0x2c23d184
	.quad	740689950               # 0x2c26081e
	.quad	740835000               # 0x2c283eb8
	.quad	775985050               # 0x2e40979a
	.quad	776140100               # 0x2e42f544
	.quad	776295150               # 0x2e4552ee
	.quad	776450200               # 0x2e47b098
	.quad	776605250               # 0x2e4a0e42
	.quad	776760300               # 0x2e4c6bec
	.quad	776915350               # 0x2e4ec996
	.quad	777070400               # 0x2e512740
	.quad	777225450               # 0x2e5384ea
	.quad	777380500               # 0x2e55e294
	.quad	777535550               # 0x2e58403e
	.quad	777690600               # 0x2e5a9de8
	.quad	777845650               # 0x2e5cfb92
	.quad	778000700               # 0x2e5f593c
	.quad	778155750               # 0x2e61b6e6
	.quad	778310800               # 0x2e641490
	.quad	778465850               # 0x2e66723a
	.quad	778620900               # 0x2e68cfe4
	.quad	778775950               # 0x2e6b2d8e
	.quad	778931000               # 0x2e6d8b38
	.quad	779086050               # 0x2e6fe8e2
	.quad	779241100               # 0x2e72468c
	.quad	779396150               # 0x2e74a436
	.quad	779551200               # 0x2e7701e0
	.quad	779706250               # 0x2e795f8a
	.quad	779861300               # 0x2e7bbd34
	.quad	780016350               # 0x2e7e1ade
	.quad	780171400               # 0x2e807888
	.quad	780326450               # 0x2e82d632
	.quad	780481500               # 0x2e8533dc
	.quad	780636550               # 0x2e879186
	.quad	780791600               # 0x2e89ef30
	.quad	780946650               # 0x2e8c4cda
	.quad	781101700               # 0x2e8eaa84
	.quad	781256750               # 0x2e91082e
	.quad	781411800               # 0x2e9365d8
	.quad	781566850               # 0x2e95c382
	.quad	781721900               # 0x2e98212c
	.quad	781876950               # 0x2e9a7ed6
	.quad	782032000               # 0x2e9cdc80
	.quad	782187050               # 0x2e9f3a2a
	.quad	782342100               # 0x2ea197d4
	.quad	782497150               # 0x2ea3f57e
	.quad	782652200               # 0x2ea65328
	.quad	782807250               # 0x2ea8b0d2
	.quad	782962300               # 0x2eab0e7c
	.quad	783117350               # 0x2ead6c26
	.quad	783272400               # 0x2eafc9d0
	.quad	783427450               # 0x2eb2277a
	.quad	783582500               # 0x2eb48524
	.quad	783737550               # 0x2eb6e2ce
	.quad	783892600               # 0x2eb94078
	.quad	784047650               # 0x2ebb9e22
	.quad	784202700               # 0x2ebdfbcc
	.quad	784357750               # 0x2ec05976
	.quad	784512800               # 0x2ec2b720
	.quad	784667850               # 0x2ec514ca
	.quad	784822900               # 0x2ec77274
	.quad	784977950               # 0x2ec9d01e
	.quad	785133000               # 0x2ecc2dc8
	.quad	785288050               # 0x2ece8b72
	.quad	785443100               # 0x2ed0e91c
	.quad	785598150               # 0x2ed346c6
	.quad	785753200               # 0x2ed5a470
	.quad	785908250               # 0x2ed8021a
	.quad	786063300               # 0x2eda5fc4
	.quad	786218350               # 0x2edcbd6e
	.quad	786373400               # 0x2edf1b18
	.quad	786528450               # 0x2ee178c2
	.quad	786683500               # 0x2ee3d66c
	.quad	786838550               # 0x2ee63416
	.quad	786993600               # 0x2ee891c0
	.quad	787148650               # 0x2eeaef6a
	.quad	787303700               # 0x2eed4d14
	.quad	787458750               # 0x2eefaabe
	.quad	787613800               # 0x2ef20868
	.quad	787768850               # 0x2ef46612
	.quad	787923900               # 0x2ef6c3bc
	.quad	788078950               # 0x2ef92166
	.quad	788234000               # 0x2efb7f10
	.quad	788389050               # 0x2efddcba
	.quad	788544100               # 0x2f003a64
	.quad	788699150               # 0x2f02980e
	.quad	788854200               # 0x2f04f5b8
	.quad	789009250               # 0x2f075362
	.quad	789164300               # 0x2f09b10c
	.quad	789319350               # 0x2f0c0eb6
	.quad	789474400               # 0x2f0e6c60
	.quad	789629450               # 0x2f10ca0a
	.quad	789784500               # 0x2f1327b4
	.quad	789939550               # 0x2f15855e
	.quad	790094600               # 0x2f17e308
	.quad	790249650               # 0x2f1a40b2
	.quad	790404700               # 0x2f1c9e5c
	.quad	790559750               # 0x2f1efc06
	.quad	790714800               # 0x2f2159b0
	.quad	790869850               # 0x2f23b75a
	.quad	791024900               # 0x2f261504
	.quad	791179950               # 0x2f2872ae
	.quad	791335000               # 0x2f2ad058
	.quad	825495050               # 0x31340e0a
	.quad	825660100               # 0x313692c4
	.quad	825825150               # 0x3139177e
	.quad	825990200               # 0x313b9c38
	.quad	826155250               # 0x313e20f2
	.quad	826320300               # 0x3140a5ac
	.quad	826485350               # 0x31432a66
	.quad	826650400               # 0x3145af20
	.quad	826815450               # 0x314833da
	.quad	826980500               # 0x314ab894
	.quad	827145550               # 0x314d3d4e
	.quad	827310600               # 0x314fc208
	.quad	827475650               # 0x315246c2
	.quad	827640700               # 0x3154cb7c
	.quad	827805750               # 0x31575036
	.quad	827970800               # 0x3159d4f0
	.quad	828135850               # 0x315c59aa
	.quad	828300900               # 0x315ede64
	.quad	828465950               # 0x3161631e
	.quad	828631000               # 0x3163e7d8
	.quad	828796050               # 0x31666c92
	.quad	828961100               # 0x3168f14c
	.quad	829126150               # 0x316b7606
	.quad	829291200               # 0x316dfac0
	.quad	829456250               # 0x31707f7a
	.quad	829621300               # 0x31730434
	.quad	829786350               # 0x317588ee
	.quad	829951400               # 0x31780da8
	.quad	830116450               # 0x317a9262
	.quad	830281500               # 0x317d171c
	.quad	830446550               # 0x317f9bd6
	.quad	830611600               # 0x31822090
	.quad	830776650               # 0x3184a54a
	.quad	830941700               # 0x31872a04
	.quad	831106750               # 0x3189aebe
	.quad	831271800               # 0x318c3378
	.quad	831436850               # 0x318eb832
	.quad	831601900               # 0x31913cec
	.quad	831766950               # 0x3193c1a6
	.quad	831932000               # 0x31964660
	.quad	832097050               # 0x3198cb1a
	.quad	832262100               # 0x319b4fd4
	.quad	832427150               # 0x319dd48e
	.quad	832592200               # 0x31a05948
	.quad	832757250               # 0x31a2de02
	.quad	832922300               # 0x31a562bc
	.quad	833087350               # 0x31a7e776
	.quad	833252400               # 0x31aa6c30
	.quad	833417450               # 0x31acf0ea
	.quad	833582500               # 0x31af75a4
	.quad	833747550               # 0x31b1fa5e
	.quad	833912600               # 0x31b47f18
	.quad	834077650               # 0x31b703d2
	.quad	834242700               # 0x31b9888c
	.quad	834407750               # 0x31bc0d46
	.quad	834572800               # 0x31be9200
	.quad	834737850               # 0x31c116ba
	.quad	834902900               # 0x31c39b74
	.quad	835067950               # 0x31c6202e
	.quad	835233000               # 0x31c8a4e8
	.quad	835398050               # 0x31cb29a2
	.quad	835563100               # 0x31cdae5c
	.quad	835728150               # 0x31d03316
	.quad	835893200               # 0x31d2b7d0
	.quad	836058250               # 0x31d53c8a
	.quad	836223300               # 0x31d7c144
	.quad	836388350               # 0x31da45fe
	.quad	836553400               # 0x31dccab8
	.quad	836718450               # 0x31df4f72
	.quad	836883500               # 0x31e1d42c
	.quad	837048550               # 0x31e458e6
	.quad	837213600               # 0x31e6dda0
	.quad	837378650               # 0x31e9625a
	.quad	837543700               # 0x31ebe714
	.quad	837708750               # 0x31ee6bce
	.quad	837873800               # 0x31f0f088
	.quad	838038850               # 0x31f37542
	.quad	838203900               # 0x31f5f9fc
	.quad	838368950               # 0x31f87eb6
	.quad	838534000               # 0x31fb0370
	.quad	838699050               # 0x31fd882a
	.quad	838864100               # 0x32000ce4
	.quad	839029150               # 0x3202919e
	.quad	839194200               # 0x32051658
	.quad	839359250               # 0x32079b12
	.quad	839524300               # 0x320a1fcc
	.quad	839689350               # 0x320ca486
	.quad	839854400               # 0x320f2940
	.quad	840019450               # 0x3211adfa
	.quad	840184500               # 0x321432b4
	.quad	840349550               # 0x3216b76e
	.quad	840514600               # 0x32193c28
	.quad	840679650               # 0x321bc0e2
	.quad	840844700               # 0x321e459c
	.quad	841009750               # 0x3220ca56
	.quad	841174800               # 0x32234f10
	.quad	841339850               # 0x3225d3ca
	.quad	841504900               # 0x32285884
	.quad	841669950               # 0x322add3e
	.quad	841835000               # 0x322d61f8
	.quad	875005050               # 0x3427847a
	.quad	875180100               # 0x342a3044
	.quad	875355150               # 0x342cdc0e
	.quad	875530200               # 0x342f87d8
	.quad	875705250               # 0x343233a2
	.quad	875880300               # 0x3434df6c
	.quad	876055350               # 0x34378b36
	.quad	876230400               # 0x343a3700
	.quad	876405450               # 0x343ce2ca
	.quad	876580500               # 0x343f8e94
	.quad	876755550               # 0x34423a5e
	.quad	876930600               # 0x3444e628
	.quad	877105650               # 0x344791f2
	.quad	877280700               # 0x344a3dbc
	.quad	877455750               # 0x344ce986
	.quad	877630800               # 0x344f9550
	.quad	877805850               # 0x3452411a
	.quad	877980900               # 0x3454ece4
	.quad	878155950               # 0x345798ae
	.quad	878331000               # 0x345a4478
	.quad	878506050               # 0x345cf042
	.quad	878681100               # 0x345f9c0c
	.quad	878856150               # 0x346247d6
	.quad	879031200               # 0x3464f3a0
	.quad	879206250               # 0x34679f6a
	.quad	879381300               # 0x346a4b34
	.quad	879556350               # 0x346cf6fe
	.quad	879731400               # 0x346fa2c8
	.quad	879906450               # 0x34724e92
	.quad	880081500               # 0x3474fa5c
	.quad	880256550               # 0x3477a626
	.quad	880431600               # 0x347a51f0
	.quad	880606650               # 0x347cfdba
	.quad	880781700               # 0x347fa984
	.quad	880956750               # 0x3482554e
	.quad	881131800               # 0x34850118
	.quad	881306850               # 0x3487ace2
	.quad	881481900               # 0x348a58ac
	.quad	881656950               # 0x348d0476
	.quad	881832000               # 0x348fb040
	.quad	882007050               # 0x34925c0a
	.quad	882182100               # 0x349507d4
	.quad	882357150               # 0x3497b39e
	.quad	882532200               # 0x349a5f68
	.quad	882707250               # 0x349d0b32
	.quad	882882300               # 0x349fb6fc
	.quad	883057350               # 0x34a262c6
	.quad	883232400               # 0x34a50e90
	.quad	883407450               # 0x34a7ba5a
	.quad	883582500               # 0x34aa6624
	.quad	883757550               # 0x34ad11ee
	.quad	883932600               # 0x34afbdb8
	.quad	884107650               # 0x34b26982
	.quad	884282700               # 0x34b5154c
	.quad	884457750               # 0x34b7c116
	.quad	884632800               # 0x34ba6ce0
	.quad	884807850               # 0x34bd18aa
	.quad	884982900               # 0x34bfc474
	.quad	885157950               # 0x34c2703e
	.quad	885333000               # 0x34c51c08
	.quad	885508050               # 0x34c7c7d2
	.quad	885683100               # 0x34ca739c
	.quad	885858150               # 0x34cd1f66
	.quad	886033200               # 0x34cfcb30
	.quad	886208250               # 0x34d276fa
	.quad	886383300               # 0x34d522c4
	.quad	886558350               # 0x34d7ce8e
	.quad	886733400               # 0x34da7a58
	.quad	886908450               # 0x34dd2622
	.quad	887083500               # 0x34dfd1ec
	.quad	887258550               # 0x34e27db6
	.quad	887433600               # 0x34e52980
	.quad	887608650               # 0x34e7d54a
	.quad	887783700               # 0x34ea8114
	.quad	887958750               # 0x34ed2cde
	.quad	888133800               # 0x34efd8a8
	.quad	888308850               # 0x34f28472
	.quad	888483900               # 0x34f5303c
	.quad	888658950               # 0x34f7dc06
	.quad	888834000               # 0x34fa87d0
	.quad	889009050               # 0x34fd339a
	.quad	889184100               # 0x34ffdf64
	.quad	889359150               # 0x35028b2e
	.quad	889534200               # 0x350536f8
	.quad	889709250               # 0x3507e2c2
	.quad	889884300               # 0x350a8e8c
	.quad	890059350               # 0x350d3a56
	.quad	890234400               # 0x350fe620
	.quad	890409450               # 0x351291ea
	.quad	890584500               # 0x35153db4
	.quad	890759550               # 0x3517e97e
	.quad	890934600               # 0x351a9548
	.quad	891109650               # 0x351d4112
	.quad	891284700               # 0x351fecdc
	.quad	891459750               # 0x352298a6
	.quad	891634800               # 0x35254470
	.quad	891809850               # 0x3527f03a
	.quad	891984900               # 0x352a9c04
	.quad	892159950               # 0x352d47ce
	.quad	892335000               # 0x352ff398
	.quad	924515050               # 0x371afaea
	.quad	924700100               # 0x371dcdc4
	.quad	924885150               # 0x3720a09e
	.quad	925070200               # 0x37237378
	.quad	925255250               # 0x37264652
	.quad	925440300               # 0x3729192c
	.quad	925625350               # 0x372bec06
	.quad	925810400               # 0x372ebee0
	.quad	925995450               # 0x373191ba
	.quad	926180500               # 0x37346494
	.quad	926365550               # 0x3737376e
	.quad	926550600               # 0x373a0a48
	.quad	926735650               # 0x373cdd22
	.quad	926920700               # 0x373faffc
	.quad	927105750               # 0x374282d6
	.quad	927290800               # 0x374555b0
	.quad	927475850               # 0x3748288a
	.quad	927660900               # 0x374afb64
	.quad	927845950               # 0x374dce3e
	.quad	928031000               # 0x3750a118
	.quad	928216050               # 0x375373f2
	.quad	928401100               # 0x375646cc
	.quad	928586150               # 0x375919a6
	.quad	928771200               # 0x375bec80
	.quad	928956250               # 0x375ebf5a
	.quad	929141300               # 0x37619234
	.quad	929326350               # 0x3764650e
	.quad	929511400               # 0x376737e8
	.quad	929696450               # 0x376a0ac2
	.quad	929881500               # 0x376cdd9c
	.quad	930066550               # 0x376fb076
	.quad	930251600               # 0x37728350
	.quad	930436650               # 0x3775562a
	.quad	930621700               # 0x37782904
	.quad	930806750               # 0x377afbde
	.quad	930991800               # 0x377dceb8
	.quad	931176850               # 0x3780a192
	.quad	931361900               # 0x3783746c
	.quad	931546950               # 0x37864746
	.quad	931732000               # 0x37891a20
	.quad	931917050               # 0x378becfa
	.quad	932102100               # 0x378ebfd4
	.quad	932287150               # 0x379192ae
	.quad	932472200               # 0x37946588
	.quad	932657250               # 0x37973862
	.quad	932842300               # 0x379a0b3c
	.quad	933027350               # 0x379cde16
	.quad	933212400               # 0x379fb0f0
	.quad	933397450               # 0x37a283ca
	.quad	933582500               # 0x37a556a4
	.quad	933767550               # 0x37a8297e
	.quad	933952600               # 0x37aafc58
	.quad	934137650               # 0x37adcf32
	.quad	934322700               # 0x37b0a20c
	.quad	934507750               # 0x37b374e6
	.quad	934692800               # 0x37b647c0
	.quad	934877850               # 0x37b91a9a
	.quad	935062900               # 0x37bbed74
	.quad	935247950               # 0x37bec04e
	.quad	935433000               # 0x37c19328
	.quad	935618050               # 0x37c46602
	.quad	935803100               # 0x37c738dc
	.quad	935988150               # 0x37ca0bb6
	.quad	936173200               # 0x37ccde90
	.quad	936358250               # 0x37cfb16a
	.quad	936543300               # 0x37d28444
	.quad	936728350               # 0x37d5571e
	.quad	936913400               # 0x37d829f8
	.quad	937098450               # 0x37dafcd2
	.quad	937283500               # 0x37ddcfac
	.quad	937468550               # 0x37e0a286
	.quad	937653600               # 0x37e37560
	.quad	937838650               # 0x37e6483a
	.quad	938023700               # 0x37e91b14
	.quad	938208750               # 0x37ebedee
	.quad	938393800               # 0x37eec0c8
	.quad	938578850               # 0x37f193a2
	.quad	938763900               # 0x37f4667c
	.quad	938948950               # 0x37f73956
	.quad	939134000               # 0x37fa0c30
	.quad	939319050               # 0x37fcdf0a
	.quad	939504100               # 0x37ffb1e4
	.quad	939689150               # 0x380284be
	.quad	939874200               # 0x38055798
	.quad	940059250               # 0x38082a72
	.quad	940244300               # 0x380afd4c
	.quad	940429350               # 0x380dd026
	.quad	940614400               # 0x3810a300
	.quad	940799450               # 0x381375da
	.quad	940984500               # 0x381648b4
	.quad	941169550               # 0x38191b8e
	.quad	941354600               # 0x381bee68
	.quad	941539650               # 0x381ec142
	.quad	941724700               # 0x3821941c
	.quad	941909750               # 0x382466f6
	.quad	942094800               # 0x382739d0
	.quad	942279850               # 0x382a0caa
	.quad	942464900               # 0x382cdf84
	.quad	942649950               # 0x382fb25e
	.quad	942835000               # 0x38328538
	.quad	974025050               # 0x3a0e715a
	.quad	974220100               # 0x3a116b44
	.quad	974415150               # 0x3a14652e
	.quad	974610200               # 0x3a175f18
	.quad	974805250               # 0x3a1a5902
	.quad	975000300               # 0x3a1d52ec
	.quad	975195350               # 0x3a204cd6
	.quad	975390400               # 0x3a2346c0
	.quad	975585450               # 0x3a2640aa
	.quad	975780500               # 0x3a293a94
	.quad	975975550               # 0x3a2c347e
	.quad	976170600               # 0x3a2f2e68
	.quad	976365650               # 0x3a322852
	.quad	976560700               # 0x3a35223c
	.quad	976755750               # 0x3a381c26
	.quad	976950800               # 0x3a3b1610
	.quad	977145850               # 0x3a3e0ffa
	.quad	977340900               # 0x3a4109e4
	.quad	977535950               # 0x3a4403ce
	.quad	977731000               # 0x3a46fdb8
	.quad	977926050               # 0x3a49f7a2
	.quad	978121100               # 0x3a4cf18c
	.quad	978316150               # 0x3a4feb76
	.quad	978511200               # 0x3a52e560
	.quad	978706250               # 0x3a55df4a
	.quad	978901300               # 0x3a58d934
	.quad	979096350               # 0x3a5bd31e
	.quad	979291400               # 0x3a5ecd08
	.quad	979486450               # 0x3a61c6f2
	.quad	979681500               # 0x3a64c0dc
	.quad	979876550               # 0x3a67bac6
	.quad	980071600               # 0x3a6ab4b0
	.quad	980266650               # 0x3a6dae9a
	.quad	980461700               # 0x3a70a884
	.quad	980656750               # 0x3a73a26e
	.quad	980851800               # 0x3a769c58
	.quad	981046850               # 0x3a799642
	.quad	981241900               # 0x3a7c902c
	.quad	981436950               # 0x3a7f8a16
	.quad	981632000               # 0x3a828400
	.quad	981827050               # 0x3a857dea
	.quad	982022100               # 0x3a8877d4
	.quad	982217150               # 0x3a8b71be
	.quad	982412200               # 0x3a8e6ba8
	.quad	982607250               # 0x3a916592
	.quad	982802300               # 0x3a945f7c
	.quad	982997350               # 0x3a975966
	.quad	983192400               # 0x3a9a5350
	.quad	983387450               # 0x3a9d4d3a
	.quad	983582500               # 0x3aa04724
	.quad	983777550               # 0x3aa3410e
	.quad	983972600               # 0x3aa63af8
	.quad	984167650               # 0x3aa934e2
	.quad	984362700               # 0x3aac2ecc
	.quad	984557750               # 0x3aaf28b6
	.quad	984752800               # 0x3ab222a0
	.quad	984947850               # 0x3ab51c8a
	.quad	985142900               # 0x3ab81674
	.quad	985337950               # 0x3abb105e
	.quad	985533000               # 0x3abe0a48
	.quad	985728050               # 0x3ac10432
	.quad	985923100               # 0x3ac3fe1c
	.quad	986118150               # 0x3ac6f806
	.quad	986313200               # 0x3ac9f1f0
	.quad	986508250               # 0x3accebda
	.quad	986703300               # 0x3acfe5c4
	.quad	986898350               # 0x3ad2dfae
	.quad	987093400               # 0x3ad5d998
	.quad	987288450               # 0x3ad8d382
	.quad	987483500               # 0x3adbcd6c
	.quad	987678550               # 0x3adec756
	.quad	987873600               # 0x3ae1c140
	.quad	988068650               # 0x3ae4bb2a
	.quad	988263700               # 0x3ae7b514
	.quad	988458750               # 0x3aeaaefe
	.quad	988653800               # 0x3aeda8e8
	.quad	988848850               # 0x3af0a2d2
	.quad	989043900               # 0x3af39cbc
	.quad	989238950               # 0x3af696a6
	.quad	989434000               # 0x3af99090
	.quad	989629050               # 0x3afc8a7a
	.quad	989824100               # 0x3aff8464
	.quad	990019150               # 0x3b027e4e
	.quad	990214200               # 0x3b057838
	.quad	990409250               # 0x3b087222
	.quad	990604300               # 0x3b0b6c0c
	.quad	990799350               # 0x3b0e65f6
	.quad	990994400               # 0x3b115fe0
	.quad	991189450               # 0x3b1459ca
	.quad	991384500               # 0x3b1753b4
	.quad	991579550               # 0x3b1a4d9e
	.quad	991774600               # 0x3b1d4788
	.quad	991969650               # 0x3b204172
	.quad	992164700               # 0x3b233b5c
	.quad	992359750               # 0x3b263546
	.quad	992554800               # 0x3b292f30
	.quad	992749850               # 0x3b2c291a
	.quad	992944900               # 0x3b2f2304
	.quad	993139950               # 0x3b321cee
	.quad	993335000               # 0x3b3516d8
	.quad	1023535050              # 0x3d01e7ca
	.quad	1023740100              # 0x3d0508c4
	.quad	1023945150              # 0x3d0829be
	.quad	1024150200              # 0x3d0b4ab8
	.quad	1024355250              # 0x3d0e6bb2
	.quad	1024560300              # 0x3d118cac
	.quad	1024765350              # 0x3d14ada6
	.quad	1024970400              # 0x3d17cea0
	.quad	1025175450              # 0x3d1aef9a
	.quad	1025380500              # 0x3d1e1094
	.quad	1025585550              # 0x3d21318e
	.quad	1025790600              # 0x3d245288
	.quad	1025995650              # 0x3d277382
	.quad	1026200700              # 0x3d2a947c
	.quad	1026405750              # 0x3d2db576
	.quad	1026610800              # 0x3d30d670
	.quad	1026815850              # 0x3d33f76a
	.quad	1027020900              # 0x3d371864
	.quad	1027225950              # 0x3d3a395e
	.quad	1027431000              # 0x3d3d5a58
	.quad	1027636050              # 0x3d407b52
	.quad	1027841100              # 0x3d439c4c
	.quad	1028046150              # 0x3d46bd46
	.quad	1028251200              # 0x3d49de40
	.quad	1028456250              # 0x3d4cff3a
	.quad	1028661300              # 0x3d502034
	.quad	1028866350              # 0x3d53412e
	.quad	1029071400              # 0x3d566228
	.quad	1029276450              # 0x3d598322
	.quad	1029481500              # 0x3d5ca41c
	.quad	1029686550              # 0x3d5fc516
	.quad	1029891600              # 0x3d62e610
	.quad	1030096650              # 0x3d66070a
	.quad	1030301700              # 0x3d692804
	.quad	1030506750              # 0x3d6c48fe
	.quad	1030711800              # 0x3d6f69f8
	.quad	1030916850              # 0x3d728af2
	.quad	1031121900              # 0x3d75abec
	.quad	1031326950              # 0x3d78cce6
	.quad	1031532000              # 0x3d7bede0
	.quad	1031737050              # 0x3d7f0eda
	.quad	1031942100              # 0x3d822fd4
	.quad	1032147150              # 0x3d8550ce
	.quad	1032352200              # 0x3d8871c8
	.quad	1032557250              # 0x3d8b92c2
	.quad	1032762300              # 0x3d8eb3bc
	.quad	1032967350              # 0x3d91d4b6
	.quad	1033172400              # 0x3d94f5b0
	.quad	1033377450              # 0x3d9816aa
	.quad	1033582500              # 0x3d9b37a4
	.quad	1033787550              # 0x3d9e589e
	.quad	1033992600              # 0x3da17998
	.quad	1034197650              # 0x3da49a92
	.quad	1034402700              # 0x3da7bb8c
	.quad	1034607750              # 0x3daadc86
	.quad	1034812800              # 0x3dadfd80
	.quad	1035017850              # 0x3db11e7a
	.quad	1035222900              # 0x3db43f74
	.quad	1035427950              # 0x3db7606e
	.quad	1035633000              # 0x3dba8168
	.quad	1035838050              # 0x3dbda262
	.quad	1036043100              # 0x3dc0c35c
	.quad	1036248150              # 0x3dc3e456
	.quad	1036453200              # 0x3dc70550
	.quad	1036658250              # 0x3dca264a
	.quad	1036863300              # 0x3dcd4744
	.quad	1037068350              # 0x3dd0683e
	.quad	1037273400              # 0x3dd38938
	.quad	1037478450              # 0x3dd6aa32
	.quad	1037683500              # 0x3dd9cb2c
	.quad	1037888550              # 0x3ddcec26
	.quad	1038093600              # 0x3de00d20
	.quad	1038298650              # 0x3de32e1a
	.quad	1038503700              # 0x3de64f14
	.quad	1038708750              # 0x3de9700e
	.quad	1038913800              # 0x3dec9108
	.quad	1039118850              # 0x3defb202
	.quad	1039323900              # 0x3df2d2fc
	.quad	1039528950              # 0x3df5f3f6
	.quad	1039734000              # 0x3df914f0
	.quad	1039939050              # 0x3dfc35ea
	.quad	1040144100              # 0x3dff56e4
	.quad	1040349150              # 0x3e0277de
	.quad	1040554200              # 0x3e0598d8
	.quad	1040759250              # 0x3e08b9d2
	.quad	1040964300              # 0x3e0bdacc
	.quad	1041169350              # 0x3e0efbc6
	.quad	1041374400              # 0x3e121cc0
	.quad	1041579450              # 0x3e153dba
	.quad	1041784500              # 0x3e185eb4
	.quad	1041989550              # 0x3e1b7fae
	.quad	1042194600              # 0x3e1ea0a8
	.quad	1042399650              # 0x3e21c1a2
	.quad	1042604700              # 0x3e24e29c
	.quad	1042809750              # 0x3e280396
	.quad	1043014800              # 0x3e2b2490
	.quad	1043219850              # 0x3e2e458a
	.quad	1043424900              # 0x3e316684
	.quad	1043629950              # 0x3e34877e
	.quad	1043835000              # 0x3e37a878
	.quad	1073045050              # 0x3ff55e3a
	.quad	1073260100              # 0x3ff8a644
	.quad	1073475150              # 0x3ffbee4e
	.quad	1073690200              # 0x3fff3658
	.quad	1073905250              # 0x40027e62
	.quad	1074120300              # 0x4005c66c
	.quad	1074335350              # 0x40090e76
	.quad	1074550400              # 0x400c5680
	.quad	1074765450              # 0x400f9e8a
	.quad	1074980500              # 0x4012e694
	.quad	1075195550              # 0x40162e9e
	.quad	1075410600              # 0x401976a8
	.quad	1075625650              # 0x401cbeb2
	.quad	1075840700              # 0x402006bc
	.quad	1076055750              # 0x40234ec6
	.quad	1076270800              # 0x402696d0
	.quad	1076485850              # 0x4029deda
	.quad	1076700900              # 0x402d26e4
	.quad	1076915950              # 0x40306eee
	.quad	1077131000              # 0x4033b6f8
	.quad	1077346050              # 0x4036ff02
	.quad	1077561100              # 0x403a470c
	.quad	1077776150              # 0x403d8f16
	.quad	1077991200              # 0x4040d720
	.quad	1078206250              # 0x40441f2a
	.quad	1078421300              # 0x40476734
	.quad	1078636350              # 0x404aaf3e
	.quad	1078851400              # 0x404df748
	.quad	1079066450              # 0x40513f52
	.quad	1079281500              # 0x4054875c
	.quad	1079496550              # 0x4057cf66
	.quad	1079711600              # 0x405b1770
	.quad	1079926650              # 0x405e5f7a
	.quad	1080141700              # 0x4061a784
	.quad	1080356750              # 0x4064ef8e
	.quad	1080571800              # 0x40683798
	.quad	1080786850              # 0x406b7fa2
	.quad	1081001900              # 0x406ec7ac
	.quad	1081216950              # 0x40720fb6
	.quad	1081432000              # 0x407557c0
	.quad	1081647050              # 0x40789fca
	.quad	1081862100              # 0x407be7d4
	.quad	1082077150              # 0x407f2fde
	.quad	1082292200              # 0x408277e8
	.quad	1082507250              # 0x4085bff2
	.quad	1082722300              # 0x408907fc
	.quad	1082937350              # 0x408c5006
	.quad	1083152400              # 0x408f9810
	.quad	1083367450              # 0x4092e01a
	.quad	1083582500              # 0x40962824
	.quad	1083797550              # 0x4099702e
	.quad	1084012600              # 0x409cb838
	.quad	1084227650              # 0x40a00042
	.quad	1084442700              # 0x40a3484c
	.quad	1084657750              # 0x40a69056
	.quad	1084872800              # 0x40a9d860
	.quad	1085087850              # 0x40ad206a
	.quad	1085302900              # 0x40b06874
	.quad	1085517950              # 0x40b3b07e
	.quad	1085733000              # 0x40b6f888
	.quad	1085948050              # 0x40ba4092
	.quad	1086163100              # 0x40bd889c
	.quad	1086378150              # 0x40c0d0a6
	.quad	1086593200              # 0x40c418b0
	.quad	1086808250              # 0x40c760ba
	.quad	1087023300              # 0x40caa8c4
	.quad	1087238350              # 0x40cdf0ce
	.quad	1087453400              # 0x40d138d8
	.quad	1087668450              # 0x40d480e2
	.quad	1087883500              # 0x40d7c8ec
	.quad	1088098550              # 0x40db10f6
	.quad	1088313600              # 0x40de5900
	.quad	1088528650              # 0x40e1a10a
	.quad	1088743700              # 0x40e4e914
	.quad	1088958750              # 0x40e8311e
	.quad	1089173800              # 0x40eb7928
	.quad	1089388850              # 0x40eec132
	.quad	1089603900              # 0x40f2093c
	.quad	1089818950              # 0x40f55146
	.quad	1090034000              # 0x40f89950
	.quad	1090249050              # 0x40fbe15a
	.quad	1090464100              # 0x40ff2964
	.quad	1090679150              # 0x4102716e
	.quad	1090894200              # 0x4105b978
	.quad	1091109250              # 0x41090182
	.quad	1091324300              # 0x410c498c
	.quad	1091539350              # 0x410f9196
	.quad	1091754400              # 0x4112d9a0
	.quad	1091969450              # 0x411621aa
	.quad	1092184500              # 0x411969b4
	.quad	1092399550              # 0x411cb1be
	.quad	1092614600              # 0x411ff9c8
	.quad	1092829650              # 0x412341d2
	.quad	1093044700              # 0x412689dc
	.quad	1093259750              # 0x4129d1e6
	.quad	1093474800              # 0x412d19f0
	.quad	1093689850              # 0x413061fa
	.quad	1093904900              # 0x4133aa04
	.quad	1094119950              # 0x4136f20e
	.quad	1094335000              # 0x413a3a18
	.quad	1122555050              # 0x42e8d4aa
	.quad	1122780100              # 0x42ec43c4
	.quad	1123005150              # 0x42efb2de
	.quad	1123230200              # 0x42f321f8
	.quad	1123455250              # 0x42f69112
	.quad	1123680300              # 0x42fa002c
	.quad	1123905350              # 0x42fd6f46
	.quad	1124130400              # 0x4300de60
	.quad	1124355450              # 0x43044d7a
	.quad	1124580500              # 0x4307bc94
	.quad	1124805550              # 0x430b2bae
	.quad	1125030600              # 0x430e9ac8
	.quad	1125255650              # 0x431209e2
	.quad	1125480700              # 0x431578fc
	.quad	1125705750              # 0x4318e816
	.quad	1125930800              # 0x431c5730
	.quad	1126155850              # 0x431fc64a
	.quad	1126380900              # 0x43233564
	.quad	1126605950              # 0x4326a47e
	.quad	1126831000              # 0x432a1398
	.quad	1127056050              # 0x432d82b2
	.quad	1127281100              # 0x4330f1cc
	.quad	1127506150              # 0x433460e6
	.quad	1127731200              # 0x4337d000
	.quad	1127956250              # 0x433b3f1a
	.quad	1128181300              # 0x433eae34
	.quad	1128406350              # 0x43421d4e
	.quad	1128631400              # 0x43458c68
	.quad	1128856450              # 0x4348fb82
	.quad	1129081500              # 0x434c6a9c
	.quad	1129306550              # 0x434fd9b6
	.quad	1129531600              # 0x435348d0
	.quad	1129756650              # 0x4356b7ea
	.quad	1129981700              # 0x435a2704
	.quad	1130206750              # 0x435d961e
	.quad	1130431800              # 0x43610538
	.quad	1130656850              # 0x43647452
	.quad	1130881900              # 0x4367e36c
	.quad	1131106950              # 0x436b5286
	.quad	1131332000              # 0x436ec1a0
	.quad	1131557050              # 0x437230ba
	.quad	1131782100              # 0x43759fd4
	.quad	1132007150              # 0x43790eee
	.quad	1132232200              # 0x437c7e08
	.quad	1132457250              # 0x437fed22
	.quad	1132682300              # 0x43835c3c
	.quad	1132907350              # 0x4386cb56
	.quad	1133132400              # 0x438a3a70
	.quad	1133357450              # 0x438da98a
	.quad	1133582500              # 0x439118a4
	.quad	1133807550              # 0x439487be
	.quad	1134032600              # 0x4397f6d8
	.quad	1134257650              # 0x439b65f2
	.quad	1134482700              # 0x439ed50c
	.quad	1134707750              # 0x43a24426
	.quad	1134932800              # 0x43a5b340
	.quad	1135157850              # 0x43a9225a
	.quad	1135382900              # 0x43ac9174
	.quad	1135607950              # 0x43b0008e
	.quad	1135833000              # 0x43b36fa8
	.quad	1136058050              # 0x43b6dec2
	.quad	1136283100              # 0x43ba4ddc
	.quad	1136508150              # 0x43bdbcf6
	.quad	1136733200              # 0x43c12c10
	.quad	1136958250              # 0x43c49b2a
	.quad	1137183300              # 0x43c80a44
	.quad	1137408350              # 0x43cb795e
	.quad	1137633400              # 0x43cee878
	.quad	1137858450              # 0x43d25792
	.quad	1138083500              # 0x43d5c6ac
	.quad	1138308550              # 0x43d935c6
	.quad	1138533600              # 0x43dca4e0
	.quad	1138758650              # 0x43e013fa
	.quad	1138983700              # 0x43e38314
	.quad	1139208750              # 0x43e6f22e
	.quad	1139433800              # 0x43ea6148
	.quad	1139658850              # 0x43edd062
	.quad	1139883900              # 0x43f13f7c
	.quad	1140108950              # 0x43f4ae96
	.quad	1140334000              # 0x43f81db0
	.quad	1140559050              # 0x43fb8cca
	.quad	1140784100              # 0x43fefbe4
	.quad	1141009150              # 0x44026afe
	.quad	1141234200              # 0x4405da18
	.quad	1141459250              # 0x44094932
	.quad	1141684300              # 0x440cb84c
	.quad	1141909350              # 0x44102766
	.quad	1142134400              # 0x44139680
	.quad	1142359450              # 0x4417059a
	.quad	1142584500              # 0x441a74b4
	.quad	1142809550              # 0x441de3ce
	.quad	1143034600              # 0x442152e8
	.quad	1143259650              # 0x4424c202
	.quad	1143484700              # 0x4428311c
	.quad	1143709750              # 0x442ba036
	.quad	1143934800              # 0x442f0f50
	.quad	1144159850              # 0x44327e6a
	.quad	1144384900              # 0x4435ed84
	.quad	1144609950              # 0x44395c9e
	.quad	1144835000              # 0x443ccbb8
	.quad	1172065050              # 0x45dc4b1a
	.quad	1172300100              # 0x45dfe144
	.quad	1172535150              # 0x45e3776e
	.quad	1172770200              # 0x45e70d98
	.quad	1173005250              # 0x45eaa3c2
	.quad	1173240300              # 0x45ee39ec
	.quad	1173475350              # 0x45f1d016
	.quad	1173710400              # 0x45f56640
	.quad	1173945450              # 0x45f8fc6a
	.quad	1174180500              # 0x45fc9294
	.quad	1174415550              # 0x460028be
	.quad	1174650600              # 0x4603bee8
	.quad	1174885650              # 0x46075512
	.quad	1175120700              # 0x460aeb3c
	.quad	1175355750              # 0x460e8166
	.quad	1175590800              # 0x46121790
	.quad	1175825850              # 0x4615adba
	.quad	1176060900              # 0x461943e4
	.quad	1176295950              # 0x461cda0e
	.quad	1176531000              # 0x46207038
	.quad	1176766050              # 0x46240662
	.quad	1177001100              # 0x46279c8c
	.quad	1177236150              # 0x462b32b6
	.quad	1177471200              # 0x462ec8e0
	.quad	1177706250              # 0x46325f0a
	.quad	1177941300              # 0x4635f534
	.quad	1178176350              # 0x46398b5e
	.quad	1178411400              # 0x463d2188
	.quad	1178646450              # 0x4640b7b2
	.quad	1178881500              # 0x46444ddc
	.quad	1179116550              # 0x4647e406
	.quad	1179351600              # 0x464b7a30
	.quad	1179586650              # 0x464f105a
	.quad	1179821700              # 0x4652a684
	.quad	1180056750              # 0x46563cae
	.quad	1180291800              # 0x4659d2d8
	.quad	1180526850              # 0x465d6902
	.quad	1180761900              # 0x4660ff2c
	.quad	1180996950              # 0x46649556
	.quad	1181232000              # 0x46682b80
	.quad	1181467050              # 0x466bc1aa
	.quad	1181702100              # 0x466f57d4
	.quad	1181937150              # 0x4672edfe
	.quad	1182172200              # 0x46768428
	.quad	1182407250              # 0x467a1a52
	.quad	1182642300              # 0x467db07c
	.quad	1182877350              # 0x468146a6
	.quad	1183112400              # 0x4684dcd0
	.quad	1183347450              # 0x468872fa
	.quad	1183582500              # 0x468c0924
	.quad	1183817550              # 0x468f9f4e
	.quad	1184052600              # 0x46933578
	.quad	1184287650              # 0x4696cba2
	.quad	1184522700              # 0x469a61cc
	.quad	1184757750              # 0x469df7f6
	.quad	1184992800              # 0x46a18e20
	.quad	1185227850              # 0x46a5244a
	.quad	1185462900              # 0x46a8ba74
	.quad	1185697950              # 0x46ac509e
	.quad	1185933000              # 0x46afe6c8
	.quad	1186168050              # 0x46b37cf2
	.quad	1186403100              # 0x46b7131c
	.quad	1186638150              # 0x46baa946
	.quad	1186873200              # 0x46be3f70
	.quad	1187108250              # 0x46c1d59a
	.quad	1187343300              # 0x46c56bc4
	.quad	1187578350              # 0x46c901ee
	.quad	1187813400              # 0x46cc9818
	.quad	1188048450              # 0x46d02e42
	.quad	1188283500              # 0x46d3c46c
	.quad	1188518550              # 0x46d75a96
	.quad	1188753600              # 0x46daf0c0
	.quad	1188988650              # 0x46de86ea
	.quad	1189223700              # 0x46e21d14
	.quad	1189458750              # 0x46e5b33e
	.quad	1189693800              # 0x46e94968
	.quad	1189928850              # 0x46ecdf92
	.quad	1190163900              # 0x46f075bc
	.quad	1190398950              # 0x46f40be6
	.quad	1190634000              # 0x46f7a210
	.quad	1190869050              # 0x46fb383a
	.quad	1191104100              # 0x46fece64
	.quad	1191339150              # 0x4702648e
	.quad	1191574200              # 0x4705fab8
	.quad	1191809250              # 0x470990e2
	.quad	1192044300              # 0x470d270c
	.quad	1192279350              # 0x4710bd36
	.quad	1192514400              # 0x47145360
	.quad	1192749450              # 0x4717e98a
	.quad	1192984500              # 0x471b7fb4
	.quad	1193219550              # 0x471f15de
	.quad	1193454600              # 0x4722ac08
	.quad	1193689650              # 0x47264232
	.quad	1193924700              # 0x4729d85c
	.quad	1194159750              # 0x472d6e86
	.quad	1194394800              # 0x473104b0
	.quad	1194629850              # 0x47349ada
	.quad	1194864900              # 0x47383104
	.quad	1195099950              # 0x473bc72e
	.quad	1195335000              # 0x473f5d58
	.quad	1221575050              # 0x48cfc18a
	.quad	1221820100              # 0x48d37ec4
	.quad	1222065150              # 0x48d73bfe
	.quad	1222310200              # 0x48daf938
	.quad	1222555250              # 0x48deb672
	.quad	1222800300              # 0x48e273ac
	.quad	1223045350              # 0x48e630e6
	.quad	1223290400              # 0x48e9ee20
	.quad	1223535450              # 0x48edab5a
	.quad	1223780500              # 0x48f16894
	.quad	1224025550              # 0x48f525ce
	.quad	1224270600              # 0x48f8e308
	.quad	1224515650              # 0x48fca042
	.quad	1224760700              # 0x49005d7c
	.quad	1225005750              # 0x49041ab6
	.quad	1225250800              # 0x4907d7f0
	.quad	1225495850              # 0x490b952a
	.quad	1225740900              # 0x490f5264
	.quad	1225985950              # 0x49130f9e
	.quad	1226231000              # 0x4916ccd8
	.quad	1226476050              # 0x491a8a12
	.quad	1226721100              # 0x491e474c
	.quad	1226966150              # 0x49220486
	.quad	1227211200              # 0x4925c1c0
	.quad	1227456250              # 0x49297efa
	.quad	1227701300              # 0x492d3c34
	.quad	1227946350              # 0x4930f96e
	.quad	1228191400              # 0x4934b6a8
	.quad	1228436450              # 0x493873e2
	.quad	1228681500              # 0x493c311c
	.quad	1228926550              # 0x493fee56
	.quad	1229171600              # 0x4943ab90
	.quad	1229416650              # 0x494768ca
	.quad	1229661700              # 0x494b2604
	.quad	1229906750              # 0x494ee33e
	.quad	1230151800              # 0x4952a078
	.quad	1230396850              # 0x49565db2
	.quad	1230641900              # 0x495a1aec
	.quad	1230886950              # 0x495dd826
	.quad	1231132000              # 0x49619560
	.quad	1231377050              # 0x4965529a
	.quad	1231622100              # 0x49690fd4
	.quad	1231867150              # 0x496ccd0e
	.quad	1232112200              # 0x49708a48
	.quad	1232357250              # 0x49744782
	.quad	1232602300              # 0x497804bc
	.quad	1232847350              # 0x497bc1f6
	.quad	1233092400              # 0x497f7f30
	.quad	1233337450              # 0x49833c6a
	.quad	1233582500              # 0x4986f9a4
	.quad	1233827550              # 0x498ab6de
	.quad	1234072600              # 0x498e7418
	.quad	1234317650              # 0x49923152
	.quad	1234562700              # 0x4995ee8c
	.quad	1234807750              # 0x4999abc6
	.quad	1235052800              # 0x499d6900
	.quad	1235297850              # 0x49a1263a
	.quad	1235542900              # 0x49a4e374
	.quad	1235787950              # 0x49a8a0ae
	.quad	1236033000              # 0x49ac5de8
	.quad	1236278050              # 0x49b01b22
	.quad	1236523100              # 0x49b3d85c
	.quad	1236768150              # 0x49b79596
	.quad	1237013200              # 0x49bb52d0
	.quad	1237258250              # 0x49bf100a
	.quad	1237503300              # 0x49c2cd44
	.quad	1237748350              # 0x49c68a7e
	.quad	1237993400              # 0x49ca47b8
	.quad	1238238450              # 0x49ce04f2
	.quad	1238483500              # 0x49d1c22c
	.quad	1238728550              # 0x49d57f66
	.quad	1238973600              # 0x49d93ca0
	.quad	1239218650              # 0x49dcf9da
	.quad	1239463700              # 0x49e0b714
	.quad	1239708750              # 0x49e4744e
	.quad	1239953800              # 0x49e83188
	.quad	1240198850              # 0x49ebeec2
	.quad	1240443900              # 0x49efabfc
	.quad	1240688950              # 0x49f36936
	.quad	1240934000              # 0x49f72670
	.quad	1241179050              # 0x49fae3aa
	.quad	1241424100              # 0x49fea0e4
	.quad	1241669150              # 0x4a025e1e
	.quad	1241914200              # 0x4a061b58
	.quad	1242159250              # 0x4a09d892
	.quad	1242404300              # 0x4a0d95cc
	.quad	1242649350              # 0x4a115306
	.quad	1242894400              # 0x4a151040
	.quad	1243139450              # 0x4a18cd7a
	.quad	1243384500              # 0x4a1c8ab4
	.quad	1243629550              # 0x4a2047ee
	.quad	1243874600              # 0x4a240528
	.quad	1244119650              # 0x4a27c262
	.quad	1244364700              # 0x4a2b7f9c
	.quad	1244609750              # 0x4a2f3cd6
	.quad	1244854800              # 0x4a32fa10
	.quad	1245099850              # 0x4a36b74a
	.quad	1245344900              # 0x4a3a7484
	.quad	1245589950              # 0x4a3e31be
	.quad	1245835000              # 0x4a41eef8
	.quad	1271085050              # 0x4bc337fa
	.quad	1271340100              # 0x4bc71c44
	.quad	1271595150              # 0x4bcb008e
	.quad	1271850200              # 0x4bcee4d8
	.quad	1272105250              # 0x4bd2c922
	.quad	1272360300              # 0x4bd6ad6c
	.quad	1272615350              # 0x4bda91b6
	.quad	1272870400              # 0x4bde7600
	.quad	1273125450              # 0x4be25a4a
	.quad	1273380500              # 0x4be63e94
	.quad	1273635550              # 0x4bea22de
	.quad	1273890600              # 0x4bee0728
	.quad	1274145650              # 0x4bf1eb72
	.quad	1274400700              # 0x4bf5cfbc
	.quad	1274655750              # 0x4bf9b406
	.quad	1274910800              # 0x4bfd9850
	.quad	1275165850              # 0x4c017c9a
	.quad	1275420900              # 0x4c0560e4
	.quad	1275675950              # 0x4c09452e
	.quad	1275931000              # 0x4c0d2978
	.quad	1276186050              # 0x4c110dc2
	.quad	1276441100              # 0x4c14f20c
	.quad	1276696150              # 0x4c18d656
	.quad	1276951200              # 0x4c1cbaa0
	.quad	1277206250              # 0x4c209eea
	.quad	1277461300              # 0x4c248334
	.quad	1277716350              # 0x4c28677e
	.quad	1277971400              # 0x4c2c4bc8
	.quad	1278226450              # 0x4c303012
	.quad	1278481500              # 0x4c34145c
	.quad	1278736550              # 0x4c37f8a6
	.quad	1278991600              # 0x4c3bdcf0
	.quad	1279246650              # 0x4c3fc13a
	.quad	1279501700              # 0x4c43a584
	.quad	1279756750              # 0x4c4789ce
	.quad	1280011800              # 0x4c4b6e18
	.quad	1280266850              # 0x4c4f5262
	.quad	1280521900              # 0x4c5336ac
	.quad	1280776950              # 0x4c571af6
	.quad	1281032000              # 0x4c5aff40
	.quad	1281287050              # 0x4c5ee38a
	.quad	1281542100              # 0x4c62c7d4
	.quad	1281797150              # 0x4c66ac1e
	.quad	1282052200              # 0x4c6a9068
	.quad	1282307250              # 0x4c6e74b2
	.quad	1282562300              # 0x4c7258fc
	.quad	1282817350              # 0x4c763d46
	.quad	1283072400              # 0x4c7a2190
	.quad	1283327450              # 0x4c7e05da
	.quad	1283582500              # 0x4c81ea24
	.quad	1283837550              # 0x4c85ce6e
	.quad	1284092600              # 0x4c89b2b8
	.quad	1284347650              # 0x4c8d9702
	.quad	1284602700              # 0x4c917b4c
	.quad	1284857750              # 0x4c955f96
	.quad	1285112800              # 0x4c9943e0
	.quad	1285367850              # 0x4c9d282a
	.quad	1285622900              # 0x4ca10c74
	.quad	1285877950              # 0x4ca4f0be
	.quad	1286133000              # 0x4ca8d508
	.quad	1286388050              # 0x4cacb952
	.quad	1286643100              # 0x4cb09d9c
	.quad	1286898150              # 0x4cb481e6
	.quad	1287153200              # 0x4cb86630
	.quad	1287408250              # 0x4cbc4a7a
	.quad	1287663300              # 0x4cc02ec4
	.quad	1287918350              # 0x4cc4130e
	.quad	1288173400              # 0x4cc7f758
	.quad	1288428450              # 0x4ccbdba2
	.quad	1288683500              # 0x4ccfbfec
	.quad	1288938550              # 0x4cd3a436
	.quad	1289193600              # 0x4cd78880
	.quad	1289448650              # 0x4cdb6cca
	.quad	1289703700              # 0x4cdf5114
	.quad	1289958750              # 0x4ce3355e
	.quad	1290213800              # 0x4ce719a8
	.quad	1290468850              # 0x4ceafdf2
	.quad	1290723900              # 0x4ceee23c
	.quad	1290978950              # 0x4cf2c686
	.quad	1291234000              # 0x4cf6aad0
	.quad	1291489050              # 0x4cfa8f1a
	.quad	1291744100              # 0x4cfe7364
	.quad	1291999150              # 0x4d0257ae
	.quad	1292254200              # 0x4d063bf8
	.quad	1292509250              # 0x4d0a2042
	.quad	1292764300              # 0x4d0e048c
	.quad	1293019350              # 0x4d11e8d6
	.quad	1293274400              # 0x4d15cd20
	.quad	1293529450              # 0x4d19b16a
	.quad	1293784500              # 0x4d1d95b4
	.quad	1294039550              # 0x4d2179fe
	.quad	1294294600              # 0x4d255e48
	.quad	1294549650              # 0x4d294292
	.quad	1294804700              # 0x4d2d26dc
	.quad	1295059750              # 0x4d310b26
	.quad	1295314800              # 0x4d34ef70
	.quad	1295569850              # 0x4d38d3ba
	.quad	1295824900              # 0x4d3cb804
	.quad	1296079950              # 0x4d409c4e
	.quad	1296335000              # 0x4d448098
	.quad	1320595050              # 0x4eb6ae6a
	.quad	1320860100              # 0x4ebab9c4
	.quad	1321125150              # 0x4ebec51e
	.quad	1321390200              # 0x4ec2d078
	.quad	1321655250              # 0x4ec6dbd2
	.quad	1321920300              # 0x4ecae72c
	.quad	1322185350              # 0x4ecef286
	.quad	1322450400              # 0x4ed2fde0
	.quad	1322715450              # 0x4ed7093a
	.quad	1322980500              # 0x4edb1494
	.quad	1323245550              # 0x4edf1fee
	.quad	1323510600              # 0x4ee32b48
	.quad	1323775650              # 0x4ee736a2
	.quad	1324040700              # 0x4eeb41fc
	.quad	1324305750              # 0x4eef4d56
	.quad	1324570800              # 0x4ef358b0
	.quad	1324835850              # 0x4ef7640a
	.quad	1325100900              # 0x4efb6f64
	.quad	1325365950              # 0x4eff7abe
	.quad	1325631000              # 0x4f038618
	.quad	1325896050              # 0x4f079172
	.quad	1326161100              # 0x4f0b9ccc
	.quad	1326426150              # 0x4f0fa826
	.quad	1326691200              # 0x4f13b380
	.quad	1326956250              # 0x4f17beda
	.quad	1327221300              # 0x4f1bca34
	.quad	1327486350              # 0x4f1fd58e
	.quad	1327751400              # 0x4f23e0e8
	.quad	1328016450              # 0x4f27ec42
	.quad	1328281500              # 0x4f2bf79c
	.quad	1328546550              # 0x4f3002f6
	.quad	1328811600              # 0x4f340e50
	.quad	1329076650              # 0x4f3819aa
	.quad	1329341700              # 0x4f3c2504
	.quad	1329606750              # 0x4f40305e
	.quad	1329871800              # 0x4f443bb8
	.quad	1330136850              # 0x4f484712
	.quad	1330401900              # 0x4f4c526c
	.quad	1330666950              # 0x4f505dc6
	.quad	1330932000              # 0x4f546920
	.quad	1331197050              # 0x4f58747a
	.quad	1331462100              # 0x4f5c7fd4
	.quad	1331727150              # 0x4f608b2e
	.quad	1331992200              # 0x4f649688
	.quad	1332257250              # 0x4f68a1e2
	.quad	1332522300              # 0x4f6cad3c
	.quad	1332787350              # 0x4f70b896
	.quad	1333052400              # 0x4f74c3f0
	.quad	1333317450              # 0x4f78cf4a
	.quad	1333582500              # 0x4f7cdaa4
	.quad	1333847550              # 0x4f80e5fe
	.quad	1334112600              # 0x4f84f158
	.quad	1334377650              # 0x4f88fcb2
	.quad	1334642700              # 0x4f8d080c
	.quad	1334907750              # 0x4f911366
	.quad	1335172800              # 0x4f951ec0
	.quad	1335437850              # 0x4f992a1a
	.quad	1335702900              # 0x4f9d3574
	.quad	1335967950              # 0x4fa140ce
	.quad	1336233000              # 0x4fa54c28
	.quad	1336498050              # 0x4fa95782
	.quad	1336763100              # 0x4fad62dc
	.quad	1337028150              # 0x4fb16e36
	.quad	1337293200              # 0x4fb57990
	.quad	1337558250              # 0x4fb984ea
	.quad	1337823300              # 0x4fbd9044
	.quad	1338088350              # 0x4fc19b9e
	.quad	1338353400              # 0x4fc5a6f8
	.quad	1338618450              # 0x4fc9b252
	.quad	1338883500              # 0x4fcdbdac
	.quad	1339148550              # 0x4fd1c906
	.quad	1339413600              # 0x4fd5d460
	.quad	1339678650              # 0x4fd9dfba
	.quad	1339943700              # 0x4fddeb14
	.quad	1340208750              # 0x4fe1f66e
	.quad	1340473800              # 0x4fe601c8
	.quad	1340738850              # 0x4fea0d22
	.quad	1341003900              # 0x4fee187c
	.quad	1341268950              # 0x4ff223d6
	.quad	1341534000              # 0x4ff62f30
	.quad	1341799050              # 0x4ffa3a8a
	.quad	1342064100              # 0x4ffe45e4
	.quad	1342329150              # 0x5002513e
	.quad	1342594200              # 0x50065c98
	.quad	1342859250              # 0x500a67f2
	.quad	1343124300              # 0x500e734c
	.quad	1343389350              # 0x50127ea6
	.quad	1343654400              # 0x50168a00
	.quad	1343919450              # 0x501a955a
	.quad	1344184500              # 0x501ea0b4
	.quad	1344449550              # 0x5022ac0e
	.quad	1344714600              # 0x5026b768
	.quad	1344979650              # 0x502ac2c2
	.quad	1345244700              # 0x502ece1c
	.quad	1345509750              # 0x5032d976
	.quad	1345774800              # 0x5036e4d0
	.quad	1346039850              # 0x503af02a
	.quad	1346304900              # 0x503efb84
	.quad	1346569950              # 0x504306de
	.quad	1346835000              # 0x50471238
	.quad	1370105050              # 0x51aa24da
	.quad	1370380100              # 0x51ae5744
	.quad	1370655150              # 0x51b289ae
	.quad	1370930200              # 0x51b6bc18
	.quad	1371205250              # 0x51baee82
	.quad	1371480300              # 0x51bf20ec
	.quad	1371755350              # 0x51c35356
	.quad	1372030400              # 0x51c785c0
	.quad	1372305450              # 0x51cbb82a
	.quad	1372580500              # 0x51cfea94
	.quad	1372855550              # 0x51d41cfe
	.quad	1373130600              # 0x51d84f68
	.quad	1373405650              # 0x51dc81d2
	.quad	1373680700              # 0x51e0b43c
	.quad	1373955750              # 0x51e4e6a6
	.quad	1374230800              # 0x51e91910
	.quad	1374505850              # 0x51ed4b7a
	.quad	1374780900              # 0x51f17de4
	.quad	1375055950              # 0x51f5b04e
	.quad	1375331000              # 0x51f9e2b8
	.quad	1375606050              # 0x51fe1522
	.quad	1375881100              # 0x5202478c
	.quad	1376156150              # 0x520679f6
	.quad	1376431200              # 0x520aac60
	.quad	1376706250              # 0x520edeca
	.quad	1376981300              # 0x52131134
	.quad	1377256350              # 0x5217439e
	.quad	1377531400              # 0x521b7608
	.quad	1377806450              # 0x521fa872
	.quad	1378081500              # 0x5223dadc
	.quad	1378356550              # 0x52280d46
	.quad	1378631600              # 0x522c3fb0
	.quad	1378906650              # 0x5230721a
	.quad	1379181700              # 0x5234a484
	.quad	1379456750              # 0x5238d6ee
	.quad	1379731800              # 0x523d0958
	.quad	1380006850              # 0x52413bc2
	.quad	1380281900              # 0x52456e2c
	.quad	1380556950              # 0x5249a096
	.quad	1380832000              # 0x524dd300
	.quad	1381107050              # 0x5252056a
	.quad	1381382100              # 0x525637d4
	.quad	1381657150              # 0x525a6a3e
	.quad	1381932200              # 0x525e9ca8
	.quad	1382207250              # 0x5262cf12
	.quad	1382482300              # 0x5267017c
	.quad	1382757350              # 0x526b33e6
	.quad	1383032400              # 0x526f6650
	.quad	1383307450              # 0x527398ba
	.quad	1383582500              # 0x5277cb24
	.quad	1383857550              # 0x527bfd8e
	.quad	1384132600              # 0x52802ff8
	.quad	1384407650              # 0x52846262
	.quad	1384682700              # 0x528894cc
	.quad	1384957750              # 0x528cc736
	.quad	1385232800              # 0x5290f9a0
	.quad	1385507850              # 0x52952c0a
	.quad	1385782900              # 0x52995e74
	.quad	1386057950              # 0x529d90de
	.quad	1386333000              # 0x52a1c348
	.quad	1386608050              # 0x52a5f5b2
	.quad	1386883100              # 0x52aa281c
	.quad	1387158150              # 0x52ae5a86
	.quad	1387433200              # 0x52b28cf0
	.quad	1387708250              # 0x52b6bf5a
	.quad	1387983300              # 0x52baf1c4
	.quad	1388258350              # 0x52bf242e
	.quad	1388533400              # 0x52c35698
	.quad	1388808450              # 0x52c78902
	.quad	1389083500              # 0x52cbbb6c
	.quad	1389358550              # 0x52cfedd6
	.quad	1389633600              # 0x52d42040
	.quad	1389908650              # 0x52d852aa
	.quad	1390183700              # 0x52dc8514
	.quad	1390458750              # 0x52e0b77e
	.quad	1390733800              # 0x52e4e9e8
	.quad	1391008850              # 0x52e91c52
	.quad	1391283900              # 0x52ed4ebc
	.quad	1391558950              # 0x52f18126
	.quad	1391834000              # 0x52f5b390
	.quad	1392109050              # 0x52f9e5fa
	.quad	1392384100              # 0x52fe1864
	.quad	1392659150              # 0x53024ace
	.quad	1392934200              # 0x53067d38
	.quad	1393209250              # 0x530aafa2
	.quad	1393484300              # 0x530ee20c
	.quad	1393759350              # 0x53131476
	.quad	1394034400              # 0x531746e0
	.quad	1394309450              # 0x531b794a
	.quad	1394584500              # 0x531fabb4
	.quad	1394859550              # 0x5323de1e
	.quad	1395134600              # 0x53281088
	.quad	1395409650              # 0x532c42f2
	.quad	1395684700              # 0x5330755c
	.quad	1395959750              # 0x5334a7c6
	.quad	1396234800              # 0x5338da30
	.quad	1396509850              # 0x533d0c9a
	.quad	1396784900              # 0x53413f04
	.quad	1397059950              # 0x5345716e
	.quad	1397335000              # 0x5349a3d8
	.quad	1419615050              # 0x549d9b4a
	.quad	1419900100              # 0x54a1f4c4
	.quad	1420185150              # 0x54a64e3e
	.quad	1420470200              # 0x54aaa7b8
	.quad	1420755250              # 0x54af0132
	.quad	1421040300              # 0x54b35aac
	.quad	1421325350              # 0x54b7b426
	.quad	1421610400              # 0x54bc0da0
	.quad	1421895450              # 0x54c0671a
	.quad	1422180500              # 0x54c4c094
	.quad	1422465550              # 0x54c91a0e
	.quad	1422750600              # 0x54cd7388
	.quad	1423035650              # 0x54d1cd02
	.quad	1423320700              # 0x54d6267c
	.quad	1423605750              # 0x54da7ff6
	.quad	1423890800              # 0x54ded970
	.quad	1424175850              # 0x54e332ea
	.quad	1424460900              # 0x54e78c64
	.quad	1424745950              # 0x54ebe5de
	.quad	1425031000              # 0x54f03f58
	.quad	1425316050              # 0x54f498d2
	.quad	1425601100              # 0x54f8f24c
	.quad	1425886150              # 0x54fd4bc6
	.quad	1426171200              # 0x5501a540
	.quad	1426456250              # 0x5505feba
	.quad	1426741300              # 0x550a5834
	.quad	1427026350              # 0x550eb1ae
	.quad	1427311400              # 0x55130b28
	.quad	1427596450              # 0x551764a2
	.quad	1427881500              # 0x551bbe1c
	.quad	1428166550              # 0x55201796
	.quad	1428451600              # 0x55247110
	.quad	1428736650              # 0x5528ca8a
	.quad	1429021700              # 0x552d2404
	.quad	1429306750              # 0x55317d7e
	.quad	1429591800              # 0x5535d6f8
	.quad	1429876850              # 0x553a3072
	.quad	1430161900              # 0x553e89ec
	.quad	1430446950              # 0x5542e366
	.quad	1430732000              # 0x55473ce0
	.quad	1431017050              # 0x554b965a
	.quad	1431302100              # 0x554fefd4
	.quad	1431587150              # 0x5554494e
	.quad	1431872200              # 0x5558a2c8
	.quad	1432157250              # 0x555cfc42
	.quad	1432442300              # 0x556155bc
	.quad	1432727350              # 0x5565af36
	.quad	1433012400              # 0x556a08b0
	.quad	1433297450              # 0x556e622a
	.quad	1433582500              # 0x5572bba4
	.quad	1433867550              # 0x5577151e
	.quad	1434152600              # 0x557b6e98
	.quad	1434437650              # 0x557fc812
	.quad	1434722700              # 0x5584218c
	.quad	1435007750              # 0x55887b06
	.quad	1435292800              # 0x558cd480
	.quad	1435577850              # 0x55912dfa
	.quad	1435862900              # 0x55958774
	.quad	1436147950              # 0x5599e0ee
	.quad	1436433000              # 0x559e3a68
	.quad	1436718050              # 0x55a293e2
	.quad	1437003100              # 0x55a6ed5c
	.quad	1437288150              # 0x55ab46d6
	.quad	1437573200              # 0x55afa050
	.quad	1437858250              # 0x55b3f9ca
	.quad	1438143300              # 0x55b85344
	.quad	1438428350              # 0x55bcacbe
	.quad	1438713400              # 0x55c10638
	.quad	1438998450              # 0x55c55fb2
	.quad	1439283500              # 0x55c9b92c
	.quad	1439568550              # 0x55ce12a6
	.quad	1439853600              # 0x55d26c20
	.quad	1440138650              # 0x55d6c59a
	.quad	1440423700              # 0x55db1f14
	.quad	1440708750              # 0x55df788e
	.quad	1440993800              # 0x55e3d208
	.quad	1441278850              # 0x55e82b82
	.quad	1441563900              # 0x55ec84fc
	.quad	1441848950              # 0x55f0de76
	.quad	1442134000              # 0x55f537f0
	.quad	1442419050              # 0x55f9916a
	.quad	1442704100              # 0x55fdeae4
	.quad	1442989150              # 0x5602445e
	.quad	1443274200              # 0x56069dd8
	.quad	1443559250              # 0x560af752
	.quad	1443844300              # 0x560f50cc
	.quad	1444129350              # 0x5613aa46
	.quad	1444414400              # 0x561803c0
	.quad	1444699450              # 0x561c5d3a
	.quad	1444984500              # 0x5620b6b4
	.quad	1445269550              # 0x5625102e
	.quad	1445554600              # 0x562969a8
	.quad	1445839650              # 0x562dc322
	.quad	1446124700              # 0x56321c9c
	.quad	1446409750              # 0x56367616
	.quad	1446694800              # 0x563acf90
	.quad	1446979850              # 0x563f290a
	.quad	1447264900              # 0x56438284
	.quad	1447549950              # 0x5647dbfe
	.quad	1447835000              # 0x564c3578
	.quad	1469125050              # 0x579111ba
	.quad	1469420100              # 0x57959244
	.quad	1469715150              # 0x579a12ce
	.quad	1470010200              # 0x579e9358
	.quad	1470305250              # 0x57a313e2
	.quad	1470600300              # 0x57a7946c
	.quad	1470895350              # 0x57ac14f6
	.quad	1471190400              # 0x57b09580
	.quad	1471485450              # 0x57b5160a
	.quad	1471780500              # 0x57b99694
	.quad	1472075550              # 0x57be171e
	.quad	1472370600              # 0x57c297a8
	.quad	1472665650              # 0x57c71832
	.quad	1472960700              # 0x57cb98bc
	.quad	1473255750              # 0x57d01946
	.quad	1473550800              # 0x57d499d0
	.quad	1473845850              # 0x57d91a5a
	.quad	1474140900              # 0x57dd9ae4
	.quad	1474435950              # 0x57e21b6e
	.quad	1474731000              # 0x57e69bf8
	.quad	1475026050              # 0x57eb1c82
	.quad	1475321100              # 0x57ef9d0c
	.quad	1475616150              # 0x57f41d96
	.quad	1475911200              # 0x57f89e20
	.quad	1476206250              # 0x57fd1eaa
	.quad	1476501300              # 0x58019f34
	.quad	1476796350              # 0x58061fbe
	.quad	1477091400              # 0x580aa048
	.quad	1477386450              # 0x580f20d2
	.quad	1477681500              # 0x5813a15c
	.quad	1477976550              # 0x581821e6
	.quad	1478271600              # 0x581ca270
	.quad	1478566650              # 0x582122fa
	.quad	1478861700              # 0x5825a384
	.quad	1479156750              # 0x582a240e
	.quad	1479451800              # 0x582ea498
	.quad	1479746850              # 0x58332522
	.quad	1480041900              # 0x5837a5ac
	.quad	1480336950              # 0x583c2636
	.quad	1480632000              # 0x5840a6c0
	.quad	1480927050              # 0x5845274a
	.quad	1481222100              # 0x5849a7d4
	.quad	1481517150              # 0x584e285e
	.quad	1481812200              # 0x5852a8e8
	.quad	1482107250              # 0x58572972
	.quad	1482402300              # 0x585ba9fc
	.quad	1482697350              # 0x58602a86
	.quad	1482992400              # 0x5864ab10
	.quad	1483287450              # 0x58692b9a
	.quad	1483582500              # 0x586dac24
	.quad	1483877550              # 0x58722cae
	.quad	1484172600              # 0x5876ad38
	.quad	1484467650              # 0x587b2dc2
	.quad	1484762700              # 0x587fae4c
	.quad	1485057750              # 0x58842ed6
	.quad	1485352800              # 0x5888af60
	.quad	1485647850              # 0x588d2fea
	.quad	1485942900              # 0x5891b074
	.quad	1486237950              # 0x589630fe
	.quad	1486533000              # 0x589ab188
	.quad	1486828050              # 0x589f3212
	.quad	1487123100              # 0x58a3b29c
	.quad	1487418150              # 0x58a83326
	.quad	1487713200              # 0x58acb3b0
	.quad	1488008250              # 0x58b1343a
	.quad	1488303300              # 0x58b5b4c4
	.quad	1488598350              # 0x58ba354e
	.quad	1488893400              # 0x58beb5d8
	.quad	1489188450              # 0x58c33662
	.quad	1489483500              # 0x58c7b6ec
	.quad	1489778550              # 0x58cc3776
	.quad	1490073600              # 0x58d0b800
	.quad	1490368650              # 0x58d5388a
	.quad	1490663700              # 0x58d9b914
	.quad	1490958750              # 0x58de399e
	.quad	1491253800              # 0x58e2ba28
	.quad	1491548850              # 0x58e73ab2
	.quad	1491843900              # 0x58ebbb3c
	.quad	1492138950              # 0x58f03bc6
	.quad	1492434000              # 0x58f4bc50
	.quad	1492729050              # 0x58f93cda
	.quad	1493024100              # 0x58fdbd64
	.quad	1493319150              # 0x59023dee
	.quad	1493614200              # 0x5906be78
	.quad	1493909250              # 0x590b3f02
	.quad	1494204300              # 0x590fbf8c
	.quad	1494499350              # 0x59144016
	.quad	1494794400              # 0x5918c0a0
	.quad	1495089450              # 0x591d412a
	.quad	1495384500              # 0x5921c1b4
	.quad	1495679550              # 0x5926423e
	.quad	1495974600              # 0x592ac2c8
	.quad	1496269650              # 0x592f4352
	.quad	1496564700              # 0x5933c3dc
	.quad	1496859750              # 0x59384466
	.quad	1497154800              # 0x593cc4f0
	.quad	1497449850              # 0x5941457a
	.quad	1497744900              # 0x5945c604
	.quad	1498039950              # 0x594a468e
	.quad	1498335000              # 0x594ec718
	.quad	1518635050              # 0x5a84882a
	.quad	1518940100              # 0x5a892fc4
	.quad	1519245150              # 0x5a8dd75e
	.quad	1519550200              # 0x5a927ef8
	.quad	1519855250              # 0x5a972692
	.quad	1520160300              # 0x5a9bce2c
	.quad	1520465350              # 0x5aa075c6
	.quad	1520770400              # 0x5aa51d60
	.quad	1521075450              # 0x5aa9c4fa
	.quad	1521380500              # 0x5aae6c94
	.quad	1521685550              # 0x5ab3142e
	.quad	1521990600              # 0x5ab7bbc8
	.quad	1522295650              # 0x5abc6362
	.quad	1522600700              # 0x5ac10afc
	.quad	1522905750              # 0x5ac5b296
	.quad	1523210800              # 0x5aca5a30
	.quad	1523515850              # 0x5acf01ca
	.quad	1523820900              # 0x5ad3a964
	.quad	1524125950              # 0x5ad850fe
	.quad	1524431000              # 0x5adcf898
	.quad	1524736050              # 0x5ae1a032
	.quad	1525041100              # 0x5ae647cc
	.quad	1525346150              # 0x5aeaef66
	.quad	1525651200              # 0x5aef9700
	.quad	1525956250              # 0x5af43e9a
	.quad	1526261300              # 0x5af8e634
	.quad	1526566350              # 0x5afd8dce
	.quad	1526871400              # 0x5b023568
	.quad	1527176450              # 0x5b06dd02
	.quad	1527481500              # 0x5b0b849c
	.quad	1527786550              # 0x5b102c36
	.quad	1528091600              # 0x5b14d3d0
	.quad	1528396650              # 0x5b197b6a
	.quad	1528701700              # 0x5b1e2304
	.quad	1529006750              # 0x5b22ca9e
	.quad	1529311800              # 0x5b277238
	.quad	1529616850              # 0x5b2c19d2
	.quad	1529921900              # 0x5b30c16c
	.quad	1530226950              # 0x5b356906
	.quad	1530532000              # 0x5b3a10a0
	.quad	1530837050              # 0x5b3eb83a
	.quad	1531142100              # 0x5b435fd4
	.quad	1531447150              # 0x5b48076e
	.quad	1531752200              # 0x5b4caf08
	.quad	1532057250              # 0x5b5156a2
	.quad	1532362300              # 0x5b55fe3c
	.quad	1532667350              # 0x5b5aa5d6
	.quad	1532972400              # 0x5b5f4d70
	.quad	1533277450              # 0x5b63f50a
	.quad	1533582500              # 0x5b689ca4
	.quad	1533887550              # 0x5b6d443e
	.quad	1534192600              # 0x5b71ebd8
	.quad	1534497650              # 0x5b769372
	.quad	1534802700              # 0x5b7b3b0c
	.quad	1535107750              # 0x5b7fe2a6
	.quad	1535412800              # 0x5b848a40
	.quad	1535717850              # 0x5b8931da
	.quad	1536022900              # 0x5b8dd974
	.quad	1536327950              # 0x5b92810e
	.quad	1536633000              # 0x5b9728a8
	.quad	1536938050              # 0x5b9bd042
	.quad	1537243100              # 0x5ba077dc
	.quad	1537548150              # 0x5ba51f76
	.quad	1537853200              # 0x5ba9c710
	.quad	1538158250              # 0x5bae6eaa
	.quad	1538463300              # 0x5bb31644
	.quad	1538768350              # 0x5bb7bdde
	.quad	1539073400              # 0x5bbc6578
	.quad	1539378450              # 0x5bc10d12
	.quad	1539683500              # 0x5bc5b4ac
	.quad	1539988550              # 0x5bca5c46
	.quad	1540293600              # 0x5bcf03e0
	.quad	1540598650              # 0x5bd3ab7a
	.quad	1540903700              # 0x5bd85314
	.quad	1541208750              # 0x5bdcfaae
	.quad	1541513800              # 0x5be1a248
	.quad	1541818850              # 0x5be649e2
	.quad	1542123900              # 0x5beaf17c
	.quad	1542428950              # 0x5bef9916
	.quad	1542734000              # 0x5bf440b0
	.quad	1543039050              # 0x5bf8e84a
	.quad	1543344100              # 0x5bfd8fe4
	.quad	1543649150              # 0x5c02377e
	.quad	1543954200              # 0x5c06df18
	.quad	1544259250              # 0x5c0b86b2
	.quad	1544564300              # 0x5c102e4c
	.quad	1544869350              # 0x5c14d5e6
	.quad	1545174400              # 0x5c197d80
	.quad	1545479450              # 0x5c1e251a
	.quad	1545784500              # 0x5c22ccb4
	.quad	1546089550              # 0x5c27744e
	.quad	1546394600              # 0x5c2c1be8
	.quad	1546699650              # 0x5c30c382
	.quad	1547004700              # 0x5c356b1c
	.quad	1547309750              # 0x5c3a12b6
	.quad	1547614800              # 0x5c3eba50
	.quad	1547919850              # 0x5c4361ea
	.quad	1548224900              # 0x5c480984
	.quad	1548529950              # 0x5c4cb11e
	.quad	1548835000              # 0x5c5158b8
	.quad	1568145050              # 0x5d77fe9a
	.quad	1568460100              # 0x5d7ccd44
	.quad	1568775150              # 0x5d819bee
	.quad	1569090200              # 0x5d866a98
	.quad	1569405250              # 0x5d8b3942
	.quad	1569720300              # 0x5d9007ec
	.quad	1570035350              # 0x5d94d696
	.quad	1570350400              # 0x5d99a540
	.quad	1570665450              # 0x5d9e73ea
	.quad	1570980500              # 0x5da34294
	.quad	1571295550              # 0x5da8113e
	.quad	1571610600              # 0x5dacdfe8
	.quad	1571925650              # 0x5db1ae92
	.quad	1572240700              # 0x5db67d3c
	.quad	1572555750              # 0x5dbb4be6
	.quad	1572870800              # 0x5dc01a90
	.quad	1573185850              # 0x5dc4e93a
	.quad	1573500900              # 0x5dc9b7e4
	.quad	1573815950              # 0x5dce868e
	.quad	1574131000              # 0x5dd35538
	.quad	1574446050              # 0x5dd823e2
	.quad	1574761100              # 0x5ddcf28c
	.quad	1575076150              # 0x5de1c136
	.quad	1575391200              # 0x5de68fe0
	.quad	1575706250              # 0x5deb5e8a
	.quad	1576021300              # 0x5df02d34
	.quad	1576336350              # 0x5df4fbde
	.quad	1576651400              # 0x5df9ca88
	.quad	1576966450              # 0x5dfe9932
	.quad	1577281500              # 0x5e0367dc
	.quad	1577596550              # 0x5e083686
	.quad	1577911600              # 0x5e0d0530
	.quad	1578226650              # 0x5e11d3da
	.quad	1578541700              # 0x5e16a284
	.quad	1578856750              # 0x5e1b712e
	.quad	1579171800              # 0x5e203fd8
	.quad	1579486850              # 0x5e250e82
	.quad	1579801900              # 0x5e29dd2c
	.quad	1580116950              # 0x5e2eabd6
	.quad	1580432000              # 0x5e337a80
	.quad	1580747050              # 0x5e38492a
	.quad	1581062100              # 0x5e3d17d4
	.quad	1581377150              # 0x5e41e67e
	.quad	1581692200              # 0x5e46b528
	.quad	1582007250              # 0x5e4b83d2
	.quad	1582322300              # 0x5e50527c
	.quad	1582637350              # 0x5e552126
	.quad	1582952400              # 0x5e59efd0
	.quad	1583267450              # 0x5e5ebe7a
	.quad	1583582500              # 0x5e638d24
	.quad	1583897550              # 0x5e685bce
	.quad	1584212600              # 0x5e6d2a78
	.quad	1584527650              # 0x5e71f922
	.quad	1584842700              # 0x5e76c7cc
	.quad	1585157750              # 0x5e7b9676
	.quad	1585472800              # 0x5e806520
	.quad	1585787850              # 0x5e8533ca
	.quad	1586102900              # 0x5e8a0274
	.quad	1586417950              # 0x5e8ed11e
	.quad	1586733000              # 0x5e939fc8
	.quad	1587048050              # 0x5e986e72
	.quad	1587363100              # 0x5e9d3d1c
	.quad	1587678150              # 0x5ea20bc6
	.quad	1587993200              # 0x5ea6da70
	.quad	1588308250              # 0x5eaba91a
	.quad	1588623300              # 0x5eb077c4
	.quad	1588938350              # 0x5eb5466e
	.quad	1589253400              # 0x5eba1518
	.quad	1589568450              # 0x5ebee3c2
	.quad	1589883500              # 0x5ec3b26c
	.quad	1590198550              # 0x5ec88116
	.quad	1590513600              # 0x5ecd4fc0
	.quad	1590828650              # 0x5ed21e6a
	.quad	1591143700              # 0x5ed6ed14
	.quad	1591458750              # 0x5edbbbbe
	.quad	1591773800              # 0x5ee08a68
	.quad	1592088850              # 0x5ee55912
	.quad	1592403900              # 0x5eea27bc
	.quad	1592718950              # 0x5eeef666
	.quad	1593034000              # 0x5ef3c510
	.quad	1593349050              # 0x5ef893ba
	.quad	1593664100              # 0x5efd6264
	.quad	1593979150              # 0x5f02310e
	.quad	1594294200              # 0x5f06ffb8
	.quad	1594609250              # 0x5f0bce62
	.quad	1594924300              # 0x5f109d0c
	.quad	1595239350              # 0x5f156bb6
	.quad	1595554400              # 0x5f1a3a60
	.quad	1595869450              # 0x5f1f090a
	.quad	1596184500              # 0x5f23d7b4
	.quad	1596499550              # 0x5f28a65e
	.quad	1596814600              # 0x5f2d7508
	.quad	1597129650              # 0x5f3243b2
	.quad	1597444700              # 0x5f37125c
	.quad	1597759750              # 0x5f3be106
	.quad	1598074800              # 0x5f40afb0
	.quad	1598389850              # 0x5f457e5a
	.quad	1598704900              # 0x5f4a4d04
	.quad	1599019950              # 0x5f4f1bae
	.quad	1599335000              # 0x5f53ea58
	.quad	1617655050              # 0x606b750a
	.quad	1617980100              # 0x60706ac4
	.quad	1618305150              # 0x6075607e
	.quad	1618630200              # 0x607a5638
	.quad	1618955250              # 0x607f4bf2
	.quad	1619280300              # 0x608441ac
	.quad	1619605350              # 0x60893766
	.quad	1619930400              # 0x608e2d20
	.quad	1620255450              # 0x609322da
	.quad	1620580500              # 0x60981894
	.quad	1620905550              # 0x609d0e4e
	.quad	1621230600              # 0x60a20408
	.quad	1621555650              # 0x60a6f9c2
	.quad	1621880700              # 0x60abef7c
	.quad	1622205750              # 0x60b0e536
	.quad	1622530800              # 0x60b5daf0
	.quad	1622855850              # 0x60bad0aa
	.quad	1623180900              # 0x60bfc664
	.quad	1623505950              # 0x60c4bc1e
	.quad	1623831000              # 0x60c9b1d8
	.quad	1624156050              # 0x60cea792
	.quad	1624481100              # 0x60d39d4c
	.quad	1624806150              # 0x60d89306
	.quad	1625131200              # 0x60dd88c0
	.quad	1625456250              # 0x60e27e7a
	.quad	1625781300              # 0x60e77434
	.quad	1626106350              # 0x60ec69ee
	.quad	1626431400              # 0x60f15fa8
	.quad	1626756450              # 0x60f65562
	.quad	1627081500              # 0x60fb4b1c
	.quad	1627406550              # 0x610040d6
	.quad	1627731600              # 0x61053690
	.quad	1628056650              # 0x610a2c4a
	.quad	1628381700              # 0x610f2204
	.quad	1628706750              # 0x611417be
	.quad	1629031800              # 0x61190d78
	.quad	1629356850              # 0x611e0332
	.quad	1629681900              # 0x6122f8ec
	.quad	1630006950              # 0x6127eea6
	.quad	1630332000              # 0x612ce460
	.quad	1630657050              # 0x6131da1a
	.quad	1630982100              # 0x6136cfd4
	.quad	1631307150              # 0x613bc58e
	.quad	1631632200              # 0x6140bb48
	.quad	1631957250              # 0x6145b102
	.quad	1632282300              # 0x614aa6bc
	.quad	1632607350              # 0x614f9c76
	.quad	1632932400              # 0x61549230
	.quad	1633257450              # 0x615987ea
	.quad	1633582500              # 0x615e7da4
	.quad	1633907550              # 0x6163735e
	.quad	1634232600              # 0x61686918
	.quad	1634557650              # 0x616d5ed2
	.quad	1634882700              # 0x6172548c
	.quad	1635207750              # 0x61774a46
	.quad	1635532800              # 0x617c4000
	.quad	1635857850              # 0x618135ba
	.quad	1636182900              # 0x61862b74
	.quad	1636507950              # 0x618b212e
	.quad	1636833000              # 0x619016e8
	.quad	1637158050              # 0x61950ca2
	.quad	1637483100              # 0x619a025c
	.quad	1637808150              # 0x619ef816
	.quad	1638133200              # 0x61a3edd0
	.quad	1638458250              # 0x61a8e38a
	.quad	1638783300              # 0x61add944
	.quad	1639108350              # 0x61b2cefe
	.quad	1639433400              # 0x61b7c4b8
	.quad	1639758450              # 0x61bcba72
	.quad	1640083500              # 0x61c1b02c
	.quad	1640408550              # 0x61c6a5e6
	.quad	1640733600              # 0x61cb9ba0
	.quad	1641058650              # 0x61d0915a
	.quad	1641383700              # 0x61d58714
	.quad	1641708750              # 0x61da7cce
	.quad	1642033800              # 0x61df7288
	.quad	1642358850              # 0x61e46842
	.quad	1642683900              # 0x61e95dfc
	.quad	1643008950              # 0x61ee53b6
	.quad	1643334000              # 0x61f34970
	.quad	1643659050              # 0x61f83f2a
	.quad	1643984100              # 0x61fd34e4
	.quad	1644309150              # 0x62022a9e
	.quad	1644634200              # 0x62072058
	.quad	1644959250              # 0x620c1612
	.quad	1645284300              # 0x62110bcc
	.quad	1645609350              # 0x62160186
	.quad	1645934400              # 0x621af740
	.quad	1646259450              # 0x621fecfa
	.quad	1646584500              # 0x6224e2b4
	.quad	1646909550              # 0x6229d86e
	.quad	1647234600              # 0x622ece28
	.quad	1647559650              # 0x6233c3e2
	.quad	1647884700              # 0x6238b99c
	.quad	1648209750              # 0x623daf56
	.quad	1648534800              # 0x6242a510
	.quad	1648859850              # 0x62479aca
	.quad	1649184900              # 0x624c9084
	.quad	1649509950              # 0x6251863e
	.quad	1649835000              # 0x62567bf8
	.quad	1667165050              # 0x635eeb7a
	.quad	1667500100              # 0x63640844
	.quad	1667835150              # 0x6369250e
	.quad	1668170200              # 0x636e41d8
	.quad	1668505250              # 0x63735ea2
	.quad	1668840300              # 0x63787b6c
	.quad	1669175350              # 0x637d9836
	.quad	1669510400              # 0x6382b500
	.quad	1669845450              # 0x6387d1ca
	.quad	1670180500              # 0x638cee94
	.quad	1670515550              # 0x63920b5e
	.quad	1670850600              # 0x63972828
	.quad	1671185650              # 0x639c44f2
	.quad	1671520700              # 0x63a161bc
	.quad	1671855750              # 0x63a67e86
	.quad	1672190800              # 0x63ab9b50
	.quad	1672525850              # 0x63b0b81a
	.quad	1672860900              # 0x63b5d4e4
	.quad	1673195950              # 0x63baf1ae
	.quad	1673531000              # 0x63c00e78
	.quad	1673866050              # 0x63c52b42
	.quad	1674201100              # 0x63ca480c
	.quad	1674536150              # 0x63cf64d6
	.quad	1674871200              # 0x63d481a0
	.quad	1675206250              # 0x63d99e6a
	.quad	1675541300              # 0x63debb34
	.quad	1675876350              # 0x63e3d7fe
	.quad	1676211400              # 0x63e8f4c8
	.quad	1676546450              # 0x63ee1192
	.quad	1676881500              # 0x63f32e5c
	.quad	1677216550              # 0x63f84b26
	.quad	1677551600              # 0x63fd67f0
	.quad	1677886650              # 0x640284ba
	.quad	1678221700              # 0x6407a184
	.quad	1678556750              # 0x640cbe4e
	.quad	1678891800              # 0x6411db18
	.quad	1679226850              # 0x6416f7e2
	.quad	1679561900              # 0x641c14ac
	.quad	1679896950              # 0x64213176
	.quad	1680232000              # 0x64264e40
	.quad	1680567050              # 0x642b6b0a
	.quad	1680902100              # 0x643087d4
	.quad	1681237150              # 0x6435a49e
	.quad	1681572200              # 0x643ac168
	.quad	1681907250              # 0x643fde32
	.quad	1682242300              # 0x6444fafc
	.quad	1682577350              # 0x644a17c6
	.quad	1682912400              # 0x644f3490
	.quad	1683247450              # 0x6454515a
	.quad	1683582500              # 0x64596e24
	.quad	1683917550              # 0x645e8aee
	.quad	1684252600              # 0x6463a7b8
	.quad	1684587650              # 0x6468c482
	.quad	1684922700              # 0x646de14c
	.quad	1685257750              # 0x6472fe16
	.quad	1685592800              # 0x64781ae0
	.quad	1685927850              # 0x647d37aa
	.quad	1686262900              # 0x64825474
	.quad	1686597950              # 0x6487713e
	.quad	1686933000              # 0x648c8e08
	.quad	1687268050              # 0x6491aad2
	.quad	1687603100              # 0x6496c79c
	.quad	1687938150              # 0x649be466
	.quad	1688273200              # 0x64a10130
	.quad	1688608250              # 0x64a61dfa
	.quad	1688943300              # 0x64ab3ac4
	.quad	1689278350              # 0x64b0578e
	.quad	1689613400              # 0x64b57458
	.quad	1689948450              # 0x64ba9122
	.quad	1690283500              # 0x64bfadec
	.quad	1690618550              # 0x64c4cab6
	.quad	1690953600              # 0x64c9e780
	.quad	1691288650              # 0x64cf044a
	.quad	1691623700              # 0x64d42114
	.quad	1691958750              # 0x64d93dde
	.quad	1692293800              # 0x64de5aa8
	.quad	1692628850              # 0x64e37772
	.quad	1692963900              # 0x64e8943c
	.quad	1693298950              # 0x64edb106
	.quad	1693634000              # 0x64f2cdd0
	.quad	1693969050              # 0x64f7ea9a
	.quad	1694304100              # 0x64fd0764
	.quad	1694639150              # 0x6502242e
	.quad	1694974200              # 0x650740f8
	.quad	1695309250              # 0x650c5dc2
	.quad	1695644300              # 0x65117a8c
	.quad	1695979350              # 0x65169756
	.quad	1696314400              # 0x651bb420
	.quad	1696649450              # 0x6520d0ea
	.quad	1696984500              # 0x6525edb4
	.quad	1697319550              # 0x652b0a7e
	.quad	1697654600              # 0x65302748
	.quad	1697989650              # 0x65354412
	.quad	1698324700              # 0x653a60dc
	.quad	1698659750              # 0x653f7da6
	.quad	1698994800              # 0x65449a70
	.quad	1699329850              # 0x6549b73a
	.quad	1699664900              # 0x654ed404
	.quad	1699999950              # 0x6553f0ce
	.quad	1700335000              # 0x65590d98
	.quad	1716675050              # 0x665261ea
	.quad	1717020100              # 0x6657a5c4
	.quad	1717365150              # 0x665ce99e
	.quad	1717710200              # 0x66622d78
	.quad	1718055250              # 0x66677152
	.quad	1718400300              # 0x666cb52c
	.quad	1718745350              # 0x6671f906
	.quad	1719090400              # 0x66773ce0
	.quad	1719435450              # 0x667c80ba
	.quad	1719780500              # 0x6681c494
	.quad	1720125550              # 0x6687086e
	.quad	1720470600              # 0x668c4c48
	.quad	1720815650              # 0x66919022
	.quad	1721160700              # 0x6696d3fc
	.quad	1721505750              # 0x669c17d6
	.quad	1721850800              # 0x66a15bb0
	.quad	1722195850              # 0x66a69f8a
	.quad	1722540900              # 0x66abe364
	.quad	1722885950              # 0x66b1273e
	.quad	1723231000              # 0x66b66b18
	.quad	1723576050              # 0x66bbaef2
	.quad	1723921100              # 0x66c0f2cc
	.quad	1724266150              # 0x66c636a6
	.quad	1724611200              # 0x66cb7a80
	.quad	1724956250              # 0x66d0be5a
	.quad	1725301300              # 0x66d60234
	.quad	1725646350              # 0x66db460e
	.quad	1725991400              # 0x66e089e8
	.quad	1726336450              # 0x66e5cdc2
	.quad	1726681500              # 0x66eb119c
	.quad	1727026550              # 0x66f05576
	.quad	1727371600              # 0x66f59950
	.quad	1727716650              # 0x66fadd2a
	.quad	1728061700              # 0x67002104
	.quad	1728406750              # 0x670564de
	.quad	1728751800              # 0x670aa8b8
	.quad	1729096850              # 0x670fec92
	.quad	1729441900              # 0x6715306c
	.quad	1729786950              # 0x671a7446
	.quad	1730132000              # 0x671fb820
	.quad	1730477050              # 0x6724fbfa
	.quad	1730822100              # 0x672a3fd4
	.quad	1731167150              # 0x672f83ae
	.quad	1731512200              # 0x6734c788
	.quad	1731857250              # 0x673a0b62
	.quad	1732202300              # 0x673f4f3c
	.quad	1732547350              # 0x67449316
	.quad	1732892400              # 0x6749d6f0
	.quad	1733237450              # 0x674f1aca
	.quad	1733582500              # 0x67545ea4
	.quad	1733927550              # 0x6759a27e
	.quad	1734272600              # 0x675ee658
	.quad	1734617650              # 0x67642a32
	.quad	1734962700              # 0x67696e0c
	.quad	1735307750              # 0x676eb1e6
	.quad	1735652800              # 0x6773f5c0
	.quad	1735997850              # 0x6779399a
	.quad	1736342900              # 0x677e7d74
	.quad	1736687950              # 0x6783c14e
	.quad	1737033000              # 0x67890528
	.quad	1737378050              # 0x678e4902
	.quad	1737723100              # 0x67938cdc
	.quad	1738068150              # 0x6798d0b6
	.quad	1738413200              # 0x679e1490
	.quad	1738758250              # 0x67a3586a
	.quad	1739103300              # 0x67a89c44
	.quad	1739448350              # 0x67ade01e
	.quad	1739793400              # 0x67b323f8
	.quad	1740138450              # 0x67b867d2
	.quad	1740483500              # 0x67bdabac
	.quad	1740828550              # 0x67c2ef86
	.quad	1741173600              # 0x67c83360
	.quad	1741518650              # 0x67cd773a
	.quad	1741863700              # 0x67d2bb14
	.quad	1742208750              # 0x67d7feee
	.quad	1742553800              # 0x67dd42c8
	.quad	1742898850              # 0x67e286a2
	.quad	1743243900              # 0x67e7ca7c
	.quad	1743588950              # 0x67ed0e56
	.quad	1743934000              # 0x67f25230
	.quad	1744279050              # 0x67f7960a
	.quad	1744624100              # 0x67fcd9e4
	.quad	1744969150              # 0x68021dbe
	.quad	1745314200              # 0x68076198
	.quad	1745659250              # 0x680ca572
	.quad	1746004300              # 0x6811e94c
	.quad	1746349350              # 0x68172d26
	.quad	1746694400              # 0x681c7100
	.quad	1747039450              # 0x6821b4da
	.quad	1747384500              # 0x6826f8b4
	.quad	1747729550              # 0x682c3c8e
	.quad	1748074600              # 0x68318068
	.quad	1748419650              # 0x6836c442
	.quad	1748764700              # 0x683c081c
	.quad	1749109750              # 0x68414bf6
	.quad	1749454800              # 0x68468fd0
	.quad	1749799850              # 0x684bd3aa
	.quad	1750144900              # 0x68511784
	.quad	1750489950              # 0x68565b5e
	.quad	1750835000              # 0x685b9f38
	.quad	1766185050              # 0x6945d85a
	.quad	1766540100              # 0x694b4344
	.quad	1766895150              # 0x6950ae2e
	.quad	1767250200              # 0x69561918
	.quad	1767605250              # 0x695b8402
	.quad	1767960300              # 0x6960eeec
	.quad	1768315350              # 0x696659d6
	.quad	1768670400              # 0x696bc4c0
	.quad	1769025450              # 0x69712faa
	.quad	1769380500              # 0x69769a94
	.quad	1769735550              # 0x697c057e
	.quad	1770090600              # 0x69817068
	.quad	1770445650              # 0x6986db52
	.quad	1770800700              # 0x698c463c
	.quad	1771155750              # 0x6991b126
	.quad	1771510800              # 0x69971c10
	.quad	1771865850              # 0x699c86fa
	.quad	1772220900              # 0x69a1f1e4
	.quad	1772575950              # 0x69a75cce
	.quad	1772931000              # 0x69acc7b8
	.quad	1773286050              # 0x69b232a2
	.quad	1773641100              # 0x69b79d8c
	.quad	1773996150              # 0x69bd0876
	.quad	1774351200              # 0x69c27360
	.quad	1774706250              # 0x69c7de4a
	.quad	1775061300              # 0x69cd4934
	.quad	1775416350              # 0x69d2b41e
	.quad	1775771400              # 0x69d81f08
	.quad	1776126450              # 0x69dd89f2
	.quad	1776481500              # 0x69e2f4dc
	.quad	1776836550              # 0x69e85fc6
	.quad	1777191600              # 0x69edcab0
	.quad	1777546650              # 0x69f3359a
	.quad	1777901700              # 0x69f8a084
	.quad	1778256750              # 0x69fe0b6e
	.quad	1778611800              # 0x6a037658
	.quad	1778966850              # 0x6a08e142
	.quad	1779321900              # 0x6a0e4c2c
	.quad	1779676950              # 0x6a13b716
	.quad	1780032000              # 0x6a192200
	.quad	1780387050              # 0x6a1e8cea
	.quad	1780742100              # 0x6a23f7d4
	.quad	1781097150              # 0x6a2962be
	.quad	1781452200              # 0x6a2ecda8
	.quad	1781807250              # 0x6a343892
	.quad	1782162300              # 0x6a39a37c
	.quad	1782517350              # 0x6a3f0e66
	.quad	1782872400              # 0x6a447950
	.quad	1783227450              # 0x6a49e43a
	.quad	1783582500              # 0x6a4f4f24
	.quad	1783937550              # 0x6a54ba0e
	.quad	1784292600              # 0x6a5a24f8
	.quad	1784647650              # 0x6a5f8fe2
	.quad	1785002700              # 0x6a64facc
	.quad	1785357750              # 0x6a6a65b6
	.quad	1785712800              # 0x6a6fd0a0
	.quad	1786067850              # 0x6a753b8a
	.quad	1786422900              # 0x6a7aa674
	.quad	1786777950              # 0x6a80115e
	.quad	1787133000              # 0x6a857c48
	.quad	1787488050              # 0x6a8ae732
	.quad	1787843100              # 0x6a90521c
	.quad	1788198150              # 0x6a95bd06
	.quad	1788553200              # 0x6a9b27f0
	.quad	1788908250              # 0x6aa092da
	.quad	1789263300              # 0x6aa5fdc4
	.quad	1789618350              # 0x6aab68ae
	.quad	1789973400              # 0x6ab0d398
	.quad	1790328450              # 0x6ab63e82
	.quad	1790683500              # 0x6abba96c
	.quad	1791038550              # 0x6ac11456
	.quad	1791393600              # 0x6ac67f40
	.quad	1791748650              # 0x6acbea2a
	.quad	1792103700              # 0x6ad15514
	.quad	1792458750              # 0x6ad6bffe
	.quad	1792813800              # 0x6adc2ae8
	.quad	1793168850              # 0x6ae195d2
	.quad	1793523900              # 0x6ae700bc
	.quad	1793878950              # 0x6aec6ba6
	.quad	1794234000              # 0x6af1d690
	.quad	1794589050              # 0x6af7417a
	.quad	1794944100              # 0x6afcac64
	.quad	1795299150              # 0x6b02174e
	.quad	1795654200              # 0x6b078238
	.quad	1796009250              # 0x6b0ced22
	.quad	1796364300              # 0x6b12580c
	.quad	1796719350              # 0x6b17c2f6
	.quad	1797074400              # 0x6b1d2de0
	.quad	1797429450              # 0x6b2298ca
	.quad	1797784500              # 0x6b2803b4
	.quad	1798139550              # 0x6b2d6e9e
	.quad	1798494600              # 0x6b32d988
	.quad	1798849650              # 0x6b384472
	.quad	1799204700              # 0x6b3daf5c
	.quad	1799559750              # 0x6b431a46
	.quad	1799914800              # 0x6b488530
	.quad	1800269850              # 0x6b4df01a
	.quad	1800624900              # 0x6b535b04
	.quad	1800979950              # 0x6b58c5ee
	.quad	1801335000              # 0x6b5e30d8
	.quad	1815695050              # 0x6c394eca
	.quad	1816060100              # 0x6c3ee0c4
	.quad	1816425150              # 0x6c4472be
	.quad	1816790200              # 0x6c4a04b8
	.quad	1817155250              # 0x6c4f96b2
	.quad	1817520300              # 0x6c5528ac
	.quad	1817885350              # 0x6c5abaa6
	.quad	1818250400              # 0x6c604ca0
	.quad	1818615450              # 0x6c65de9a
	.quad	1818980500              # 0x6c6b7094
	.quad	1819345550              # 0x6c71028e
	.quad	1819710600              # 0x6c769488
	.quad	1820075650              # 0x6c7c2682
	.quad	1820440700              # 0x6c81b87c
	.quad	1820805750              # 0x6c874a76
	.quad	1821170800              # 0x6c8cdc70
	.quad	1821535850              # 0x6c926e6a
	.quad	1821900900              # 0x6c980064
	.quad	1822265950              # 0x6c9d925e
	.quad	1822631000              # 0x6ca32458
	.quad	1822996050              # 0x6ca8b652
	.quad	1823361100              # 0x6cae484c
	.quad	1823726150              # 0x6cb3da46
	.quad	1824091200              # 0x6cb96c40
	.quad	1824456250              # 0x6cbefe3a
	.quad	1824821300              # 0x6cc49034
	.quad	1825186350              # 0x6cca222e
	.quad	1825551400              # 0x6ccfb428
	.quad	1825916450              # 0x6cd54622
	.quad	1826281500              # 0x6cdad81c
	.quad	1826646550              # 0x6ce06a16
	.quad	1827011600              # 0x6ce5fc10
	.quad	1827376650              # 0x6ceb8e0a
	.quad	1827741700              # 0x6cf12004
	.quad	1828106750              # 0x6cf6b1fe
	.quad	1828471800              # 0x6cfc43f8
	.quad	1828836850              # 0x6d01d5f2
	.quad	1829201900              # 0x6d0767ec
	.quad	1829566950              # 0x6d0cf9e6
	.quad	1829932000              # 0x6d128be0
	.quad	1830297050              # 0x6d181dda
	.quad	1830662100              # 0x6d1dafd4
	.quad	1831027150              # 0x6d2341ce
	.quad	1831392200              # 0x6d28d3c8
	.quad	1831757250              # 0x6d2e65c2
	.quad	1832122300              # 0x6d33f7bc
	.quad	1832487350              # 0x6d3989b6
	.quad	1832852400              # 0x6d3f1bb0
	.quad	1833217450              # 0x6d44adaa
	.quad	1833582500              # 0x6d4a3fa4
	.quad	1833947550              # 0x6d4fd19e
	.quad	1834312600              # 0x6d556398
	.quad	1834677650              # 0x6d5af592
	.quad	1835042700              # 0x6d60878c
	.quad	1835407750              # 0x6d661986
	.quad	1835772800              # 0x6d6bab80
	.quad	1836137850              # 0x6d713d7a
	.quad	1836502900              # 0x6d76cf74
	.quad	1836867950              # 0x6d7c616e
	.quad	1837233000              # 0x6d81f368
	.quad	1837598050              # 0x6d878562
	.quad	1837963100              # 0x6d8d175c
	.quad	1838328150              # 0x6d92a956
	.quad	1838693200              # 0x6d983b50
	.quad	1839058250              # 0x6d9dcd4a
	.quad	1839423300              # 0x6da35f44
	.quad	1839788350              # 0x6da8f13e
	.quad	1840153400              # 0x6dae8338
	.quad	1840518450              # 0x6db41532
	.quad	1840883500              # 0x6db9a72c
	.quad	1841248550              # 0x6dbf3926
	.quad	1841613600              # 0x6dc4cb20
	.quad	1841978650              # 0x6dca5d1a
	.quad	1842343700              # 0x6dcfef14
	.quad	1842708750              # 0x6dd5810e
	.quad	1843073800              # 0x6ddb1308
	.quad	1843438850              # 0x6de0a502
	.quad	1843803900              # 0x6de636fc
	.quad	1844168950              # 0x6debc8f6
	.quad	1844534000              # 0x6df15af0
	.quad	1844899050              # 0x6df6ecea
	.quad	1845264100              # 0x6dfc7ee4
	.quad	1845629150              # 0x6e0210de
	.quad	1845994200              # 0x6e07a2d8
	.quad	1846359250              # 0x6e0d34d2
	.quad	1846724300              # 0x6e12c6cc
	.quad	1847089350              # 0x6e1858c6
	.quad	1847454400              # 0x6e1deac0
	.quad	1847819450              # 0x6e237cba
	.quad	1848184500              # 0x6e290eb4
	.quad	1848549550              # 0x6e2ea0ae
	.quad	1848914600              # 0x6e3432a8
	.quad	1849279650              # 0x6e39c4a2
	.quad	1849644700              # 0x6e3f569c
	.quad	1850009750              # 0x6e44e896
	.quad	1850374800              # 0x6e4a7a90
	.quad	1850739850              # 0x6e500c8a
	.quad	1851104900              # 0x6e559e84
	.quad	1851469950              # 0x6e5b307e
	.quad	1851835000              # 0x6e60c278
	.quad	1865205050              # 0x6f2cc53a
	.quad	1865580100              # 0x6f327e44
	.quad	1865955150              # 0x6f38374e
	.quad	1866330200              # 0x6f3df058
	.quad	1866705250              # 0x6f43a962
	.quad	1867080300              # 0x6f49626c
	.quad	1867455350              # 0x6f4f1b76
	.quad	1867830400              # 0x6f54d480
	.quad	1868205450              # 0x6f5a8d8a
	.quad	1868580500              # 0x6f604694
	.quad	1868955550              # 0x6f65ff9e
	.quad	1869330600              # 0x6f6bb8a8
	.quad	1869705650              # 0x6f7171b2
	.quad	1870080700              # 0x6f772abc
	.quad	1870455750              # 0x6f7ce3c6
	.quad	1870830800              # 0x6f829cd0
	.quad	1871205850              # 0x6f8855da
	.quad	1871580900              # 0x6f8e0ee4
	.quad	1871955950              # 0x6f93c7ee
	.quad	1872331000              # 0x6f9980f8
	.quad	1872706050              # 0x6f9f3a02
	.quad	1873081100              # 0x6fa4f30c
	.quad	1873456150              # 0x6faaac16
	.quad	1873831200              # 0x6fb06520
	.quad	1874206250              # 0x6fb61e2a
	.quad	1874581300              # 0x6fbbd734
	.quad	1874956350              # 0x6fc1903e
	.quad	1875331400              # 0x6fc74948
	.quad	1875706450              # 0x6fcd0252
	.quad	1876081500              # 0x6fd2bb5c
	.quad	1876456550              # 0x6fd87466
	.quad	1876831600              # 0x6fde2d70
	.quad	1877206650              # 0x6fe3e67a
	.quad	1877581700              # 0x6fe99f84
	.quad	1877956750              # 0x6fef588e
	.quad	1878331800              # 0x6ff51198
	.quad	1878706850              # 0x6ffacaa2
	.quad	1879081900              # 0x700083ac
	.quad	1879456950              # 0x70063cb6
	.quad	1879832000              # 0x700bf5c0
	.quad	1880207050              # 0x7011aeca
	.quad	1880582100              # 0x701767d4
	.quad	1880957150              # 0x701d20de
	.quad	1881332200              # 0x7022d9e8
	.quad	1881707250              # 0x702892f2
	.quad	1882082300              # 0x702e4bfc
	.quad	1882457350              # 0x70340506
	.quad	1882832400              # 0x7039be10
	.quad	1883207450              # 0x703f771a
	.quad	1883582500              # 0x70453024
	.quad	1883957550              # 0x704ae92e
	.quad	1884332600              # 0x7050a238
	.quad	1884707650              # 0x70565b42
	.quad	1885082700              # 0x705c144c
	.quad	1885457750              # 0x7061cd56
	.quad	1885832800              # 0x70678660
	.quad	1886207850              # 0x706d3f6a
	.quad	1886582900              # 0x7072f874
	.quad	1886957950              # 0x7078b17e
	.quad	1887333000              # 0x707e6a88
	.quad	1887708050              # 0x70842392
	.quad	1888083100              # 0x7089dc9c
	.quad	1888458150              # 0x708f95a6
	.quad	1888833200              # 0x70954eb0
	.quad	1889208250              # 0x709b07ba
	.quad	1889583300              # 0x70a0c0c4
	.quad	1889958350              # 0x70a679ce
	.quad	1890333400              # 0x70ac32d8
	.quad	1890708450              # 0x70b1ebe2
	.quad	1891083500              # 0x70b7a4ec
	.quad	1891458550              # 0x70bd5df6
	.quad	1891833600              # 0x70c31700
	.quad	1892208650              # 0x70c8d00a
	.quad	1892583700              # 0x70ce8914
	.quad	1892958750              # 0x70d4421e
	.quad	1893333800              # 0x70d9fb28
	.quad	1893708850              # 0x70dfb432
	.quad	1894083900              # 0x70e56d3c
	.quad	1894458950              # 0x70eb2646
	.quad	1894834000              # 0x70f0df50
	.quad	1895209050              # 0x70f6985a
	.quad	1895584100              # 0x70fc5164
	.quad	1895959150              # 0x71020a6e
	.quad	1896334200              # 0x7107c378
	.quad	1896709250              # 0x710d7c82
	.quad	1897084300              # 0x7113358c
	.quad	1897459350              # 0x7118ee96
	.quad	1897834400              # 0x711ea7a0
	.quad	1898209450              # 0x712460aa
	.quad	1898584500              # 0x712a19b4
	.quad	1898959550              # 0x712fd2be
	.quad	1899334600              # 0x71358bc8
	.quad	1899709650              # 0x713b44d2
	.quad	1900084700              # 0x7140fddc
	.quad	1900459750              # 0x7146b6e6
	.quad	1900834800              # 0x714c6ff0
	.quad	1901209850              # 0x715228fa
	.quad	1901584900              # 0x7157e204
	.quad	1901959950              # 0x715d9b0e
	.quad	1902335000              # 0x71635418
	.quad	1914715050              # 0x72203baa
	.quad	1915100100              # 0x72261bc4
	.quad	1915485150              # 0x722bfbde
	.quad	1915870200              # 0x7231dbf8
	.quad	1916255250              # 0x7237bc12
	.quad	1916640300              # 0x723d9c2c
	.quad	1917025350              # 0x72437c46
	.quad	1917410400              # 0x72495c60
	.quad	1917795450              # 0x724f3c7a
	.quad	1918180500              # 0x72551c94
	.quad	1918565550              # 0x725afcae
	.quad	1918950600              # 0x7260dcc8
	.quad	1919335650              # 0x7266bce2
	.quad	1919720700              # 0x726c9cfc
	.quad	1920105750              # 0x72727d16
	.quad	1920490800              # 0x72785d30
	.quad	1920875850              # 0x727e3d4a
	.quad	1921260900              # 0x72841d64
	.quad	1921645950              # 0x7289fd7e
	.quad	1922031000              # 0x728fdd98
	.quad	1922416050              # 0x7295bdb2
	.quad	1922801100              # 0x729b9dcc
	.quad	1923186150              # 0x72a17de6
	.quad	1923571200              # 0x72a75e00
	.quad	1923956250              # 0x72ad3e1a
	.quad	1924341300              # 0x72b31e34
	.quad	1924726350              # 0x72b8fe4e
	.quad	1925111400              # 0x72bede68
	.quad	1925496450              # 0x72c4be82
	.quad	1925881500              # 0x72ca9e9c
	.quad	1926266550              # 0x72d07eb6
	.quad	1926651600              # 0x72d65ed0
	.quad	1927036650              # 0x72dc3eea
	.quad	1927421700              # 0x72e21f04
	.quad	1927806750              # 0x72e7ff1e
	.quad	1928191800              # 0x72eddf38
	.quad	1928576850              # 0x72f3bf52
	.quad	1928961900              # 0x72f99f6c
	.quad	1929346950              # 0x72ff7f86
	.quad	1929732000              # 0x73055fa0
	.quad	1930117050              # 0x730b3fba
	.quad	1930502100              # 0x73111fd4
	.quad	1930887150              # 0x7316ffee
	.quad	1931272200              # 0x731ce008
	.quad	1931657250              # 0x7322c022
	.quad	1932042300              # 0x7328a03c
	.quad	1932427350              # 0x732e8056
	.quad	1932812400              # 0x73346070
	.quad	1933197450              # 0x733a408a
	.quad	1933582500              # 0x734020a4
	.quad	1933967550              # 0x734600be
	.quad	1934352600              # 0x734be0d8
	.quad	1934737650              # 0x7351c0f2
	.quad	1935122700              # 0x7357a10c
	.quad	1935507750              # 0x735d8126
	.quad	1935892800              # 0x73636140
	.quad	1936277850              # 0x7369415a
	.quad	1936662900              # 0x736f2174
	.quad	1937047950              # 0x7375018e
	.quad	1937433000              # 0x737ae1a8
	.quad	1937818050              # 0x7380c1c2
	.quad	1938203100              # 0x7386a1dc
	.quad	1938588150              # 0x738c81f6
	.quad	1938973200              # 0x73926210
	.quad	1939358250              # 0x7398422a
	.quad	1939743300              # 0x739e2244
	.quad	1940128350              # 0x73a4025e
	.quad	1940513400              # 0x73a9e278
	.quad	1940898450              # 0x73afc292
	.quad	1941283500              # 0x73b5a2ac
	.quad	1941668550              # 0x73bb82c6
	.quad	1942053600              # 0x73c162e0
	.quad	1942438650              # 0x73c742fa
	.quad	1942823700              # 0x73cd2314
	.quad	1943208750              # 0x73d3032e
	.quad	1943593800              # 0x73d8e348
	.quad	1943978850              # 0x73dec362
	.quad	1944363900              # 0x73e4a37c
	.quad	1944748950              # 0x73ea8396
	.quad	1945134000              # 0x73f063b0
	.quad	1945519050              # 0x73f643ca
	.quad	1945904100              # 0x73fc23e4
	.quad	1946289150              # 0x740203fe
	.quad	1946674200              # 0x7407e418
	.quad	1947059250              # 0x740dc432
	.quad	1947444300              # 0x7413a44c
	.quad	1947829350              # 0x74198466
	.quad	1948214400              # 0x741f6480
	.quad	1948599450              # 0x7425449a
	.quad	1948984500              # 0x742b24b4
	.quad	1949369550              # 0x743104ce
	.quad	1949754600              # 0x7436e4e8
	.quad	1950139650              # 0x743cc502
	.quad	1950524700              # 0x7442a51c
	.quad	1950909750              # 0x74488536
	.quad	1951294800              # 0x744e6550
	.quad	1951679850              # 0x7454456a
	.quad	1952064900              # 0x745a2584
	.quad	1952449950              # 0x7460059e
	.quad	1952835000              # 0x7465e5b8
	.quad	1964225050              # 0x7513b21a
	.quad	1964620100              # 0x7519b944
	.quad	1965015150              # 0x751fc06e
	.quad	1965410200              # 0x7525c798
	.quad	1965805250              # 0x752bcec2
	.quad	1966200300              # 0x7531d5ec
	.quad	1966595350              # 0x7537dd16
	.quad	1966990400              # 0x753de440
	.quad	1967385450              # 0x7543eb6a
	.quad	1967780500              # 0x7549f294
	.quad	1968175550              # 0x754ff9be
	.quad	1968570600              # 0x755600e8
	.quad	1968965650              # 0x755c0812
	.quad	1969360700              # 0x75620f3c
	.quad	1969755750              # 0x75681666
	.quad	1970150800              # 0x756e1d90
	.quad	1970545850              # 0x757424ba
	.quad	1970940900              # 0x757a2be4
	.quad	1971335950              # 0x7580330e
	.quad	1971731000              # 0x75863a38
	.quad	1972126050              # 0x758c4162
	.quad	1972521100              # 0x7592488c
	.quad	1972916150              # 0x75984fb6
	.quad	1973311200              # 0x759e56e0
	.quad	1973706250              # 0x75a45e0a
	.quad	1974101300              # 0x75aa6534
	.quad	1974496350              # 0x75b06c5e
	.quad	1974891400              # 0x75b67388
	.quad	1975286450              # 0x75bc7ab2
	.quad	1975681500              # 0x75c281dc
	.quad	1976076550              # 0x75c88906
	.quad	1976471600              # 0x75ce9030
	.quad	1976866650              # 0x75d4975a
	.quad	1977261700              # 0x75da9e84
	.quad	1977656750              # 0x75e0a5ae
	.quad	1978051800              # 0x75e6acd8
	.quad	1978446850              # 0x75ecb402
	.quad	1978841900              # 0x75f2bb2c
	.quad	1979236950              # 0x75f8c256
	.quad	1979632000              # 0x75fec980
	.quad	1980027050              # 0x7604d0aa
	.quad	1980422100              # 0x760ad7d4
	.quad	1980817150              # 0x7610defe
	.quad	1981212200              # 0x7616e628
	.quad	1981607250              # 0x761ced52
	.quad	1982002300              # 0x7622f47c
	.quad	1982397350              # 0x7628fba6
	.quad	1982792400              # 0x762f02d0
	.quad	1983187450              # 0x763509fa
	.quad	1983582500              # 0x763b1124
	.quad	1983977550              # 0x7641184e
	.quad	1984372600              # 0x76471f78
	.quad	1984767650              # 0x764d26a2
	.quad	1985162700              # 0x76532dcc
	.quad	1985557750              # 0x765934f6
	.quad	1985952800              # 0x765f3c20
	.quad	1986347850              # 0x7665434a
	.quad	1986742900              # 0x766b4a74
	.quad	1987137950              # 0x7671519e
	.quad	1987533000              # 0x767758c8
	.quad	1987928050              # 0x767d5ff2
	.quad	1988323100              # 0x7683671c
	.quad	1988718150              # 0x76896e46
	.quad	1989113200              # 0x768f7570
	.quad	1989508250              # 0x76957c9a
	.quad	1989903300              # 0x769b83c4
	.quad	1990298350              # 0x76a18aee
	.quad	1990693400              # 0x76a79218
	.quad	1991088450              # 0x76ad9942
	.quad	1991483500              # 0x76b3a06c
	.quad	1991878550              # 0x76b9a796
	.quad	1992273600              # 0x76bfaec0
	.quad	1992668650              # 0x76c5b5ea
	.quad	1993063700              # 0x76cbbd14
	.quad	1993458750              # 0x76d1c43e
	.quad	1993853800              # 0x76d7cb68
	.quad	1994248850              # 0x76ddd292
	.quad	1994643900              # 0x76e3d9bc
	.quad	1995038950              # 0x76e9e0e6
	.quad	1995434000              # 0x76efe810
	.quad	1995829050              # 0x76f5ef3a
	.quad	1996224100              # 0x76fbf664
	.quad	1996619150              # 0x7701fd8e
	.quad	1997014200              # 0x770804b8
	.quad	1997409250              # 0x770e0be2
	.quad	1997804300              # 0x7714130c
	.quad	1998199350              # 0x771a1a36
	.quad	1998594400              # 0x77202160
	.quad	1998989450              # 0x7726288a
	.quad	1999384500              # 0x772c2fb4
	.quad	1999779550              # 0x773236de
	.quad	2000174600              # 0x77383e08
	.quad	2000569650              # 0x773e4532
	.quad	2000964700              # 0x77444c5c
	.quad	2001359750              # 0x774a5386
	.quad	2001754800              # 0x77505ab0
	.quad	2002149850              # 0x775661da
	.quad	2002544900              # 0x775c6904
	.quad	2002939950              # 0x7762702e
	.quad	2003335000              # 0x77687758
	.quad	2013735050              # 0x7807288a
	.quad	2014140100              # 0x780d56c4
	.quad	2014545150              # 0x781384fe
	.quad	2014950200              # 0x7819b338
	.quad	2015355250              # 0x781fe172
	.quad	2015760300              # 0x78260fac
	.quad	2016165350              # 0x782c3de6
	.quad	2016570400              # 0x78326c20
	.quad	2016975450              # 0x78389a5a
	.quad	2017380500              # 0x783ec894
	.quad	2017785550              # 0x7844f6ce
	.quad	2018190600              # 0x784b2508
	.quad	2018595650              # 0x78515342
	.quad	2019000700              # 0x7857817c
	.quad	2019405750              # 0x785dafb6
	.quad	2019810800              # 0x7863ddf0
	.quad	2020215850              # 0x786a0c2a
	.quad	2020620900              # 0x78703a64
	.quad	2021025950              # 0x7876689e
	.quad	2021431000              # 0x787c96d8
	.quad	2021836050              # 0x7882c512
	.quad	2022241100              # 0x7888f34c
	.quad	2022646150              # 0x788f2186
	.quad	2023051200              # 0x78954fc0
	.quad	2023456250              # 0x789b7dfa
	.quad	2023861300              # 0x78a1ac34
	.quad	2024266350              # 0x78a7da6e
	.quad	2024671400              # 0x78ae08a8
	.quad	2025076450              # 0x78b436e2
	.quad	2025481500              # 0x78ba651c
	.quad	2025886550              # 0x78c09356
	.quad	2026291600              # 0x78c6c190
	.quad	2026696650              # 0x78ccefca
	.quad	2027101700              # 0x78d31e04
	.quad	2027506750              # 0x78d94c3e
	.quad	2027911800              # 0x78df7a78
	.quad	2028316850              # 0x78e5a8b2
	.quad	2028721900              # 0x78ebd6ec
	.quad	2029126950              # 0x78f20526
	.quad	2029532000              # 0x78f83360
	.quad	2029937050              # 0x78fe619a
	.quad	2030342100              # 0x79048fd4
	.quad	2030747150              # 0x790abe0e
	.quad	2031152200              # 0x7910ec48
	.quad	2031557250              # 0x79171a82
	.quad	2031962300              # 0x791d48bc
	.quad	2032367350              # 0x792376f6
	.quad	2032772400              # 0x7929a530
	.quad	2033177450              # 0x792fd36a
	.quad	2033582500              # 0x793601a4
	.quad	2033987550              # 0x793c2fde
	.quad	2034392600              # 0x79425e18
	.quad	2034797650              # 0x79488c52
	.quad	2035202700              # 0x794eba8c
	.quad	2035607750              # 0x7954e8c6
	.quad	2036012800              # 0x795b1700
	.quad	2036417850              # 0x7961453a
	.quad	2036822900              # 0x79677374
	.quad	2037227950              # 0x796da1ae
	.quad	2037633000              # 0x7973cfe8
	.quad	2038038050              # 0x7979fe22
	.quad	2038443100              # 0x79802c5c
	.quad	2038848150              # 0x79865a96
	.quad	2039253200              # 0x798c88d0
	.quad	2039658250              # 0x7992b70a
	.quad	2040063300              # 0x7998e544
	.quad	2040468350              # 0x799f137e
	.quad	2040873400              # 0x79a541b8
	.quad	2041278450              # 0x79ab6ff2
	.quad	2041683500              # 0x79b19e2c
	.quad	2042088550              # 0x79b7cc66
	.quad	2042493600              # 0x79bdfaa0
	.quad	2042898650              # 0x79c428da
	.quad	2043303700              # 0x79ca5714
	.quad	2043708750              # 0x79d0854e
	.quad	2044113800              # 0x79d6b388
	.quad	2044518850              # 0x79dce1c2
	.quad	2044923900              # 0x79e30ffc
	.quad	2045328950              # 0x79e93e36
	.quad	2045734000              # 0x79ef6c70
	.quad	2046139050              # 0x79f59aaa
	.quad	2046544100              # 0x79fbc8e4
	.quad	2046949150              # 0x7a01f71e
	.quad	2047354200              # 0x7a082558
	.quad	2047759250              # 0x7a0e5392
	.quad	2048164300              # 0x7a1481cc
	.quad	2048569350              # 0x7a1ab006
	.quad	2048974400              # 0x7a20de40
	.quad	2049379450              # 0x7a270c7a
	.quad	2049784500              # 0x7a2d3ab4
	.quad	2050189550              # 0x7a3368ee
	.quad	2050594600              # 0x7a399728
	.quad	2050999650              # 0x7a3fc562
	.quad	2051404700              # 0x7a45f39c
	.quad	2051809750              # 0x7a4c21d6
	.quad	2052214800              # 0x7a525010
	.quad	2052619850              # 0x7a587e4a
	.quad	2053024900              # 0x7a5eac84
	.quad	2053429950              # 0x7a64dabe
	.quad	2053835000              # 0x7a6b08f8
	.quad	2063245050              # 0x7afa9efa
	.quad	2063660100              # 0x7b00f444
	.quad	2064075150              # 0x7b07498e
	.quad	2064490200              # 0x7b0d9ed8
	.quad	2064905250              # 0x7b13f422
	.quad	2065320300              # 0x7b1a496c
	.quad	2065735350              # 0x7b209eb6
	.quad	2066150400              # 0x7b26f400
	.quad	2066565450              # 0x7b2d494a
	.quad	2066980500              # 0x7b339e94
	.quad	2067395550              # 0x7b39f3de
	.quad	2067810600              # 0x7b404928
	.quad	2068225650              # 0x7b469e72
	.quad	2068640700              # 0x7b4cf3bc
	.quad	2069055750              # 0x7b534906
	.quad	2069470800              # 0x7b599e50
	.quad	2069885850              # 0x7b5ff39a
	.quad	2070300900              # 0x7b6648e4
	.quad	2070715950              # 0x7b6c9e2e
	.quad	2071131000              # 0x7b72f378
	.quad	2071546050              # 0x7b7948c2
	.quad	2071961100              # 0x7b7f9e0c
	.quad	2072376150              # 0x7b85f356
	.quad	2072791200              # 0x7b8c48a0
	.quad	2073206250              # 0x7b929dea
	.quad	2073621300              # 0x7b98f334
	.quad	2074036350              # 0x7b9f487e
	.quad	2074451400              # 0x7ba59dc8
	.quad	2074866450              # 0x7babf312
	.quad	2075281500              # 0x7bb2485c
	.quad	2075696550              # 0x7bb89da6
	.quad	2076111600              # 0x7bbef2f0
	.quad	2076526650              # 0x7bc5483a
	.quad	2076941700              # 0x7bcb9d84
	.quad	2077356750              # 0x7bd1f2ce
	.quad	2077771800              # 0x7bd84818
	.quad	2078186850              # 0x7bde9d62
	.quad	2078601900              # 0x7be4f2ac
	.quad	2079016950              # 0x7beb47f6
	.quad	2079432000              # 0x7bf19d40
	.quad	2079847050              # 0x7bf7f28a
	.quad	2080262100              # 0x7bfe47d4
	.quad	2080677150              # 0x7c049d1e
	.quad	2081092200              # 0x7c0af268
	.quad	2081507250              # 0x7c1147b2
	.quad	2081922300              # 0x7c179cfc
	.quad	2082337350              # 0x7c1df246
	.quad	2082752400              # 0x7c244790
	.quad	2083167450              # 0x7c2a9cda
	.quad	2083582500              # 0x7c30f224
	.quad	2083997550              # 0x7c37476e
	.quad	2084412600              # 0x7c3d9cb8
	.quad	2084827650              # 0x7c43f202
	.quad	2085242700              # 0x7c4a474c
	.quad	2085657750              # 0x7c509c96
	.quad	2086072800              # 0x7c56f1e0
	.quad	2086487850              # 0x7c5d472a
	.quad	2086902900              # 0x7c639c74
	.quad	2087317950              # 0x7c69f1be
	.quad	2087733000              # 0x7c704708
	.quad	2088148050              # 0x7c769c52
	.quad	2088563100              # 0x7c7cf19c
	.quad	2088978150              # 0x7c8346e6
	.quad	2089393200              # 0x7c899c30
	.quad	2089808250              # 0x7c8ff17a
	.quad	2090223300              # 0x7c9646c4
	.quad	2090638350              # 0x7c9c9c0e
	.quad	2091053400              # 0x7ca2f158
	.quad	2091468450              # 0x7ca946a2
	.quad	2091883500              # 0x7caf9bec
	.quad	2092298550              # 0x7cb5f136
	.quad	2092713600              # 0x7cbc4680
	.quad	2093128650              # 0x7cc29bca
	.quad	2093543700              # 0x7cc8f114
	.quad	2093958750              # 0x7ccf465e
	.quad	2094373800              # 0x7cd59ba8
	.quad	2094788850              # 0x7cdbf0f2
	.quad	2095203900              # 0x7ce2463c
	.quad	2095618950              # 0x7ce89b86
	.quad	2096034000              # 0x7ceef0d0
	.quad	2096449050              # 0x7cf5461a
	.quad	2096864100              # 0x7cfb9b64
	.quad	2097279150              # 0x7d01f0ae
	.quad	2097694200              # 0x7d0845f8
	.quad	2098109250              # 0x7d0e9b42
	.quad	2098524300              # 0x7d14f08c
	.quad	2098939350              # 0x7d1b45d6
	.quad	2099354400              # 0x7d219b20
	.quad	2099769450              # 0x7d27f06a
	.quad	2100184500              # 0x7d2e45b4
	.quad	2100599550              # 0x7d349afe
	.quad	2101014600              # 0x7d3af048
	.quad	2101429650              # 0x7d414592
	.quad	2101844700              # 0x7d479adc
	.quad	2102259750              # 0x7d4df026
	.quad	2102674800              # 0x7d544570
	.quad	2103089850              # 0x7d5a9aba
	.quad	2103504900              # 0x7d60f004
	.quad	2103919950              # 0x7d67454e
	.quad	2104335000              # 0x7d6d9a98
	.quad	2112755050              # 0x7dee156a
	.quad	2113180100              # 0x7df491c4
	.quad	2113605150              # 0x7dfb0e1e
	.quad	2114030200              # 0x7e018a78
	.quad	2114455250              # 0x7e0806d2
	.quad	2114880300              # 0x7e0e832c
	.quad	2115305350              # 0x7e14ff86
	.quad	2115730400              # 0x7e1b7be0
	.quad	2116155450              # 0x7e21f83a
	.quad	2116580500              # 0x7e287494
	.quad	2117005550              # 0x7e2ef0ee
	.quad	2117430600              # 0x7e356d48
	.quad	2117855650              # 0x7e3be9a2
	.quad	2118280700              # 0x7e4265fc
	.quad	2118705750              # 0x7e48e256
	.quad	2119130800              # 0x7e4f5eb0
	.quad	2119555850              # 0x7e55db0a
	.quad	2119980900              # 0x7e5c5764
	.quad	2120405950              # 0x7e62d3be
	.quad	2120831000              # 0x7e695018
	.quad	2121256050              # 0x7e6fcc72
	.quad	2121681100              # 0x7e7648cc
	.quad	2122106150              # 0x7e7cc526
	.quad	2122531200              # 0x7e834180
	.quad	2122956250              # 0x7e89bdda
	.quad	2123381300              # 0x7e903a34
	.quad	2123806350              # 0x7e96b68e
	.quad	2124231400              # 0x7e9d32e8
	.quad	2124656450              # 0x7ea3af42
	.quad	2125081500              # 0x7eaa2b9c
	.quad	2125506550              # 0x7eb0a7f6
	.quad	2125931600              # 0x7eb72450
	.quad	2126356650              # 0x7ebda0aa
	.quad	2126781700              # 0x7ec41d04
	.quad	2127206750              # 0x7eca995e
	.quad	2127631800              # 0x7ed115b8
	.quad	2128056850              # 0x7ed79212
	.quad	2128481900              # 0x7ede0e6c
	.quad	2128906950              # 0x7ee48ac6
	.quad	2129332000              # 0x7eeb0720
	.quad	2129757050              # 0x7ef1837a
	.quad	2130182100              # 0x7ef7ffd4
	.quad	2130607150              # 0x7efe7c2e
	.quad	2131032200              # 0x7f04f888
	.quad	2131457250              # 0x7f0b74e2
	.quad	2131882300              # 0x7f11f13c
	.quad	2132307350              # 0x7f186d96
	.quad	2132732400              # 0x7f1ee9f0
	.quad	2133157450              # 0x7f25664a
	.quad	2133582500              # 0x7f2be2a4
	.quad	2134007550              # 0x7f325efe
	.quad	2134432600              # 0x7f38db58
	.quad	2134857650              # 0x7f3f57b2
	.quad	2135282700              # 0x7f45d40c
	.quad	2135707750              # 0x7f4c5066
	.quad	2136132800              # 0x7f52ccc0
	.quad	2136557850              # 0x7f59491a
	.quad	2136982900              # 0x7f5fc574
	.quad	2137407950              # 0x7f6641ce
	.quad	2137833000              # 0x7f6cbe28
	.quad	2138258050              # 0x7f733a82
	.quad	2138683100              # 0x7f79b6dc
	.quad	2139108150              # 0x7f803336
	.quad	2139533200              # 0x7f86af90
	.quad	2139958250              # 0x7f8d2bea
	.quad	2140383300              # 0x7f93a844
	.quad	2140808350              # 0x7f9a249e
	.quad	2141233400              # 0x7fa0a0f8
	.quad	2141658450              # 0x7fa71d52
	.quad	2142083500              # 0x7fad99ac
	.quad	2142508550              # 0x7fb41606
	.quad	2142933600              # 0x7fba9260
	.quad	2143358650              # 0x7fc10eba
	.quad	2143783700              # 0x7fc78b14
	.quad	2144208750              # 0x7fce076e
	.quad	2144633800              # 0x7fd483c8
	.quad	2145058850              # 0x7fdb0022
	.quad	2145483900              # 0x7fe17c7c
	.quad	2145908950              # 0x7fe7f8d6
	.quad	2146334000              # 0x7fee7530
	.quad	2146759050              # 0x7ff4f18a
	.quad	2147184100              # 0x7ffb6de4
	.quad	-2147358146             # 0xffffffff8001ea3e
	.quad	-2146933096             # 0xffffffff80086698
	.quad	-2146508046             # 0xffffffff800ee2f2
	.quad	-2146082996             # 0xffffffff80155f4c
	.quad	-2145657946             # 0xffffffff801bdba6
	.quad	-2145232896             # 0xffffffff80225800
	.quad	-2144807846             # 0xffffffff8028d45a
	.quad	-2144382796             # 0xffffffff802f50b4
	.quad	-2143957746             # 0xffffffff8035cd0e
	.quad	-2143532696             # 0xffffffff803c4968
	.quad	-2143107646             # 0xffffffff8042c5c2
	.quad	-2142682596             # 0xffffffff8049421c
	.quad	-2142257546             # 0xffffffff804fbe76
	.quad	-2141832496             # 0xffffffff80563ad0
	.quad	-2141407446             # 0xffffffff805cb72a
	.quad	-2140982396             # 0xffffffff80633384
	.quad	-2140557346             # 0xffffffff8069afde
	.quad	-2140132296             # 0xffffffff80702c38
	.quad	-2132702246             # 0xffffffff80e18bda
	.quad	-2132267196             # 0xffffffff80e82f44
	.quad	-2131832146             # 0xffffffff80eed2ae
	.quad	-2131397096             # 0xffffffff80f57618
	.quad	-2130962046             # 0xffffffff80fc1982
	.quad	-2130526996             # 0xffffffff8102bcec
	.quad	-2130091946             # 0xffffffff81096056
	.quad	-2129656896             # 0xffffffff811003c0
	.quad	-2129221846             # 0xffffffff8116a72a
	.quad	-2128786796             # 0xffffffff811d4a94
	.quad	-2128351746             # 0xffffffff8123edfe
	.quad	-2127916696             # 0xffffffff812a9168
	.quad	-2127481646             # 0xffffffff813134d2
	.quad	-2127046596             # 0xffffffff8137d83c
	.quad	-2126611546             # 0xffffffff813e7ba6
	.quad	-2126176496             # 0xffffffff81451f10
	.quad	-2125741446             # 0xffffffff814bc27a
	.quad	-2125306396             # 0xffffffff815265e4
	.quad	-2124871346             # 0xffffffff8159094e
	.quad	-2124436296             # 0xffffffff815facb8
	.quad	-2124001246             # 0xffffffff81665022
	.quad	-2123566196             # 0xffffffff816cf38c
	.quad	-2123131146             # 0xffffffff817396f6
	.quad	-2122696096             # 0xffffffff817a3a60
	.quad	-2122261046             # 0xffffffff8180ddca
	.quad	-2121825996             # 0xffffffff81878134
	.quad	-2121390946             # 0xffffffff818e249e
	.quad	-2120955896             # 0xffffffff8194c808
	.quad	-2120520846             # 0xffffffff819b6b72
	.quad	-2120085796             # 0xffffffff81a20edc
	.quad	-2119650746             # 0xffffffff81a8b246
	.quad	-2119215696             # 0xffffffff81af55b0
	.quad	-2118780646             # 0xffffffff81b5f91a
	.quad	-2118345596             # 0xffffffff81bc9c84
	.quad	-2117910546             # 0xffffffff81c33fee
	.quad	-2117475496             # 0xffffffff81c9e358
	.quad	-2117040446             # 0xffffffff81d086c2
	.quad	-2116605396             # 0xffffffff81d72a2c
	.quad	-2116170346             # 0xffffffff81ddcd96
	.quad	-2115735296             # 0xffffffff81e47100
	.quad	-2115300246             # 0xffffffff81eb146a
	.quad	-2114865196             # 0xffffffff81f1b7d4
	.quad	-2114430146             # 0xffffffff81f85b3e
	.quad	-2113995096             # 0xffffffff81fefea8
	.quad	-2113560046             # 0xffffffff8205a212
	.quad	-2113124996             # 0xffffffff820c457c
	.quad	-2112689946             # 0xffffffff8212e8e6
	.quad	-2112254896             # 0xffffffff82198c50
	.quad	-2111819846             # 0xffffffff82202fba
	.quad	-2111384796             # 0xffffffff8226d324
	.quad	-2110949746             # 0xffffffff822d768e
	.quad	-2110514696             # 0xffffffff823419f8
	.quad	-2110079646             # 0xffffffff823abd62
	.quad	-2109644596             # 0xffffffff824160cc
	.quad	-2109209546             # 0xffffffff82480436
	.quad	-2108774496             # 0xffffffff824ea7a0
	.quad	-2108339446             # 0xffffffff82554b0a
	.quad	-2107904396             # 0xffffffff825bee74
	.quad	-2107469346             # 0xffffffff826291de
	.quad	-2107034296             # 0xffffffff82693548
	.quad	-2106599246             # 0xffffffff826fd8b2
	.quad	-2106164196             # 0xffffffff82767c1c
	.quad	-2105729146             # 0xffffffff827d1f86
	.quad	-2105294096             # 0xffffffff8283c2f0
	.quad	-2104859046             # 0xffffffff828a665a
	.quad	-2104423996             # 0xffffffff829109c4
	.quad	-2103988946             # 0xffffffff8297ad2e
	.quad	-2103553896             # 0xffffffff829e5098
	.quad	-2103118846             # 0xffffffff82a4f402
	.quad	-2102683796             # 0xffffffff82ab976c
	.quad	-2102248746             # 0xffffffff82b23ad6
	.quad	-2101813696             # 0xffffffff82b8de40
	.quad	-2101378646             # 0xffffffff82bf81aa
	.quad	-2100943596             # 0xffffffff82c62514
	.quad	-2100508546             # 0xffffffff82ccc87e
	.quad	-2100073496             # 0xffffffff82d36be8
	.quad	-2099638446             # 0xffffffff82da0f52
	.quad	-2099203396             # 0xffffffff82e0b2bc
	.quad	-2098768346             # 0xffffffff82e75626
	.quad	-2098333296             # 0xffffffff82edf990
	.quad	-2097898246             # 0xffffffff82f49cfa
	.quad	-2097463196             # 0xffffffff82fb4064
	.quad	-2097028146             # 0xffffffff8301e3ce
	.quad	-2096593096             # 0xffffffff83088738
	.quad	-2096158046             # 0xffffffff830f2aa2
	.quad	-2095722996             # 0xffffffff8315ce0c
	.quad	-2095287946             # 0xffffffff831c7176
	.quad	-2094852896             # 0xffffffff832314e0
	.quad	-2094417846             # 0xffffffff8329b84a
	.quad	-2093982796             # 0xffffffff83305bb4
	.quad	-2093547746             # 0xffffffff8336ff1e
	.quad	-2093112696             # 0xffffffff833da288
	.quad	-2092677646             # 0xffffffff834445f2
	.quad	-2092242596             # 0xffffffff834ae95c
	.quad	-2091807546             # 0xffffffff83518cc6
	.quad	-2091372496             # 0xffffffff83583030
	.quad	-2090937446             # 0xffffffff835ed39a
	.quad	-2090502396             # 0xffffffff83657704
	.quad	-2090067346             # 0xffffffff836c1a6e
	.quad	-2089632296             # 0xffffffff8372bdd8
	.quad	-2083192246             # 0xffffffff83d5024a
	.quad	-2082747196             # 0xffffffff83dbccc4
	.quad	-2082302146             # 0xffffffff83e2973e
	.quad	-2081857096             # 0xffffffff83e961b8
	.quad	-2081412046             # 0xffffffff83f02c32
	.quad	-2080966996             # 0xffffffff83f6f6ac
	.quad	-2080521946             # 0xffffffff83fdc126
	.quad	-2080076896             # 0xffffffff84048ba0
	.quad	-2079631846             # 0xffffffff840b561a
	.quad	-2079186796             # 0xffffffff84122094
	.quad	-2078741746             # 0xffffffff8418eb0e
	.quad	-2078296696             # 0xffffffff841fb588
	.quad	-2077851646             # 0xffffffff84268002
	.quad	-2077406596             # 0xffffffff842d4a7c
	.quad	-2076961546             # 0xffffffff843414f6
	.quad	-2076516496             # 0xffffffff843adf70
	.quad	-2076071446             # 0xffffffff8441a9ea
	.quad	-2075626396             # 0xffffffff84487464
	.quad	-2075181346             # 0xffffffff844f3ede
	.quad	-2074736296             # 0xffffffff84560958
	.quad	-2074291246             # 0xffffffff845cd3d2
	.quad	-2073846196             # 0xffffffff84639e4c
	.quad	-2073401146             # 0xffffffff846a68c6
	.quad	-2072956096             # 0xffffffff84713340
	.quad	-2072511046             # 0xffffffff8477fdba
	.quad	-2072065996             # 0xffffffff847ec834
	.quad	-2071620946             # 0xffffffff848592ae
	.quad	-2071175896             # 0xffffffff848c5d28
	.quad	-2070730846             # 0xffffffff849327a2
	.quad	-2070285796             # 0xffffffff8499f21c
	.quad	-2069840746             # 0xffffffff84a0bc96
	.quad	-2069395696             # 0xffffffff84a78710
	.quad	-2068950646             # 0xffffffff84ae518a
	.quad	-2068505596             # 0xffffffff84b51c04
	.quad	-2068060546             # 0xffffffff84bbe67e
	.quad	-2067615496             # 0xffffffff84c2b0f8
	.quad	-2067170446             # 0xffffffff84c97b72
	.quad	-2066725396             # 0xffffffff84d045ec
	.quad	-2066280346             # 0xffffffff84d71066
	.quad	-2065835296             # 0xffffffff84dddae0
	.quad	-2065390246             # 0xffffffff84e4a55a
	.quad	-2064945196             # 0xffffffff84eb6fd4
	.quad	-2064500146             # 0xffffffff84f23a4e
	.quad	-2064055096             # 0xffffffff84f904c8
	.quad	-2063610046             # 0xffffffff84ffcf42
	.quad	-2063164996             # 0xffffffff850699bc
	.quad	-2062719946             # 0xffffffff850d6436
	.quad	-2062274896             # 0xffffffff85142eb0
	.quad	-2061829846             # 0xffffffff851af92a
	.quad	-2061384796             # 0xffffffff8521c3a4
	.quad	-2060939746             # 0xffffffff85288e1e
	.quad	-2060494696             # 0xffffffff852f5898
	.quad	-2060049646             # 0xffffffff85362312
	.quad	-2059604596             # 0xffffffff853ced8c
	.quad	-2059159546             # 0xffffffff8543b806
	.quad	-2058714496             # 0xffffffff854a8280
	.quad	-2058269446             # 0xffffffff85514cfa
	.quad	-2057824396             # 0xffffffff85581774
	.quad	-2057379346             # 0xffffffff855ee1ee
	.quad	-2056934296             # 0xffffffff8565ac68
	.quad	-2056489246             # 0xffffffff856c76e2
	.quad	-2056044196             # 0xffffffff8573415c
	.quad	-2055599146             # 0xffffffff857a0bd6
	.quad	-2055154096             # 0xffffffff8580d650
	.quad	-2054709046             # 0xffffffff8587a0ca
	.quad	-2054263996             # 0xffffffff858e6b44
	.quad	-2053818946             # 0xffffffff859535be
	.quad	-2053373896             # 0xffffffff859c0038
	.quad	-2052928846             # 0xffffffff85a2cab2
	.quad	-2052483796             # 0xffffffff85a9952c
	.quad	-2052038746             # 0xffffffff85b05fa6
	.quad	-2051593696             # 0xffffffff85b72a20
	.quad	-2051148646             # 0xffffffff85bdf49a
	.quad	-2050703596             # 0xffffffff85c4bf14
	.quad	-2050258546             # 0xffffffff85cb898e
	.quad	-2049813496             # 0xffffffff85d25408
	.quad	-2049368446             # 0xffffffff85d91e82
	.quad	-2048923396             # 0xffffffff85dfe8fc
	.quad	-2048478346             # 0xffffffff85e6b376
	.quad	-2048033296             # 0xffffffff85ed7df0
	.quad	-2047588246             # 0xffffffff85f4486a
	.quad	-2047143196             # 0xffffffff85fb12e4
	.quad	-2046698146             # 0xffffffff8601dd5e
	.quad	-2046253096             # 0xffffffff8608a7d8
	.quad	-2045808046             # 0xffffffff860f7252
	.quad	-2045362996             # 0xffffffff86163ccc
	.quad	-2044917946             # 0xffffffff861d0746
	.quad	-2044472896             # 0xffffffff8623d1c0
	.quad	-2044027846             # 0xffffffff862a9c3a
	.quad	-2043582796             # 0xffffffff863166b4
	.quad	-2043137746             # 0xffffffff8638312e
	.quad	-2042692696             # 0xffffffff863efba8
	.quad	-2042247646             # 0xffffffff8645c622
	.quad	-2041802596             # 0xffffffff864c909c
	.quad	-2041357546             # 0xffffffff86535b16
	.quad	-2040912496             # 0xffffffff865a2590
	.quad	-2040467446             # 0xffffffff8660f00a
	.quad	-2040022396             # 0xffffffff8667ba84
	.quad	-2039577346             # 0xffffffff866e84fe
	.quad	-2039132296             # 0xffffffff86754f78
	.quad	-2033682246             # 0xffffffff86c878ba
	.quad	-2033227196             # 0xffffffff86cf6a44
	.quad	-2032772146             # 0xffffffff86d65bce
	.quad	-2032317096             # 0xffffffff86dd4d58
	.quad	-2031862046             # 0xffffffff86e43ee2
	.quad	-2031406996             # 0xffffffff86eb306c
	.quad	-2030951946             # 0xffffffff86f221f6
	.quad	-2030496896             # 0xffffffff86f91380
	.quad	-2030041846             # 0xffffffff8700050a
	.quad	-2029586796             # 0xffffffff8706f694
	.quad	-2029131746             # 0xffffffff870de81e
	.quad	-2028676696             # 0xffffffff8714d9a8
	.quad	-2028221646             # 0xffffffff871bcb32
	.quad	-2027766596             # 0xffffffff8722bcbc
	.quad	-2027311546             # 0xffffffff8729ae46
	.quad	-2026856496             # 0xffffffff87309fd0
	.quad	-2026401446             # 0xffffffff8737915a
	.quad	-2025946396             # 0xffffffff873e82e4
	.quad	-2025491346             # 0xffffffff8745746e
	.quad	-2025036296             # 0xffffffff874c65f8
	.quad	-2024581246             # 0xffffffff87535782
	.quad	-2024126196             # 0xffffffff875a490c
	.quad	-2023671146             # 0xffffffff87613a96
	.quad	-2023216096             # 0xffffffff87682c20
	.quad	-2022761046             # 0xffffffff876f1daa
	.quad	-2022305996             # 0xffffffff87760f34
	.quad	-2021850946             # 0xffffffff877d00be
	.quad	-2021395896             # 0xffffffff8783f248
	.quad	-2020940846             # 0xffffffff878ae3d2
	.quad	-2020485796             # 0xffffffff8791d55c
	.quad	-2020030746             # 0xffffffff8798c6e6
	.quad	-2019575696             # 0xffffffff879fb870
	.quad	-2019120646             # 0xffffffff87a6a9fa
	.quad	-2018665596             # 0xffffffff87ad9b84
	.quad	-2018210546             # 0xffffffff87b48d0e
	.quad	-2017755496             # 0xffffffff87bb7e98
	.quad	-2017300446             # 0xffffffff87c27022
	.quad	-2016845396             # 0xffffffff87c961ac
	.quad	-2016390346             # 0xffffffff87d05336
	.quad	-2015935296             # 0xffffffff87d744c0
	.quad	-2015480246             # 0xffffffff87de364a
	.quad	-2015025196             # 0xffffffff87e527d4
	.quad	-2014570146             # 0xffffffff87ec195e
	.quad	-2014115096             # 0xffffffff87f30ae8
	.quad	-2013660046             # 0xffffffff87f9fc72
	.quad	-2013204996             # 0xffffffff8800edfc
	.quad	-2012749946             # 0xffffffff8807df86
	.quad	-2012294896             # 0xffffffff880ed110
	.quad	-2011839846             # 0xffffffff8815c29a
	.quad	-2011384796             # 0xffffffff881cb424
	.quad	-2010929746             # 0xffffffff8823a5ae
	.quad	-2010474696             # 0xffffffff882a9738
	.quad	-2010019646             # 0xffffffff883188c2
	.quad	-2009564596             # 0xffffffff88387a4c
	.quad	-2009109546             # 0xffffffff883f6bd6
	.quad	-2008654496             # 0xffffffff88465d60
	.quad	-2008199446             # 0xffffffff884d4eea
	.quad	-2007744396             # 0xffffffff88544074
	.quad	-2007289346             # 0xffffffff885b31fe
	.quad	-2006834296             # 0xffffffff88622388
	.quad	-2006379246             # 0xffffffff88691512
	.quad	-2005924196             # 0xffffffff8870069c
	.quad	-2005469146             # 0xffffffff8876f826
	.quad	-2005014096             # 0xffffffff887de9b0
	.quad	-2004559046             # 0xffffffff8884db3a
	.quad	-2004103996             # 0xffffffff888bccc4
	.quad	-2003648946             # 0xffffffff8892be4e
	.quad	-2003193896             # 0xffffffff8899afd8
	.quad	-2002738846             # 0xffffffff88a0a162
	.quad	-2002283796             # 0xffffffff88a792ec
	.quad	-2001828746             # 0xffffffff88ae8476
	.quad	-2001373696             # 0xffffffff88b57600
	.quad	-2000918646             # 0xffffffff88bc678a
	.quad	-2000463596             # 0xffffffff88c35914
	.quad	-2000008546             # 0xffffffff88ca4a9e
	.quad	-1999553496             # 0xffffffff88d13c28
	.quad	-1999098446             # 0xffffffff88d82db2
	.quad	-1998643396             # 0xffffffff88df1f3c
	.quad	-1998188346             # 0xffffffff88e610c6
	.quad	-1997733296             # 0xffffffff88ed0250
	.quad	-1997278246             # 0xffffffff88f3f3da
	.quad	-1996823196             # 0xffffffff88fae564
	.quad	-1996368146             # 0xffffffff8901d6ee
	.quad	-1995913096             # 0xffffffff8908c878
	.quad	-1995458046             # 0xffffffff890fba02
	.quad	-1995002996             # 0xffffffff8916ab8c
	.quad	-1994547946             # 0xffffffff891d9d16
	.quad	-1994092896             # 0xffffffff89248ea0
	.quad	-1993637846             # 0xffffffff892b802a
	.quad	-1993182796             # 0xffffffff893271b4
	.quad	-1992727746             # 0xffffffff8939633e
	.quad	-1992272696             # 0xffffffff894054c8
	.quad	-1991817646             # 0xffffffff89474652
	.quad	-1991362596             # 0xffffffff894e37dc
	.quad	-1990907546             # 0xffffffff89552966
	.quad	-1990452496             # 0xffffffff895c1af0
	.quad	-1989997446             # 0xffffffff89630c7a
	.quad	-1989542396             # 0xffffffff8969fe04
	.quad	-1989087346             # 0xffffffff8970ef8e
	.quad	-1988632296             # 0xffffffff8977e118
	.quad	-1984172246             # 0xffffffff89bbef2a
	.quad	-1983707196             # 0xffffffff89c307c4
	.quad	-1983242146             # 0xffffffff89ca205e
	.quad	-1982777096             # 0xffffffff89d138f8
	.quad	-1982312046             # 0xffffffff89d85192
	.quad	-1981846996             # 0xffffffff89df6a2c
	.quad	-1981381946             # 0xffffffff89e682c6
	.quad	-1980916896             # 0xffffffff89ed9b60
	.quad	-1980451846             # 0xffffffff89f4b3fa
	.quad	-1979986796             # 0xffffffff89fbcc94
	.quad	-1979521746             # 0xffffffff8a02e52e
	.quad	-1979056696             # 0xffffffff8a09fdc8
	.quad	-1978591646             # 0xffffffff8a111662
	.quad	-1978126596             # 0xffffffff8a182efc
	.quad	-1977661546             # 0xffffffff8a1f4796
	.quad	-1977196496             # 0xffffffff8a266030
	.quad	-1976731446             # 0xffffffff8a2d78ca
	.quad	-1976266396             # 0xffffffff8a349164
	.quad	-1975801346             # 0xffffffff8a3ba9fe
	.quad	-1975336296             # 0xffffffff8a42c298
	.quad	-1974871246             # 0xffffffff8a49db32
	.quad	-1974406196             # 0xffffffff8a50f3cc
	.quad	-1973941146             # 0xffffffff8a580c66
	.quad	-1973476096             # 0xffffffff8a5f2500
	.quad	-1973011046             # 0xffffffff8a663d9a
	.quad	-1972545996             # 0xffffffff8a6d5634
	.quad	-1972080946             # 0xffffffff8a746ece
	.quad	-1971615896             # 0xffffffff8a7b8768
	.quad	-1971150846             # 0xffffffff8a82a002
	.quad	-1970685796             # 0xffffffff8a89b89c
	.quad	-1970220746             # 0xffffffff8a90d136
	.quad	-1969755696             # 0xffffffff8a97e9d0
	.quad	-1969290646             # 0xffffffff8a9f026a
	.quad	-1968825596             # 0xffffffff8aa61b04
	.quad	-1968360546             # 0xffffffff8aad339e
	.quad	-1967895496             # 0xffffffff8ab44c38
	.quad	-1967430446             # 0xffffffff8abb64d2
	.quad	-1966965396             # 0xffffffff8ac27d6c
	.quad	-1966500346             # 0xffffffff8ac99606
	.quad	-1966035296             # 0xffffffff8ad0aea0
	.quad	-1965570246             # 0xffffffff8ad7c73a
	.quad	-1965105196             # 0xffffffff8adedfd4
	.quad	-1964640146             # 0xffffffff8ae5f86e
	.quad	-1964175096             # 0xffffffff8aed1108
	.quad	-1963710046             # 0xffffffff8af429a2
	.quad	-1963244996             # 0xffffffff8afb423c
	.quad	-1962779946             # 0xffffffff8b025ad6
	.quad	-1962314896             # 0xffffffff8b097370
	.quad	-1961849846             # 0xffffffff8b108c0a
	.quad	-1961384796             # 0xffffffff8b17a4a4
	.quad	-1960919746             # 0xffffffff8b1ebd3e
	.quad	-1960454696             # 0xffffffff8b25d5d8
	.quad	-1959989646             # 0xffffffff8b2cee72
	.quad	-1959524596             # 0xffffffff8b34070c
	.quad	-1959059546             # 0xffffffff8b3b1fa6
	.quad	-1958594496             # 0xffffffff8b423840
	.quad	-1958129446             # 0xffffffff8b4950da
	.quad	-1957664396             # 0xffffffff8b506974
	.quad	-1957199346             # 0xffffffff8b57820e
	.quad	-1956734296             # 0xffffffff8b5e9aa8
	.quad	-1956269246             # 0xffffffff8b65b342
	.quad	-1955804196             # 0xffffffff8b6ccbdc
	.quad	-1955339146             # 0xffffffff8b73e476
	.quad	-1954874096             # 0xffffffff8b7afd10
	.quad	-1954409046             # 0xffffffff8b8215aa
	.quad	-1953943996             # 0xffffffff8b892e44
	.quad	-1953478946             # 0xffffffff8b9046de
	.quad	-1953013896             # 0xffffffff8b975f78
	.quad	-1952548846             # 0xffffffff8b9e7812
	.quad	-1952083796             # 0xffffffff8ba590ac
	.quad	-1951618746             # 0xffffffff8baca946
	.quad	-1951153696             # 0xffffffff8bb3c1e0
	.quad	-1950688646             # 0xffffffff8bbada7a
	.quad	-1950223596             # 0xffffffff8bc1f314
	.quad	-1949758546             # 0xffffffff8bc90bae
	.quad	-1949293496             # 0xffffffff8bd02448
	.quad	-1948828446             # 0xffffffff8bd73ce2
	.quad	-1948363396             # 0xffffffff8bde557c
	.quad	-1947898346             # 0xffffffff8be56e16
	.quad	-1947433296             # 0xffffffff8bec86b0
	.quad	-1946968246             # 0xffffffff8bf39f4a
	.quad	-1946503196             # 0xffffffff8bfab7e4
	.quad	-1946038146             # 0xffffffff8c01d07e
	.quad	-1945573096             # 0xffffffff8c08e918
	.quad	-1945108046             # 0xffffffff8c1001b2
	.quad	-1944642996             # 0xffffffff8c171a4c
	.quad	-1944177946             # 0xffffffff8c1e32e6
	.quad	-1943712896             # 0xffffffff8c254b80
	.quad	-1943247846             # 0xffffffff8c2c641a
	.quad	-1942782796             # 0xffffffff8c337cb4
	.quad	-1942317746             # 0xffffffff8c3a954e
	.quad	-1941852696             # 0xffffffff8c41ade8
	.quad	-1941387646             # 0xffffffff8c48c682
	.quad	-1940922596             # 0xffffffff8c4fdf1c
	.quad	-1940457546             # 0xffffffff8c56f7b6
	.quad	-1939992496             # 0xffffffff8c5e1050
	.quad	-1939527446             # 0xffffffff8c6528ea
	.quad	-1939062396             # 0xffffffff8c6c4184
	.quad	-1938597346             # 0xffffffff8c735a1e
	.quad	-1938132296             # 0xffffffff8c7a72b8
	.quad	-1934662246             # 0xffffffff8caf659a
	.quad	-1934187196             # 0xffffffff8cb6a544
	.quad	-1933712146             # 0xffffffff8cbde4ee
	.quad	-1933237096             # 0xffffffff8cc52498
	.quad	-1932762046             # 0xffffffff8ccc6442
	.quad	-1932286996             # 0xffffffff8cd3a3ec
	.quad	-1931811946             # 0xffffffff8cdae396
	.quad	-1931336896             # 0xffffffff8ce22340
	.quad	-1930861846             # 0xffffffff8ce962ea
	.quad	-1930386796             # 0xffffffff8cf0a294
	.quad	-1929911746             # 0xffffffff8cf7e23e
	.quad	-1929436696             # 0xffffffff8cff21e8
	.quad	-1928961646             # 0xffffffff8d066192
	.quad	-1928486596             # 0xffffffff8d0da13c
	.quad	-1928011546             # 0xffffffff8d14e0e6
	.quad	-1927536496             # 0xffffffff8d1c2090
	.quad	-1927061446             # 0xffffffff8d23603a
	.quad	-1926586396             # 0xffffffff8d2a9fe4
	.quad	-1926111346             # 0xffffffff8d31df8e
	.quad	-1925636296             # 0xffffffff8d391f38
	.quad	-1925161246             # 0xffffffff8d405ee2
	.quad	-1924686196             # 0xffffffff8d479e8c
	.quad	-1924211146             # 0xffffffff8d4ede36
	.quad	-1923736096             # 0xffffffff8d561de0
	.quad	-1923261046             # 0xffffffff8d5d5d8a
	.quad	-1922785996             # 0xffffffff8d649d34
	.quad	-1922310946             # 0xffffffff8d6bdcde
	.quad	-1921835896             # 0xffffffff8d731c88
	.quad	-1921360846             # 0xffffffff8d7a5c32
	.quad	-1920885796             # 0xffffffff8d819bdc
	.quad	-1920410746             # 0xffffffff8d88db86
	.quad	-1919935696             # 0xffffffff8d901b30
	.quad	-1919460646             # 0xffffffff8d975ada
	.quad	-1918985596             # 0xffffffff8d9e9a84
	.quad	-1918510546             # 0xffffffff8da5da2e
	.quad	-1918035496             # 0xffffffff8dad19d8
	.quad	-1917560446             # 0xffffffff8db45982
	.quad	-1917085396             # 0xffffffff8dbb992c
	.quad	-1916610346             # 0xffffffff8dc2d8d6
	.quad	-1916135296             # 0xffffffff8dca1880
	.quad	-1915660246             # 0xffffffff8dd1582a
	.quad	-1915185196             # 0xffffffff8dd897d4
	.quad	-1914710146             # 0xffffffff8ddfd77e
	.quad	-1914235096             # 0xffffffff8de71728
	.quad	-1913760046             # 0xffffffff8dee56d2
	.quad	-1913284996             # 0xffffffff8df5967c
	.quad	-1912809946             # 0xffffffff8dfcd626
	.quad	-1912334896             # 0xffffffff8e0415d0
	.quad	-1911859846             # 0xffffffff8e0b557a
	.quad	-1911384796             # 0xffffffff8e129524
	.quad	-1910909746             # 0xffffffff8e19d4ce
	.quad	-1910434696             # 0xffffffff8e211478
	.quad	-1909959646             # 0xffffffff8e285422
	.quad	-1909484596             # 0xffffffff8e2f93cc
	.quad	-1909009546             # 0xffffffff8e36d376
	.quad	-1908534496             # 0xffffffff8e3e1320
	.quad	-1908059446             # 0xffffffff8e4552ca
	.quad	-1907584396             # 0xffffffff8e4c9274
	.quad	-1907109346             # 0xffffffff8e53d21e
	.quad	-1906634296             # 0xffffffff8e5b11c8
	.quad	-1906159246             # 0xffffffff8e625172
	.quad	-1905684196             # 0xffffffff8e69911c
	.quad	-1905209146             # 0xffffffff8e70d0c6
	.quad	-1904734096             # 0xffffffff8e781070
	.quad	-1904259046             # 0xffffffff8e7f501a
	.quad	-1903783996             # 0xffffffff8e868fc4
	.quad	-1903308946             # 0xffffffff8e8dcf6e
	.quad	-1902833896             # 0xffffffff8e950f18
	.quad	-1902358846             # 0xffffffff8e9c4ec2
	.quad	-1901883796             # 0xffffffff8ea38e6c
	.quad	-1901408746             # 0xffffffff8eaace16
	.quad	-1900933696             # 0xffffffff8eb20dc0
	.quad	-1900458646             # 0xffffffff8eb94d6a
	.quad	-1899983596             # 0xffffffff8ec08d14
	.quad	-1899508546             # 0xffffffff8ec7ccbe
	.quad	-1899033496             # 0xffffffff8ecf0c68
	.quad	-1898558446             # 0xffffffff8ed64c12
	.quad	-1898083396             # 0xffffffff8edd8bbc
	.quad	-1897608346             # 0xffffffff8ee4cb66
	.quad	-1897133296             # 0xffffffff8eec0b10
	.quad	-1896658246             # 0xffffffff8ef34aba
	.quad	-1896183196             # 0xffffffff8efa8a64
	.quad	-1895708146             # 0xffffffff8f01ca0e
	.quad	-1895233096             # 0xffffffff8f0909b8
	.quad	-1894758046             # 0xffffffff8f104962
	.quad	-1894282996             # 0xffffffff8f17890c
	.quad	-1893807946             # 0xffffffff8f1ec8b6
	.quad	-1893332896             # 0xffffffff8f260860
	.quad	-1892857846             # 0xffffffff8f2d480a
	.quad	-1892382796             # 0xffffffff8f3487b4
	.quad	-1891907746             # 0xffffffff8f3bc75e
	.quad	-1891432696             # 0xffffffff8f430708
	.quad	-1890957646             # 0xffffffff8f4a46b2
	.quad	-1890482596             # 0xffffffff8f51865c
	.quad	-1890007546             # 0xffffffff8f58c606
	.quad	-1889532496             # 0xffffffff8f6005b0
	.quad	-1889057446             # 0xffffffff8f67455a
	.quad	-1888582396             # 0xffffffff8f6e8504
	.quad	-1888107346             # 0xffffffff8f75c4ae
	.quad	-1887632296             # 0xffffffff8f7d0458
	.quad	-1885152246             # 0xffffffff8fa2dc0a
	.quad	-1884667196             # 0xffffffff8faa42c4
	.quad	-1884182146             # 0xffffffff8fb1a97e
	.quad	-1883697096             # 0xffffffff8fb91038
	.quad	-1883212046             # 0xffffffff8fc076f2
	.quad	-1882726996             # 0xffffffff8fc7ddac
	.quad	-1882241946             # 0xffffffff8fcf4466
	.quad	-1881756896             # 0xffffffff8fd6ab20
	.quad	-1881271846             # 0xffffffff8fde11da
	.quad	-1880786796             # 0xffffffff8fe57894
	.quad	-1880301746             # 0xffffffff8fecdf4e
	.quad	-1879816696             # 0xffffffff8ff44608
	.quad	-1879331646             # 0xffffffff8ffbacc2
	.quad	-1878846596             # 0xffffffff9003137c
	.quad	-1878361546             # 0xffffffff900a7a36
	.quad	-1877876496             # 0xffffffff9011e0f0
	.quad	-1877391446             # 0xffffffff901947aa
	.quad	-1876906396             # 0xffffffff9020ae64
	.quad	-1876421346             # 0xffffffff9028151e
	.quad	-1875936296             # 0xffffffff902f7bd8
	.quad	-1875451246             # 0xffffffff9036e292
	.quad	-1874966196             # 0xffffffff903e494c
	.quad	-1874481146             # 0xffffffff9045b006
	.quad	-1873996096             # 0xffffffff904d16c0
	.quad	-1873511046             # 0xffffffff90547d7a
	.quad	-1873025996             # 0xffffffff905be434
	.quad	-1872540946             # 0xffffffff90634aee
	.quad	-1872055896             # 0xffffffff906ab1a8
	.quad	-1871570846             # 0xffffffff90721862
	.quad	-1871085796             # 0xffffffff90797f1c
	.quad	-1870600746             # 0xffffffff9080e5d6
	.quad	-1870115696             # 0xffffffff90884c90
	.quad	-1869630646             # 0xffffffff908fb34a
	.quad	-1869145596             # 0xffffffff90971a04
	.quad	-1868660546             # 0xffffffff909e80be
	.quad	-1868175496             # 0xffffffff90a5e778
	.quad	-1867690446             # 0xffffffff90ad4e32
	.quad	-1867205396             # 0xffffffff90b4b4ec
	.quad	-1866720346             # 0xffffffff90bc1ba6
	.quad	-1866235296             # 0xffffffff90c38260
	.quad	-1865750246             # 0xffffffff90cae91a
	.quad	-1865265196             # 0xffffffff90d24fd4
	.quad	-1864780146             # 0xffffffff90d9b68e
	.quad	-1864295096             # 0xffffffff90e11d48
	.quad	-1863810046             # 0xffffffff90e88402
	.quad	-1863324996             # 0xffffffff90efeabc
	.quad	-1862839946             # 0xffffffff90f75176
	.quad	-1862354896             # 0xffffffff90feb830
	.quad	-1861869846             # 0xffffffff91061eea
	.quad	-1861384796             # 0xffffffff910d85a4
	.quad	-1860899746             # 0xffffffff9114ec5e
	.quad	-1860414696             # 0xffffffff911c5318
	.quad	-1859929646             # 0xffffffff9123b9d2
	.quad	-1859444596             # 0xffffffff912b208c
	.quad	-1858959546             # 0xffffffff91328746
	.quad	-1858474496             # 0xffffffff9139ee00
	.quad	-1857989446             # 0xffffffff914154ba
	.quad	-1857504396             # 0xffffffff9148bb74
	.quad	-1857019346             # 0xffffffff9150222e
	.quad	-1856534296             # 0xffffffff915788e8
	.quad	-1856049246             # 0xffffffff915eefa2
	.quad	-1855564196             # 0xffffffff9166565c
	.quad	-1855079146             # 0xffffffff916dbd16
	.quad	-1854594096             # 0xffffffff917523d0
	.quad	-1854109046             # 0xffffffff917c8a8a
	.quad	-1853623996             # 0xffffffff9183f144
	.quad	-1853138946             # 0xffffffff918b57fe
	.quad	-1852653896             # 0xffffffff9192beb8
	.quad	-1852168846             # 0xffffffff919a2572
	.quad	-1851683796             # 0xffffffff91a18c2c
	.quad	-1851198746             # 0xffffffff91a8f2e6
	.quad	-1850713696             # 0xffffffff91b059a0
	.quad	-1850228646             # 0xffffffff91b7c05a
	.quad	-1849743596             # 0xffffffff91bf2714
	.quad	-1849258546             # 0xffffffff91c68dce
	.quad	-1848773496             # 0xffffffff91cdf488
	.quad	-1848288446             # 0xffffffff91d55b42
	.quad	-1847803396             # 0xffffffff91dcc1fc
	.quad	-1847318346             # 0xffffffff91e428b6
	.quad	-1846833296             # 0xffffffff91eb8f70
	.quad	-1846348246             # 0xffffffff91f2f62a
	.quad	-1845863196             # 0xffffffff91fa5ce4
	.quad	-1845378146             # 0xffffffff9201c39e
	.quad	-1844893096             # 0xffffffff92092a58
	.quad	-1844408046             # 0xffffffff92109112
	.quad	-1843922996             # 0xffffffff9217f7cc
	.quad	-1843437946             # 0xffffffff921f5e86
	.quad	-1842952896             # 0xffffffff9226c540
	.quad	-1842467846             # 0xffffffff922e2bfa
	.quad	-1841982796             # 0xffffffff923592b4
	.quad	-1841497746             # 0xffffffff923cf96e
	.quad	-1841012696             # 0xffffffff92446028
	.quad	-1840527646             # 0xffffffff924bc6e2
	.quad	-1840042596             # 0xffffffff92532d9c
	.quad	-1839557546             # 0xffffffff925a9456
	.quad	-1839072496             # 0xffffffff9261fb10
	.quad	-1838587446             # 0xffffffff926961ca
	.quad	-1838102396             # 0xffffffff9270c884
	.quad	-1837617346             # 0xffffffff92782f3e
	.quad	-1837132296             # 0xffffffff927f95f8
	.quad	-1835642246             # 0xffffffff9296527a
	.quad	-1835147196             # 0xffffffff929de044
	.quad	-1834652146             # 0xffffffff92a56e0e
	.quad	-1834157096             # 0xffffffff92acfbd8
	.quad	-1833662046             # 0xffffffff92b489a2
	.quad	-1833166996             # 0xffffffff92bc176c
	.quad	-1832671946             # 0xffffffff92c3a536
	.quad	-1832176896             # 0xffffffff92cb3300
	.quad	-1831681846             # 0xffffffff92d2c0ca
	.quad	-1831186796             # 0xffffffff92da4e94
	.quad	-1830691746             # 0xffffffff92e1dc5e
	.quad	-1830196696             # 0xffffffff92e96a28
	.quad	-1829701646             # 0xffffffff92f0f7f2
	.quad	-1829206596             # 0xffffffff92f885bc
	.quad	-1828711546             # 0xffffffff93001386
	.quad	-1828216496             # 0xffffffff9307a150
	.quad	-1827721446             # 0xffffffff930f2f1a
	.quad	-1827226396             # 0xffffffff9316bce4
	.quad	-1826731346             # 0xffffffff931e4aae
	.quad	-1826236296             # 0xffffffff9325d878
	.quad	-1825741246             # 0xffffffff932d6642
	.quad	-1825246196             # 0xffffffff9334f40c
	.quad	-1824751146             # 0xffffffff933c81d6
	.quad	-1824256096             # 0xffffffff93440fa0
	.quad	-1823761046             # 0xffffffff934b9d6a
	.quad	-1823265996             # 0xffffffff93532b34
	.quad	-1822770946             # 0xffffffff935ab8fe
	.quad	-1822275896             # 0xffffffff936246c8
	.quad	-1821780846             # 0xffffffff9369d492
	.quad	-1821285796             # 0xffffffff9371625c
	.quad	-1820790746             # 0xffffffff9378f026
	.quad	-1820295696             # 0xffffffff93807df0
	.quad	-1819800646             # 0xffffffff93880bba
	.quad	-1819305596             # 0xffffffff938f9984
	.quad	-1818810546             # 0xffffffff9397274e
	.quad	-1818315496             # 0xffffffff939eb518
	.quad	-1817820446             # 0xffffffff93a642e2
	.quad	-1817325396             # 0xffffffff93add0ac
	.quad	-1816830346             # 0xffffffff93b55e76
	.quad	-1816335296             # 0xffffffff93bcec40
	.quad	-1815840246             # 0xffffffff93c47a0a
	.quad	-1815345196             # 0xffffffff93cc07d4
	.quad	-1814850146             # 0xffffffff93d3959e
	.quad	-1814355096             # 0xffffffff93db2368
	.quad	-1813860046             # 0xffffffff93e2b132
	.quad	-1813364996             # 0xffffffff93ea3efc
	.quad	-1812869946             # 0xffffffff93f1ccc6
	.quad	-1812374896             # 0xffffffff93f95a90
	.quad	-1811879846             # 0xffffffff9400e85a
	.quad	-1811384796             # 0xffffffff94087624
	.quad	-1810889746             # 0xffffffff941003ee
	.quad	-1810394696             # 0xffffffff941791b8
	.quad	-1809899646             # 0xffffffff941f1f82
	.quad	-1809404596             # 0xffffffff9426ad4c
	.quad	-1808909546             # 0xffffffff942e3b16
	.quad	-1808414496             # 0xffffffff9435c8e0
	.quad	-1807919446             # 0xffffffff943d56aa
	.quad	-1807424396             # 0xffffffff9444e474
	.quad	-1806929346             # 0xffffffff944c723e
	.quad	-1806434296             # 0xffffffff94540008
	.quad	-1805939246             # 0xffffffff945b8dd2
	.quad	-1805444196             # 0xffffffff94631b9c
	.quad	-1804949146             # 0xffffffff946aa966
	.quad	-1804454096             # 0xffffffff94723730
	.quad	-1803959046             # 0xffffffff9479c4fa
	.quad	-1803463996             # 0xffffffff948152c4
	.quad	-1802968946             # 0xffffffff9488e08e
	.quad	-1802473896             # 0xffffffff94906e58
	.quad	-1801978846             # 0xffffffff9497fc22
	.quad	-1801483796             # 0xffffffff949f89ec
	.quad	-1800988746             # 0xffffffff94a717b6
	.quad	-1800493696             # 0xffffffff94aea580
	.quad	-1799998646             # 0xffffffff94b6334a
	.quad	-1799503596             # 0xffffffff94bdc114
	.quad	-1799008546             # 0xffffffff94c54ede
	.quad	-1798513496             # 0xffffffff94ccdca8
	.quad	-1798018446             # 0xffffffff94d46a72
	.quad	-1797523396             # 0xffffffff94dbf83c
	.quad	-1797028346             # 0xffffffff94e38606
	.quad	-1796533296             # 0xffffffff94eb13d0
	.quad	-1796038246             # 0xffffffff94f2a19a
	.quad	-1795543196             # 0xffffffff94fa2f64
	.quad	-1795048146             # 0xffffffff9501bd2e
	.quad	-1794553096             # 0xffffffff95094af8
	.quad	-1794058046             # 0xffffffff9510d8c2
	.quad	-1793562996             # 0xffffffff9518668c
	.quad	-1793067946             # 0xffffffff951ff456
	.quad	-1792572896             # 0xffffffff95278220
	.quad	-1792077846             # 0xffffffff952f0fea
	.quad	-1791582796             # 0xffffffff95369db4
	.quad	-1791087746             # 0xffffffff953e2b7e
	.quad	-1790592696             # 0xffffffff9545b948
	.quad	-1790097646             # 0xffffffff954d4712
	.quad	-1789602596             # 0xffffffff9554d4dc
	.quad	-1789107546             # 0xffffffff955c62a6
	.quad	-1788612496             # 0xffffffff9563f070
	.quad	-1788117446             # 0xffffffff956b7e3a
	.quad	-1787622396             # 0xffffffff95730c04
	.quad	-1787127346             # 0xffffffff957a99ce
	.quad	-1786632296             # 0xffffffff95822798
	.quad	-1786132246             # 0xffffffff9589c8ea
	.quad	-1785627196             # 0xffffffff95917dc4
	.quad	-1785122146             # 0xffffffff9599329e
	.quad	-1784617096             # 0xffffffff95a0e778
	.quad	-1784112046             # 0xffffffff95a89c52
	.quad	-1783606996             # 0xffffffff95b0512c
	.quad	-1783101946             # 0xffffffff95b80606
	.quad	-1782596896             # 0xffffffff95bfbae0
	.quad	-1782091846             # 0xffffffff95c76fba
	.quad	-1781586796             # 0xffffffff95cf2494
	.quad	-1781081746             # 0xffffffff95d6d96e
	.quad	-1780576696             # 0xffffffff95de8e48
	.quad	-1780071646             # 0xffffffff95e64322
	.quad	-1779566596             # 0xffffffff95edf7fc
	.quad	-1779061546             # 0xffffffff95f5acd6
	.quad	-1778556496             # 0xffffffff95fd61b0
	.quad	-1778051446             # 0xffffffff9605168a
	.quad	-1777546396             # 0xffffffff960ccb64
	.quad	-1777041346             # 0xffffffff9614803e
	.quad	-1776536296             # 0xffffffff961c3518
	.quad	-1776031246             # 0xffffffff9623e9f2
	.quad	-1775526196             # 0xffffffff962b9ecc
	.quad	-1775021146             # 0xffffffff963353a6
	.quad	-1774516096             # 0xffffffff963b0880
	.quad	-1774011046             # 0xffffffff9642bd5a
	.quad	-1773505996             # 0xffffffff964a7234
	.quad	-1773000946             # 0xffffffff9652270e
	.quad	-1772495896             # 0xffffffff9659dbe8
	.quad	-1771990846             # 0xffffffff966190c2
	.quad	-1771485796             # 0xffffffff9669459c
	.quad	-1770980746             # 0xffffffff9670fa76
	.quad	-1770475696             # 0xffffffff9678af50
	.quad	-1769970646             # 0xffffffff9680642a
	.quad	-1769465596             # 0xffffffff96881904
	.quad	-1768960546             # 0xffffffff968fcdde
	.quad	-1768455496             # 0xffffffff969782b8
	.quad	-1767950446             # 0xffffffff969f3792
	.quad	-1767445396             # 0xffffffff96a6ec6c
	.quad	-1766940346             # 0xffffffff96aea146
	.quad	-1766435296             # 0xffffffff96b65620
	.quad	-1765930246             # 0xffffffff96be0afa
	.quad	-1765425196             # 0xffffffff96c5bfd4
	.quad	-1764920146             # 0xffffffff96cd74ae
	.quad	-1764415096             # 0xffffffff96d52988
	.quad	-1763910046             # 0xffffffff96dcde62
	.quad	-1763404996             # 0xffffffff96e4933c
	.quad	-1762899946             # 0xffffffff96ec4816
	.quad	-1762394896             # 0xffffffff96f3fcf0
	.quad	-1761889846             # 0xffffffff96fbb1ca
	.quad	-1761384796             # 0xffffffff970366a4
	.quad	-1760879746             # 0xffffffff970b1b7e
	.quad	-1760374696             # 0xffffffff9712d058
	.quad	-1759869646             # 0xffffffff971a8532
	.quad	-1759364596             # 0xffffffff97223a0c
	.quad	-1758859546             # 0xffffffff9729eee6
	.quad	-1758354496             # 0xffffffff9731a3c0
	.quad	-1757849446             # 0xffffffff9739589a
	.quad	-1757344396             # 0xffffffff97410d74
	.quad	-1756839346             # 0xffffffff9748c24e
	.quad	-1756334296             # 0xffffffff97507728
	.quad	-1755829246             # 0xffffffff97582c02
	.quad	-1755324196             # 0xffffffff975fe0dc
	.quad	-1754819146             # 0xffffffff976795b6
	.quad	-1754314096             # 0xffffffff976f4a90
	.quad	-1753809046             # 0xffffffff9776ff6a
	.quad	-1753303996             # 0xffffffff977eb444
	.quad	-1752798946             # 0xffffffff9786691e
	.quad	-1752293896             # 0xffffffff978e1df8
	.quad	-1751788846             # 0xffffffff9795d2d2
	.quad	-1751283796             # 0xffffffff979d87ac
	.quad	-1750778746             # 0xffffffff97a53c86
	.quad	-1750273696             # 0xffffffff97acf160
	.quad	-1749768646             # 0xffffffff97b4a63a
	.quad	-1749263596             # 0xffffffff97bc5b14
	.quad	-1748758546             # 0xffffffff97c40fee
	.quad	-1748253496             # 0xffffffff97cbc4c8
	.quad	-1747748446             # 0xffffffff97d379a2
	.quad	-1747243396             # 0xffffffff97db2e7c
	.quad	-1746738346             # 0xffffffff97e2e356
	.quad	-1746233296             # 0xffffffff97ea9830
	.quad	-1745728246             # 0xffffffff97f24d0a
	.quad	-1745223196             # 0xffffffff97fa01e4
	.quad	-1744718146             # 0xffffffff9801b6be
	.quad	-1744213096             # 0xffffffff98096b98
	.quad	-1743708046             # 0xffffffff98112072
	.quad	-1743202996             # 0xffffffff9818d54c
	.quad	-1742697946             # 0xffffffff98208a26
	.quad	-1742192896             # 0xffffffff98283f00
	.quad	-1741687846             # 0xffffffff982ff3da
	.quad	-1741182796             # 0xffffffff9837a8b4
	.quad	-1740677746             # 0xffffffff983f5d8e
	.quad	-1740172696             # 0xffffffff98471268
	.quad	-1739667646             # 0xffffffff984ec742
	.quad	-1739162596             # 0xffffffff98567c1c
	.quad	-1738657546             # 0xffffffff985e30f6
	.quad	-1738152496             # 0xffffffff9865e5d0
	.quad	-1737647446             # 0xffffffff986d9aaa
	.quad	-1737142396             # 0xffffffff98754f84
	.quad	-1736637346             # 0xffffffff987d045e
	.quad	-1736132296             # 0xffffffff9884b938
	.quad	-1736622246             # 0xffffffff987d3f5a
	.quad	-1736107196             # 0xffffffff98851b44
	.quad	-1735592146             # 0xffffffff988cf72e
	.quad	-1735077096             # 0xffffffff9894d318
	.quad	-1734562046             # 0xffffffff989caf02
	.quad	-1734046996             # 0xffffffff98a48aec
	.quad	-1733531946             # 0xffffffff98ac66d6
	.quad	-1733016896             # 0xffffffff98b442c0
	.quad	-1732501846             # 0xffffffff98bc1eaa
	.quad	-1731986796             # 0xffffffff98c3fa94
	.quad	-1731471746             # 0xffffffff98cbd67e
	.quad	-1730956696             # 0xffffffff98d3b268
	.quad	-1730441646             # 0xffffffff98db8e52
	.quad	-1729926596             # 0xffffffff98e36a3c
	.quad	-1729411546             # 0xffffffff98eb4626
	.quad	-1728896496             # 0xffffffff98f32210
	.quad	-1728381446             # 0xffffffff98fafdfa
	.quad	-1727866396             # 0xffffffff9902d9e4
	.quad	-1727351346             # 0xffffffff990ab5ce
	.quad	-1726836296             # 0xffffffff991291b8
	.quad	-1726321246             # 0xffffffff991a6da2
	.quad	-1725806196             # 0xffffffff9922498c
	.quad	-1725291146             # 0xffffffff992a2576
	.quad	-1724776096             # 0xffffffff99320160
	.quad	-1724261046             # 0xffffffff9939dd4a
	.quad	-1723745996             # 0xffffffff9941b934
	.quad	-1723230946             # 0xffffffff9949951e
	.quad	-1722715896             # 0xffffffff99517108
	.quad	-1722200846             # 0xffffffff99594cf2
	.quad	-1721685796             # 0xffffffff996128dc
	.quad	-1721170746             # 0xffffffff996904c6
	.quad	-1720655696             # 0xffffffff9970e0b0
	.quad	-1720140646             # 0xffffffff9978bc9a
	.quad	-1719625596             # 0xffffffff99809884
	.quad	-1719110546             # 0xffffffff9988746e
	.quad	-1718595496             # 0xffffffff99905058
	.quad	-1718080446             # 0xffffffff99982c42
	.quad	-1717565396             # 0xffffffff99a0082c
	.quad	-1717050346             # 0xffffffff99a7e416
	.quad	-1716535296             # 0xffffffff99afc000
	.quad	-1716020246             # 0xffffffff99b79bea
	.quad	-1715505196             # 0xffffffff99bf77d4
	.quad	-1714990146             # 0xffffffff99c753be
	.quad	-1714475096             # 0xffffffff99cf2fa8
	.quad	-1713960046             # 0xffffffff99d70b92
	.quad	-1713444996             # 0xffffffff99dee77c
	.quad	-1712929946             # 0xffffffff99e6c366
	.quad	-1712414896             # 0xffffffff99ee9f50
	.quad	-1711899846             # 0xffffffff99f67b3a
	.quad	-1711384796             # 0xffffffff99fe5724
	.quad	-1710869746             # 0xffffffff9a06330e
	.quad	-1710354696             # 0xffffffff9a0e0ef8
	.quad	-1709839646             # 0xffffffff9a15eae2
	.quad	-1709324596             # 0xffffffff9a1dc6cc
	.quad	-1708809546             # 0xffffffff9a25a2b6
	.quad	-1708294496             # 0xffffffff9a2d7ea0
	.quad	-1707779446             # 0xffffffff9a355a8a
	.quad	-1707264396             # 0xffffffff9a3d3674
	.quad	-1706749346             # 0xffffffff9a45125e
	.quad	-1706234296             # 0xffffffff9a4cee48
	.quad	-1705719246             # 0xffffffff9a54ca32
	.quad	-1705204196             # 0xffffffff9a5ca61c
	.quad	-1704689146             # 0xffffffff9a648206
	.quad	-1704174096             # 0xffffffff9a6c5df0
	.quad	-1703659046             # 0xffffffff9a7439da
	.quad	-1703143996             # 0xffffffff9a7c15c4
	.quad	-1702628946             # 0xffffffff9a83f1ae
	.quad	-1702113896             # 0xffffffff9a8bcd98
	.quad	-1701598846             # 0xffffffff9a93a982
	.quad	-1701083796             # 0xffffffff9a9b856c
	.quad	-1700568746             # 0xffffffff9aa36156
	.quad	-1700053696             # 0xffffffff9aab3d40
	.quad	-1699538646             # 0xffffffff9ab3192a
	.quad	-1699023596             # 0xffffffff9abaf514
	.quad	-1698508546             # 0xffffffff9ac2d0fe
	.quad	-1697993496             # 0xffffffff9acaace8
	.quad	-1697478446             # 0xffffffff9ad288d2
	.quad	-1696963396             # 0xffffffff9ada64bc
	.quad	-1696448346             # 0xffffffff9ae240a6
	.quad	-1695933296             # 0xffffffff9aea1c90
	.quad	-1695418246             # 0xffffffff9af1f87a
	.quad	-1694903196             # 0xffffffff9af9d464
	.quad	-1694388146             # 0xffffffff9b01b04e
	.quad	-1693873096             # 0xffffffff9b098c38
	.quad	-1693358046             # 0xffffffff9b116822
	.quad	-1692842996             # 0xffffffff9b19440c
	.quad	-1692327946             # 0xffffffff9b211ff6
	.quad	-1691812896             # 0xffffffff9b28fbe0
	.quad	-1691297846             # 0xffffffff9b30d7ca
	.quad	-1690782796             # 0xffffffff9b38b3b4
	.quad	-1690267746             # 0xffffffff9b408f9e
	.quad	-1689752696             # 0xffffffff9b486b88
	.quad	-1689237646             # 0xffffffff9b504772
	.quad	-1688722596             # 0xffffffff9b58235c
	.quad	-1688207546             # 0xffffffff9b5fff46
	.quad	-1687692496             # 0xffffffff9b67db30
	.quad	-1687177446             # 0xffffffff9b6fb71a
	.quad	-1686662396             # 0xffffffff9b779304
	.quad	-1686147346             # 0xffffffff9b7f6eee
	.quad	-1685632296             # 0xffffffff9b874ad8
	.quad	-1687112246             # 0xffffffff9b70b5ca
	.quad	-1686587196             # 0xffffffff9b78b8c4
	.quad	-1686062146             # 0xffffffff9b80bbbe
	.quad	-1685537096             # 0xffffffff9b88beb8
	.quad	-1685012046             # 0xffffffff9b90c1b2
	.quad	-1684486996             # 0xffffffff9b98c4ac
	.quad	-1683961946             # 0xffffffff9ba0c7a6
	.quad	-1683436896             # 0xffffffff9ba8caa0
	.quad	-1682911846             # 0xffffffff9bb0cd9a
	.quad	-1682386796             # 0xffffffff9bb8d094
	.quad	-1681861746             # 0xffffffff9bc0d38e
	.quad	-1681336696             # 0xffffffff9bc8d688
	.quad	-1680811646             # 0xffffffff9bd0d982
	.quad	-1680286596             # 0xffffffff9bd8dc7c
	.quad	-1679761546             # 0xffffffff9be0df76
	.quad	-1679236496             # 0xffffffff9be8e270
	.quad	-1678711446             # 0xffffffff9bf0e56a
	.quad	-1678186396             # 0xffffffff9bf8e864
	.quad	-1677661346             # 0xffffffff9c00eb5e
	.quad	-1677136296             # 0xffffffff9c08ee58
	.quad	-1676611246             # 0xffffffff9c10f152
	.quad	-1676086196             # 0xffffffff9c18f44c
	.quad	-1675561146             # 0xffffffff9c20f746
	.quad	-1675036096             # 0xffffffff9c28fa40
	.quad	-1674511046             # 0xffffffff9c30fd3a
	.quad	-1673985996             # 0xffffffff9c390034
	.quad	-1673460946             # 0xffffffff9c41032e
	.quad	-1672935896             # 0xffffffff9c490628
	.quad	-1672410846             # 0xffffffff9c510922
	.quad	-1671885796             # 0xffffffff9c590c1c
	.quad	-1671360746             # 0xffffffff9c610f16
	.quad	-1670835696             # 0xffffffff9c691210
	.quad	-1670310646             # 0xffffffff9c71150a
	.quad	-1669785596             # 0xffffffff9c791804
	.quad	-1669260546             # 0xffffffff9c811afe
	.quad	-1668735496             # 0xffffffff9c891df8
	.quad	-1668210446             # 0xffffffff9c9120f2
	.quad	-1667685396             # 0xffffffff9c9923ec
	.quad	-1667160346             # 0xffffffff9ca126e6
	.quad	-1666635296             # 0xffffffff9ca929e0
	.quad	-1666110246             # 0xffffffff9cb12cda
	.quad	-1665585196             # 0xffffffff9cb92fd4
	.quad	-1665060146             # 0xffffffff9cc132ce
	.quad	-1664535096             # 0xffffffff9cc935c8
	.quad	-1664010046             # 0xffffffff9cd138c2
	.quad	-1663484996             # 0xffffffff9cd93bbc
	.quad	-1662959946             # 0xffffffff9ce13eb6
	.quad	-1662434896             # 0xffffffff9ce941b0
	.quad	-1661909846             # 0xffffffff9cf144aa
	.quad	-1661384796             # 0xffffffff9cf947a4
	.quad	-1660859746             # 0xffffffff9d014a9e
	.quad	-1660334696             # 0xffffffff9d094d98
	.quad	-1659809646             # 0xffffffff9d115092
	.quad	-1659284596             # 0xffffffff9d19538c
	.quad	-1658759546             # 0xffffffff9d215686
	.quad	-1658234496             # 0xffffffff9d295980
	.quad	-1657709446             # 0xffffffff9d315c7a
	.quad	-1657184396             # 0xffffffff9d395f74
	.quad	-1656659346             # 0xffffffff9d41626e
	.quad	-1656134296             # 0xffffffff9d496568
	.quad	-1655609246             # 0xffffffff9d516862
	.quad	-1655084196             # 0xffffffff9d596b5c
	.quad	-1654559146             # 0xffffffff9d616e56
	.quad	-1654034096             # 0xffffffff9d697150
	.quad	-1653509046             # 0xffffffff9d71744a
	.quad	-1652983996             # 0xffffffff9d797744
	.quad	-1652458946             # 0xffffffff9d817a3e
	.quad	-1651933896             # 0xffffffff9d897d38
	.quad	-1651408846             # 0xffffffff9d918032
	.quad	-1650883796             # 0xffffffff9d99832c
	.quad	-1650358746             # 0xffffffff9da18626
	.quad	-1649833696             # 0xffffffff9da98920
	.quad	-1649308646             # 0xffffffff9db18c1a
	.quad	-1648783596             # 0xffffffff9db98f14
	.quad	-1648258546             # 0xffffffff9dc1920e
	.quad	-1647733496             # 0xffffffff9dc99508
	.quad	-1647208446             # 0xffffffff9dd19802
	.quad	-1646683396             # 0xffffffff9dd99afc
	.quad	-1646158346             # 0xffffffff9de19df6
	.quad	-1645633296             # 0xffffffff9de9a0f0
	.quad	-1645108246             # 0xffffffff9df1a3ea
	.quad	-1644583196             # 0xffffffff9df9a6e4
	.quad	-1644058146             # 0xffffffff9e01a9de
	.quad	-1643533096             # 0xffffffff9e09acd8
	.quad	-1643008046             # 0xffffffff9e11afd2
	.quad	-1642482996             # 0xffffffff9e19b2cc
	.quad	-1641957946             # 0xffffffff9e21b5c6
	.quad	-1641432896             # 0xffffffff9e29b8c0
	.quad	-1640907846             # 0xffffffff9e31bbba
	.quad	-1640382796             # 0xffffffff9e39beb4
	.quad	-1639857746             # 0xffffffff9e41c1ae
	.quad	-1639332696             # 0xffffffff9e49c4a8
	.quad	-1638807646             # 0xffffffff9e51c7a2
	.quad	-1638282596             # 0xffffffff9e59ca9c
	.quad	-1637757546             # 0xffffffff9e61cd96
	.quad	-1637232496             # 0xffffffff9e69d090
	.quad	-1636707446             # 0xffffffff9e71d38a
	.quad	-1636182396             # 0xffffffff9e79d684
	.quad	-1635657346             # 0xffffffff9e81d97e
	.quad	-1635132296             # 0xffffffff9e89dc78
	.quad	-1637602246             # 0xffffffff9e642c3a
	.quad	-1637067196             # 0xffffffff9e6c5644
	.quad	-1636532146             # 0xffffffff9e74804e
	.quad	-1635997096             # 0xffffffff9e7caa58
	.quad	-1635462046             # 0xffffffff9e84d462
	.quad	-1634926996             # 0xffffffff9e8cfe6c
	.quad	-1634391946             # 0xffffffff9e952876
	.quad	-1633856896             # 0xffffffff9e9d5280
	.quad	-1633321846             # 0xffffffff9ea57c8a
	.quad	-1632786796             # 0xffffffff9eada694
	.quad	-1632251746             # 0xffffffff9eb5d09e
	.quad	-1631716696             # 0xffffffff9ebdfaa8
	.quad	-1631181646             # 0xffffffff9ec624b2
	.quad	-1630646596             # 0xffffffff9ece4ebc
	.quad	-1630111546             # 0xffffffff9ed678c6
	.quad	-1629576496             # 0xffffffff9edea2d0
	.quad	-1629041446             # 0xffffffff9ee6ccda
	.quad	-1628506396             # 0xffffffff9eeef6e4
	.quad	-1627971346             # 0xffffffff9ef720ee
	.quad	-1627436296             # 0xffffffff9eff4af8
	.quad	-1626901246             # 0xffffffff9f077502
	.quad	-1626366196             # 0xffffffff9f0f9f0c
	.quad	-1625831146             # 0xffffffff9f17c916
	.quad	-1625296096             # 0xffffffff9f1ff320
	.quad	-1624761046             # 0xffffffff9f281d2a
	.quad	-1624225996             # 0xffffffff9f304734
	.quad	-1623690946             # 0xffffffff9f38713e
	.quad	-1623155896             # 0xffffffff9f409b48
	.quad	-1622620846             # 0xffffffff9f48c552
	.quad	-1622085796             # 0xffffffff9f50ef5c
	.quad	-1621550746             # 0xffffffff9f591966
	.quad	-1621015696             # 0xffffffff9f614370
	.quad	-1620480646             # 0xffffffff9f696d7a
	.quad	-1619945596             # 0xffffffff9f719784
	.quad	-1619410546             # 0xffffffff9f79c18e
	.quad	-1618875496             # 0xffffffff9f81eb98
	.quad	-1618340446             # 0xffffffff9f8a15a2
	.quad	-1617805396             # 0xffffffff9f923fac
	.quad	-1617270346             # 0xffffffff9f9a69b6
	.quad	-1616735296             # 0xffffffff9fa293c0
	.quad	-1616200246             # 0xffffffff9faabdca
	.quad	-1615665196             # 0xffffffff9fb2e7d4
	.quad	-1615130146             # 0xffffffff9fbb11de
	.quad	-1614595096             # 0xffffffff9fc33be8
	.quad	-1614060046             # 0xffffffff9fcb65f2
	.quad	-1613524996             # 0xffffffff9fd38ffc
	.quad	-1612989946             # 0xffffffff9fdbba06
	.quad	-1612454896             # 0xffffffff9fe3e410
	.quad	-1611919846             # 0xffffffff9fec0e1a
	.quad	-1611384796             # 0xffffffff9ff43824
	.quad	-1610849746             # 0xffffffff9ffc622e
	.quad	-1610314696             # 0xffffffffa0048c38
	.quad	-1609779646             # 0xffffffffa00cb642
	.quad	-1609244596             # 0xffffffffa014e04c
	.quad	-1608709546             # 0xffffffffa01d0a56
	.quad	-1608174496             # 0xffffffffa0253460
	.quad	-1607639446             # 0xffffffffa02d5e6a
	.quad	-1607104396             # 0xffffffffa0358874
	.quad	-1606569346             # 0xffffffffa03db27e
	.quad	-1606034296             # 0xffffffffa045dc88
	.quad	-1605499246             # 0xffffffffa04e0692
	.quad	-1604964196             # 0xffffffffa056309c
	.quad	-1604429146             # 0xffffffffa05e5aa6
	.quad	-1603894096             # 0xffffffffa06684b0
	.quad	-1603359046             # 0xffffffffa06eaeba
	.quad	-1602823996             # 0xffffffffa076d8c4
	.quad	-1602288946             # 0xffffffffa07f02ce
	.quad	-1601753896             # 0xffffffffa0872cd8
	.quad	-1601218846             # 0xffffffffa08f56e2
	.quad	-1600683796             # 0xffffffffa09780ec
	.quad	-1600148746             # 0xffffffffa09faaf6
	.quad	-1599613696             # 0xffffffffa0a7d500
	.quad	-1599078646             # 0xffffffffa0afff0a
	.quad	-1598543596             # 0xffffffffa0b82914
	.quad	-1598008546             # 0xffffffffa0c0531e
	.quad	-1597473496             # 0xffffffffa0c87d28
	.quad	-1596938446             # 0xffffffffa0d0a732
	.quad	-1596403396             # 0xffffffffa0d8d13c
	.quad	-1595868346             # 0xffffffffa0e0fb46
	.quad	-1595333296             # 0xffffffffa0e92550
	.quad	-1594798246             # 0xffffffffa0f14f5a
	.quad	-1594263196             # 0xffffffffa0f97964
	.quad	-1593728146             # 0xffffffffa101a36e
	.quad	-1593193096             # 0xffffffffa109cd78
	.quad	-1592658046             # 0xffffffffa111f782
	.quad	-1592122996             # 0xffffffffa11a218c
	.quad	-1591587946             # 0xffffffffa1224b96
	.quad	-1591052896             # 0xffffffffa12a75a0
	.quad	-1590517846             # 0xffffffffa1329faa
	.quad	-1589982796             # 0xffffffffa13ac9b4
	.quad	-1589447746             # 0xffffffffa142f3be
	.quad	-1588912696             # 0xffffffffa14b1dc8
	.quad	-1588377646             # 0xffffffffa15347d2
	.quad	-1587842596             # 0xffffffffa15b71dc
	.quad	-1587307546             # 0xffffffffa1639be6
	.quad	-1586772496             # 0xffffffffa16bc5f0
	.quad	-1586237446             # 0xffffffffa173effa
	.quad	-1585702396             # 0xffffffffa17c1a04
	.quad	-1585167346             # 0xffffffffa184440e
	.quad	-1584632296             # 0xffffffffa18c6e18
	.quad	-1588092246             # 0xffffffffa157a2aa
	.quad	-1587547196             # 0xffffffffa15ff3c4
	.quad	-1587002146             # 0xffffffffa16844de
	.quad	-1586457096             # 0xffffffffa17095f8
	.quad	-1585912046             # 0xffffffffa178e712
	.quad	-1585366996             # 0xffffffffa181382c
	.quad	-1584821946             # 0xffffffffa1898946
	.quad	-1584276896             # 0xffffffffa191da60
	.quad	-1583731846             # 0xffffffffa19a2b7a
	.quad	-1583186796             # 0xffffffffa1a27c94
	.quad	-1582641746             # 0xffffffffa1aacdae
	.quad	-1582096696             # 0xffffffffa1b31ec8
	.quad	-1581551646             # 0xffffffffa1bb6fe2
	.quad	-1581006596             # 0xffffffffa1c3c0fc
	.quad	-1580461546             # 0xffffffffa1cc1216
	.quad	-1579916496             # 0xffffffffa1d46330
	.quad	-1579371446             # 0xffffffffa1dcb44a
	.quad	-1578826396             # 0xffffffffa1e50564
	.quad	-1578281346             # 0xffffffffa1ed567e
	.quad	-1577736296             # 0xffffffffa1f5a798
	.quad	-1577191246             # 0xffffffffa1fdf8b2
	.quad	-1576646196             # 0xffffffffa20649cc
	.quad	-1576101146             # 0xffffffffa20e9ae6
	.quad	-1575556096             # 0xffffffffa216ec00
	.quad	-1575011046             # 0xffffffffa21f3d1a
	.quad	-1574465996             # 0xffffffffa2278e34
	.quad	-1573920946             # 0xffffffffa22fdf4e
	.quad	-1573375896             # 0xffffffffa2383068
	.quad	-1572830846             # 0xffffffffa2408182
	.quad	-1572285796             # 0xffffffffa248d29c
	.quad	-1571740746             # 0xffffffffa25123b6
	.quad	-1571195696             # 0xffffffffa25974d0
	.quad	-1570650646             # 0xffffffffa261c5ea
	.quad	-1570105596             # 0xffffffffa26a1704
	.quad	-1569560546             # 0xffffffffa272681e
	.quad	-1569015496             # 0xffffffffa27ab938
	.quad	-1568470446             # 0xffffffffa2830a52
	.quad	-1567925396             # 0xffffffffa28b5b6c
	.quad	-1567380346             # 0xffffffffa293ac86
	.quad	-1566835296             # 0xffffffffa29bfda0
	.quad	-1566290246             # 0xffffffffa2a44eba
	.quad	-1565745196             # 0xffffffffa2ac9fd4
	.quad	-1565200146             # 0xffffffffa2b4f0ee
	.quad	-1564655096             # 0xffffffffa2bd4208
	.quad	-1564110046             # 0xffffffffa2c59322
	.quad	-1563564996             # 0xffffffffa2cde43c
	.quad	-1563019946             # 0xffffffffa2d63556
	.quad	-1562474896             # 0xffffffffa2de8670
	.quad	-1561929846             # 0xffffffffa2e6d78a
	.quad	-1561384796             # 0xffffffffa2ef28a4
	.quad	-1560839746             # 0xffffffffa2f779be
	.quad	-1560294696             # 0xffffffffa2ffcad8
	.quad	-1559749646             # 0xffffffffa3081bf2
	.quad	-1559204596             # 0xffffffffa3106d0c
	.quad	-1558659546             # 0xffffffffa318be26
	.quad	-1558114496             # 0xffffffffa3210f40
	.quad	-1557569446             # 0xffffffffa329605a
	.quad	-1557024396             # 0xffffffffa331b174
	.quad	-1556479346             # 0xffffffffa33a028e
	.quad	-1555934296             # 0xffffffffa34253a8
	.quad	-1555389246             # 0xffffffffa34aa4c2
	.quad	-1554844196             # 0xffffffffa352f5dc
	.quad	-1554299146             # 0xffffffffa35b46f6
	.quad	-1553754096             # 0xffffffffa3639810
	.quad	-1553209046             # 0xffffffffa36be92a
	.quad	-1552663996             # 0xffffffffa3743a44
	.quad	-1552118946             # 0xffffffffa37c8b5e
	.quad	-1551573896             # 0xffffffffa384dc78
	.quad	-1551028846             # 0xffffffffa38d2d92
	.quad	-1550483796             # 0xffffffffa3957eac
	.quad	-1549938746             # 0xffffffffa39dcfc6
	.quad	-1549393696             # 0xffffffffa3a620e0
	.quad	-1548848646             # 0xffffffffa3ae71fa
	.quad	-1548303596             # 0xffffffffa3b6c314
	.quad	-1547758546             # 0xffffffffa3bf142e
	.quad	-1547213496             # 0xffffffffa3c76548
	.quad	-1546668446             # 0xffffffffa3cfb662
	.quad	-1546123396             # 0xffffffffa3d8077c
	.quad	-1545578346             # 0xffffffffa3e05896
	.quad	-1545033296             # 0xffffffffa3e8a9b0
	.quad	-1544488246             # 0xffffffffa3f0faca
	.quad	-1543943196             # 0xffffffffa3f94be4
	.quad	-1543398146             # 0xffffffffa4019cfe
	.quad	-1542853096             # 0xffffffffa409ee18
	.quad	-1542308046             # 0xffffffffa4123f32
	.quad	-1541762996             # 0xffffffffa41a904c
	.quad	-1541217946             # 0xffffffffa422e166
	.quad	-1540672896             # 0xffffffffa42b3280
	.quad	-1540127846             # 0xffffffffa433839a
	.quad	-1539582796             # 0xffffffffa43bd4b4
	.quad	-1539037746             # 0xffffffffa44425ce
	.quad	-1538492696             # 0xffffffffa44c76e8
	.quad	-1537947646             # 0xffffffffa454c802
	.quad	-1537402596             # 0xffffffffa45d191c
	.quad	-1536857546             # 0xffffffffa4656a36
	.quad	-1536312496             # 0xffffffffa46dbb50
	.quad	-1535767446             # 0xffffffffa4760c6a
	.quad	-1535222396             # 0xffffffffa47e5d84
	.quad	-1534677346             # 0xffffffffa486ae9e
	.quad	-1534132296             # 0xffffffffa48effb8
	.quad	-1538582246             # 0xffffffffa44b191a
	.quad	-1538027196             # 0xffffffffa4539144
	.quad	-1537472146             # 0xffffffffa45c096e
	.quad	-1536917096             # 0xffffffffa4648198
	.quad	-1536362046             # 0xffffffffa46cf9c2
	.quad	-1535806996             # 0xffffffffa47571ec
	.quad	-1535251946             # 0xffffffffa47dea16
	.quad	-1534696896             # 0xffffffffa4866240
	.quad	-1534141846             # 0xffffffffa48eda6a
	.quad	-1533586796             # 0xffffffffa4975294
	.quad	-1533031746             # 0xffffffffa49fcabe
	.quad	-1532476696             # 0xffffffffa4a842e8
	.quad	-1531921646             # 0xffffffffa4b0bb12
	.quad	-1531366596             # 0xffffffffa4b9333c
	.quad	-1530811546             # 0xffffffffa4c1ab66
	.quad	-1530256496             # 0xffffffffa4ca2390
	.quad	-1529701446             # 0xffffffffa4d29bba
	.quad	-1529146396             # 0xffffffffa4db13e4
	.quad	-1528591346             # 0xffffffffa4e38c0e
	.quad	-1528036296             # 0xffffffffa4ec0438
	.quad	-1527481246             # 0xffffffffa4f47c62
	.quad	-1526926196             # 0xffffffffa4fcf48c
	.quad	-1526371146             # 0xffffffffa5056cb6
	.quad	-1525816096             # 0xffffffffa50de4e0
	.quad	-1525261046             # 0xffffffffa5165d0a
	.quad	-1524705996             # 0xffffffffa51ed534
	.quad	-1524150946             # 0xffffffffa5274d5e
	.quad	-1523595896             # 0xffffffffa52fc588
	.quad	-1523040846             # 0xffffffffa5383db2
	.quad	-1522485796             # 0xffffffffa540b5dc
	.quad	-1521930746             # 0xffffffffa5492e06
	.quad	-1521375696             # 0xffffffffa551a630
	.quad	-1520820646             # 0xffffffffa55a1e5a
	.quad	-1520265596             # 0xffffffffa5629684
	.quad	-1519710546             # 0xffffffffa56b0eae
	.quad	-1519155496             # 0xffffffffa57386d8
	.quad	-1518600446             # 0xffffffffa57bff02
	.quad	-1518045396             # 0xffffffffa584772c
	.quad	-1517490346             # 0xffffffffa58cef56
	.quad	-1516935296             # 0xffffffffa5956780
	.quad	-1516380246             # 0xffffffffa59ddfaa
	.quad	-1515825196             # 0xffffffffa5a657d4
	.quad	-1515270146             # 0xffffffffa5aecffe
	.quad	-1514715096             # 0xffffffffa5b74828
	.quad	-1514160046             # 0xffffffffa5bfc052
	.quad	-1513604996             # 0xffffffffa5c8387c
	.quad	-1513049946             # 0xffffffffa5d0b0a6
	.quad	-1512494896             # 0xffffffffa5d928d0
	.quad	-1511939846             # 0xffffffffa5e1a0fa
	.quad	-1511384796             # 0xffffffffa5ea1924
	.quad	-1510829746             # 0xffffffffa5f2914e
	.quad	-1510274696             # 0xffffffffa5fb0978
	.quad	-1509719646             # 0xffffffffa60381a2
	.quad	-1509164596             # 0xffffffffa60bf9cc
	.quad	-1508609546             # 0xffffffffa61471f6
	.quad	-1508054496             # 0xffffffffa61cea20
	.quad	-1507499446             # 0xffffffffa625624a
	.quad	-1506944396             # 0xffffffffa62dda74
	.quad	-1506389346             # 0xffffffffa636529e
	.quad	-1505834296             # 0xffffffffa63ecac8
	.quad	-1505279246             # 0xffffffffa64742f2
	.quad	-1504724196             # 0xffffffffa64fbb1c
	.quad	-1504169146             # 0xffffffffa6583346
	.quad	-1503614096             # 0xffffffffa660ab70
	.quad	-1503059046             # 0xffffffffa669239a
	.quad	-1502503996             # 0xffffffffa6719bc4
	.quad	-1501948946             # 0xffffffffa67a13ee
	.quad	-1501393896             # 0xffffffffa6828c18
	.quad	-1500838846             # 0xffffffffa68b0442
	.quad	-1500283796             # 0xffffffffa6937c6c
	.quad	-1499728746             # 0xffffffffa69bf496
	.quad	-1499173696             # 0xffffffffa6a46cc0
	.quad	-1498618646             # 0xffffffffa6ace4ea
	.quad	-1498063596             # 0xffffffffa6b55d14
	.quad	-1497508546             # 0xffffffffa6bdd53e
	.quad	-1496953496             # 0xffffffffa6c64d68
	.quad	-1496398446             # 0xffffffffa6cec592
	.quad	-1495843396             # 0xffffffffa6d73dbc
	.quad	-1495288346             # 0xffffffffa6dfb5e6
	.quad	-1494733296             # 0xffffffffa6e82e10
	.quad	-1494178246             # 0xffffffffa6f0a63a
	.quad	-1493623196             # 0xffffffffa6f91e64
	.quad	-1493068146             # 0xffffffffa701968e
	.quad	-1492513096             # 0xffffffffa70a0eb8
	.quad	-1491958046             # 0xffffffffa71286e2
	.quad	-1491402996             # 0xffffffffa71aff0c
	.quad	-1490847946             # 0xffffffffa7237736
	.quad	-1490292896             # 0xffffffffa72bef60
	.quad	-1489737846             # 0xffffffffa734678a
	.quad	-1489182796             # 0xffffffffa73cdfb4
	.quad	-1488627746             # 0xffffffffa74557de
	.quad	-1488072696             # 0xffffffffa74dd008
	.quad	-1487517646             # 0xffffffffa7564832
	.quad	-1486962596             # 0xffffffffa75ec05c
	.quad	-1486407546             # 0xffffffffa7673886
	.quad	-1485852496             # 0xffffffffa76fb0b0
	.quad	-1485297446             # 0xffffffffa77828da
	.quad	-1484742396             # 0xffffffffa780a104
	.quad	-1484187346             # 0xffffffffa789192e
	.quad	-1483632296             # 0xffffffffa7919158
	.quad	-1489072246             # 0xffffffffa73e8f8a
	.quad	-1488507196             # 0xffffffffa7472ec4
	.quad	-1487942146             # 0xffffffffa74fcdfe
	.quad	-1487377096             # 0xffffffffa7586d38
	.quad	-1486812046             # 0xffffffffa7610c72
	.quad	-1486246996             # 0xffffffffa769abac
	.quad	-1485681946             # 0xffffffffa7724ae6
	.quad	-1485116896             # 0xffffffffa77aea20
	.quad	-1484551846             # 0xffffffffa783895a
	.quad	-1483986796             # 0xffffffffa78c2894
	.quad	-1483421746             # 0xffffffffa794c7ce
	.quad	-1482856696             # 0xffffffffa79d6708
	.quad	-1482291646             # 0xffffffffa7a60642
	.quad	-1481726596             # 0xffffffffa7aea57c
	.quad	-1481161546             # 0xffffffffa7b744b6
	.quad	-1480596496             # 0xffffffffa7bfe3f0
	.quad	-1480031446             # 0xffffffffa7c8832a
	.quad	-1479466396             # 0xffffffffa7d12264
	.quad	-1478901346             # 0xffffffffa7d9c19e
	.quad	-1478336296             # 0xffffffffa7e260d8
	.quad	-1477771246             # 0xffffffffa7eb0012
	.quad	-1477206196             # 0xffffffffa7f39f4c
	.quad	-1476641146             # 0xffffffffa7fc3e86
	.quad	-1476076096             # 0xffffffffa804ddc0
	.quad	-1475511046             # 0xffffffffa80d7cfa
	.quad	-1474945996             # 0xffffffffa8161c34
	.quad	-1474380946             # 0xffffffffa81ebb6e
	.quad	-1473815896             # 0xffffffffa8275aa8
	.quad	-1473250846             # 0xffffffffa82ff9e2
	.quad	-1472685796             # 0xffffffffa838991c
	.quad	-1472120746             # 0xffffffffa8413856
	.quad	-1471555696             # 0xffffffffa849d790
	.quad	-1470990646             # 0xffffffffa85276ca
	.quad	-1470425596             # 0xffffffffa85b1604
	.quad	-1469860546             # 0xffffffffa863b53e
	.quad	-1469295496             # 0xffffffffa86c5478
	.quad	-1468730446             # 0xffffffffa874f3b2
	.quad	-1468165396             # 0xffffffffa87d92ec
	.quad	-1467600346             # 0xffffffffa8863226
	.quad	-1467035296             # 0xffffffffa88ed160
	.quad	-1466470246             # 0xffffffffa897709a
	.quad	-1465905196             # 0xffffffffa8a00fd4
	.quad	-1465340146             # 0xffffffffa8a8af0e
	.quad	-1464775096             # 0xffffffffa8b14e48
	.quad	-1464210046             # 0xffffffffa8b9ed82
	.quad	-1463644996             # 0xffffffffa8c28cbc
	.quad	-1463079946             # 0xffffffffa8cb2bf6
	.quad	-1462514896             # 0xffffffffa8d3cb30
	.quad	-1461949846             # 0xffffffffa8dc6a6a
	.quad	-1461384796             # 0xffffffffa8e509a4
	.quad	-1460819746             # 0xffffffffa8eda8de
	.quad	-1460254696             # 0xffffffffa8f64818
	.quad	-1459689646             # 0xffffffffa8fee752
	.quad	-1459124596             # 0xffffffffa907868c
	.quad	-1458559546             # 0xffffffffa91025c6
	.quad	-1457994496             # 0xffffffffa918c500
	.quad	-1457429446             # 0xffffffffa921643a
	.quad	-1456864396             # 0xffffffffa92a0374
	.quad	-1456299346             # 0xffffffffa932a2ae
	.quad	-1455734296             # 0xffffffffa93b41e8
	.quad	-1455169246             # 0xffffffffa943e122
	.quad	-1454604196             # 0xffffffffa94c805c
	.quad	-1454039146             # 0xffffffffa9551f96
	.quad	-1453474096             # 0xffffffffa95dbed0
	.quad	-1452909046             # 0xffffffffa9665e0a
	.quad	-1452343996             # 0xffffffffa96efd44
	.quad	-1451778946             # 0xffffffffa9779c7e
	.quad	-1451213896             # 0xffffffffa9803bb8
	.quad	-1450648846             # 0xffffffffa988daf2
	.quad	-1450083796             # 0xffffffffa9917a2c
	.quad	-1449518746             # 0xffffffffa99a1966
	.quad	-1448953696             # 0xffffffffa9a2b8a0
	.quad	-1448388646             # 0xffffffffa9ab57da
	.quad	-1447823596             # 0xffffffffa9b3f714
	.quad	-1447258546             # 0xffffffffa9bc964e
	.quad	-1446693496             # 0xffffffffa9c53588
	.quad	-1446128446             # 0xffffffffa9cdd4c2
	.quad	-1445563396             # 0xffffffffa9d673fc
	.quad	-1444998346             # 0xffffffffa9df1336
	.quad	-1444433296             # 0xffffffffa9e7b270
	.quad	-1443868246             # 0xffffffffa9f051aa
	.quad	-1443303196             # 0xffffffffa9f8f0e4
	.quad	-1442738146             # 0xffffffffaa01901e
	.quad	-1442173096             # 0xffffffffaa0a2f58
	.quad	-1441608046             # 0xffffffffaa12ce92
	.quad	-1441042996             # 0xffffffffaa1b6dcc
	.quad	-1440477946             # 0xffffffffaa240d06
	.quad	-1439912896             # 0xffffffffaa2cac40
	.quad	-1439347846             # 0xffffffffaa354b7a
	.quad	-1438782796             # 0xffffffffaa3deab4
	.quad	-1438217746             # 0xffffffffaa4689ee
	.quad	-1437652696             # 0xffffffffaa4f2928
	.quad	-1437087646             # 0xffffffffaa57c862
	.quad	-1436522596             # 0xffffffffaa60679c
	.quad	-1435957546             # 0xffffffffaa6906d6
	.quad	-1435392496             # 0xffffffffaa71a610
	.quad	-1434827446             # 0xffffffffaa7a454a
	.quad	-1434262396             # 0xffffffffaa82e484
	.quad	-1433697346             # 0xffffffffaa8b83be
	.quad	-1433132296             # 0xffffffffaa9422f8
	.quad	-1439562246             # 0xffffffffaa3205fa
	.quad	-1438987196             # 0xffffffffaa3acc44
	.quad	-1438412146             # 0xffffffffaa43928e
	.quad	-1437837096             # 0xffffffffaa4c58d8
	.quad	-1437262046             # 0xffffffffaa551f22
	.quad	-1436686996             # 0xffffffffaa5de56c
	.quad	-1436111946             # 0xffffffffaa66abb6
	.quad	-1435536896             # 0xffffffffaa6f7200
	.quad	-1434961846             # 0xffffffffaa78384a
	.quad	-1434386796             # 0xffffffffaa80fe94
	.quad	-1433811746             # 0xffffffffaa89c4de
	.quad	-1433236696             # 0xffffffffaa928b28
	.quad	-1432661646             # 0xffffffffaa9b5172
	.quad	-1432086596             # 0xffffffffaaa417bc
	.quad	-1431511546             # 0xffffffffaaacde06
	.quad	-1430936496             # 0xffffffffaab5a450
	.quad	-1430361446             # 0xffffffffaabe6a9a
	.quad	-1429786396             # 0xffffffffaac730e4
	.quad	-1429211346             # 0xffffffffaacff72e
	.quad	-1428636296             # 0xffffffffaad8bd78
	.quad	-1428061246             # 0xffffffffaae183c2
	.quad	-1427486196             # 0xffffffffaaea4a0c
	.quad	-1426911146             # 0xffffffffaaf31056
	.quad	-1426336096             # 0xffffffffaafbd6a0
	.quad	-1425761046             # 0xffffffffab049cea
	.quad	-1425185996             # 0xffffffffab0d6334
	.quad	-1424610946             # 0xffffffffab16297e
	.quad	-1424035896             # 0xffffffffab1eefc8
	.quad	-1423460846             # 0xffffffffab27b612
	.quad	-1422885796             # 0xffffffffab307c5c
	.quad	-1422310746             # 0xffffffffab3942a6
	.quad	-1421735696             # 0xffffffffab4208f0
	.quad	-1421160646             # 0xffffffffab4acf3a
	.quad	-1420585596             # 0xffffffffab539584
	.quad	-1420010546             # 0xffffffffab5c5bce
	.quad	-1419435496             # 0xffffffffab652218
	.quad	-1418860446             # 0xffffffffab6de862
	.quad	-1418285396             # 0xffffffffab76aeac
	.quad	-1417710346             # 0xffffffffab7f74f6
	.quad	-1417135296             # 0xffffffffab883b40
	.quad	-1416560246             # 0xffffffffab91018a
	.quad	-1415985196             # 0xffffffffab99c7d4
	.quad	-1415410146             # 0xffffffffaba28e1e
	.quad	-1414835096             # 0xffffffffabab5468
	.quad	-1414260046             # 0xffffffffabb41ab2
	.quad	-1413684996             # 0xffffffffabbce0fc
	.quad	-1413109946             # 0xffffffffabc5a746
	.quad	-1412534896             # 0xffffffffabce6d90
	.quad	-1411959846             # 0xffffffffabd733da
	.quad	-1411384796             # 0xffffffffabdffa24
	.quad	-1410809746             # 0xffffffffabe8c06e
	.quad	-1410234696             # 0xffffffffabf186b8
	.quad	-1409659646             # 0xffffffffabfa4d02
	.quad	-1409084596             # 0xffffffffac03134c
	.quad	-1408509546             # 0xffffffffac0bd996
	.quad	-1407934496             # 0xffffffffac149fe0
	.quad	-1407359446             # 0xffffffffac1d662a
	.quad	-1406784396             # 0xffffffffac262c74
	.quad	-1406209346             # 0xffffffffac2ef2be
	.quad	-1405634296             # 0xffffffffac37b908
	.quad	-1405059246             # 0xffffffffac407f52
	.quad	-1404484196             # 0xffffffffac49459c
	.quad	-1403909146             # 0xffffffffac520be6
	.quad	-1403334096             # 0xffffffffac5ad230
	.quad	-1402759046             # 0xffffffffac63987a
	.quad	-1402183996             # 0xffffffffac6c5ec4
	.quad	-1401608946             # 0xffffffffac75250e
	.quad	-1401033896             # 0xffffffffac7deb58
	.quad	-1400458846             # 0xffffffffac86b1a2
	.quad	-1399883796             # 0xffffffffac8f77ec
	.quad	-1399308746             # 0xffffffffac983e36
	.quad	-1398733696             # 0xffffffffaca10480
	.quad	-1398158646             # 0xffffffffaca9caca
	.quad	-1397583596             # 0xffffffffacb29114
	.quad	-1397008546             # 0xffffffffacbb575e
	.quad	-1396433496             # 0xffffffffacc41da8
	.quad	-1395858446             # 0xffffffffaccce3f2
	.quad	-1395283396             # 0xffffffffacd5aa3c
	.quad	-1394708346             # 0xffffffffacde7086
	.quad	-1394133296             # 0xfffffffface736d0
	.quad	-1393558246             # 0xffffffffaceffd1a
	.quad	-1392983196             # 0xffffffffacf8c364
	.quad	-1392408146             # 0xffffffffad0189ae
	.quad	-1391833096             # 0xffffffffad0a4ff8
	.quad	-1391258046             # 0xffffffffad131642
	.quad	-1390682996             # 0xffffffffad1bdc8c
	.quad	-1390107946             # 0xffffffffad24a2d6
	.quad	-1389532896             # 0xffffffffad2d6920
	.quad	-1388957846             # 0xffffffffad362f6a
	.quad	-1388382796             # 0xffffffffad3ef5b4
	.quad	-1387807746             # 0xffffffffad47bbfe
	.quad	-1387232696             # 0xffffffffad508248
	.quad	-1386657646             # 0xffffffffad594892
	.quad	-1386082596             # 0xffffffffad620edc
	.quad	-1385507546             # 0xffffffffad6ad526
	.quad	-1384932496             # 0xffffffffad739b70
	.quad	-1384357446             # 0xffffffffad7c61ba
	.quad	-1383782396             # 0xffffffffad852804
	.quad	-1383207346             # 0xffffffffad8dee4e
	.quad	-1382632296             # 0xffffffffad96b498
	.quad	-1390052246             # 0xffffffffad257c6a
	.quad	-1389467196             # 0xffffffffad2e69c4
	.quad	-1388882146             # 0xffffffffad37571e
	.quad	-1388297096             # 0xffffffffad404478
	.quad	-1387712046             # 0xffffffffad4931d2
	.quad	-1387126996             # 0xffffffffad521f2c
	.quad	-1386541946             # 0xffffffffad5b0c86
	.quad	-1385956896             # 0xffffffffad63f9e0
	.quad	-1385371846             # 0xffffffffad6ce73a
	.quad	-1384786796             # 0xffffffffad75d494
	.quad	-1384201746             # 0xffffffffad7ec1ee
	.quad	-1383616696             # 0xffffffffad87af48
	.quad	-1383031646             # 0xffffffffad909ca2
	.quad	-1382446596             # 0xffffffffad9989fc
	.quad	-1381861546             # 0xffffffffada27756
	.quad	-1381276496             # 0xffffffffadab64b0
	.quad	-1380691446             # 0xffffffffadb4520a
	.quad	-1380106396             # 0xffffffffadbd3f64
	.quad	-1379521346             # 0xffffffffadc62cbe
	.quad	-1378936296             # 0xffffffffadcf1a18
	.quad	-1378351246             # 0xffffffffadd80772
	.quad	-1377766196             # 0xffffffffade0f4cc
	.quad	-1377181146             # 0xffffffffade9e226
	.quad	-1376596096             # 0xffffffffadf2cf80
	.quad	-1376011046             # 0xffffffffadfbbcda
	.quad	-1375425996             # 0xffffffffae04aa34
	.quad	-1374840946             # 0xffffffffae0d978e
	.quad	-1374255896             # 0xffffffffae1684e8
	.quad	-1373670846             # 0xffffffffae1f7242
	.quad	-1373085796             # 0xffffffffae285f9c
	.quad	-1372500746             # 0xffffffffae314cf6
	.quad	-1371915696             # 0xffffffffae3a3a50
	.quad	-1371330646             # 0xffffffffae4327aa
	.quad	-1370745596             # 0xffffffffae4c1504
	.quad	-1370160546             # 0xffffffffae55025e
	.quad	-1369575496             # 0xffffffffae5defb8
	.quad	-1368990446             # 0xffffffffae66dd12
	.quad	-1368405396             # 0xffffffffae6fca6c
	.quad	-1367820346             # 0xffffffffae78b7c6
	.quad	-1367235296             # 0xffffffffae81a520
	.quad	-1366650246             # 0xffffffffae8a927a
	.quad	-1366065196             # 0xffffffffae937fd4
	.quad	-1365480146             # 0xffffffffae9c6d2e
	.quad	-1364895096             # 0xffffffffaea55a88
	.quad	-1364310046             # 0xffffffffaeae47e2
	.quad	-1363724996             # 0xffffffffaeb7353c
	.quad	-1363139946             # 0xffffffffaec02296
	.quad	-1362554896             # 0xffffffffaec90ff0
	.quad	-1361969846             # 0xffffffffaed1fd4a
	.quad	-1361384796             # 0xffffffffaedaeaa4
	.quad	-1360799746             # 0xffffffffaee3d7fe
	.quad	-1360214696             # 0xffffffffaeecc558
	.quad	-1359629646             # 0xffffffffaef5b2b2
	.quad	-1359044596             # 0xffffffffaefea00c
	.quad	-1358459546             # 0xffffffffaf078d66
	.quad	-1357874496             # 0xffffffffaf107ac0
	.quad	-1357289446             # 0xffffffffaf19681a
	.quad	-1356704396             # 0xffffffffaf225574
	.quad	-1356119346             # 0xffffffffaf2b42ce
	.quad	-1355534296             # 0xffffffffaf343028
	.quad	-1354949246             # 0xffffffffaf3d1d82
	.quad	-1354364196             # 0xffffffffaf460adc
	.quad	-1353779146             # 0xffffffffaf4ef836
	.quad	-1353194096             # 0xffffffffaf57e590
	.quad	-1352609046             # 0xffffffffaf60d2ea
	.quad	-1352023996             # 0xffffffffaf69c044
	.quad	-1351438946             # 0xffffffffaf72ad9e
	.quad	-1350853896             # 0xffffffffaf7b9af8
	.quad	-1350268846             # 0xffffffffaf848852
	.quad	-1349683796             # 0xffffffffaf8d75ac
	.quad	-1349098746             # 0xffffffffaf966306
	.quad	-1348513696             # 0xffffffffaf9f5060
	.quad	-1347928646             # 0xffffffffafa83dba
	.quad	-1347343596             # 0xffffffffafb12b14
	.quad	-1346758546             # 0xffffffffafba186e
	.quad	-1346173496             # 0xffffffffafc305c8
	.quad	-1345588446             # 0xffffffffafcbf322
	.quad	-1345003396             # 0xffffffffafd4e07c
	.quad	-1344418346             # 0xffffffffafddcdd6
	.quad	-1343833296             # 0xffffffffafe6bb30
	.quad	-1343248246             # 0xffffffffafefa88a
	.quad	-1342663196             # 0xffffffffaff895e4
	.quad	-1342078146             # 0xffffffffb001833e
	.quad	-1341493096             # 0xffffffffb00a7098
	.quad	-1340908046             # 0xffffffffb0135df2
	.quad	-1340322996             # 0xffffffffb01c4b4c
	.quad	-1339737946             # 0xffffffffb02538a6
	.quad	-1339152896             # 0xffffffffb02e2600
	.quad	-1338567846             # 0xffffffffb037135a
	.quad	-1337982796             # 0xffffffffb04000b4
	.quad	-1337397746             # 0xffffffffb048ee0e
	.quad	-1336812696             # 0xffffffffb051db68
	.quad	-1336227646             # 0xffffffffb05ac8c2
	.quad	-1335642596             # 0xffffffffb063b61c
	.quad	-1335057546             # 0xffffffffb06ca376
	.quad	-1334472496             # 0xffffffffb07590d0
	.quad	-1333887446             # 0xffffffffb07e7e2a
	.quad	-1333302396             # 0xffffffffb0876b84
	.quad	-1332717346             # 0xffffffffb09058de
	.quad	-1332132296             # 0xffffffffb0994638
	.quad	-1340542246             # 0xffffffffb018f2da
	.quad	-1339947196             # 0xffffffffb0220744
	.quad	-1339352146             # 0xffffffffb02b1bae
	.quad	-1338757096             # 0xffffffffb0343018
	.quad	-1338162046             # 0xffffffffb03d4482
	.quad	-1337566996             # 0xffffffffb04658ec
	.quad	-1336971946             # 0xffffffffb04f6d56
	.quad	-1336376896             # 0xffffffffb05881c0
	.quad	-1335781846             # 0xffffffffb061962a
	.quad	-1335186796             # 0xffffffffb06aaa94
	.quad	-1334591746             # 0xffffffffb073befe
	.quad	-1333996696             # 0xffffffffb07cd368
	.quad	-1333401646             # 0xffffffffb085e7d2
	.quad	-1332806596             # 0xffffffffb08efc3c
	.quad	-1332211546             # 0xffffffffb09810a6
	.quad	-1331616496             # 0xffffffffb0a12510
	.quad	-1331021446             # 0xffffffffb0aa397a
	.quad	-1330426396             # 0xffffffffb0b34de4
	.quad	-1329831346             # 0xffffffffb0bc624e
	.quad	-1329236296             # 0xffffffffb0c576b8
	.quad	-1328641246             # 0xffffffffb0ce8b22
	.quad	-1328046196             # 0xffffffffb0d79f8c
	.quad	-1327451146             # 0xffffffffb0e0b3f6
	.quad	-1326856096             # 0xffffffffb0e9c860
	.quad	-1326261046             # 0xffffffffb0f2dcca
	.quad	-1325665996             # 0xffffffffb0fbf134
	.quad	-1325070946             # 0xffffffffb105059e
	.quad	-1324475896             # 0xffffffffb10e1a08
	.quad	-1323880846             # 0xffffffffb1172e72
	.quad	-1323285796             # 0xffffffffb12042dc
	.quad	-1322690746             # 0xffffffffb1295746
	.quad	-1322095696             # 0xffffffffb1326bb0
	.quad	-1321500646             # 0xffffffffb13b801a
	.quad	-1320905596             # 0xffffffffb1449484
	.quad	-1320310546             # 0xffffffffb14da8ee
	.quad	-1319715496             # 0xffffffffb156bd58
	.quad	-1319120446             # 0xffffffffb15fd1c2
	.quad	-1318525396             # 0xffffffffb168e62c
	.quad	-1317930346             # 0xffffffffb171fa96
	.quad	-1317335296             # 0xffffffffb17b0f00
	.quad	-1316740246             # 0xffffffffb184236a
	.quad	-1316145196             # 0xffffffffb18d37d4
	.quad	-1315550146             # 0xffffffffb1964c3e
	.quad	-1314955096             # 0xffffffffb19f60a8
	.quad	-1314360046             # 0xffffffffb1a87512
	.quad	-1313764996             # 0xffffffffb1b1897c
	.quad	-1313169946             # 0xffffffffb1ba9de6
	.quad	-1312574896             # 0xffffffffb1c3b250
	.quad	-1311979846             # 0xffffffffb1ccc6ba
	.quad	-1311384796             # 0xffffffffb1d5db24
	.quad	-1310789746             # 0xffffffffb1deef8e
	.quad	-1310194696             # 0xffffffffb1e803f8
	.quad	-1309599646             # 0xffffffffb1f11862
	.quad	-1309004596             # 0xffffffffb1fa2ccc
	.quad	-1308409546             # 0xffffffffb2034136
	.quad	-1307814496             # 0xffffffffb20c55a0
	.quad	-1307219446             # 0xffffffffb2156a0a
	.quad	-1306624396             # 0xffffffffb21e7e74
	.quad	-1306029346             # 0xffffffffb22792de
	.quad	-1305434296             # 0xffffffffb230a748
	.quad	-1304839246             # 0xffffffffb239bbb2
	.quad	-1304244196             # 0xffffffffb242d01c
	.quad	-1303649146             # 0xffffffffb24be486
	.quad	-1303054096             # 0xffffffffb254f8f0
	.quad	-1302459046             # 0xffffffffb25e0d5a
	.quad	-1301863996             # 0xffffffffb26721c4
	.quad	-1301268946             # 0xffffffffb270362e
	.quad	-1300673896             # 0xffffffffb2794a98
	.quad	-1300078846             # 0xffffffffb2825f02
	.quad	-1299483796             # 0xffffffffb28b736c
	.quad	-1298888746             # 0xffffffffb29487d6
	.quad	-1298293696             # 0xffffffffb29d9c40
	.quad	-1297698646             # 0xffffffffb2a6b0aa
	.quad	-1297103596             # 0xffffffffb2afc514
	.quad	-1296508546             # 0xffffffffb2b8d97e
	.quad	-1295913496             # 0xffffffffb2c1ede8
	.quad	-1295318446             # 0xffffffffb2cb0252
	.quad	-1294723396             # 0xffffffffb2d416bc
	.quad	-1294128346             # 0xffffffffb2dd2b26
	.quad	-1293533296             # 0xffffffffb2e63f90
	.quad	-1292938246             # 0xffffffffb2ef53fa
	.quad	-1292343196             # 0xffffffffb2f86864
	.quad	-1291748146             # 0xffffffffb3017cce
	.quad	-1291153096             # 0xffffffffb30a9138
	.quad	-1290558046             # 0xffffffffb313a5a2
	.quad	-1289962996             # 0xffffffffb31cba0c
	.quad	-1289367946             # 0xffffffffb325ce76
	.quad	-1288772896             # 0xffffffffb32ee2e0
	.quad	-1288177846             # 0xffffffffb337f74a
	.quad	-1287582796             # 0xffffffffb3410bb4
	.quad	-1286987746             # 0xffffffffb34a201e
	.quad	-1286392696             # 0xffffffffb3533488
	.quad	-1285797646             # 0xffffffffb35c48f2
	.quad	-1285202596             # 0xffffffffb3655d5c
	.quad	-1284607546             # 0xffffffffb36e71c6
	.quad	-1284012496             # 0xffffffffb3778630
	.quad	-1283417446             # 0xffffffffb3809a9a
	.quad	-1282822396             # 0xffffffffb389af04
	.quad	-1282227346             # 0xffffffffb392c36e
	.quad	-1281632296             # 0xffffffffb39bd7d8
	.quad	-1291032246             # 0xffffffffb30c694a
	.quad	-1290427196             # 0xffffffffb315a4c4
	.quad	-1289822146             # 0xffffffffb31ee03e
	.quad	-1289217096             # 0xffffffffb3281bb8
	.quad	-1288612046             # 0xffffffffb3315732
	.quad	-1288006996             # 0xffffffffb33a92ac
	.quad	-1287401946             # 0xffffffffb343ce26
	.quad	-1286796896             # 0xffffffffb34d09a0
	.quad	-1286191846             # 0xffffffffb356451a
	.quad	-1285586796             # 0xffffffffb35f8094
	.quad	-1284981746             # 0xffffffffb368bc0e
	.quad	-1284376696             # 0xffffffffb371f788
	.quad	-1283771646             # 0xffffffffb37b3302
	.quad	-1283166596             # 0xffffffffb3846e7c
	.quad	-1282561546             # 0xffffffffb38da9f6
	.quad	-1281956496             # 0xffffffffb396e570
	.quad	-1281351446             # 0xffffffffb3a020ea
	.quad	-1280746396             # 0xffffffffb3a95c64
	.quad	-1280141346             # 0xffffffffb3b297de
	.quad	-1279536296             # 0xffffffffb3bbd358
	.quad	-1278931246             # 0xffffffffb3c50ed2
	.quad	-1278326196             # 0xffffffffb3ce4a4c
	.quad	-1277721146             # 0xffffffffb3d785c6
	.quad	-1277116096             # 0xffffffffb3e0c140
	.quad	-1276511046             # 0xffffffffb3e9fcba
	.quad	-1275905996             # 0xffffffffb3f33834
	.quad	-1275300946             # 0xffffffffb3fc73ae
	.quad	-1274695896             # 0xffffffffb405af28
	.quad	-1274090846             # 0xffffffffb40eeaa2
	.quad	-1273485796             # 0xffffffffb418261c
	.quad	-1272880746             # 0xffffffffb4216196
	.quad	-1272275696             # 0xffffffffb42a9d10
	.quad	-1271670646             # 0xffffffffb433d88a
	.quad	-1271065596             # 0xffffffffb43d1404
	.quad	-1270460546             # 0xffffffffb4464f7e
	.quad	-1269855496             # 0xffffffffb44f8af8
	.quad	-1269250446             # 0xffffffffb458c672
	.quad	-1268645396             # 0xffffffffb46201ec
	.quad	-1268040346             # 0xffffffffb46b3d66
	.quad	-1267435296             # 0xffffffffb47478e0
	.quad	-1266830246             # 0xffffffffb47db45a
	.quad	-1266225196             # 0xffffffffb486efd4
	.quad	-1265620146             # 0xffffffffb4902b4e
	.quad	-1265015096             # 0xffffffffb49966c8
	.quad	-1264410046             # 0xffffffffb4a2a242
	.quad	-1263804996             # 0xffffffffb4abddbc
	.quad	-1263199946             # 0xffffffffb4b51936
	.quad	-1262594896             # 0xffffffffb4be54b0
	.quad	-1261989846             # 0xffffffffb4c7902a
	.quad	-1261384796             # 0xffffffffb4d0cba4
	.quad	-1260779746             # 0xffffffffb4da071e
	.quad	-1260174696             # 0xffffffffb4e34298
	.quad	-1259569646             # 0xffffffffb4ec7e12
	.quad	-1258964596             # 0xffffffffb4f5b98c
	.quad	-1258359546             # 0xffffffffb4fef506
	.quad	-1257754496             # 0xffffffffb5083080
	.quad	-1257149446             # 0xffffffffb5116bfa
	.quad	-1256544396             # 0xffffffffb51aa774
	.quad	-1255939346             # 0xffffffffb523e2ee
	.quad	-1255334296             # 0xffffffffb52d1e68
	.quad	-1254729246             # 0xffffffffb53659e2
	.quad	-1254124196             # 0xffffffffb53f955c
	.quad	-1253519146             # 0xffffffffb548d0d6
	.quad	-1252914096             # 0xffffffffb5520c50
	.quad	-1252309046             # 0xffffffffb55b47ca
	.quad	-1251703996             # 0xffffffffb5648344
	.quad	-1251098946             # 0xffffffffb56dbebe
	.quad	-1250493896             # 0xffffffffb576fa38
	.quad	-1249888846             # 0xffffffffb58035b2
	.quad	-1249283796             # 0xffffffffb589712c
	.quad	-1248678746             # 0xffffffffb592aca6
	.quad	-1248073696             # 0xffffffffb59be820
	.quad	-1247468646             # 0xffffffffb5a5239a
	.quad	-1246863596             # 0xffffffffb5ae5f14
	.quad	-1246258546             # 0xffffffffb5b79a8e
	.quad	-1245653496             # 0xffffffffb5c0d608
	.quad	-1245048446             # 0xffffffffb5ca1182
	.quad	-1244443396             # 0xffffffffb5d34cfc
	.quad	-1243838346             # 0xffffffffb5dc8876
	.quad	-1243233296             # 0xffffffffb5e5c3f0
	.quad	-1242628246             # 0xffffffffb5eeff6a
	.quad	-1242023196             # 0xffffffffb5f83ae4
	.quad	-1241418146             # 0xffffffffb601765e
	.quad	-1240813096             # 0xffffffffb60ab1d8
	.quad	-1240208046             # 0xffffffffb613ed52
	.quad	-1239602996             # 0xffffffffb61d28cc
	.quad	-1238997946             # 0xffffffffb6266446
	.quad	-1238392896             # 0xffffffffb62f9fc0
	.quad	-1237787846             # 0xffffffffb638db3a
	.quad	-1237182796             # 0xffffffffb64216b4
	.quad	-1236577746             # 0xffffffffb64b522e
	.quad	-1235972696             # 0xffffffffb6548da8
	.quad	-1235367646             # 0xffffffffb65dc922
	.quad	-1234762596             # 0xffffffffb667049c
	.quad	-1234157546             # 0xffffffffb6704016
	.quad	-1233552496             # 0xffffffffb6797b90
	.quad	-1232947446             # 0xffffffffb682b70a
	.quad	-1232342396             # 0xffffffffb68bf284
	.quad	-1231737346             # 0xffffffffb6952dfe
	.quad	-1231132296             # 0xffffffffb69e6978
	.quad	-1241522246             # 0xffffffffb5ffdfba
	.quad	-1240907196             # 0xffffffffb6094244
	.quad	-1240292146             # 0xffffffffb612a4ce
	.quad	-1239677096             # 0xffffffffb61c0758
	.quad	-1239062046             # 0xffffffffb62569e2
	.quad	-1238446996             # 0xffffffffb62ecc6c
	.quad	-1237831946             # 0xffffffffb6382ef6
	.quad	-1237216896             # 0xffffffffb6419180
	.quad	-1236601846             # 0xffffffffb64af40a
	.quad	-1235986796             # 0xffffffffb6545694
	.quad	-1235371746             # 0xffffffffb65db91e
	.quad	-1234756696             # 0xffffffffb6671ba8
	.quad	-1234141646             # 0xffffffffb6707e32
	.quad	-1233526596             # 0xffffffffb679e0bc
	.quad	-1232911546             # 0xffffffffb6834346
	.quad	-1232296496             # 0xffffffffb68ca5d0
	.quad	-1231681446             # 0xffffffffb696085a
	.quad	-1231066396             # 0xffffffffb69f6ae4
	.quad	-1230451346             # 0xffffffffb6a8cd6e
	.quad	-1229836296             # 0xffffffffb6b22ff8
	.quad	-1229221246             # 0xffffffffb6bb9282
	.quad	-1228606196             # 0xffffffffb6c4f50c
	.quad	-1227991146             # 0xffffffffb6ce5796
	.quad	-1227376096             # 0xffffffffb6d7ba20
	.quad	-1226761046             # 0xffffffffb6e11caa
	.quad	-1226145996             # 0xffffffffb6ea7f34
	.quad	-1225530946             # 0xffffffffb6f3e1be
	.quad	-1224915896             # 0xffffffffb6fd4448
	.quad	-1224300846             # 0xffffffffb706a6d2
	.quad	-1223685796             # 0xffffffffb710095c
	.quad	-1223070746             # 0xffffffffb7196be6
	.quad	-1222455696             # 0xffffffffb722ce70
	.quad	-1221840646             # 0xffffffffb72c30fa
	.quad	-1221225596             # 0xffffffffb7359384
	.quad	-1220610546             # 0xffffffffb73ef60e
	.quad	-1219995496             # 0xffffffffb7485898
	.quad	-1219380446             # 0xffffffffb751bb22
	.quad	-1218765396             # 0xffffffffb75b1dac
	.quad	-1218150346             # 0xffffffffb7648036
	.quad	-1217535296             # 0xffffffffb76de2c0
	.quad	-1216920246             # 0xffffffffb777454a
	.quad	-1216305196             # 0xffffffffb780a7d4
	.quad	-1215690146             # 0xffffffffb78a0a5e
	.quad	-1215075096             # 0xffffffffb7936ce8
	.quad	-1214460046             # 0xffffffffb79ccf72
	.quad	-1213844996             # 0xffffffffb7a631fc
	.quad	-1213229946             # 0xffffffffb7af9486
	.quad	-1212614896             # 0xffffffffb7b8f710
	.quad	-1211999846             # 0xffffffffb7c2599a
	.quad	-1211384796             # 0xffffffffb7cbbc24
	.quad	-1210769746             # 0xffffffffb7d51eae
	.quad	-1210154696             # 0xffffffffb7de8138
	.quad	-1209539646             # 0xffffffffb7e7e3c2
	.quad	-1208924596             # 0xffffffffb7f1464c
	.quad	-1208309546             # 0xffffffffb7faa8d6
	.quad	-1207694496             # 0xffffffffb8040b60
	.quad	-1207079446             # 0xffffffffb80d6dea
	.quad	-1206464396             # 0xffffffffb816d074
	.quad	-1205849346             # 0xffffffffb82032fe
	.quad	-1205234296             # 0xffffffffb8299588
	.quad	-1204619246             # 0xffffffffb832f812
	.quad	-1204004196             # 0xffffffffb83c5a9c
	.quad	-1203389146             # 0xffffffffb845bd26
	.quad	-1202774096             # 0xffffffffb84f1fb0
	.quad	-1202159046             # 0xffffffffb858823a
	.quad	-1201543996             # 0xffffffffb861e4c4
	.quad	-1200928946             # 0xffffffffb86b474e
	.quad	-1200313896             # 0xffffffffb874a9d8
	.quad	-1199698846             # 0xffffffffb87e0c62
	.quad	-1199083796             # 0xffffffffb8876eec
	.quad	-1198468746             # 0xffffffffb890d176
	.quad	-1197853696             # 0xffffffffb89a3400
	.quad	-1197238646             # 0xffffffffb8a3968a
	.quad	-1196623596             # 0xffffffffb8acf914
	.quad	-1196008546             # 0xffffffffb8b65b9e
	.quad	-1195393496             # 0xffffffffb8bfbe28
	.quad	-1194778446             # 0xffffffffb8c920b2
	.quad	-1194163396             # 0xffffffffb8d2833c
	.quad	-1193548346             # 0xffffffffb8dbe5c6
	.quad	-1192933296             # 0xffffffffb8e54850
	.quad	-1192318246             # 0xffffffffb8eeaada
	.quad	-1191703196             # 0xffffffffb8f80d64
	.quad	-1191088146             # 0xffffffffb9016fee
	.quad	-1190473096             # 0xffffffffb90ad278
	.quad	-1189858046             # 0xffffffffb9143502
	.quad	-1189242996             # 0xffffffffb91d978c
	.quad	-1188627946             # 0xffffffffb926fa16
	.quad	-1188012896             # 0xffffffffb9305ca0
	.quad	-1187397846             # 0xffffffffb939bf2a
	.quad	-1186782796             # 0xffffffffb94321b4
	.quad	-1186167746             # 0xffffffffb94c843e
	.quad	-1185552696             # 0xffffffffb955e6c8
	.quad	-1184937646             # 0xffffffffb95f4952
	.quad	-1184322596             # 0xffffffffb968abdc
	.quad	-1183707546             # 0xffffffffb9720e66
	.quad	-1183092496             # 0xffffffffb97b70f0
	.quad	-1182477446             # 0xffffffffb984d37a
	.quad	-1181862396             # 0xffffffffb98e3604
	.quad	-1181247346             # 0xffffffffb997988e
	.quad	-1180632296             # 0xffffffffb9a0fb18
	.quad	-1192012246             # 0xffffffffb8f3562a
	.quad	-1191387196             # 0xffffffffb8fcdfc4
	.quad	-1190762146             # 0xffffffffb906695e
	.quad	-1190137096             # 0xffffffffb90ff2f8
	.quad	-1189512046             # 0xffffffffb9197c92
	.quad	-1188886996             # 0xffffffffb923062c
	.quad	-1188261946             # 0xffffffffb92c8fc6
	.quad	-1187636896             # 0xffffffffb9361960
	.quad	-1187011846             # 0xffffffffb93fa2fa
	.quad	-1186386796             # 0xffffffffb9492c94
	.quad	-1185761746             # 0xffffffffb952b62e
	.quad	-1185136696             # 0xffffffffb95c3fc8
	.quad	-1184511646             # 0xffffffffb965c962
	.quad	-1183886596             # 0xffffffffb96f52fc
	.quad	-1183261546             # 0xffffffffb978dc96
	.quad	-1182636496             # 0xffffffffb9826630
	.quad	-1182011446             # 0xffffffffb98befca
	.quad	-1181386396             # 0xffffffffb9957964
	.quad	-1180761346             # 0xffffffffb99f02fe
	.quad	-1180136296             # 0xffffffffb9a88c98
	.quad	-1179511246             # 0xffffffffb9b21632
	.quad	-1178886196             # 0xffffffffb9bb9fcc
	.quad	-1178261146             # 0xffffffffb9c52966
	.quad	-1177636096             # 0xffffffffb9ceb300
	.quad	-1177011046             # 0xffffffffb9d83c9a
	.quad	-1176385996             # 0xffffffffb9e1c634
	.quad	-1175760946             # 0xffffffffb9eb4fce
	.quad	-1175135896             # 0xffffffffb9f4d968
	.quad	-1174510846             # 0xffffffffb9fe6302
	.quad	-1173885796             # 0xffffffffba07ec9c
	.quad	-1173260746             # 0xffffffffba117636
	.quad	-1172635696             # 0xffffffffba1affd0
	.quad	-1172010646             # 0xffffffffba24896a
	.quad	-1171385596             # 0xffffffffba2e1304
	.quad	-1170760546             # 0xffffffffba379c9e
	.quad	-1170135496             # 0xffffffffba412638
	.quad	-1169510446             # 0xffffffffba4aafd2
	.quad	-1168885396             # 0xffffffffba54396c
	.quad	-1168260346             # 0xffffffffba5dc306
	.quad	-1167635296             # 0xffffffffba674ca0
	.quad	-1167010246             # 0xffffffffba70d63a
	.quad	-1166385196             # 0xffffffffba7a5fd4
	.quad	-1165760146             # 0xffffffffba83e96e
	.quad	-1165135096             # 0xffffffffba8d7308
	.quad	-1164510046             # 0xffffffffba96fca2
	.quad	-1163884996             # 0xffffffffbaa0863c
	.quad	-1163259946             # 0xffffffffbaaa0fd6
	.quad	-1162634896             # 0xffffffffbab39970
	.quad	-1162009846             # 0xffffffffbabd230a
	.quad	-1161384796             # 0xffffffffbac6aca4
	.quad	-1160759746             # 0xffffffffbad0363e
	.quad	-1160134696             # 0xffffffffbad9bfd8
	.quad	-1159509646             # 0xffffffffbae34972
	.quad	-1158884596             # 0xffffffffbaecd30c
	.quad	-1158259546             # 0xffffffffbaf65ca6
	.quad	-1157634496             # 0xffffffffbaffe640
	.quad	-1157009446             # 0xffffffffbb096fda
	.quad	-1156384396             # 0xffffffffbb12f974
	.quad	-1155759346             # 0xffffffffbb1c830e
	.quad	-1155134296             # 0xffffffffbb260ca8
	.quad	-1154509246             # 0xffffffffbb2f9642
	.quad	-1153884196             # 0xffffffffbb391fdc
	.quad	-1153259146             # 0xffffffffbb42a976
	.quad	-1152634096             # 0xffffffffbb4c3310
	.quad	-1152009046             # 0xffffffffbb55bcaa
	.quad	-1151383996             # 0xffffffffbb5f4644
	.quad	-1150758946             # 0xffffffffbb68cfde
	.quad	-1150133896             # 0xffffffffbb725978
	.quad	-1149508846             # 0xffffffffbb7be312
	.quad	-1148883796             # 0xffffffffbb856cac
	.quad	-1148258746             # 0xffffffffbb8ef646
	.quad	-1147633696             # 0xffffffffbb987fe0
	.quad	-1147008646             # 0xffffffffbba2097a
	.quad	-1146383596             # 0xffffffffbbab9314
	.quad	-1145758546             # 0xffffffffbbb51cae
	.quad	-1145133496             # 0xffffffffbbbea648
	.quad	-1144508446             # 0xffffffffbbc82fe2
	.quad	-1143883396             # 0xffffffffbbd1b97c
	.quad	-1143258346             # 0xffffffffbbdb4316
	.quad	-1142633296             # 0xffffffffbbe4ccb0
	.quad	-1142008246             # 0xffffffffbbee564a
	.quad	-1141383196             # 0xffffffffbbf7dfe4
	.quad	-1140758146             # 0xffffffffbc01697e
	.quad	-1140133096             # 0xffffffffbc0af318
	.quad	-1139508046             # 0xffffffffbc147cb2
	.quad	-1138882996             # 0xffffffffbc1e064c
	.quad	-1138257946             # 0xffffffffbc278fe6
	.quad	-1137632896             # 0xffffffffbc311980
	.quad	-1137007846             # 0xffffffffbc3aa31a
	.quad	-1136382796             # 0xffffffffbc442cb4
	.quad	-1135757746             # 0xffffffffbc4db64e
	.quad	-1135132696             # 0xffffffffbc573fe8
	.quad	-1134507646             # 0xffffffffbc60c982
	.quad	-1133882596             # 0xffffffffbc6a531c
	.quad	-1133257546             # 0xffffffffbc73dcb6
	.quad	-1132632496             # 0xffffffffbc7d6650
	.quad	-1132007446             # 0xffffffffbc86efea
	.quad	-1131382396             # 0xffffffffbc907984
	.quad	-1130757346             # 0xffffffffbc9a031e
	.quad	-1130132296             # 0xffffffffbca38cb8
	.quad	-1142502246             # 0xffffffffbbe6cc9a
	.quad	-1141867196             # 0xffffffffbbf07d44
	.quad	-1141232146             # 0xffffffffbbfa2dee
	.quad	-1140597096             # 0xffffffffbc03de98
	.quad	-1139962046             # 0xffffffffbc0d8f42
	.quad	-1139326996             # 0xffffffffbc173fec
	.quad	-1138691946             # 0xffffffffbc20f096
	.quad	-1138056896             # 0xffffffffbc2aa140
	.quad	-1137421846             # 0xffffffffbc3451ea
	.quad	-1136786796             # 0xffffffffbc3e0294
	.quad	-1136151746             # 0xffffffffbc47b33e
	.quad	-1135516696             # 0xffffffffbc5163e8
	.quad	-1134881646             # 0xffffffffbc5b1492
	.quad	-1134246596             # 0xffffffffbc64c53c
	.quad	-1133611546             # 0xffffffffbc6e75e6
	.quad	-1132976496             # 0xffffffffbc782690
	.quad	-1132341446             # 0xffffffffbc81d73a
	.quad	-1131706396             # 0xffffffffbc8b87e4
	.quad	-1131071346             # 0xffffffffbc95388e
	.quad	-1130436296             # 0xffffffffbc9ee938
	.quad	-1129801246             # 0xffffffffbca899e2
	.quad	-1129166196             # 0xffffffffbcb24a8c
	.quad	-1128531146             # 0xffffffffbcbbfb36
	.quad	-1127896096             # 0xffffffffbcc5abe0
	.quad	-1127261046             # 0xffffffffbccf5c8a
	.quad	-1126625996             # 0xffffffffbcd90d34
	.quad	-1125990946             # 0xffffffffbce2bdde
	.quad	-1125355896             # 0xffffffffbcec6e88
	.quad	-1124720846             # 0xffffffffbcf61f32
	.quad	-1124085796             # 0xffffffffbcffcfdc
	.quad	-1123450746             # 0xffffffffbd098086
	.quad	-1122815696             # 0xffffffffbd133130
	.quad	-1122180646             # 0xffffffffbd1ce1da
	.quad	-1121545596             # 0xffffffffbd269284
	.quad	-1120910546             # 0xffffffffbd30432e
	.quad	-1120275496             # 0xffffffffbd39f3d8
	.quad	-1119640446             # 0xffffffffbd43a482
	.quad	-1119005396             # 0xffffffffbd4d552c
	.quad	-1118370346             # 0xffffffffbd5705d6
	.quad	-1117735296             # 0xffffffffbd60b680
	.quad	-1117100246             # 0xffffffffbd6a672a
	.quad	-1116465196             # 0xffffffffbd7417d4
	.quad	-1115830146             # 0xffffffffbd7dc87e
	.quad	-1115195096             # 0xffffffffbd877928
	.quad	-1114560046             # 0xffffffffbd9129d2
	.quad	-1113924996             # 0xffffffffbd9ada7c
	.quad	-1113289946             # 0xffffffffbda48b26
	.quad	-1112654896             # 0xffffffffbdae3bd0
	.quad	-1112019846             # 0xffffffffbdb7ec7a
	.quad	-1111384796             # 0xffffffffbdc19d24
	.quad	-1110749746             # 0xffffffffbdcb4dce
	.quad	-1110114696             # 0xffffffffbdd4fe78
	.quad	-1109479646             # 0xffffffffbddeaf22
	.quad	-1108844596             # 0xffffffffbde85fcc
	.quad	-1108209546             # 0xffffffffbdf21076
	.quad	-1107574496             # 0xffffffffbdfbc120
	.quad	-1106939446             # 0xffffffffbe0571ca
	.quad	-1106304396             # 0xffffffffbe0f2274
	.quad	-1105669346             # 0xffffffffbe18d31e
	.quad	-1105034296             # 0xffffffffbe2283c8
	.quad	-1104399246             # 0xffffffffbe2c3472
	.quad	-1103764196             # 0xffffffffbe35e51c
	.quad	-1103129146             # 0xffffffffbe3f95c6
	.quad	-1102494096             # 0xffffffffbe494670
	.quad	-1101859046             # 0xffffffffbe52f71a
	.quad	-1101223996             # 0xffffffffbe5ca7c4
	.quad	-1100588946             # 0xffffffffbe66586e
	.quad	-1099953896             # 0xffffffffbe700918
	.quad	-1099318846             # 0xffffffffbe79b9c2
	.quad	-1098683796             # 0xffffffffbe836a6c
	.quad	-1098048746             # 0xffffffffbe8d1b16
	.quad	-1097413696             # 0xffffffffbe96cbc0
	.quad	-1096778646             # 0xffffffffbea07c6a
	.quad	-1096143596             # 0xffffffffbeaa2d14
	.quad	-1095508546             # 0xffffffffbeb3ddbe
	.quad	-1094873496             # 0xffffffffbebd8e68
	.quad	-1094238446             # 0xffffffffbec73f12
	.quad	-1093603396             # 0xffffffffbed0efbc
	.quad	-1092968346             # 0xffffffffbedaa066
	.quad	-1092333296             # 0xffffffffbee45110
	.quad	-1091698246             # 0xffffffffbeee01ba
	.quad	-1091063196             # 0xffffffffbef7b264
	.quad	-1090428146             # 0xffffffffbf01630e
	.quad	-1089793096             # 0xffffffffbf0b13b8
	.quad	-1089158046             # 0xffffffffbf14c462
	.quad	-1088522996             # 0xffffffffbf1e750c
	.quad	-1087887946             # 0xffffffffbf2825b6
	.quad	-1087252896             # 0xffffffffbf31d660
	.quad	-1086617846             # 0xffffffffbf3b870a
	.quad	-1085982796             # 0xffffffffbf4537b4
	.quad	-1085347746             # 0xffffffffbf4ee85e
	.quad	-1084712696             # 0xffffffffbf589908
	.quad	-1084077646             # 0xffffffffbf6249b2
	.quad	-1083442596             # 0xffffffffbf6bfa5c
	.quad	-1082807546             # 0xffffffffbf75ab06
	.quad	-1082172496             # 0xffffffffbf7f5bb0
	.quad	-1081537446             # 0xffffffffbf890c5a
	.quad	-1080902396             # 0xffffffffbf92bd04
	.quad	-1080267346             # 0xffffffffbf9c6dae
	.quad	-1079632296             # 0xffffffffbfa61e58
	.quad	-1092992246             # 0xffffffffbeda430a
	.quad	-1092347196             # 0xffffffffbee41ac4
	.quad	-1091702146             # 0xffffffffbeedf27e
	.quad	-1091057096             # 0xffffffffbef7ca38
	.quad	-1090412046             # 0xffffffffbf01a1f2
	.quad	-1089766996             # 0xffffffffbf0b79ac
	.quad	-1089121946             # 0xffffffffbf155166
	.quad	-1088476896             # 0xffffffffbf1f2920
	.quad	-1087831846             # 0xffffffffbf2900da
	.quad	-1087186796             # 0xffffffffbf32d894
	.quad	-1086541746             # 0xffffffffbf3cb04e
	.quad	-1085896696             # 0xffffffffbf468808
	.quad	-1085251646             # 0xffffffffbf505fc2
	.quad	-1084606596             # 0xffffffffbf5a377c
	.quad	-1083961546             # 0xffffffffbf640f36
	.quad	-1083316496             # 0xffffffffbf6de6f0
	.quad	-1082671446             # 0xffffffffbf77beaa
	.quad	-1082026396             # 0xffffffffbf819664
	.quad	-1081381346             # 0xffffffffbf8b6e1e
	.quad	-1080736296             # 0xffffffffbf9545d8
	.quad	-1080091246             # 0xffffffffbf9f1d92
	.quad	-1079446196             # 0xffffffffbfa8f54c
	.quad	-1078801146             # 0xffffffffbfb2cd06
	.quad	-1078156096             # 0xffffffffbfbca4c0
	.quad	-1077511046             # 0xffffffffbfc67c7a
	.quad	-1076865996             # 0xffffffffbfd05434
	.quad	-1076220946             # 0xffffffffbfda2bee
	.quad	-1075575896             # 0xffffffffbfe403a8
	.quad	-1074930846             # 0xffffffffbfeddb62
	.quad	-1074285796             # 0xffffffffbff7b31c
	.quad	-1073640746             # 0xffffffffc0018ad6
	.quad	-1072995696             # 0xffffffffc00b6290
	.quad	-1072350646             # 0xffffffffc0153a4a
	.quad	-1071705596             # 0xffffffffc01f1204
	.quad	-1071060546             # 0xffffffffc028e9be
	.quad	-1070415496             # 0xffffffffc032c178
	.quad	-1069770446             # 0xffffffffc03c9932
	.quad	-1069125396             # 0xffffffffc04670ec
	.quad	-1068480346             # 0xffffffffc05048a6
	.quad	-1067835296             # 0xffffffffc05a2060
	.quad	-1067190246             # 0xffffffffc063f81a
	.quad	-1066545196             # 0xffffffffc06dcfd4
	.quad	-1065900146             # 0xffffffffc077a78e
	.quad	-1065255096             # 0xffffffffc0817f48
	.quad	-1064610046             # 0xffffffffc08b5702
	.quad	-1063964996             # 0xffffffffc0952ebc
	.quad	-1063319946             # 0xffffffffc09f0676
	.quad	-1062674896             # 0xffffffffc0a8de30
	.quad	-1062029846             # 0xffffffffc0b2b5ea
	.quad	-1061384796             # 0xffffffffc0bc8da4
	.quad	-1060739746             # 0xffffffffc0c6655e
	.quad	-1060094696             # 0xffffffffc0d03d18
	.quad	-1059449646             # 0xffffffffc0da14d2
	.quad	-1058804596             # 0xffffffffc0e3ec8c
	.quad	-1058159546             # 0xffffffffc0edc446
	.quad	-1057514496             # 0xffffffffc0f79c00
	.quad	-1056869446             # 0xffffffffc10173ba
	.quad	-1056224396             # 0xffffffffc10b4b74
	.quad	-1055579346             # 0xffffffffc115232e
	.quad	-1054934296             # 0xffffffffc11efae8
	.quad	-1054289246             # 0xffffffffc128d2a2
	.quad	-1053644196             # 0xffffffffc132aa5c
	.quad	-1052999146             # 0xffffffffc13c8216
	.quad	-1052354096             # 0xffffffffc14659d0
	.quad	-1051709046             # 0xffffffffc150318a
	.quad	-1051063996             # 0xffffffffc15a0944
	.quad	-1050418946             # 0xffffffffc163e0fe
	.quad	-1049773896             # 0xffffffffc16db8b8
	.quad	-1049128846             # 0xffffffffc1779072
	.quad	-1048483796             # 0xffffffffc181682c
	.quad	-1047838746             # 0xffffffffc18b3fe6
	.quad	-1047193696             # 0xffffffffc19517a0
	.quad	-1046548646             # 0xffffffffc19eef5a
	.quad	-1045903596             # 0xffffffffc1a8c714
	.quad	-1045258546             # 0xffffffffc1b29ece
	.quad	-1044613496             # 0xffffffffc1bc7688
	.quad	-1043968446             # 0xffffffffc1c64e42
	.quad	-1043323396             # 0xffffffffc1d025fc
	.quad	-1042678346             # 0xffffffffc1d9fdb6
	.quad	-1042033296             # 0xffffffffc1e3d570
	.quad	-1041388246             # 0xffffffffc1edad2a
	.quad	-1040743196             # 0xffffffffc1f784e4
	.quad	-1040098146             # 0xffffffffc2015c9e
	.quad	-1039453096             # 0xffffffffc20b3458
	.quad	-1038808046             # 0xffffffffc2150c12
	.quad	-1038162996             # 0xffffffffc21ee3cc
	.quad	-1037517946             # 0xffffffffc228bb86
	.quad	-1036872896             # 0xffffffffc2329340
	.quad	-1036227846             # 0xffffffffc23c6afa
	.quad	-1035582796             # 0xffffffffc24642b4
	.quad	-1034937746             # 0xffffffffc2501a6e
	.quad	-1034292696             # 0xffffffffc259f228
	.quad	-1033647646             # 0xffffffffc263c9e2
	.quad	-1033002596             # 0xffffffffc26da19c
	.quad	-1032357546             # 0xffffffffc2777956
	.quad	-1031712496             # 0xffffffffc2815110
	.quad	-1031067446             # 0xffffffffc28b28ca
	.quad	-1030422396             # 0xffffffffc2950084
	.quad	-1029777346             # 0xffffffffc29ed83e
	.quad	-1029132296             # 0xffffffffc2a8aff8
	.quad	-1043482246             # 0xffffffffc1cdb97a
	.quad	-1042827196             # 0xffffffffc1d7b844
	.quad	-1042172146             # 0xffffffffc1e1b70e
	.quad	-1041517096             # 0xffffffffc1ebb5d8
	.quad	-1040862046             # 0xffffffffc1f5b4a2
	.quad	-1040206996             # 0xffffffffc1ffb36c
	.quad	-1039551946             # 0xffffffffc209b236
	.quad	-1038896896             # 0xffffffffc213b100
	.quad	-1038241846             # 0xffffffffc21dafca
	.quad	-1037586796             # 0xffffffffc227ae94
	.quad	-1036931746             # 0xffffffffc231ad5e
	.quad	-1036276696             # 0xffffffffc23bac28
	.quad	-1035621646             # 0xffffffffc245aaf2
	.quad	-1034966596             # 0xffffffffc24fa9bc
	.quad	-1034311546             # 0xffffffffc259a886
	.quad	-1033656496             # 0xffffffffc263a750
	.quad	-1033001446             # 0xffffffffc26da61a
	.quad	-1032346396             # 0xffffffffc277a4e4
	.quad	-1031691346             # 0xffffffffc281a3ae
	.quad	-1031036296             # 0xffffffffc28ba278
	.quad	-1030381246             # 0xffffffffc295a142
	.quad	-1029726196             # 0xffffffffc29fa00c
	.quad	-1029071146             # 0xffffffffc2a99ed6
	.quad	-1028416096             # 0xffffffffc2b39da0
	.quad	-1027761046             # 0xffffffffc2bd9c6a
	.quad	-1027105996             # 0xffffffffc2c79b34
	.quad	-1026450946             # 0xffffffffc2d199fe
	.quad	-1025795896             # 0xffffffffc2db98c8
	.quad	-1025140846             # 0xffffffffc2e59792
	.quad	-1024485796             # 0xffffffffc2ef965c
	.quad	-1023830746             # 0xffffffffc2f99526
	.quad	-1023175696             # 0xffffffffc30393f0
	.quad	-1022520646             # 0xffffffffc30d92ba
	.quad	-1021865596             # 0xffffffffc3179184
	.quad	-1021210546             # 0xffffffffc321904e
	.quad	-1020555496             # 0xffffffffc32b8f18
	.quad	-1019900446             # 0xffffffffc3358de2
	.quad	-1019245396             # 0xffffffffc33f8cac
	.quad	-1018590346             # 0xffffffffc3498b76
	.quad	-1017935296             # 0xffffffffc3538a40
	.quad	-1017280246             # 0xffffffffc35d890a
	.quad	-1016625196             # 0xffffffffc36787d4
	.quad	-1015970146             # 0xffffffffc371869e
	.quad	-1015315096             # 0xffffffffc37b8568
	.quad	-1014660046             # 0xffffffffc3858432
	.quad	-1014004996             # 0xffffffffc38f82fc
	.quad	-1013349946             # 0xffffffffc39981c6
	.quad	-1012694896             # 0xffffffffc3a38090
	.quad	-1012039846             # 0xffffffffc3ad7f5a
	.quad	-1011384796             # 0xffffffffc3b77e24
	.quad	-1010729746             # 0xffffffffc3c17cee
	.quad	-1010074696             # 0xffffffffc3cb7bb8
	.quad	-1009419646             # 0xffffffffc3d57a82
	.quad	-1008764596             # 0xffffffffc3df794c
	.quad	-1008109546             # 0xffffffffc3e97816
	.quad	-1007454496             # 0xffffffffc3f376e0
	.quad	-1006799446             # 0xffffffffc3fd75aa
	.quad	-1006144396             # 0xffffffffc4077474
	.quad	-1005489346             # 0xffffffffc411733e
	.quad	-1004834296             # 0xffffffffc41b7208
	.quad	-1004179246             # 0xffffffffc42570d2
	.quad	-1003524196             # 0xffffffffc42f6f9c
	.quad	-1002869146             # 0xffffffffc4396e66
	.quad	-1002214096             # 0xffffffffc4436d30
	.quad	-1001559046             # 0xffffffffc44d6bfa
	.quad	-1000903996             # 0xffffffffc4576ac4
	.quad	-1000248946             # 0xffffffffc461698e
	.quad	-999593896              # 0xffffffffc46b6858
	.quad	-998938846              # 0xffffffffc4756722
	.quad	-998283796              # 0xffffffffc47f65ec
	.quad	-997628746              # 0xffffffffc48964b6
	.quad	-996973696              # 0xffffffffc4936380
	.quad	-996318646              # 0xffffffffc49d624a
	.quad	-995663596              # 0xffffffffc4a76114
	.quad	-995008546              # 0xffffffffc4b15fde
	.quad	-994353496              # 0xffffffffc4bb5ea8
	.quad	-993698446              # 0xffffffffc4c55d72
	.quad	-993043396              # 0xffffffffc4cf5c3c
	.quad	-992388346              # 0xffffffffc4d95b06
	.quad	-991733296              # 0xffffffffc4e359d0
	.quad	-991078246              # 0xffffffffc4ed589a
	.quad	-990423196              # 0xffffffffc4f75764
	.quad	-989768146              # 0xffffffffc501562e
	.quad	-989113096              # 0xffffffffc50b54f8
	.quad	-988458046              # 0xffffffffc51553c2
	.quad	-987802996              # 0xffffffffc51f528c
	.quad	-987147946              # 0xffffffffc5295156
	.quad	-986492896              # 0xffffffffc5335020
	.quad	-985837846              # 0xffffffffc53d4eea
	.quad	-985182796              # 0xffffffffc5474db4
	.quad	-984527746              # 0xffffffffc5514c7e
	.quad	-983872696              # 0xffffffffc55b4b48
	.quad	-983217646              # 0xffffffffc5654a12
	.quad	-982562596              # 0xffffffffc56f48dc
	.quad	-981907546              # 0xffffffffc57947a6
	.quad	-981252496              # 0xffffffffc5834670
	.quad	-980597446              # 0xffffffffc58d453a
	.quad	-979942396              # 0xffffffffc5974404
	.quad	-979287346              # 0xffffffffc5a142ce
	.quad	-978632296              # 0xffffffffc5ab4198
	.quad	-993972246              # 0xffffffffc4c12fea
	.quad	-993307196              # 0xffffffffc4cb55c4
	.quad	-992642146              # 0xffffffffc4d57b9e
	.quad	-991977096              # 0xffffffffc4dfa178
	.quad	-991312046              # 0xffffffffc4e9c752
	.quad	-990646996              # 0xffffffffc4f3ed2c
	.quad	-989981946              # 0xffffffffc4fe1306
	.quad	-989316896              # 0xffffffffc50838e0
	.quad	-988651846              # 0xffffffffc5125eba
	.quad	-987986796              # 0xffffffffc51c8494
	.quad	-987321746              # 0xffffffffc526aa6e
	.quad	-986656696              # 0xffffffffc530d048
	.quad	-985991646              # 0xffffffffc53af622
	.quad	-985326596              # 0xffffffffc5451bfc
	.quad	-984661546              # 0xffffffffc54f41d6
	.quad	-983996496              # 0xffffffffc55967b0
	.quad	-983331446              # 0xffffffffc5638d8a
	.quad	-982666396              # 0xffffffffc56db364
	.quad	-982001346              # 0xffffffffc577d93e
	.quad	-981336296              # 0xffffffffc581ff18
	.quad	-980671246              # 0xffffffffc58c24f2
	.quad	-980006196              # 0xffffffffc5964acc
	.quad	-979341146              # 0xffffffffc5a070a6
	.quad	-978676096              # 0xffffffffc5aa9680
	.quad	-978011046              # 0xffffffffc5b4bc5a
	.quad	-977345996              # 0xffffffffc5bee234
	.quad	-976680946              # 0xffffffffc5c9080e
	.quad	-976015896              # 0xffffffffc5d32de8
	.quad	-975350846              # 0xffffffffc5dd53c2
	.quad	-974685796              # 0xffffffffc5e7799c
	.quad	-974020746              # 0xffffffffc5f19f76
	.quad	-973355696              # 0xffffffffc5fbc550
	.quad	-972690646              # 0xffffffffc605eb2a
	.quad	-972025596              # 0xffffffffc6101104
	.quad	-971360546              # 0xffffffffc61a36de
	.quad	-970695496              # 0xffffffffc6245cb8
	.quad	-970030446              # 0xffffffffc62e8292
	.quad	-969365396              # 0xffffffffc638a86c
	.quad	-968700346              # 0xffffffffc642ce46
	.quad	-968035296              # 0xffffffffc64cf420
	.quad	-967370246              # 0xffffffffc65719fa
	.quad	-966705196              # 0xffffffffc6613fd4
	.quad	-966040146              # 0xffffffffc66b65ae
	.quad	-965375096              # 0xffffffffc6758b88
	.quad	-964710046              # 0xffffffffc67fb162
	.quad	-964044996              # 0xffffffffc689d73c
	.quad	-963379946              # 0xffffffffc693fd16
	.quad	-962714896              # 0xffffffffc69e22f0
	.quad	-962049846              # 0xffffffffc6a848ca
	.quad	-961384796              # 0xffffffffc6b26ea4
	.quad	-960719746              # 0xffffffffc6bc947e
	.quad	-960054696              # 0xffffffffc6c6ba58
	.quad	-959389646              # 0xffffffffc6d0e032
	.quad	-958724596              # 0xffffffffc6db060c
	.quad	-958059546              # 0xffffffffc6e52be6
	.quad	-957394496              # 0xffffffffc6ef51c0
	.quad	-956729446              # 0xffffffffc6f9779a
	.quad	-956064396              # 0xffffffffc7039d74
	.quad	-955399346              # 0xffffffffc70dc34e
	.quad	-954734296              # 0xffffffffc717e928
	.quad	-954069246              # 0xffffffffc7220f02
	.quad	-953404196              # 0xffffffffc72c34dc
	.quad	-952739146              # 0xffffffffc7365ab6
	.quad	-952074096              # 0xffffffffc7408090
	.quad	-951409046              # 0xffffffffc74aa66a
	.quad	-950743996              # 0xffffffffc754cc44
	.quad	-950078946              # 0xffffffffc75ef21e
	.quad	-949413896              # 0xffffffffc76917f8
	.quad	-948748846              # 0xffffffffc7733dd2
	.quad	-948083796              # 0xffffffffc77d63ac
	.quad	-947418746              # 0xffffffffc7878986
	.quad	-946753696              # 0xffffffffc791af60
	.quad	-946088646              # 0xffffffffc79bd53a
	.quad	-945423596              # 0xffffffffc7a5fb14
	.quad	-944758546              # 0xffffffffc7b020ee
	.quad	-944093496              # 0xffffffffc7ba46c8
	.quad	-943428446              # 0xffffffffc7c46ca2
	.quad	-942763396              # 0xffffffffc7ce927c
	.quad	-942098346              # 0xffffffffc7d8b856
	.quad	-941433296              # 0xffffffffc7e2de30
	.quad	-940768246              # 0xffffffffc7ed040a
	.quad	-940103196              # 0xffffffffc7f729e4
	.quad	-939438146              # 0xffffffffc8014fbe
	.quad	-938773096              # 0xffffffffc80b7598
	.quad	-938108046              # 0xffffffffc8159b72
	.quad	-937442996              # 0xffffffffc81fc14c
	.quad	-936777946              # 0xffffffffc829e726
	.quad	-936112896              # 0xffffffffc8340d00
	.quad	-935447846              # 0xffffffffc83e32da
	.quad	-934782796              # 0xffffffffc84858b4
	.quad	-934117746              # 0xffffffffc8527e8e
	.quad	-933452696              # 0xffffffffc85ca468
	.quad	-932787646              # 0xffffffffc866ca42
	.quad	-932122596              # 0xffffffffc870f01c
	.quad	-931457546              # 0xffffffffc87b15f6
	.quad	-930792496              # 0xffffffffc8853bd0
	.quad	-930127446              # 0xffffffffc88f61aa
	.quad	-929462396              # 0xffffffffc8998784
	.quad	-928797346              # 0xffffffffc8a3ad5e
	.quad	-928132296              # 0xffffffffc8add338
	.quad	-944462246              # 0xffffffffc7b4a65a
	.quad	-943787196              # 0xffffffffc7bef344
	.quad	-943112146              # 0xffffffffc7c9402e
	.quad	-942437096              # 0xffffffffc7d38d18
	.quad	-941762046              # 0xffffffffc7ddda02
	.quad	-941086996              # 0xffffffffc7e826ec
	.quad	-940411946              # 0xffffffffc7f273d6
	.quad	-939736896              # 0xffffffffc7fcc0c0
	.quad	-939061846              # 0xffffffffc8070daa
	.quad	-938386796              # 0xffffffffc8115a94
	.quad	-937711746              # 0xffffffffc81ba77e
	.quad	-937036696              # 0xffffffffc825f468
	.quad	-936361646              # 0xffffffffc8304152
	.quad	-935686596              # 0xffffffffc83a8e3c
	.quad	-935011546              # 0xffffffffc844db26
	.quad	-934336496              # 0xffffffffc84f2810
	.quad	-933661446              # 0xffffffffc85974fa
	.quad	-932986396              # 0xffffffffc863c1e4
	.quad	-932311346              # 0xffffffffc86e0ece
	.quad	-931636296              # 0xffffffffc8785bb8
	.quad	-930961246              # 0xffffffffc882a8a2
	.quad	-930286196              # 0xffffffffc88cf58c
	.quad	-929611146              # 0xffffffffc8974276
	.quad	-928936096              # 0xffffffffc8a18f60
	.quad	-928261046              # 0xffffffffc8abdc4a
	.quad	-927585996              # 0xffffffffc8b62934
	.quad	-926910946              # 0xffffffffc8c0761e
	.quad	-926235896              # 0xffffffffc8cac308
	.quad	-925560846              # 0xffffffffc8d50ff2
	.quad	-924885796              # 0xffffffffc8df5cdc
	.quad	-924210746              # 0xffffffffc8e9a9c6
	.quad	-923535696              # 0xffffffffc8f3f6b0
	.quad	-922860646              # 0xffffffffc8fe439a
	.quad	-922185596              # 0xffffffffc9089084
	.quad	-921510546              # 0xffffffffc912dd6e
	.quad	-920835496              # 0xffffffffc91d2a58
	.quad	-920160446              # 0xffffffffc9277742
	.quad	-919485396              # 0xffffffffc931c42c
	.quad	-918810346              # 0xffffffffc93c1116
	.quad	-918135296              # 0xffffffffc9465e00
	.quad	-917460246              # 0xffffffffc950aaea
	.quad	-916785196              # 0xffffffffc95af7d4
	.quad	-916110146              # 0xffffffffc96544be
	.quad	-915435096              # 0xffffffffc96f91a8
	.quad	-914760046              # 0xffffffffc979de92
	.quad	-914084996              # 0xffffffffc9842b7c
	.quad	-913409946              # 0xffffffffc98e7866
	.quad	-912734896              # 0xffffffffc998c550
	.quad	-912059846              # 0xffffffffc9a3123a
	.quad	-911384796              # 0xffffffffc9ad5f24
	.quad	-910709746              # 0xffffffffc9b7ac0e
	.quad	-910034696              # 0xffffffffc9c1f8f8
	.quad	-909359646              # 0xffffffffc9cc45e2
	.quad	-908684596              # 0xffffffffc9d692cc
	.quad	-908009546              # 0xffffffffc9e0dfb6
	.quad	-907334496              # 0xffffffffc9eb2ca0
	.quad	-906659446              # 0xffffffffc9f5798a
	.quad	-905984396              # 0xffffffffc9ffc674
	.quad	-905309346              # 0xffffffffca0a135e
	.quad	-904634296              # 0xffffffffca146048
	.quad	-903959246              # 0xffffffffca1ead32
	.quad	-903284196              # 0xffffffffca28fa1c
	.quad	-902609146              # 0xffffffffca334706
	.quad	-901934096              # 0xffffffffca3d93f0
	.quad	-901259046              # 0xffffffffca47e0da
	.quad	-900583996              # 0xffffffffca522dc4
	.quad	-899908946              # 0xffffffffca5c7aae
	.quad	-899233896              # 0xffffffffca66c798
	.quad	-898558846              # 0xffffffffca711482
	.quad	-897883796              # 0xffffffffca7b616c
	.quad	-897208746              # 0xffffffffca85ae56
	.quad	-896533696              # 0xffffffffca8ffb40
	.quad	-895858646              # 0xffffffffca9a482a
	.quad	-895183596              # 0xffffffffcaa49514
	.quad	-894508546              # 0xffffffffcaaee1fe
	.quad	-893833496              # 0xffffffffcab92ee8
	.quad	-893158446              # 0xffffffffcac37bd2
	.quad	-892483396              # 0xffffffffcacdc8bc
	.quad	-891808346              # 0xffffffffcad815a6
	.quad	-891133296              # 0xffffffffcae26290
	.quad	-890458246              # 0xffffffffcaecaf7a
	.quad	-889783196              # 0xffffffffcaf6fc64
	.quad	-889108146              # 0xffffffffcb01494e
	.quad	-888433096              # 0xffffffffcb0b9638
	.quad	-887758046              # 0xffffffffcb15e322
	.quad	-887082996              # 0xffffffffcb20300c
	.quad	-886407946              # 0xffffffffcb2a7cf6
	.quad	-885732896              # 0xffffffffcb34c9e0
	.quad	-885057846              # 0xffffffffcb3f16ca
	.quad	-884382796              # 0xffffffffcb4963b4
	.quad	-883707746              # 0xffffffffcb53b09e
	.quad	-883032696              # 0xffffffffcb5dfd88
	.quad	-882357646              # 0xffffffffcb684a72
	.quad	-881682596              # 0xffffffffcb72975c
	.quad	-881007546              # 0xffffffffcb7ce446
	.quad	-880332496              # 0xffffffffcb873130
	.quad	-879657446              # 0xffffffffcb917e1a
	.quad	-878982396              # 0xffffffffcb9bcb04
	.quad	-878307346              # 0xffffffffcba617ee
	.quad	-877632296              # 0xffffffffcbb064d8
	.quad	-894952246              # 0xffffffffcaa81cca
	.quad	-894267196              # 0xffffffffcab290c4
	.quad	-893582146              # 0xffffffffcabd04be
	.quad	-892897096              # 0xffffffffcac778b8
	.quad	-892212046              # 0xffffffffcad1ecb2
	.quad	-891526996              # 0xffffffffcadc60ac
	.quad	-890841946              # 0xffffffffcae6d4a6
	.quad	-890156896              # 0xffffffffcaf148a0
	.quad	-889471846              # 0xffffffffcafbbc9a
	.quad	-888786796              # 0xffffffffcb063094
	.quad	-888101746              # 0xffffffffcb10a48e
	.quad	-887416696              # 0xffffffffcb1b1888
	.quad	-886731646              # 0xffffffffcb258c82
	.quad	-886046596              # 0xffffffffcb30007c
	.quad	-885361546              # 0xffffffffcb3a7476
	.quad	-884676496              # 0xffffffffcb44e870
	.quad	-883991446              # 0xffffffffcb4f5c6a
	.quad	-883306396              # 0xffffffffcb59d064
	.quad	-882621346              # 0xffffffffcb64445e
	.quad	-881936296              # 0xffffffffcb6eb858
	.quad	-881251246              # 0xffffffffcb792c52
	.quad	-880566196              # 0xffffffffcb83a04c
	.quad	-879881146              # 0xffffffffcb8e1446
	.quad	-879196096              # 0xffffffffcb988840
	.quad	-878511046              # 0xffffffffcba2fc3a
	.quad	-877825996              # 0xffffffffcbad7034
	.quad	-877140946              # 0xffffffffcbb7e42e
	.quad	-876455896              # 0xffffffffcbc25828
	.quad	-875770846              # 0xffffffffcbcccc22
	.quad	-875085796              # 0xffffffffcbd7401c
	.quad	-874400746              # 0xffffffffcbe1b416
	.quad	-873715696              # 0xffffffffcbec2810
	.quad	-873030646              # 0xffffffffcbf69c0a
	.quad	-872345596              # 0xffffffffcc011004
	.quad	-871660546              # 0xffffffffcc0b83fe
	.quad	-870975496              # 0xffffffffcc15f7f8
	.quad	-870290446              # 0xffffffffcc206bf2
	.quad	-869605396              # 0xffffffffcc2adfec
	.quad	-868920346              # 0xffffffffcc3553e6
	.quad	-868235296              # 0xffffffffcc3fc7e0
	.quad	-867550246              # 0xffffffffcc4a3bda
	.quad	-866865196              # 0xffffffffcc54afd4
	.quad	-866180146              # 0xffffffffcc5f23ce
	.quad	-865495096              # 0xffffffffcc6997c8
	.quad	-864810046              # 0xffffffffcc740bc2
	.quad	-864124996              # 0xffffffffcc7e7fbc
	.quad	-863439946              # 0xffffffffcc88f3b6
	.quad	-862754896              # 0xffffffffcc9367b0
	.quad	-862069846              # 0xffffffffcc9ddbaa
	.quad	-861384796              # 0xffffffffcca84fa4
	.quad	-860699746              # 0xffffffffccb2c39e
	.quad	-860014696              # 0xffffffffccbd3798
	.quad	-859329646              # 0xffffffffccc7ab92
	.quad	-858644596              # 0xffffffffccd21f8c
	.quad	-857959546              # 0xffffffffccdc9386
	.quad	-857274496              # 0xffffffffcce70780
	.quad	-856589446              # 0xffffffffccf17b7a
	.quad	-855904396              # 0xffffffffccfbef74
	.quad	-855219346              # 0xffffffffcd06636e
	.quad	-854534296              # 0xffffffffcd10d768
	.quad	-853849246              # 0xffffffffcd1b4b62
	.quad	-853164196              # 0xffffffffcd25bf5c
	.quad	-852479146              # 0xffffffffcd303356
	.quad	-851794096              # 0xffffffffcd3aa750
	.quad	-851109046              # 0xffffffffcd451b4a
	.quad	-850423996              # 0xffffffffcd4f8f44
	.quad	-849738946              # 0xffffffffcd5a033e
	.quad	-849053896              # 0xffffffffcd647738
	.quad	-848368846              # 0xffffffffcd6eeb32
	.quad	-847683796              # 0xffffffffcd795f2c
	.quad	-846998746              # 0xffffffffcd83d326
	.quad	-846313696              # 0xffffffffcd8e4720
	.quad	-845628646              # 0xffffffffcd98bb1a
	.quad	-844943596              # 0xffffffffcda32f14
	.quad	-844258546              # 0xffffffffcdada30e
	.quad	-843573496              # 0xffffffffcdb81708
	.quad	-842888446              # 0xffffffffcdc28b02
	.quad	-842203396              # 0xffffffffcdccfefc
	.quad	-841518346              # 0xffffffffcdd772f6
	.quad	-840833296              # 0xffffffffcde1e6f0
	.quad	-840148246              # 0xffffffffcdec5aea
	.quad	-839463196              # 0xffffffffcdf6cee4
	.quad	-838778146              # 0xffffffffce0142de
	.quad	-838093096              # 0xffffffffce0bb6d8
	.quad	-837408046              # 0xffffffffce162ad2
	.quad	-836722996              # 0xffffffffce209ecc
	.quad	-836037946              # 0xffffffffce2b12c6
	.quad	-835352896              # 0xffffffffce3586c0
	.quad	-834667846              # 0xffffffffce3ffaba
	.quad	-833982796              # 0xffffffffce4a6eb4
	.quad	-833297746              # 0xffffffffce54e2ae
	.quad	-832612696              # 0xffffffffce5f56a8
	.quad	-831927646              # 0xffffffffce69caa2
	.quad	-831242596              # 0xffffffffce743e9c
	.quad	-830557546              # 0xffffffffce7eb296
	.quad	-829872496              # 0xffffffffce892690
	.quad	-829187446              # 0xffffffffce939a8a
	.quad	-828502396              # 0xffffffffce9e0e84
	.quad	-827817346              # 0xffffffffcea8827e
	.quad	-827132296              # 0xffffffffceb2f678
	.quad	-845442246              # 0xffffffffcd9b933a
	.quad	-844747196              # 0xffffffffcda62e44
	.quad	-844052146              # 0xffffffffcdb0c94e
	.quad	-843357096              # 0xffffffffcdbb6458
	.quad	-842662046              # 0xffffffffcdc5ff62
	.quad	-841966996              # 0xffffffffcdd09a6c
	.quad	-841271946              # 0xffffffffcddb3576
	.quad	-840576896              # 0xffffffffcde5d080
	.quad	-839881846              # 0xffffffffcdf06b8a
	.quad	-839186796              # 0xffffffffcdfb0694
	.quad	-838491746              # 0xffffffffce05a19e
	.quad	-837796696              # 0xffffffffce103ca8
	.quad	-837101646              # 0xffffffffce1ad7b2
	.quad	-836406596              # 0xffffffffce2572bc
	.quad	-835711546              # 0xffffffffce300dc6
	.quad	-835016496              # 0xffffffffce3aa8d0
	.quad	-834321446              # 0xffffffffce4543da
	.quad	-833626396              # 0xffffffffce4fdee4
	.quad	-832931346              # 0xffffffffce5a79ee
	.quad	-832236296              # 0xffffffffce6514f8
	.quad	-831541246              # 0xffffffffce6fb002
	.quad	-830846196              # 0xffffffffce7a4b0c
	.quad	-830151146              # 0xffffffffce84e616
	.quad	-829456096              # 0xffffffffce8f8120
	.quad	-828761046              # 0xffffffffce9a1c2a
	.quad	-828065996              # 0xffffffffcea4b734
	.quad	-827370946              # 0xffffffffceaf523e
	.quad	-826675896              # 0xffffffffceb9ed48
	.quad	-825980846              # 0xffffffffcec48852
	.quad	-825285796              # 0xffffffffcecf235c
	.quad	-824590746              # 0xffffffffced9be66
	.quad	-823895696              # 0xffffffffcee45970
	.quad	-823200646              # 0xffffffffceeef47a
	.quad	-822505596              # 0xffffffffcef98f84
	.quad	-821810546              # 0xffffffffcf042a8e
	.quad	-821115496              # 0xffffffffcf0ec598
	.quad	-820420446              # 0xffffffffcf1960a2
	.quad	-819725396              # 0xffffffffcf23fbac
	.quad	-819030346              # 0xffffffffcf2e96b6
	.quad	-818335296              # 0xffffffffcf3931c0
	.quad	-817640246              # 0xffffffffcf43ccca
	.quad	-816945196              # 0xffffffffcf4e67d4
	.quad	-816250146              # 0xffffffffcf5902de
	.quad	-815555096              # 0xffffffffcf639de8
	.quad	-814860046              # 0xffffffffcf6e38f2
	.quad	-814164996              # 0xffffffffcf78d3fc
	.quad	-813469946              # 0xffffffffcf836f06
	.quad	-812774896              # 0xffffffffcf8e0a10
	.quad	-812079846              # 0xffffffffcf98a51a
	.quad	-811384796              # 0xffffffffcfa34024
	.quad	-810689746              # 0xffffffffcfaddb2e
	.quad	-809994696              # 0xffffffffcfb87638
	.quad	-809299646              # 0xffffffffcfc31142
	.quad	-808604596              # 0xffffffffcfcdac4c
	.quad	-807909546              # 0xffffffffcfd84756
	.quad	-807214496              # 0xffffffffcfe2e260
	.quad	-806519446              # 0xffffffffcfed7d6a
	.quad	-805824396              # 0xffffffffcff81874
	.quad	-805129346              # 0xffffffffd002b37e
	.quad	-804434296              # 0xffffffffd00d4e88
	.quad	-803739246              # 0xffffffffd017e992
	.quad	-803044196              # 0xffffffffd022849c
	.quad	-802349146              # 0xffffffffd02d1fa6
	.quad	-801654096              # 0xffffffffd037bab0
	.quad	-800959046              # 0xffffffffd04255ba
	.quad	-800263996              # 0xffffffffd04cf0c4
	.quad	-799568946              # 0xffffffffd0578bce
	.quad	-798873896              # 0xffffffffd06226d8
	.quad	-798178846              # 0xffffffffd06cc1e2
	.quad	-797483796              # 0xffffffffd0775cec
	.quad	-796788746              # 0xffffffffd081f7f6
	.quad	-796093696              # 0xffffffffd08c9300
	.quad	-795398646              # 0xffffffffd0972e0a
	.quad	-794703596              # 0xffffffffd0a1c914
	.quad	-794008546              # 0xffffffffd0ac641e
	.quad	-793313496              # 0xffffffffd0b6ff28
	.quad	-792618446              # 0xffffffffd0c19a32
	.quad	-791923396              # 0xffffffffd0cc353c
	.quad	-791228346              # 0xffffffffd0d6d046
	.quad	-790533296              # 0xffffffffd0e16b50
	.quad	-789838246              # 0xffffffffd0ec065a
	.quad	-789143196              # 0xffffffffd0f6a164
	.quad	-788448146              # 0xffffffffd1013c6e
	.quad	-787753096              # 0xffffffffd10bd778
	.quad	-787058046              # 0xffffffffd1167282
	.quad	-786362996              # 0xffffffffd1210d8c
	.quad	-785667946              # 0xffffffffd12ba896
	.quad	-784972896              # 0xffffffffd13643a0
	.quad	-784277846              # 0xffffffffd140deaa
	.quad	-783582796              # 0xffffffffd14b79b4
	.quad	-782887746              # 0xffffffffd15614be
	.quad	-782192696              # 0xffffffffd160afc8
	.quad	-781497646              # 0xffffffffd16b4ad2
	.quad	-780802596              # 0xffffffffd175e5dc
	.quad	-780107546              # 0xffffffffd18080e6
	.quad	-779412496              # 0xffffffffd18b1bf0
	.quad	-778717446              # 0xffffffffd195b6fa
	.quad	-778022396              # 0xffffffffd1a05204
	.quad	-777327346              # 0xffffffffd1aaed0e
	.quad	-776632296              # 0xffffffffd1b58818
	.quad	-795932246              # 0xffffffffd08f09aa
	.quad	-795227196              # 0xffffffffd099cbc4
	.quad	-794522146              # 0xffffffffd0a48dde
	.quad	-793817096              # 0xffffffffd0af4ff8
	.quad	-793112046              # 0xffffffffd0ba1212
	.quad	-792406996              # 0xffffffffd0c4d42c
	.quad	-791701946              # 0xffffffffd0cf9646
	.quad	-790996896              # 0xffffffffd0da5860
	.quad	-790291846              # 0xffffffffd0e51a7a
	.quad	-789586796              # 0xffffffffd0efdc94
	.quad	-788881746              # 0xffffffffd0fa9eae
	.quad	-788176696              # 0xffffffffd10560c8
	.quad	-787471646              # 0xffffffffd11022e2
	.quad	-786766596              # 0xffffffffd11ae4fc
	.quad	-786061546              # 0xffffffffd125a716
	.quad	-785356496              # 0xffffffffd1306930
	.quad	-784651446              # 0xffffffffd13b2b4a
	.quad	-783946396              # 0xffffffffd145ed64
	.quad	-783241346              # 0xffffffffd150af7e
	.quad	-782536296              # 0xffffffffd15b7198
	.quad	-781831246              # 0xffffffffd16633b2
	.quad	-781126196              # 0xffffffffd170f5cc
	.quad	-780421146              # 0xffffffffd17bb7e6
	.quad	-779716096              # 0xffffffffd1867a00
	.quad	-779011046              # 0xffffffffd1913c1a
	.quad	-778305996              # 0xffffffffd19bfe34
	.quad	-777600946              # 0xffffffffd1a6c04e
	.quad	-776895896              # 0xffffffffd1b18268
	.quad	-776190846              # 0xffffffffd1bc4482
	.quad	-775485796              # 0xffffffffd1c7069c
	.quad	-774780746              # 0xffffffffd1d1c8b6
	.quad	-774075696              # 0xffffffffd1dc8ad0
	.quad	-773370646              # 0xffffffffd1e74cea
	.quad	-772665596              # 0xffffffffd1f20f04
	.quad	-771960546              # 0xffffffffd1fcd11e
	.quad	-771255496              # 0xffffffffd2079338
	.quad	-770550446              # 0xffffffffd2125552
	.quad	-769845396              # 0xffffffffd21d176c
	.quad	-769140346              # 0xffffffffd227d986
	.quad	-768435296              # 0xffffffffd2329ba0
	.quad	-767730246              # 0xffffffffd23d5dba
	.quad	-767025196              # 0xffffffffd2481fd4
	.quad	-766320146              # 0xffffffffd252e1ee
	.quad	-765615096              # 0xffffffffd25da408
	.quad	-764910046              # 0xffffffffd2686622
	.quad	-764204996              # 0xffffffffd273283c
	.quad	-763499946              # 0xffffffffd27dea56
	.quad	-762794896              # 0xffffffffd288ac70
	.quad	-762089846              # 0xffffffffd2936e8a
	.quad	-761384796              # 0xffffffffd29e30a4
	.quad	-760679746              # 0xffffffffd2a8f2be
	.quad	-759974696              # 0xffffffffd2b3b4d8
	.quad	-759269646              # 0xffffffffd2be76f2
	.quad	-758564596              # 0xffffffffd2c9390c
	.quad	-757859546              # 0xffffffffd2d3fb26
	.quad	-757154496              # 0xffffffffd2debd40
	.quad	-756449446              # 0xffffffffd2e97f5a
	.quad	-755744396              # 0xffffffffd2f44174
	.quad	-755039346              # 0xffffffffd2ff038e
	.quad	-754334296              # 0xffffffffd309c5a8
	.quad	-753629246              # 0xffffffffd31487c2
	.quad	-752924196              # 0xffffffffd31f49dc
	.quad	-752219146              # 0xffffffffd32a0bf6
	.quad	-751514096              # 0xffffffffd334ce10
	.quad	-750809046              # 0xffffffffd33f902a
	.quad	-750103996              # 0xffffffffd34a5244
	.quad	-749398946              # 0xffffffffd355145e
	.quad	-748693896              # 0xffffffffd35fd678
	.quad	-747988846              # 0xffffffffd36a9892
	.quad	-747283796              # 0xffffffffd3755aac
	.quad	-746578746              # 0xffffffffd3801cc6
	.quad	-745873696              # 0xffffffffd38adee0
	.quad	-745168646              # 0xffffffffd395a0fa
	.quad	-744463596              # 0xffffffffd3a06314
	.quad	-743758546              # 0xffffffffd3ab252e
	.quad	-743053496              # 0xffffffffd3b5e748
	.quad	-742348446              # 0xffffffffd3c0a962
	.quad	-741643396              # 0xffffffffd3cb6b7c
	.quad	-740938346              # 0xffffffffd3d62d96
	.quad	-740233296              # 0xffffffffd3e0efb0
	.quad	-739528246              # 0xffffffffd3ebb1ca
	.quad	-738823196              # 0xffffffffd3f673e4
	.quad	-738118146              # 0xffffffffd40135fe
	.quad	-737413096              # 0xffffffffd40bf818
	.quad	-736708046              # 0xffffffffd416ba32
	.quad	-736002996              # 0xffffffffd4217c4c
	.quad	-735297946              # 0xffffffffd42c3e66
	.quad	-734592896              # 0xffffffffd4370080
	.quad	-733887846              # 0xffffffffd441c29a
	.quad	-733182796              # 0xffffffffd44c84b4
	.quad	-732477746              # 0xffffffffd45746ce
	.quad	-731772696              # 0xffffffffd46208e8
	.quad	-731067646              # 0xffffffffd46ccb02
	.quad	-730362596              # 0xffffffffd4778d1c
	.quad	-729657546              # 0xffffffffd4824f36
	.quad	-728952496              # 0xffffffffd48d1150
	.quad	-728247446              # 0xffffffffd497d36a
	.quad	-727542396              # 0xffffffffd4a29584
	.quad	-726837346              # 0xffffffffd4ad579e
	.quad	-726132296              # 0xffffffffd4b819b8
	.quad	-746422246              # 0xffffffffd382801a
	.quad	-745707196              # 0xffffffffd38d6944
	.quad	-744992146              # 0xffffffffd398526e
	.quad	-744277096              # 0xffffffffd3a33b98
	.quad	-743562046              # 0xffffffffd3ae24c2
	.quad	-742846996              # 0xffffffffd3b90dec
	.quad	-742131946              # 0xffffffffd3c3f716
	.quad	-741416896              # 0xffffffffd3cee040
	.quad	-740701846              # 0xffffffffd3d9c96a
	.quad	-739986796              # 0xffffffffd3e4b294
	.quad	-739271746              # 0xffffffffd3ef9bbe
	.quad	-738556696              # 0xffffffffd3fa84e8
	.quad	-737841646              # 0xffffffffd4056e12
	.quad	-737126596              # 0xffffffffd410573c
	.quad	-736411546              # 0xffffffffd41b4066
	.quad	-735696496              # 0xffffffffd4262990
	.quad	-734981446              # 0xffffffffd43112ba
	.quad	-734266396              # 0xffffffffd43bfbe4
	.quad	-733551346              # 0xffffffffd446e50e
	.quad	-732836296              # 0xffffffffd451ce38
	.quad	-732121246              # 0xffffffffd45cb762
	.quad	-731406196              # 0xffffffffd467a08c
	.quad	-730691146              # 0xffffffffd47289b6
	.quad	-729976096              # 0xffffffffd47d72e0
	.quad	-729261046              # 0xffffffffd4885c0a
	.quad	-728545996              # 0xffffffffd4934534
	.quad	-727830946              # 0xffffffffd49e2e5e
	.quad	-727115896              # 0xffffffffd4a91788
	.quad	-726400846              # 0xffffffffd4b400b2
	.quad	-725685796              # 0xffffffffd4bee9dc
	.quad	-724970746              # 0xffffffffd4c9d306
	.quad	-724255696              # 0xffffffffd4d4bc30
	.quad	-723540646              # 0xffffffffd4dfa55a
	.quad	-722825596              # 0xffffffffd4ea8e84
	.quad	-722110546              # 0xffffffffd4f577ae
	.quad	-721395496              # 0xffffffffd50060d8
	.quad	-720680446              # 0xffffffffd50b4a02
	.quad	-719965396              # 0xffffffffd516332c
	.quad	-719250346              # 0xffffffffd5211c56
	.quad	-718535296              # 0xffffffffd52c0580
	.quad	-717820246              # 0xffffffffd536eeaa
	.quad	-717105196              # 0xffffffffd541d7d4
	.quad	-716390146              # 0xffffffffd54cc0fe
	.quad	-715675096              # 0xffffffffd557aa28
	.quad	-714960046              # 0xffffffffd5629352
	.quad	-714244996              # 0xffffffffd56d7c7c
	.quad	-713529946              # 0xffffffffd57865a6
	.quad	-712814896              # 0xffffffffd5834ed0
	.quad	-712099846              # 0xffffffffd58e37fa
	.quad	-711384796              # 0xffffffffd5992124
	.quad	-710669746              # 0xffffffffd5a40a4e
	.quad	-709954696              # 0xffffffffd5aef378
	.quad	-709239646              # 0xffffffffd5b9dca2
	.quad	-708524596              # 0xffffffffd5c4c5cc
	.quad	-707809546              # 0xffffffffd5cfaef6
	.quad	-707094496              # 0xffffffffd5da9820
	.quad	-706379446              # 0xffffffffd5e5814a
	.quad	-705664396              # 0xffffffffd5f06a74
	.quad	-704949346              # 0xffffffffd5fb539e
	.quad	-704234296              # 0xffffffffd6063cc8
	.quad	-703519246              # 0xffffffffd61125f2
	.quad	-702804196              # 0xffffffffd61c0f1c
	.quad	-702089146              # 0xffffffffd626f846
	.quad	-701374096              # 0xffffffffd631e170
	.quad	-700659046              # 0xffffffffd63cca9a
	.quad	-699943996              # 0xffffffffd647b3c4
	.quad	-699228946              # 0xffffffffd6529cee
	.quad	-698513896              # 0xffffffffd65d8618
	.quad	-697798846              # 0xffffffffd6686f42
	.quad	-697083796              # 0xffffffffd673586c
	.quad	-696368746              # 0xffffffffd67e4196
	.quad	-695653696              # 0xffffffffd6892ac0
	.quad	-694938646              # 0xffffffffd69413ea
	.quad	-694223596              # 0xffffffffd69efd14
	.quad	-693508546              # 0xffffffffd6a9e63e
	.quad	-692793496              # 0xffffffffd6b4cf68
	.quad	-692078446              # 0xffffffffd6bfb892
	.quad	-691363396              # 0xffffffffd6caa1bc
	.quad	-690648346              # 0xffffffffd6d58ae6
	.quad	-689933296              # 0xffffffffd6e07410
	.quad	-689218246              # 0xffffffffd6eb5d3a
	.quad	-688503196              # 0xffffffffd6f64664
	.quad	-687788146              # 0xffffffffd7012f8e
	.quad	-687073096              # 0xffffffffd70c18b8
	.quad	-686358046              # 0xffffffffd71701e2
	.quad	-685642996              # 0xffffffffd721eb0c
	.quad	-684927946              # 0xffffffffd72cd436
	.quad	-684212896              # 0xffffffffd737bd60
	.quad	-683497846              # 0xffffffffd742a68a
	.quad	-682782796              # 0xffffffffd74d8fb4
	.quad	-682067746              # 0xffffffffd75878de
	.quad	-681352696              # 0xffffffffd7636208
	.quad	-680637646              # 0xffffffffd76e4b32
	.quad	-679922596              # 0xffffffffd779345c
	.quad	-679207546              # 0xffffffffd7841d86
	.quad	-678492496              # 0xffffffffd78f06b0
	.quad	-677777446              # 0xffffffffd799efda
	.quad	-677062396              # 0xffffffffd7a4d904
	.quad	-676347346              # 0xffffffffd7afc22e
	.quad	-675632296              # 0xffffffffd7baab58
	.quad	-696912246              # 0xffffffffd675f68a
	.quad	-696187196              # 0xffffffffd68106c4
	.quad	-695462146              # 0xffffffffd68c16fe
	.quad	-694737096              # 0xffffffffd6972738
	.quad	-694012046              # 0xffffffffd6a23772
	.quad	-693286996              # 0xffffffffd6ad47ac
	.quad	-692561946              # 0xffffffffd6b857e6
	.quad	-691836896              # 0xffffffffd6c36820
	.quad	-691111846              # 0xffffffffd6ce785a
	.quad	-690386796              # 0xffffffffd6d98894
	.quad	-689661746              # 0xffffffffd6e498ce
	.quad	-688936696              # 0xffffffffd6efa908
	.quad	-688211646              # 0xffffffffd6fab942
	.quad	-687486596              # 0xffffffffd705c97c
	.quad	-686761546              # 0xffffffffd710d9b6
	.quad	-686036496              # 0xffffffffd71be9f0
	.quad	-685311446              # 0xffffffffd726fa2a
	.quad	-684586396              # 0xffffffffd7320a64
	.quad	-683861346              # 0xffffffffd73d1a9e
	.quad	-683136296              # 0xffffffffd7482ad8
	.quad	-682411246              # 0xffffffffd7533b12
	.quad	-681686196              # 0xffffffffd75e4b4c
	.quad	-680961146              # 0xffffffffd7695b86
	.quad	-680236096              # 0xffffffffd7746bc0
	.quad	-679511046              # 0xffffffffd77f7bfa
	.quad	-678785996              # 0xffffffffd78a8c34
	.quad	-678060946              # 0xffffffffd7959c6e
	.quad	-677335896              # 0xffffffffd7a0aca8
	.quad	-676610846              # 0xffffffffd7abbce2
	.quad	-675885796              # 0xffffffffd7b6cd1c
	.quad	-675160746              # 0xffffffffd7c1dd56
	.quad	-674435696              # 0xffffffffd7cced90
	.quad	-673710646              # 0xffffffffd7d7fdca
	.quad	-672985596              # 0xffffffffd7e30e04
	.quad	-672260546              # 0xffffffffd7ee1e3e
	.quad	-671535496              # 0xffffffffd7f92e78
	.quad	-670810446              # 0xffffffffd8043eb2
	.quad	-670085396              # 0xffffffffd80f4eec
	.quad	-669360346              # 0xffffffffd81a5f26
	.quad	-668635296              # 0xffffffffd8256f60
	.quad	-667910246              # 0xffffffffd8307f9a
	.quad	-667185196              # 0xffffffffd83b8fd4
	.quad	-666460146              # 0xffffffffd846a00e
	.quad	-665735096              # 0xffffffffd851b048
	.quad	-665010046              # 0xffffffffd85cc082
	.quad	-664284996              # 0xffffffffd867d0bc
	.quad	-663559946              # 0xffffffffd872e0f6
	.quad	-662834896              # 0xffffffffd87df130
	.quad	-662109846              # 0xffffffffd889016a
	.quad	-661384796              # 0xffffffffd89411a4
	.quad	-660659746              # 0xffffffffd89f21de
	.quad	-659934696              # 0xffffffffd8aa3218
	.quad	-659209646              # 0xffffffffd8b54252
	.quad	-658484596              # 0xffffffffd8c0528c
	.quad	-657759546              # 0xffffffffd8cb62c6
	.quad	-657034496              # 0xffffffffd8d67300
	.quad	-656309446              # 0xffffffffd8e1833a
	.quad	-655584396              # 0xffffffffd8ec9374
	.quad	-654859346              # 0xffffffffd8f7a3ae
	.quad	-654134296              # 0xffffffffd902b3e8
	.quad	-653409246              # 0xffffffffd90dc422
	.quad	-652684196              # 0xffffffffd918d45c
	.quad	-651959146              # 0xffffffffd923e496
	.quad	-651234096              # 0xffffffffd92ef4d0
	.quad	-650509046              # 0xffffffffd93a050a
	.quad	-649783996              # 0xffffffffd9451544
	.quad	-649058946              # 0xffffffffd950257e
	.quad	-648333896              # 0xffffffffd95b35b8
	.quad	-647608846              # 0xffffffffd96645f2
	.quad	-646883796              # 0xffffffffd971562c
	.quad	-646158746              # 0xffffffffd97c6666
	.quad	-645433696              # 0xffffffffd98776a0
	.quad	-644708646              # 0xffffffffd99286da
	.quad	-643983596              # 0xffffffffd99d9714
	.quad	-643258546              # 0xffffffffd9a8a74e
	.quad	-642533496              # 0xffffffffd9b3b788
	.quad	-641808446              # 0xffffffffd9bec7c2
	.quad	-641083396              # 0xffffffffd9c9d7fc
	.quad	-640358346              # 0xffffffffd9d4e836
	.quad	-639633296              # 0xffffffffd9dff870
	.quad	-638908246              # 0xffffffffd9eb08aa
	.quad	-638183196              # 0xffffffffd9f618e4
	.quad	-637458146              # 0xffffffffda01291e
	.quad	-636733096              # 0xffffffffda0c3958
	.quad	-636008046              # 0xffffffffda174992
	.quad	-635282996              # 0xffffffffda2259cc
	.quad	-634557946              # 0xffffffffda2d6a06
	.quad	-633832896              # 0xffffffffda387a40
	.quad	-633107846              # 0xffffffffda438a7a
	.quad	-632382796              # 0xffffffffda4e9ab4
	.quad	-631657746              # 0xffffffffda59aaee
	.quad	-630932696              # 0xffffffffda64bb28
	.quad	-630207646              # 0xffffffffda6fcb62
	.quad	-629482596              # 0xffffffffda7adb9c
	.quad	-628757546              # 0xffffffffda85ebd6
	.quad	-628032496              # 0xffffffffda90fc10
	.quad	-627307446              # 0xffffffffda9c0c4a
	.quad	-626582396              # 0xffffffffdaa71c84
	.quad	-625857346              # 0xffffffffdab22cbe
	.quad	-625132296              # 0xffffffffdabd3cf8
	.quad	-647402246              # 0xffffffffd9696cfa
	.quad	-646667196              # 0xffffffffd974a444
	.quad	-645932146              # 0xffffffffd97fdb8e
	.quad	-645197096              # 0xffffffffd98b12d8
	.quad	-644462046              # 0xffffffffd9964a22
	.quad	-643726996              # 0xffffffffd9a1816c
	.quad	-642991946              # 0xffffffffd9acb8b6
	.quad	-642256896              # 0xffffffffd9b7f000
	.quad	-641521846              # 0xffffffffd9c3274a
	.quad	-640786796              # 0xffffffffd9ce5e94
	.quad	-640051746              # 0xffffffffd9d995de
	.quad	-639316696              # 0xffffffffd9e4cd28
	.quad	-638581646              # 0xffffffffd9f00472
	.quad	-637846596              # 0xffffffffd9fb3bbc
	.quad	-637111546              # 0xffffffffda067306
	.quad	-636376496              # 0xffffffffda11aa50
	.quad	-635641446              # 0xffffffffda1ce19a
	.quad	-634906396              # 0xffffffffda2818e4
	.quad	-634171346              # 0xffffffffda33502e
	.quad	-633436296              # 0xffffffffda3e8778
	.quad	-632701246              # 0xffffffffda49bec2
	.quad	-631966196              # 0xffffffffda54f60c
	.quad	-631231146              # 0xffffffffda602d56
	.quad	-630496096              # 0xffffffffda6b64a0
	.quad	-629761046              # 0xffffffffda769bea
	.quad	-629025996              # 0xffffffffda81d334
	.quad	-628290946              # 0xffffffffda8d0a7e
	.quad	-627555896              # 0xffffffffda9841c8
	.quad	-626820846              # 0xffffffffdaa37912
	.quad	-626085796              # 0xffffffffdaaeb05c
	.quad	-625350746              # 0xffffffffdab9e7a6
	.quad	-624615696              # 0xffffffffdac51ef0
	.quad	-623880646              # 0xffffffffdad0563a
	.quad	-623145596              # 0xffffffffdadb8d84
	.quad	-622410546              # 0xffffffffdae6c4ce
	.quad	-621675496              # 0xffffffffdaf1fc18
	.quad	-620940446              # 0xffffffffdafd3362
	.quad	-620205396              # 0xffffffffdb086aac
	.quad	-619470346              # 0xffffffffdb13a1f6
	.quad	-618735296              # 0xffffffffdb1ed940
	.quad	-618000246              # 0xffffffffdb2a108a
	.quad	-617265196              # 0xffffffffdb3547d4
	.quad	-616530146              # 0xffffffffdb407f1e
	.quad	-615795096              # 0xffffffffdb4bb668
	.quad	-615060046              # 0xffffffffdb56edb2
	.quad	-614324996              # 0xffffffffdb6224fc
	.quad	-613589946              # 0xffffffffdb6d5c46
	.quad	-612854896              # 0xffffffffdb789390
	.quad	-612119846              # 0xffffffffdb83cada
	.quad	-611384796              # 0xffffffffdb8f0224
	.quad	-610649746              # 0xffffffffdb9a396e
	.quad	-609914696              # 0xffffffffdba570b8
	.quad	-609179646              # 0xffffffffdbb0a802
	.quad	-608444596              # 0xffffffffdbbbdf4c
	.quad	-607709546              # 0xffffffffdbc71696
	.quad	-606974496              # 0xffffffffdbd24de0
	.quad	-606239446              # 0xffffffffdbdd852a
	.quad	-605504396              # 0xffffffffdbe8bc74
	.quad	-604769346              # 0xffffffffdbf3f3be
	.quad	-604034296              # 0xffffffffdbff2b08
	.quad	-603299246              # 0xffffffffdc0a6252
	.quad	-602564196              # 0xffffffffdc15999c
	.quad	-601829146              # 0xffffffffdc20d0e6
	.quad	-601094096              # 0xffffffffdc2c0830
	.quad	-600359046              # 0xffffffffdc373f7a
	.quad	-599623996              # 0xffffffffdc4276c4
	.quad	-598888946              # 0xffffffffdc4dae0e
	.quad	-598153896              # 0xffffffffdc58e558
	.quad	-597418846              # 0xffffffffdc641ca2
	.quad	-596683796              # 0xffffffffdc6f53ec
	.quad	-595948746              # 0xffffffffdc7a8b36
	.quad	-595213696              # 0xffffffffdc85c280
	.quad	-594478646              # 0xffffffffdc90f9ca
	.quad	-593743596              # 0xffffffffdc9c3114
	.quad	-593008546              # 0xffffffffdca7685e
	.quad	-592273496              # 0xffffffffdcb29fa8
	.quad	-591538446              # 0xffffffffdcbdd6f2
	.quad	-590803396              # 0xffffffffdcc90e3c
	.quad	-590068346              # 0xffffffffdcd44586
	.quad	-589333296              # 0xffffffffdcdf7cd0
	.quad	-588598246              # 0xffffffffdceab41a
	.quad	-587863196              # 0xffffffffdcf5eb64
	.quad	-587128146              # 0xffffffffdd0122ae
	.quad	-586393096              # 0xffffffffdd0c59f8
	.quad	-585658046              # 0xffffffffdd179142
	.quad	-584922996              # 0xffffffffdd22c88c
	.quad	-584187946              # 0xffffffffdd2dffd6
	.quad	-583452896              # 0xffffffffdd393720
	.quad	-582717846              # 0xffffffffdd446e6a
	.quad	-581982796              # 0xffffffffdd4fa5b4
	.quad	-581247746              # 0xffffffffdd5adcfe
	.quad	-580512696              # 0xffffffffdd661448
	.quad	-579777646              # 0xffffffffdd714b92
	.quad	-579042596              # 0xffffffffdd7c82dc
	.quad	-578307546              # 0xffffffffdd87ba26
	.quad	-577572496              # 0xffffffffdd92f170
	.quad	-576837446              # 0xffffffffdd9e28ba
	.quad	-576102396              # 0xffffffffdda96004
	.quad	-575367346              # 0xffffffffddb4974e
	.quad	-574632296              # 0xffffffffddbfce98
	.quad	-597892246              # 0xffffffffdc5ce36a
	.quad	-597147196              # 0xffffffffdc6841c4
	.quad	-596402146              # 0xffffffffdc73a01e
	.quad	-595657096              # 0xffffffffdc7efe78
	.quad	-594912046              # 0xffffffffdc8a5cd2
	.quad	-594166996              # 0xffffffffdc95bb2c
	.quad	-593421946              # 0xffffffffdca11986
	.quad	-592676896              # 0xffffffffdcac77e0
	.quad	-591931846              # 0xffffffffdcb7d63a
	.quad	-591186796              # 0xffffffffdcc33494
	.quad	-590441746              # 0xffffffffdcce92ee
	.quad	-589696696              # 0xffffffffdcd9f148
	.quad	-588951646              # 0xffffffffdce54fa2
	.quad	-588206596              # 0xffffffffdcf0adfc
	.quad	-587461546              # 0xffffffffdcfc0c56
	.quad	-586716496              # 0xffffffffdd076ab0
	.quad	-585971446              # 0xffffffffdd12c90a
	.quad	-585226396              # 0xffffffffdd1e2764
	.quad	-584481346              # 0xffffffffdd2985be
	.quad	-583736296              # 0xffffffffdd34e418
	.quad	-582991246              # 0xffffffffdd404272
	.quad	-582246196              # 0xffffffffdd4ba0cc
	.quad	-581501146              # 0xffffffffdd56ff26
	.quad	-580756096              # 0xffffffffdd625d80
	.quad	-580011046              # 0xffffffffdd6dbbda
	.quad	-579265996              # 0xffffffffdd791a34
	.quad	-578520946              # 0xffffffffdd84788e
	.quad	-577775896              # 0xffffffffdd8fd6e8
	.quad	-577030846              # 0xffffffffdd9b3542
	.quad	-576285796              # 0xffffffffdda6939c
	.quad	-575540746              # 0xffffffffddb1f1f6
	.quad	-574795696              # 0xffffffffddbd5050
	.quad	-574050646              # 0xffffffffddc8aeaa
	.quad	-573305596              # 0xffffffffddd40d04
	.quad	-572560546              # 0xffffffffdddf6b5e
	.quad	-571815496              # 0xffffffffddeac9b8
	.quad	-571070446              # 0xffffffffddf62812
	.quad	-570325396              # 0xffffffffde01866c
	.quad	-569580346              # 0xffffffffde0ce4c6
	.quad	-568835296              # 0xffffffffde184320
	.quad	-568090246              # 0xffffffffde23a17a
	.quad	-567345196              # 0xffffffffde2effd4
	.quad	-566600146              # 0xffffffffde3a5e2e
	.quad	-565855096              # 0xffffffffde45bc88
	.quad	-565110046              # 0xffffffffde511ae2
	.quad	-564364996              # 0xffffffffde5c793c
	.quad	-563619946              # 0xffffffffde67d796
	.quad	-562874896              # 0xffffffffde7335f0
	.quad	-562129846              # 0xffffffffde7e944a
	.quad	-561384796              # 0xffffffffde89f2a4
	.quad	-560639746              # 0xffffffffde9550fe
	.quad	-559894696              # 0xffffffffdea0af58
	.quad	-559149646              # 0xffffffffdeac0db2
	.quad	-558404596              # 0xffffffffdeb76c0c
	.quad	-557659546              # 0xffffffffdec2ca66
	.quad	-556914496              # 0xffffffffdece28c0
	.quad	-556169446              # 0xffffffffded9871a
	.quad	-555424396              # 0xffffffffdee4e574
	.quad	-554679346              # 0xffffffffdef043ce
	.quad	-553934296              # 0xffffffffdefba228
	.quad	-553189246              # 0xffffffffdf070082
	.quad	-552444196              # 0xffffffffdf125edc
	.quad	-551699146              # 0xffffffffdf1dbd36
	.quad	-550954096              # 0xffffffffdf291b90
	.quad	-550209046              # 0xffffffffdf3479ea
	.quad	-549463996              # 0xffffffffdf3fd844
	.quad	-548718946              # 0xffffffffdf4b369e
	.quad	-547973896              # 0xffffffffdf5694f8
	.quad	-547228846              # 0xffffffffdf61f352
	.quad	-546483796              # 0xffffffffdf6d51ac
	.quad	-545738746              # 0xffffffffdf78b006
	.quad	-544993696              # 0xffffffffdf840e60
	.quad	-544248646              # 0xffffffffdf8f6cba
	.quad	-543503596              # 0xffffffffdf9acb14
	.quad	-542758546              # 0xffffffffdfa6296e
	.quad	-542013496              # 0xffffffffdfb187c8
	.quad	-541268446              # 0xffffffffdfbce622
	.quad	-540523396              # 0xffffffffdfc8447c
	.quad	-539778346              # 0xffffffffdfd3a2d6
	.quad	-539033296              # 0xffffffffdfdf0130
	.quad	-538288246              # 0xffffffffdfea5f8a
	.quad	-537543196              # 0xffffffffdff5bde4
	.quad	-536798146              # 0xffffffffe0011c3e
	.quad	-536053096              # 0xffffffffe00c7a98
	.quad	-535308046              # 0xffffffffe017d8f2
	.quad	-534562996              # 0xffffffffe023374c
	.quad	-533817946              # 0xffffffffe02e95a6
	.quad	-533072896              # 0xffffffffe039f400
	.quad	-532327846              # 0xffffffffe045525a
	.quad	-531582796              # 0xffffffffe050b0b4
	.quad	-530837746              # 0xffffffffe05c0f0e
	.quad	-530092696              # 0xffffffffe0676d68
	.quad	-529347646              # 0xffffffffe072cbc2
	.quad	-528602596              # 0xffffffffe07e2a1c
	.quad	-527857546              # 0xffffffffe0898876
	.quad	-527112496              # 0xffffffffe094e6d0
	.quad	-526367446              # 0xffffffffe0a0452a
	.quad	-525622396              # 0xffffffffe0aba384
	.quad	-524877346              # 0xffffffffe0b701de
	.quad	-524132296              # 0xffffffffe0c26038
	.quad	-548382246              # 0xffffffffdf5059da
	.quad	-547627196              # 0xffffffffdf5bdf44
	.quad	-546872146              # 0xffffffffdf6764ae
	.quad	-546117096              # 0xffffffffdf72ea18
	.quad	-545362046              # 0xffffffffdf7e6f82
	.quad	-544606996              # 0xffffffffdf89f4ec
	.quad	-543851946              # 0xffffffffdf957a56
	.quad	-543096896              # 0xffffffffdfa0ffc0
	.quad	-542341846              # 0xffffffffdfac852a
	.quad	-541586796              # 0xffffffffdfb80a94
	.quad	-540831746              # 0xffffffffdfc38ffe
	.quad	-540076696              # 0xffffffffdfcf1568
	.quad	-539321646              # 0xffffffffdfda9ad2
	.quad	-538566596              # 0xffffffffdfe6203c
	.quad	-537811546              # 0xffffffffdff1a5a6
	.quad	-537056496              # 0xffffffffdffd2b10
	.quad	-536301446              # 0xffffffffe008b07a
	.quad	-535546396              # 0xffffffffe01435e4
	.quad	-534791346              # 0xffffffffe01fbb4e
	.quad	-534036296              # 0xffffffffe02b40b8
	.quad	-533281246              # 0xffffffffe036c622
	.quad	-532526196              # 0xffffffffe0424b8c
	.quad	-531771146              # 0xffffffffe04dd0f6
	.quad	-531016096              # 0xffffffffe0595660
	.quad	-530261046              # 0xffffffffe064dbca
	.quad	-529505996              # 0xffffffffe0706134
	.quad	-528750946              # 0xffffffffe07be69e
	.quad	-527995896              # 0xffffffffe0876c08
	.quad	-527240846              # 0xffffffffe092f172
	.quad	-526485796              # 0xffffffffe09e76dc
	.quad	-525730746              # 0xffffffffe0a9fc46
	.quad	-524975696              # 0xffffffffe0b581b0
	.quad	-524220646              # 0xffffffffe0c1071a
	.quad	-523465596              # 0xffffffffe0cc8c84
	.quad	-522710546              # 0xffffffffe0d811ee
	.quad	-521955496              # 0xffffffffe0e39758
	.quad	-521200446              # 0xffffffffe0ef1cc2
	.quad	-520445396              # 0xffffffffe0faa22c
	.quad	-519690346              # 0xffffffffe1062796
	.quad	-518935296              # 0xffffffffe111ad00
	.quad	-518180246              # 0xffffffffe11d326a
	.quad	-517425196              # 0xffffffffe128b7d4
	.quad	-516670146              # 0xffffffffe1343d3e
	.quad	-515915096              # 0xffffffffe13fc2a8
	.quad	-515160046              # 0xffffffffe14b4812
	.quad	-514404996              # 0xffffffffe156cd7c
	.quad	-513649946              # 0xffffffffe16252e6
	.quad	-512894896              # 0xffffffffe16dd850
	.quad	-512139846              # 0xffffffffe1795dba
	.quad	-511384796              # 0xffffffffe184e324
	.quad	-510629746              # 0xffffffffe190688e
	.quad	-509874696              # 0xffffffffe19bedf8
	.quad	-509119646              # 0xffffffffe1a77362
	.quad	-508364596              # 0xffffffffe1b2f8cc
	.quad	-507609546              # 0xffffffffe1be7e36
	.quad	-506854496              # 0xffffffffe1ca03a0
	.quad	-506099446              # 0xffffffffe1d5890a
	.quad	-505344396              # 0xffffffffe1e10e74
	.quad	-504589346              # 0xffffffffe1ec93de
	.quad	-503834296              # 0xffffffffe1f81948
	.quad	-503079246              # 0xffffffffe2039eb2
	.quad	-502324196              # 0xffffffffe20f241c
	.quad	-501569146              # 0xffffffffe21aa986
	.quad	-500814096              # 0xffffffffe2262ef0
	.quad	-500059046              # 0xffffffffe231b45a
	.quad	-499303996              # 0xffffffffe23d39c4
	.quad	-498548946              # 0xffffffffe248bf2e
	.quad	-497793896              # 0xffffffffe2544498
	.quad	-497038846              # 0xffffffffe25fca02
	.quad	-496283796              # 0xffffffffe26b4f6c
	.quad	-495528746              # 0xffffffffe276d4d6
	.quad	-494773696              # 0xffffffffe2825a40
	.quad	-494018646              # 0xffffffffe28ddfaa
	.quad	-493263596              # 0xffffffffe2996514
	.quad	-492508546              # 0xffffffffe2a4ea7e
	.quad	-491753496              # 0xffffffffe2b06fe8
	.quad	-490998446              # 0xffffffffe2bbf552
	.quad	-490243396              # 0xffffffffe2c77abc
	.quad	-489488346              # 0xffffffffe2d30026
	.quad	-488733296              # 0xffffffffe2de8590
	.quad	-487978246              # 0xffffffffe2ea0afa
	.quad	-487223196              # 0xffffffffe2f59064
	.quad	-486468146              # 0xffffffffe30115ce
	.quad	-485713096              # 0xffffffffe30c9b38
	.quad	-484958046              # 0xffffffffe31820a2
	.quad	-484202996              # 0xffffffffe323a60c
	.quad	-483447946              # 0xffffffffe32f2b76
	.quad	-482692896              # 0xffffffffe33ab0e0
	.quad	-481937846              # 0xffffffffe346364a
	.quad	-481182796              # 0xffffffffe351bbb4
	.quad	-480427746              # 0xffffffffe35d411e
	.quad	-479672696              # 0xffffffffe368c688
	.quad	-478917646              # 0xffffffffe3744bf2
	.quad	-478162596              # 0xffffffffe37fd15c
	.quad	-477407546              # 0xffffffffe38b56c6
	.quad	-476652496              # 0xffffffffe396dc30
	.quad	-475897446              # 0xffffffffe3a2619a
	.quad	-475142396              # 0xffffffffe3ade704
	.quad	-474387346              # 0xffffffffe3b96c6e
	.quad	-473632296              # 0xffffffffe3c4f1d8
	.quad	-498872246              # 0xffffffffe243d04a
	.quad	-498107196              # 0xffffffffe24f7cc4
	.quad	-497342146              # 0xffffffffe25b293e
	.quad	-496577096              # 0xffffffffe266d5b8
	.quad	-495812046              # 0xffffffffe2728232
	.quad	-495046996              # 0xffffffffe27e2eac
	.quad	-494281946              # 0xffffffffe289db26
	.quad	-493516896              # 0xffffffffe29587a0
	.quad	-492751846              # 0xffffffffe2a1341a
	.quad	-491986796              # 0xffffffffe2ace094
	.quad	-491221746              # 0xffffffffe2b88d0e
	.quad	-490456696              # 0xffffffffe2c43988
	.quad	-489691646              # 0xffffffffe2cfe602
	.quad	-488926596              # 0xffffffffe2db927c
	.quad	-488161546              # 0xffffffffe2e73ef6
	.quad	-487396496              # 0xffffffffe2f2eb70
	.quad	-486631446              # 0xffffffffe2fe97ea
	.quad	-485866396              # 0xffffffffe30a4464
	.quad	-485101346              # 0xffffffffe315f0de
	.quad	-484336296              # 0xffffffffe3219d58
	.quad	-483571246              # 0xffffffffe32d49d2
	.quad	-482806196              # 0xffffffffe338f64c
	.quad	-482041146              # 0xffffffffe344a2c6
	.quad	-481276096              # 0xffffffffe3504f40
	.quad	-480511046              # 0xffffffffe35bfbba
	.quad	-479745996              # 0xffffffffe367a834
	.quad	-478980946              # 0xffffffffe37354ae
	.quad	-478215896              # 0xffffffffe37f0128
	.quad	-477450846              # 0xffffffffe38aada2
	.quad	-476685796              # 0xffffffffe3965a1c
	.quad	-475920746              # 0xffffffffe3a20696
	.quad	-475155696              # 0xffffffffe3adb310
	.quad	-474390646              # 0xffffffffe3b95f8a
	.quad	-473625596              # 0xffffffffe3c50c04
	.quad	-472860546              # 0xffffffffe3d0b87e
	.quad	-472095496              # 0xffffffffe3dc64f8
	.quad	-471330446              # 0xffffffffe3e81172
	.quad	-470565396              # 0xffffffffe3f3bdec
	.quad	-469800346              # 0xffffffffe3ff6a66
	.quad	-469035296              # 0xffffffffe40b16e0
	.quad	-468270246              # 0xffffffffe416c35a
	.quad	-467505196              # 0xffffffffe4226fd4
	.quad	-466740146              # 0xffffffffe42e1c4e
	.quad	-465975096              # 0xffffffffe439c8c8
	.quad	-465210046              # 0xffffffffe4457542
	.quad	-464444996              # 0xffffffffe45121bc
	.quad	-463679946              # 0xffffffffe45cce36
	.quad	-462914896              # 0xffffffffe4687ab0
	.quad	-462149846              # 0xffffffffe474272a
	.quad	-461384796              # 0xffffffffe47fd3a4
	.quad	-460619746              # 0xffffffffe48b801e
	.quad	-459854696              # 0xffffffffe4972c98
	.quad	-459089646              # 0xffffffffe4a2d912
	.quad	-458324596              # 0xffffffffe4ae858c
	.quad	-457559546              # 0xffffffffe4ba3206
	.quad	-456794496              # 0xffffffffe4c5de80
	.quad	-456029446              # 0xffffffffe4d18afa
	.quad	-455264396              # 0xffffffffe4dd3774
	.quad	-454499346              # 0xffffffffe4e8e3ee
	.quad	-453734296              # 0xffffffffe4f49068
	.quad	-452969246              # 0xffffffffe5003ce2
	.quad	-452204196              # 0xffffffffe50be95c
	.quad	-451439146              # 0xffffffffe51795d6
	.quad	-450674096              # 0xffffffffe5234250
	.quad	-449909046              # 0xffffffffe52eeeca
	.quad	-449143996              # 0xffffffffe53a9b44
	.quad	-448378946              # 0xffffffffe54647be
	.quad	-447613896              # 0xffffffffe551f438
	.quad	-446848846              # 0xffffffffe55da0b2
	.quad	-446083796              # 0xffffffffe5694d2c
	.quad	-445318746              # 0xffffffffe574f9a6
	.quad	-444553696              # 0xffffffffe580a620
	.quad	-443788646              # 0xffffffffe58c529a
	.quad	-443023596              # 0xffffffffe597ff14
	.quad	-442258546              # 0xffffffffe5a3ab8e
	.quad	-441493496              # 0xffffffffe5af5808
	.quad	-440728446              # 0xffffffffe5bb0482
	.quad	-439963396              # 0xffffffffe5c6b0fc
	.quad	-439198346              # 0xffffffffe5d25d76
	.quad	-438433296              # 0xffffffffe5de09f0
	.quad	-437668246              # 0xffffffffe5e9b66a
	.quad	-436903196              # 0xffffffffe5f562e4
	.quad	-436138146              # 0xffffffffe6010f5e
	.quad	-435373096              # 0xffffffffe60cbbd8
	.quad	-434608046              # 0xffffffffe6186852
	.quad	-433842996              # 0xffffffffe62414cc
	.quad	-433077946              # 0xffffffffe62fc146
	.quad	-432312896              # 0xffffffffe63b6dc0
	.quad	-431547846              # 0xffffffffe6471a3a
	.quad	-430782796              # 0xffffffffe652c6b4
	.quad	-430017746              # 0xffffffffe65e732e
	.quad	-429252696              # 0xffffffffe66a1fa8
	.quad	-428487646              # 0xffffffffe675cc22
	.quad	-427722596              # 0xffffffffe681789c
	.quad	-426957546              # 0xffffffffe68d2516
	.quad	-426192496              # 0xffffffffe698d190
	.quad	-425427446              # 0xffffffffe6a47e0a
	.quad	-424662396              # 0xffffffffe6b02a84
	.quad	-423897346              # 0xffffffffe6bbd6fe
	.quad	-423132296              # 0xffffffffe6c78378
	.quad	-449362246              # 0xffffffffe53746ba
	.quad	-448587196              # 0xffffffffe5431a44
	.quad	-447812146              # 0xffffffffe54eedce
	.quad	-447037096              # 0xffffffffe55ac158
	.quad	-446262046              # 0xffffffffe56694e2
	.quad	-445486996              # 0xffffffffe572686c
	.quad	-444711946              # 0xffffffffe57e3bf6
	.quad	-443936896              # 0xffffffffe58a0f80
	.quad	-443161846              # 0xffffffffe595e30a
	.quad	-442386796              # 0xffffffffe5a1b694
	.quad	-441611746              # 0xffffffffe5ad8a1e
	.quad	-440836696              # 0xffffffffe5b95da8
	.quad	-440061646              # 0xffffffffe5c53132
	.quad	-439286596              # 0xffffffffe5d104bc
	.quad	-438511546              # 0xffffffffe5dcd846
	.quad	-437736496              # 0xffffffffe5e8abd0
	.quad	-436961446              # 0xffffffffe5f47f5a
	.quad	-436186396              # 0xffffffffe60052e4
	.quad	-435411346              # 0xffffffffe60c266e
	.quad	-434636296              # 0xffffffffe617f9f8
	.quad	-433861246              # 0xffffffffe623cd82
	.quad	-433086196              # 0xffffffffe62fa10c
	.quad	-432311146              # 0xffffffffe63b7496
	.quad	-431536096              # 0xffffffffe6474820
	.quad	-430761046              # 0xffffffffe6531baa
	.quad	-429985996              # 0xffffffffe65eef34
	.quad	-429210946              # 0xffffffffe66ac2be
	.quad	-428435896              # 0xffffffffe6769648
	.quad	-427660846              # 0xffffffffe68269d2
	.quad	-426885796              # 0xffffffffe68e3d5c
	.quad	-426110746              # 0xffffffffe69a10e6
	.quad	-425335696              # 0xffffffffe6a5e470
	.quad	-424560646              # 0xffffffffe6b1b7fa
	.quad	-423785596              # 0xffffffffe6bd8b84
	.quad	-423010546              # 0xffffffffe6c95f0e
	.quad	-422235496              # 0xffffffffe6d53298
	.quad	-421460446              # 0xffffffffe6e10622
	.quad	-420685396              # 0xffffffffe6ecd9ac
	.quad	-419910346              # 0xffffffffe6f8ad36
	.quad	-419135296              # 0xffffffffe70480c0
	.quad	-418360246              # 0xffffffffe710544a
	.quad	-417585196              # 0xffffffffe71c27d4
	.quad	-416810146              # 0xffffffffe727fb5e
	.quad	-416035096              # 0xffffffffe733cee8
	.quad	-415260046              # 0xffffffffe73fa272
	.quad	-414484996              # 0xffffffffe74b75fc
	.quad	-413709946              # 0xffffffffe7574986
	.quad	-412934896              # 0xffffffffe7631d10
	.quad	-412159846              # 0xffffffffe76ef09a
	.quad	-411384796              # 0xffffffffe77ac424
	.quad	-410609746              # 0xffffffffe78697ae
	.quad	-409834696              # 0xffffffffe7926b38
	.quad	-409059646              # 0xffffffffe79e3ec2
	.quad	-408284596              # 0xffffffffe7aa124c
	.quad	-407509546              # 0xffffffffe7b5e5d6
	.quad	-406734496              # 0xffffffffe7c1b960
	.quad	-405959446              # 0xffffffffe7cd8cea
	.quad	-405184396              # 0xffffffffe7d96074
	.quad	-404409346              # 0xffffffffe7e533fe
	.quad	-403634296              # 0xffffffffe7f10788
	.quad	-402859246              # 0xffffffffe7fcdb12
	.quad	-402084196              # 0xffffffffe808ae9c
	.quad	-401309146              # 0xffffffffe8148226
	.quad	-400534096              # 0xffffffffe82055b0
	.quad	-399759046              # 0xffffffffe82c293a
	.quad	-398983996              # 0xffffffffe837fcc4
	.quad	-398208946              # 0xffffffffe843d04e
	.quad	-397433896              # 0xffffffffe84fa3d8
	.quad	-396658846              # 0xffffffffe85b7762
	.quad	-395883796              # 0xffffffffe8674aec
	.quad	-395108746              # 0xffffffffe8731e76
	.quad	-394333696              # 0xffffffffe87ef200
	.quad	-393558646              # 0xffffffffe88ac58a
	.quad	-392783596              # 0xffffffffe8969914
	.quad	-392008546              # 0xffffffffe8a26c9e
	.quad	-391233496              # 0xffffffffe8ae4028
	.quad	-390458446              # 0xffffffffe8ba13b2
	.quad	-389683396              # 0xffffffffe8c5e73c
	.quad	-388908346              # 0xffffffffe8d1bac6
	.quad	-388133296              # 0xffffffffe8dd8e50
	.quad	-387358246              # 0xffffffffe8e961da
	.quad	-386583196              # 0xffffffffe8f53564
	.quad	-385808146              # 0xffffffffe90108ee
	.quad	-385033096              # 0xffffffffe90cdc78
	.quad	-384258046              # 0xffffffffe918b002
	.quad	-383482996              # 0xffffffffe924838c
	.quad	-382707946              # 0xffffffffe9305716
	.quad	-381932896              # 0xffffffffe93c2aa0
	.quad	-381157846              # 0xffffffffe947fe2a
	.quad	-380382796              # 0xffffffffe953d1b4
	.quad	-379607746              # 0xffffffffe95fa53e
	.quad	-378832696              # 0xffffffffe96b78c8
	.quad	-378057646              # 0xffffffffe9774c52
	.quad	-377282596              # 0xffffffffe9831fdc
	.quad	-376507546              # 0xffffffffe98ef366
	.quad	-375732496              # 0xffffffffe99ac6f0
	.quad	-374957446              # 0xffffffffe9a69a7a
	.quad	-374182396              # 0xffffffffe9b26e04
	.quad	-373407346              # 0xffffffffe9be418e
	.quad	-372632296              # 0xffffffffe9ca1518
	.quad	-399852246              # 0xffffffffe82abd2a
	.quad	-399067196              # 0xffffffffe836b7c4
	.quad	-398282146              # 0xffffffffe842b25e
	.quad	-397497096              # 0xffffffffe84eacf8
	.quad	-396712046              # 0xffffffffe85aa792
	.quad	-395926996              # 0xffffffffe866a22c
	.quad	-395141946              # 0xffffffffe8729cc6
	.quad	-394356896              # 0xffffffffe87e9760
	.quad	-393571846              # 0xffffffffe88a91fa
	.quad	-392786796              # 0xffffffffe8968c94
	.quad	-392001746              # 0xffffffffe8a2872e
	.quad	-391216696              # 0xffffffffe8ae81c8
	.quad	-390431646              # 0xffffffffe8ba7c62
	.quad	-389646596              # 0xffffffffe8c676fc
	.quad	-388861546              # 0xffffffffe8d27196
	.quad	-388076496              # 0xffffffffe8de6c30
	.quad	-387291446              # 0xffffffffe8ea66ca
	.quad	-386506396              # 0xffffffffe8f66164
	.quad	-385721346              # 0xffffffffe9025bfe
	.quad	-384936296              # 0xffffffffe90e5698
	.quad	-384151246              # 0xffffffffe91a5132
	.quad	-383366196              # 0xffffffffe9264bcc
	.quad	-382581146              # 0xffffffffe9324666
	.quad	-381796096              # 0xffffffffe93e4100
	.quad	-381011046              # 0xffffffffe94a3b9a
	.quad	-380225996              # 0xffffffffe9563634
	.quad	-379440946              # 0xffffffffe96230ce
	.quad	-378655896              # 0xffffffffe96e2b68
	.quad	-377870846              # 0xffffffffe97a2602
	.quad	-377085796              # 0xffffffffe986209c
	.quad	-376300746              # 0xffffffffe9921b36
	.quad	-375515696              # 0xffffffffe99e15d0
	.quad	-374730646              # 0xffffffffe9aa106a
	.quad	-373945596              # 0xffffffffe9b60b04
	.quad	-373160546              # 0xffffffffe9c2059e
	.quad	-372375496              # 0xffffffffe9ce0038
	.quad	-371590446              # 0xffffffffe9d9fad2
	.quad	-370805396              # 0xffffffffe9e5f56c
	.quad	-370020346              # 0xffffffffe9f1f006
	.quad	-369235296              # 0xffffffffe9fdeaa0
	.quad	-368450246              # 0xffffffffea09e53a
	.quad	-367665196              # 0xffffffffea15dfd4
	.quad	-366880146              # 0xffffffffea21da6e
	.quad	-366095096              # 0xffffffffea2dd508
	.quad	-365310046              # 0xffffffffea39cfa2
	.quad	-364524996              # 0xffffffffea45ca3c
	.quad	-363739946              # 0xffffffffea51c4d6
	.quad	-362954896              # 0xffffffffea5dbf70
	.quad	-362169846              # 0xffffffffea69ba0a
	.quad	-361384796              # 0xffffffffea75b4a4
	.quad	-360599746              # 0xffffffffea81af3e
	.quad	-359814696              # 0xffffffffea8da9d8
	.quad	-359029646              # 0xffffffffea99a472
	.quad	-358244596              # 0xffffffffeaa59f0c
	.quad	-357459546              # 0xffffffffeab199a6
	.quad	-356674496              # 0xffffffffeabd9440
	.quad	-355889446              # 0xffffffffeac98eda
	.quad	-355104396              # 0xffffffffead58974
	.quad	-354319346              # 0xffffffffeae1840e
	.quad	-353534296              # 0xffffffffeaed7ea8
	.quad	-352749246              # 0xffffffffeaf97942
	.quad	-351964196              # 0xffffffffeb0573dc
	.quad	-351179146              # 0xffffffffeb116e76
	.quad	-350394096              # 0xffffffffeb1d6910
	.quad	-349609046              # 0xffffffffeb2963aa
	.quad	-348823996              # 0xffffffffeb355e44
	.quad	-348038946              # 0xffffffffeb4158de
	.quad	-347253896              # 0xffffffffeb4d5378
	.quad	-346468846              # 0xffffffffeb594e12
	.quad	-345683796              # 0xffffffffeb6548ac
	.quad	-344898746              # 0xffffffffeb714346
	.quad	-344113696              # 0xffffffffeb7d3de0
	.quad	-343328646              # 0xffffffffeb89387a
	.quad	-342543596              # 0xffffffffeb953314
	.quad	-341758546              # 0xffffffffeba12dae
	.quad	-340973496              # 0xffffffffebad2848
	.quad	-340188446              # 0xffffffffebb922e2
	.quad	-339403396              # 0xffffffffebc51d7c
	.quad	-338618346              # 0xffffffffebd11816
	.quad	-337833296              # 0xffffffffebdd12b0
	.quad	-337048246              # 0xffffffffebe90d4a
	.quad	-336263196              # 0xffffffffebf507e4
	.quad	-335478146              # 0xffffffffec01027e
	.quad	-334693096              # 0xffffffffec0cfd18
	.quad	-333908046              # 0xffffffffec18f7b2
	.quad	-333122996              # 0xffffffffec24f24c
	.quad	-332337946              # 0xffffffffec30ece6
	.quad	-331552896              # 0xffffffffec3ce780
	.quad	-330767846              # 0xffffffffec48e21a
	.quad	-329982796              # 0xffffffffec54dcb4
	.quad	-329197746              # 0xffffffffec60d74e
	.quad	-328412696              # 0xffffffffec6cd1e8
	.quad	-327627646              # 0xffffffffec78cc82
	.quad	-326842596              # 0xffffffffec84c71c
	.quad	-326057546              # 0xffffffffec90c1b6
	.quad	-325272496              # 0xffffffffec9cbc50
	.quad	-324487446              # 0xffffffffeca8b6ea
	.quad	-323702396              # 0xffffffffecb4b184
	.quad	-322917346              # 0xffffffffecc0ac1e
	.quad	-322132296              # 0xffffffffeccca6b8
	.quad	-350342246              # 0xffffffffeb1e339a
	.quad	-349547196              # 0xffffffffeb2a5544
	.quad	-348752146              # 0xffffffffeb3676ee
	.quad	-347957096              # 0xffffffffeb429898
	.quad	-347162046              # 0xffffffffeb4eba42
	.quad	-346366996              # 0xffffffffeb5adbec
	.quad	-345571946              # 0xffffffffeb66fd96
	.quad	-344776896              # 0xffffffffeb731f40
	.quad	-343981846              # 0xffffffffeb7f40ea
	.quad	-343186796              # 0xffffffffeb8b6294
	.quad	-342391746              # 0xffffffffeb97843e
	.quad	-341596696              # 0xffffffffeba3a5e8
	.quad	-340801646              # 0xffffffffebafc792
	.quad	-340006596              # 0xffffffffebbbe93c
	.quad	-339211546              # 0xffffffffebc80ae6
	.quad	-338416496              # 0xffffffffebd42c90
	.quad	-337621446              # 0xffffffffebe04e3a
	.quad	-336826396              # 0xffffffffebec6fe4
	.quad	-336031346              # 0xffffffffebf8918e
	.quad	-335236296              # 0xffffffffec04b338
	.quad	-334441246              # 0xffffffffec10d4e2
	.quad	-333646196              # 0xffffffffec1cf68c
	.quad	-332851146              # 0xffffffffec291836
	.quad	-332056096              # 0xffffffffec3539e0
	.quad	-331261046              # 0xffffffffec415b8a
	.quad	-330465996              # 0xffffffffec4d7d34
	.quad	-329670946              # 0xffffffffec599ede
	.quad	-328875896              # 0xffffffffec65c088
	.quad	-328080846              # 0xffffffffec71e232
	.quad	-327285796              # 0xffffffffec7e03dc
	.quad	-326490746              # 0xffffffffec8a2586
	.quad	-325695696              # 0xffffffffec964730
	.quad	-324900646              # 0xffffffffeca268da
	.quad	-324105596              # 0xffffffffecae8a84
	.quad	-323310546              # 0xffffffffecbaac2e
	.quad	-322515496              # 0xffffffffecc6cdd8
	.quad	-321720446              # 0xffffffffecd2ef82
	.quad	-320925396              # 0xffffffffecdf112c
	.quad	-320130346              # 0xffffffffeceb32d6
	.quad	-319335296              # 0xffffffffecf75480
	.quad	-318540246              # 0xffffffffed03762a
	.quad	-317745196              # 0xffffffffed0f97d4
	.quad	-316950146              # 0xffffffffed1bb97e
	.quad	-316155096              # 0xffffffffed27db28
	.quad	-315360046              # 0xffffffffed33fcd2
	.quad	-314564996              # 0xffffffffed401e7c
	.quad	-313769946              # 0xffffffffed4c4026
	.quad	-312974896              # 0xffffffffed5861d0
	.quad	-312179846              # 0xffffffffed64837a
	.quad	-311384796              # 0xffffffffed70a524
	.quad	-310589746              # 0xffffffffed7cc6ce
	.quad	-309794696              # 0xffffffffed88e878
	.quad	-308999646              # 0xffffffffed950a22
	.quad	-308204596              # 0xffffffffeda12bcc
	.quad	-307409546              # 0xffffffffedad4d76
	.quad	-306614496              # 0xffffffffedb96f20
	.quad	-305819446              # 0xffffffffedc590ca
	.quad	-305024396              # 0xffffffffedd1b274
	.quad	-304229346              # 0xffffffffedddd41e
	.quad	-303434296              # 0xffffffffede9f5c8
	.quad	-302639246              # 0xffffffffedf61772
	.quad	-301844196              # 0xffffffffee02391c
	.quad	-301049146              # 0xffffffffee0e5ac6
	.quad	-300254096              # 0xffffffffee1a7c70
	.quad	-299459046              # 0xffffffffee269e1a
	.quad	-298663996              # 0xffffffffee32bfc4
	.quad	-297868946              # 0xffffffffee3ee16e
	.quad	-297073896              # 0xffffffffee4b0318
	.quad	-296278846              # 0xffffffffee5724c2
	.quad	-295483796              # 0xffffffffee63466c
	.quad	-294688746              # 0xffffffffee6f6816
	.quad	-293893696              # 0xffffffffee7b89c0
	.quad	-293098646              # 0xffffffffee87ab6a
	.quad	-292303596              # 0xffffffffee93cd14
	.quad	-291508546              # 0xffffffffee9feebe
	.quad	-290713496              # 0xffffffffeeac1068
	.quad	-289918446              # 0xffffffffeeb83212
	.quad	-289123396              # 0xffffffffeec453bc
	.quad	-288328346              # 0xffffffffeed07566
	.quad	-287533296              # 0xffffffffeedc9710
	.quad	-286738246              # 0xffffffffeee8b8ba
	.quad	-285943196              # 0xffffffffeef4da64
	.quad	-285148146              # 0xffffffffef00fc0e
	.quad	-284353096              # 0xffffffffef0d1db8
	.quad	-283558046              # 0xffffffffef193f62
	.quad	-282762996              # 0xffffffffef25610c
	.quad	-281967946              # 0xffffffffef3182b6
	.quad	-281172896              # 0xffffffffef3da460
	.quad	-280377846              # 0xffffffffef49c60a
	.quad	-279582796              # 0xffffffffef55e7b4
	.quad	-278787746              # 0xffffffffef62095e
	.quad	-277992696              # 0xffffffffef6e2b08
	.quad	-277197646              # 0xffffffffef7a4cb2
	.quad	-276402596              # 0xffffffffef866e5c
	.quad	-275607546              # 0xffffffffef929006
	.quad	-274812496              # 0xffffffffef9eb1b0
	.quad	-274017446              # 0xffffffffefaad35a
	.quad	-273222396              # 0xffffffffefb6f504
	.quad	-272427346              # 0xffffffffefc316ae
	.quad	-271632296              # 0xffffffffefcf3858
	.quad	-300832246              # 0xffffffffee11aa0a
	.quad	-300027196              # 0xffffffffee1df2c4
	.quad	-299222146              # 0xffffffffee2a3b7e
	.quad	-298417096              # 0xffffffffee368438
	.quad	-297612046              # 0xffffffffee42ccf2
	.quad	-296806996              # 0xffffffffee4f15ac
	.quad	-296001946              # 0xffffffffee5b5e66
	.quad	-295196896              # 0xffffffffee67a720
	.quad	-294391846              # 0xffffffffee73efda
	.quad	-293586796              # 0xffffffffee803894
	.quad	-292781746              # 0xffffffffee8c814e
	.quad	-291976696              # 0xffffffffee98ca08
	.quad	-291171646              # 0xffffffffeea512c2
	.quad	-290366596              # 0xffffffffeeb15b7c
	.quad	-289561546              # 0xffffffffeebda436
	.quad	-288756496              # 0xffffffffeec9ecf0
	.quad	-287951446              # 0xffffffffeed635aa
	.quad	-287146396              # 0xffffffffeee27e64
	.quad	-286341346              # 0xffffffffeeeec71e
	.quad	-285536296              # 0xffffffffeefb0fd8
	.quad	-284731246              # 0xffffffffef075892
	.quad	-283926196              # 0xffffffffef13a14c
	.quad	-283121146              # 0xffffffffef1fea06
	.quad	-282316096              # 0xffffffffef2c32c0
	.quad	-281511046              # 0xffffffffef387b7a
	.quad	-280705996              # 0xffffffffef44c434
	.quad	-279900946              # 0xffffffffef510cee
	.quad	-279095896              # 0xffffffffef5d55a8
	.quad	-278290846              # 0xffffffffef699e62
	.quad	-277485796              # 0xffffffffef75e71c
	.quad	-276680746              # 0xffffffffef822fd6
	.quad	-275875696              # 0xffffffffef8e7890
	.quad	-275070646              # 0xffffffffef9ac14a
	.quad	-274265596              # 0xffffffffefa70a04
	.quad	-273460546              # 0xffffffffefb352be
	.quad	-272655496              # 0xffffffffefbf9b78
	.quad	-271850446              # 0xffffffffefcbe432
	.quad	-271045396              # 0xffffffffefd82cec
	.quad	-270240346              # 0xffffffffefe475a6
	.quad	-269435296              # 0xffffffffeff0be60
	.quad	-268630246              # 0xffffffffeffd071a
	.quad	-267825196              # 0xfffffffff0094fd4
	.quad	-267020146              # 0xfffffffff015988e
	.quad	-266215096              # 0xfffffffff021e148
	.quad	-265410046              # 0xfffffffff02e2a02
	.quad	-264604996              # 0xfffffffff03a72bc
	.quad	-263799946              # 0xfffffffff046bb76
	.quad	-262994896              # 0xfffffffff0530430
	.quad	-262189846              # 0xfffffffff05f4cea
	.quad	-261384796              # 0xfffffffff06b95a4
	.quad	-260579746              # 0xfffffffff077de5e
	.quad	-259774696              # 0xfffffffff0842718
	.quad	-258969646              # 0xfffffffff0906fd2
	.quad	-258164596              # 0xfffffffff09cb88c
	.quad	-257359546              # 0xfffffffff0a90146
	.quad	-256554496              # 0xfffffffff0b54a00
	.quad	-255749446              # 0xfffffffff0c192ba
	.quad	-254944396              # 0xfffffffff0cddb74
	.quad	-254139346              # 0xfffffffff0da242e
	.quad	-253334296              # 0xfffffffff0e66ce8
	.quad	-252529246              # 0xfffffffff0f2b5a2
	.quad	-251724196              # 0xfffffffff0fefe5c
	.quad	-250919146              # 0xfffffffff10b4716
	.quad	-250114096              # 0xfffffffff1178fd0
	.quad	-249309046              # 0xfffffffff123d88a
	.quad	-248503996              # 0xfffffffff1302144
	.quad	-247698946              # 0xfffffffff13c69fe
	.quad	-246893896              # 0xfffffffff148b2b8
	.quad	-246088846              # 0xfffffffff154fb72
	.quad	-245283796              # 0xfffffffff161442c
	.quad	-244478746              # 0xfffffffff16d8ce6
	.quad	-243673696              # 0xfffffffff179d5a0
	.quad	-242868646              # 0xfffffffff1861e5a
	.quad	-242063596              # 0xfffffffff1926714
	.quad	-241258546              # 0xfffffffff19eafce
	.quad	-240453496              # 0xfffffffff1aaf888
	.quad	-239648446              # 0xfffffffff1b74142
	.quad	-238843396              # 0xfffffffff1c389fc
	.quad	-238038346              # 0xfffffffff1cfd2b6
	.quad	-237233296              # 0xfffffffff1dc1b70
	.quad	-236428246              # 0xfffffffff1e8642a
	.quad	-235623196              # 0xfffffffff1f4ace4
	.quad	-234818146              # 0xfffffffff200f59e
	.quad	-234013096              # 0xfffffffff20d3e58
	.quad	-233208046              # 0xfffffffff2198712
	.quad	-232402996              # 0xfffffffff225cfcc
	.quad	-231597946              # 0xfffffffff2321886
	.quad	-230792896              # 0xfffffffff23e6140
	.quad	-229987846              # 0xfffffffff24aa9fa
	.quad	-229182796              # 0xfffffffff256f2b4
	.quad	-228377746              # 0xfffffffff2633b6e
	.quad	-227572696              # 0xfffffffff26f8428
	.quad	-226767646              # 0xfffffffff27bcce2
	.quad	-225962596              # 0xfffffffff288159c
	.quad	-225157546              # 0xfffffffff2945e56
	.quad	-224352496              # 0xfffffffff2a0a710
	.quad	-223547446              # 0xfffffffff2acefca
	.quad	-222742396              # 0xfffffffff2b93884
	.quad	-221937346              # 0xfffffffff2c5813e
	.quad	-221132296              # 0xfffffffff2d1c9f8
	.quad	-251322246              # 0xfffffffff105207a
	.quad	-250507196              # 0xfffffffff1119044
	.quad	-249692146              # 0xfffffffff11e000e
	.quad	-248877096              # 0xfffffffff12a6fd8
	.quad	-248062046              # 0xfffffffff136dfa2
	.quad	-247246996              # 0xfffffffff1434f6c
	.quad	-246431946              # 0xfffffffff14fbf36
	.quad	-245616896              # 0xfffffffff15c2f00
	.quad	-244801846              # 0xfffffffff1689eca
	.quad	-243986796              # 0xfffffffff1750e94
	.quad	-243171746              # 0xfffffffff1817e5e
	.quad	-242356696              # 0xfffffffff18dee28
	.quad	-241541646              # 0xfffffffff19a5df2
	.quad	-240726596              # 0xfffffffff1a6cdbc
	.quad	-239911546              # 0xfffffffff1b33d86
	.quad	-239096496              # 0xfffffffff1bfad50
	.quad	-238281446              # 0xfffffffff1cc1d1a
	.quad	-237466396              # 0xfffffffff1d88ce4
	.quad	-236651346              # 0xfffffffff1e4fcae
	.quad	-235836296              # 0xfffffffff1f16c78
	.quad	-235021246              # 0xfffffffff1fddc42
	.quad	-234206196              # 0xfffffffff20a4c0c
	.quad	-233391146              # 0xfffffffff216bbd6
	.quad	-232576096              # 0xfffffffff2232ba0
	.quad	-231761046              # 0xfffffffff22f9b6a
	.quad	-230945996              # 0xfffffffff23c0b34
	.quad	-230130946              # 0xfffffffff2487afe
	.quad	-229315896              # 0xfffffffff254eac8
	.quad	-228500846              # 0xfffffffff2615a92
	.quad	-227685796              # 0xfffffffff26dca5c
	.quad	-226870746              # 0xfffffffff27a3a26
	.quad	-226055696              # 0xfffffffff286a9f0
	.quad	-225240646              # 0xfffffffff29319ba
	.quad	-224425596              # 0xfffffffff29f8984
	.quad	-223610546              # 0xfffffffff2abf94e
	.quad	-222795496              # 0xfffffffff2b86918
	.quad	-221980446              # 0xfffffffff2c4d8e2
	.quad	-221165396              # 0xfffffffff2d148ac
	.quad	-220350346              # 0xfffffffff2ddb876
	.quad	-219535296              # 0xfffffffff2ea2840
	.quad	-218720246              # 0xfffffffff2f6980a
	.quad	-217905196              # 0xfffffffff30307d4
	.quad	-217090146              # 0xfffffffff30f779e
	.quad	-216275096              # 0xfffffffff31be768
	.quad	-215460046              # 0xfffffffff3285732
	.quad	-214644996              # 0xfffffffff334c6fc
	.quad	-213829946              # 0xfffffffff34136c6
	.quad	-213014896              # 0xfffffffff34da690
	.quad	-212199846              # 0xfffffffff35a165a
	.quad	-211384796              # 0xfffffffff3668624
	.quad	-210569746              # 0xfffffffff372f5ee
	.quad	-209754696              # 0xfffffffff37f65b8
	.quad	-208939646              # 0xfffffffff38bd582
	.quad	-208124596              # 0xfffffffff398454c
	.quad	-207309546              # 0xfffffffff3a4b516
	.quad	-206494496              # 0xfffffffff3b124e0
	.quad	-205679446              # 0xfffffffff3bd94aa
	.quad	-204864396              # 0xfffffffff3ca0474
	.quad	-204049346              # 0xfffffffff3d6743e
	.quad	-203234296              # 0xfffffffff3e2e408
	.quad	-202419246              # 0xfffffffff3ef53d2
	.quad	-201604196              # 0xfffffffff3fbc39c
	.quad	-200789146              # 0xfffffffff4083366
	.quad	-199974096              # 0xfffffffff414a330
	.quad	-199159046              # 0xfffffffff42112fa
	.quad	-198343996              # 0xfffffffff42d82c4
	.quad	-197528946              # 0xfffffffff439f28e
	.quad	-196713896              # 0xfffffffff4466258
	.quad	-195898846              # 0xfffffffff452d222
	.quad	-195083796              # 0xfffffffff45f41ec
	.quad	-194268746              # 0xfffffffff46bb1b6
	.quad	-193453696              # 0xfffffffff4782180
	.quad	-192638646              # 0xfffffffff484914a
	.quad	-191823596              # 0xfffffffff4910114
	.quad	-191008546              # 0xfffffffff49d70de
	.quad	-190193496              # 0xfffffffff4a9e0a8
	.quad	-189378446              # 0xfffffffff4b65072
	.quad	-188563396              # 0xfffffffff4c2c03c
	.quad	-187748346              # 0xfffffffff4cf3006
	.quad	-186933296              # 0xfffffffff4db9fd0
	.quad	-186118246              # 0xfffffffff4e80f9a
	.quad	-185303196              # 0xfffffffff4f47f64
	.quad	-184488146              # 0xfffffffff500ef2e
	.quad	-183673096              # 0xfffffffff50d5ef8
	.quad	-182858046              # 0xfffffffff519cec2
	.quad	-182042996              # 0xfffffffff5263e8c
	.quad	-181227946              # 0xfffffffff532ae56
	.quad	-180412896              # 0xfffffffff53f1e20
	.quad	-179597846              # 0xfffffffff54b8dea
	.quad	-178782796              # 0xfffffffff557fdb4
	.quad	-177967746              # 0xfffffffff5646d7e
	.quad	-177152696              # 0xfffffffff570dd48
	.quad	-176337646              # 0xfffffffff57d4d12
	.quad	-175522596              # 0xfffffffff589bcdc
	.quad	-174707546              # 0xfffffffff5962ca6
	.quad	-173892496              # 0xfffffffff5a29c70
	.quad	-173077446              # 0xfffffffff5af0c3a
	.quad	-172262396              # 0xfffffffff5bb7c04
	.quad	-171447346              # 0xfffffffff5c7ebce
	.quad	-170632296              # 0xfffffffff5d45b98
	.quad	-201812246              # 0xfffffffff3f896ea
	.quad	-200987196              # 0xfffffffff4052dc4
	.quad	-200162146              # 0xfffffffff411c49e
	.quad	-199337096              # 0xfffffffff41e5b78
	.quad	-198512046              # 0xfffffffff42af252
	.quad	-197686996              # 0xfffffffff437892c
	.quad	-196861946              # 0xfffffffff4442006
	.quad	-196036896              # 0xfffffffff450b6e0
	.quad	-195211846              # 0xfffffffff45d4dba
	.quad	-194386796              # 0xfffffffff469e494
	.quad	-193561746              # 0xfffffffff4767b6e
	.quad	-192736696              # 0xfffffffff4831248
	.quad	-191911646              # 0xfffffffff48fa922
	.quad	-191086596              # 0xfffffffff49c3ffc
	.quad	-190261546              # 0xfffffffff4a8d6d6
	.quad	-189436496              # 0xfffffffff4b56db0
	.quad	-188611446              # 0xfffffffff4c2048a
	.quad	-187786396              # 0xfffffffff4ce9b64
	.quad	-186961346              # 0xfffffffff4db323e
	.quad	-186136296              # 0xfffffffff4e7c918
	.quad	-185311246              # 0xfffffffff4f45ff2
	.quad	-184486196              # 0xfffffffff500f6cc
	.quad	-183661146              # 0xfffffffff50d8da6
	.quad	-182836096              # 0xfffffffff51a2480
	.quad	-182011046              # 0xfffffffff526bb5a
	.quad	-181185996              # 0xfffffffff5335234
	.quad	-180360946              # 0xfffffffff53fe90e
	.quad	-179535896              # 0xfffffffff54c7fe8
	.quad	-178710846              # 0xfffffffff55916c2
	.quad	-177885796              # 0xfffffffff565ad9c
	.quad	-177060746              # 0xfffffffff5724476
	.quad	-176235696              # 0xfffffffff57edb50
	.quad	-175410646              # 0xfffffffff58b722a
	.quad	-174585596              # 0xfffffffff5980904
	.quad	-173760546              # 0xfffffffff5a49fde
	.quad	-172935496              # 0xfffffffff5b136b8
	.quad	-172110446              # 0xfffffffff5bdcd92
	.quad	-171285396              # 0xfffffffff5ca646c
	.quad	-170460346              # 0xfffffffff5d6fb46
	.quad	-169635296              # 0xfffffffff5e39220
	.quad	-168810246              # 0xfffffffff5f028fa
	.quad	-167985196              # 0xfffffffff5fcbfd4
	.quad	-167160146              # 0xfffffffff60956ae
	.quad	-166335096              # 0xfffffffff615ed88
	.quad	-165510046              # 0xfffffffff6228462
	.quad	-164684996              # 0xfffffffff62f1b3c
	.quad	-163859946              # 0xfffffffff63bb216
	.quad	-163034896              # 0xfffffffff64848f0
	.quad	-162209846              # 0xfffffffff654dfca
	.quad	-161384796              # 0xfffffffff66176a4
	.quad	-160559746              # 0xfffffffff66e0d7e
	.quad	-159734696              # 0xfffffffff67aa458
	.quad	-158909646              # 0xfffffffff6873b32
	.quad	-158084596              # 0xfffffffff693d20c
	.quad	-157259546              # 0xfffffffff6a068e6
	.quad	-156434496              # 0xfffffffff6acffc0
	.quad	-155609446              # 0xfffffffff6b9969a
	.quad	-154784396              # 0xfffffffff6c62d74
	.quad	-153959346              # 0xfffffffff6d2c44e
	.quad	-153134296              # 0xfffffffff6df5b28
	.quad	-152309246              # 0xfffffffff6ebf202
	.quad	-151484196              # 0xfffffffff6f888dc
	.quad	-150659146              # 0xfffffffff7051fb6
	.quad	-149834096              # 0xfffffffff711b690
	.quad	-149009046              # 0xfffffffff71e4d6a
	.quad	-148183996              # 0xfffffffff72ae444
	.quad	-147358946              # 0xfffffffff7377b1e
	.quad	-146533896              # 0xfffffffff74411f8
	.quad	-145708846              # 0xfffffffff750a8d2
	.quad	-144883796              # 0xfffffffff75d3fac
	.quad	-144058746              # 0xfffffffff769d686
	.quad	-143233696              # 0xfffffffff7766d60
	.quad	-142408646              # 0xfffffffff783043a
	.quad	-141583596              # 0xfffffffff78f9b14
	.quad	-140758546              # 0xfffffffff79c31ee
	.quad	-139933496              # 0xfffffffff7a8c8c8
	.quad	-139108446              # 0xfffffffff7b55fa2
	.quad	-138283396              # 0xfffffffff7c1f67c
	.quad	-137458346              # 0xfffffffff7ce8d56
	.quad	-136633296              # 0xfffffffff7db2430
	.quad	-135808246              # 0xfffffffff7e7bb0a
	.quad	-134983196              # 0xfffffffff7f451e4
	.quad	-134158146              # 0xfffffffff800e8be
	.quad	-133333096              # 0xfffffffff80d7f98
	.quad	-132508046              # 0xfffffffff81a1672
	.quad	-131682996              # 0xfffffffff826ad4c
	.quad	-130857946              # 0xfffffffff8334426
	.quad	-130032896              # 0xfffffffff83fdb00
	.quad	-129207846              # 0xfffffffff84c71da
	.quad	-128382796              # 0xfffffffff85908b4
	.quad	-127557746              # 0xfffffffff8659f8e
	.quad	-126732696              # 0xfffffffff8723668
	.quad	-125907646              # 0xfffffffff87ecd42
	.quad	-125082596              # 0xfffffffff88b641c
	.quad	-124257546              # 0xfffffffff897faf6
	.quad	-123432496              # 0xfffffffff8a491d0
	.quad	-122607446              # 0xfffffffff8b128aa
	.quad	-121782396              # 0xfffffffff8bdbf84
	.quad	-120957346              # 0xfffffffff8ca565e
	.quad	-120132296              # 0xfffffffff8d6ed38
	.quad	-152302246              # 0xfffffffff6ec0d5a
	.quad	-151467196              # 0xfffffffff6f8cb44
	.quad	-150632146              # 0xfffffffff705892e
	.quad	-149797096              # 0xfffffffff7124718
	.quad	-148962046              # 0xfffffffff71f0502
	.quad	-148126996              # 0xfffffffff72bc2ec
	.quad	-147291946              # 0xfffffffff73880d6
	.quad	-146456896              # 0xfffffffff7453ec0
	.quad	-145621846              # 0xfffffffff751fcaa
	.quad	-144786796              # 0xfffffffff75eba94
	.quad	-143951746              # 0xfffffffff76b787e
	.quad	-143116696              # 0xfffffffff7783668
	.quad	-142281646              # 0xfffffffff784f452
	.quad	-141446596              # 0xfffffffff791b23c
	.quad	-140611546              # 0xfffffffff79e7026
	.quad	-139776496              # 0xfffffffff7ab2e10
	.quad	-138941446              # 0xfffffffff7b7ebfa
	.quad	-138106396              # 0xfffffffff7c4a9e4
	.quad	-137271346              # 0xfffffffff7d167ce
	.quad	-136436296              # 0xfffffffff7de25b8
	.quad	-135601246              # 0xfffffffff7eae3a2
	.quad	-134766196              # 0xfffffffff7f7a18c
	.quad	-133931146              # 0xfffffffff8045f76
	.quad	-133096096              # 0xfffffffff8111d60
	.quad	-132261046              # 0xfffffffff81ddb4a
	.quad	-131425996              # 0xfffffffff82a9934
	.quad	-130590946              # 0xfffffffff837571e
	.quad	-129755896              # 0xfffffffff8441508
	.quad	-128920846              # 0xfffffffff850d2f2
	.quad	-128085796              # 0xfffffffff85d90dc
	.quad	-127250746              # 0xfffffffff86a4ec6
	.quad	-126415696              # 0xfffffffff8770cb0
	.quad	-125580646              # 0xfffffffff883ca9a
	.quad	-124745596              # 0xfffffffff8908884
	.quad	-123910546              # 0xfffffffff89d466e
	.quad	-123075496              # 0xfffffffff8aa0458
	.quad	-122240446              # 0xfffffffff8b6c242
	.quad	-121405396              # 0xfffffffff8c3802c
	.quad	-120570346              # 0xfffffffff8d03e16
	.quad	-119735296              # 0xfffffffff8dcfc00
	.quad	-118900246              # 0xfffffffff8e9b9ea
	.quad	-118065196              # 0xfffffffff8f677d4
	.quad	-117230146              # 0xfffffffff90335be
	.quad	-116395096              # 0xfffffffff90ff3a8
	.quad	-115560046              # 0xfffffffff91cb192
	.quad	-114724996              # 0xfffffffff9296f7c
	.quad	-113889946              # 0xfffffffff9362d66
	.quad	-113054896              # 0xfffffffff942eb50
	.quad	-112219846              # 0xfffffffff94fa93a
	.quad	-111384796              # 0xfffffffff95c6724
	.quad	-110549746              # 0xfffffffff969250e
	.quad	-109714696              # 0xfffffffff975e2f8
	.quad	-108879646              # 0xfffffffff982a0e2
	.quad	-108044596              # 0xfffffffff98f5ecc
	.quad	-107209546              # 0xfffffffff99c1cb6
	.quad	-106374496              # 0xfffffffff9a8daa0
	.quad	-105539446              # 0xfffffffff9b5988a
	.quad	-104704396              # 0xfffffffff9c25674
	.quad	-103869346              # 0xfffffffff9cf145e
	.quad	-103034296              # 0xfffffffff9dbd248
	.quad	-102199246              # 0xfffffffff9e89032
	.quad	-101364196              # 0xfffffffff9f54e1c
	.quad	-100529146              # 0xfffffffffa020c06
	.quad	-99694096               # 0xfffffffffa0ec9f0
	.quad	-98859046               # 0xfffffffffa1b87da
	.quad	-98023996               # 0xfffffffffa2845c4
	.quad	-97188946               # 0xfffffffffa3503ae
	.quad	-96353896               # 0xfffffffffa41c198
	.quad	-95518846               # 0xfffffffffa4e7f82
	.quad	-94683796               # 0xfffffffffa5b3d6c
	.quad	-93848746               # 0xfffffffffa67fb56
	.quad	-93013696               # 0xfffffffffa74b940
	.quad	-92178646               # 0xfffffffffa81772a
	.quad	-91343596               # 0xfffffffffa8e3514
	.quad	-90508546               # 0xfffffffffa9af2fe
	.quad	-89673496               # 0xfffffffffaa7b0e8
	.quad	-88838446               # 0xfffffffffab46ed2
	.quad	-88003396               # 0xfffffffffac12cbc
	.quad	-87168346               # 0xfffffffffacdeaa6
	.quad	-86333296               # 0xfffffffffadaa890
	.quad	-85498246               # 0xfffffffffae7667a
	.quad	-84663196               # 0xfffffffffaf42464
	.quad	-83828146               # 0xfffffffffb00e24e
	.quad	-82993096               # 0xfffffffffb0da038
	.quad	-82158046               # 0xfffffffffb1a5e22
	.quad	-81322996               # 0xfffffffffb271c0c
	.quad	-80487946               # 0xfffffffffb33d9f6
	.quad	-79652896               # 0xfffffffffb4097e0
	.quad	-78817846               # 0xfffffffffb4d55ca
	.quad	-77982796               # 0xfffffffffb5a13b4
	.quad	-77147746               # 0xfffffffffb66d19e
	.quad	-76312696               # 0xfffffffffb738f88
	.quad	-75477646               # 0xfffffffffb804d72
	.quad	-74642596               # 0xfffffffffb8d0b5c
	.quad	-73807546               # 0xfffffffffb99c946
	.quad	-72972496               # 0xfffffffffba68730
	.quad	-72137446               # 0xfffffffffbb3451a
	.quad	-71302396               # 0xfffffffffbc00304
	.quad	-70467346               # 0xfffffffffbccc0ee
	.quad	-69632296               # 0xfffffffffbd97ed8
	.quad	-102792246              # 0xfffffffff9df83ca
	.quad	-101947196              # 0xfffffffff9ec68c4
	.quad	-101102146              # 0xfffffffff9f94dbe
	.quad	-100257096              # 0xfffffffffa0632b8
	.quad	-99412046               # 0xfffffffffa1317b2
	.quad	-98566996               # 0xfffffffffa1ffcac
	.quad	-97721946               # 0xfffffffffa2ce1a6
	.quad	-96876896               # 0xfffffffffa39c6a0
	.quad	-96031846               # 0xfffffffffa46ab9a
	.quad	-95186796               # 0xfffffffffa539094
	.quad	-94341746               # 0xfffffffffa60758e
	.quad	-93496696               # 0xfffffffffa6d5a88
	.quad	-92651646               # 0xfffffffffa7a3f82
	.quad	-91806596               # 0xfffffffffa87247c
	.quad	-90961546               # 0xfffffffffa940976
	.quad	-90116496               # 0xfffffffffaa0ee70
	.quad	-89271446               # 0xfffffffffaadd36a
	.quad	-88426396               # 0xfffffffffabab864
	.quad	-87581346               # 0xfffffffffac79d5e
	.quad	-86736296               # 0xfffffffffad48258
	.quad	-85891246               # 0xfffffffffae16752
	.quad	-85046196               # 0xfffffffffaee4c4c
	.quad	-84201146               # 0xfffffffffafb3146
	.quad	-83356096               # 0xfffffffffb081640
	.quad	-82511046               # 0xfffffffffb14fb3a
	.quad	-81665996               # 0xfffffffffb21e034
	.quad	-80820946               # 0xfffffffffb2ec52e
	.quad	-79975896               # 0xfffffffffb3baa28
	.quad	-79130846               # 0xfffffffffb488f22
	.quad	-78285796               # 0xfffffffffb55741c
	.quad	-77440746               # 0xfffffffffb625916
	.quad	-76595696               # 0xfffffffffb6f3e10
	.quad	-75750646               # 0xfffffffffb7c230a
	.quad	-74905596               # 0xfffffffffb890804
	.quad	-74060546               # 0xfffffffffb95ecfe
	.quad	-73215496               # 0xfffffffffba2d1f8
	.quad	-72370446               # 0xfffffffffbafb6f2
	.quad	-71525396               # 0xfffffffffbbc9bec
	.quad	-70680346               # 0xfffffffffbc980e6
	.quad	-69835296               # 0xfffffffffbd665e0
	.quad	-68990246               # 0xfffffffffbe34ada
	.quad	-68145196               # 0xfffffffffbf02fd4
	.quad	-67300146               # 0xfffffffffbfd14ce
	.quad	-66455096               # 0xfffffffffc09f9c8
	.quad	-65610046               # 0xfffffffffc16dec2
	.quad	-64764996               # 0xfffffffffc23c3bc
	.quad	-63919946               # 0xfffffffffc30a8b6
	.quad	-63074896               # 0xfffffffffc3d8db0
	.quad	-62229846               # 0xfffffffffc4a72aa
	.quad	-61384796               # 0xfffffffffc5757a4
	.quad	-60539746               # 0xfffffffffc643c9e
	.quad	-59694696               # 0xfffffffffc712198
	.quad	-58849646               # 0xfffffffffc7e0692
	.quad	-58004596               # 0xfffffffffc8aeb8c
	.quad	-57159546               # 0xfffffffffc97d086
	.quad	-56314496               # 0xfffffffffca4b580
	.quad	-55469446               # 0xfffffffffcb19a7a
	.quad	-54624396               # 0xfffffffffcbe7f74
	.quad	-53779346               # 0xfffffffffccb646e
	.quad	-52934296               # 0xfffffffffcd84968
	.quad	-52089246               # 0xfffffffffce52e62
	.quad	-51244196               # 0xfffffffffcf2135c
	.quad	-50399146               # 0xfffffffffcfef856
	.quad	-49554096               # 0xfffffffffd0bdd50
	.quad	-48709046               # 0xfffffffffd18c24a
	.quad	-47863996               # 0xfffffffffd25a744
	.quad	-47018946               # 0xfffffffffd328c3e
	.quad	-46173896               # 0xfffffffffd3f7138
	.quad	-45328846               # 0xfffffffffd4c5632
	.quad	-44483796               # 0xfffffffffd593b2c
	.quad	-43638746               # 0xfffffffffd662026
	.quad	-42793696               # 0xfffffffffd730520
	.quad	-41948646               # 0xfffffffffd7fea1a
	.quad	-41103596               # 0xfffffffffd8ccf14
	.quad	-40258546               # 0xfffffffffd99b40e
	.quad	-39413496               # 0xfffffffffda69908
	.quad	-38568446               # 0xfffffffffdb37e02
	.quad	-37723396               # 0xfffffffffdc062fc
	.quad	-36878346               # 0xfffffffffdcd47f6
	.quad	-36033296               # 0xfffffffffdda2cf0
	.quad	-35188246               # 0xfffffffffde711ea
	.quad	-34343196               # 0xfffffffffdf3f6e4
	.quad	-33498146               # 0xfffffffffe00dbde
	.quad	-32653096               # 0xfffffffffe0dc0d8
	.quad	-31808046               # 0xfffffffffe1aa5d2
	.quad	-30962996               # 0xfffffffffe278acc
	.quad	-30117946               # 0xfffffffffe346fc6
	.quad	-29272896               # 0xfffffffffe4154c0
	.quad	-28427846               # 0xfffffffffe4e39ba
	.quad	-27582796               # 0xfffffffffe5b1eb4
	.quad	-26737746               # 0xfffffffffe6803ae
	.quad	-25892696               # 0xfffffffffe74e8a8
	.quad	-25047646               # 0xfffffffffe81cda2
	.quad	-24202596               # 0xfffffffffe8eb29c
	.quad	-23357546               # 0xfffffffffe9b9796
	.quad	-22512496               # 0xfffffffffea87c90
	.quad	-21667446               # 0xfffffffffeb5618a
	.quad	-20822396               # 0xfffffffffec24684
	.quad	-19977346               # 0xfffffffffecf2b7e
	.quad	-19132296               # 0xfffffffffedc1078
	.quad	-53282246               # 0xfffffffffcd2fa3a
	.quad	-52427196               # 0xfffffffffce00644
	.quad	-51572146               # 0xfffffffffced124e
	.quad	-50717096               # 0xfffffffffcfa1e58
	.quad	-49862046               # 0xfffffffffd072a62
	.quad	-49006996               # 0xfffffffffd14366c
	.quad	-48151946               # 0xfffffffffd214276
	.quad	-47296896               # 0xfffffffffd2e4e80
	.quad	-46441846               # 0xfffffffffd3b5a8a
	.quad	-45586796               # 0xfffffffffd486694
	.quad	-44731746               # 0xfffffffffd55729e
	.quad	-43876696               # 0xfffffffffd627ea8
	.quad	-43021646               # 0xfffffffffd6f8ab2
	.quad	-42166596               # 0xfffffffffd7c96bc
	.quad	-41311546               # 0xfffffffffd89a2c6
	.quad	-40456496               # 0xfffffffffd96aed0
	.quad	-39601446               # 0xfffffffffda3bada
	.quad	-38746396               # 0xfffffffffdb0c6e4
	.quad	-37891346               # 0xfffffffffdbdd2ee
	.quad	-37036296               # 0xfffffffffdcadef8
	.quad	-36181246               # 0xfffffffffdd7eb02
	.quad	-35326196               # 0xfffffffffde4f70c
	.quad	-34471146               # 0xfffffffffdf20316
	.quad	-33616096               # 0xfffffffffdff0f20
	.quad	-32761046               # 0xfffffffffe0c1b2a
	.quad	-31905996               # 0xfffffffffe192734
	.quad	-31050946               # 0xfffffffffe26333e
	.quad	-30195896               # 0xfffffffffe333f48
	.quad	-29340846               # 0xfffffffffe404b52
	.quad	-28485796               # 0xfffffffffe4d575c
	.quad	-27630746               # 0xfffffffffe5a6366
	.quad	-26775696               # 0xfffffffffe676f70
	.quad	-25920646               # 0xfffffffffe747b7a
	.quad	-25065596               # 0xfffffffffe818784
	.quad	-24210546               # 0xfffffffffe8e938e
	.quad	-23355496               # 0xfffffffffe9b9f98
	.quad	-22500446               # 0xfffffffffea8aba2
	.quad	-21645396               # 0xfffffffffeb5b7ac
	.quad	-20790346               # 0xfffffffffec2c3b6
	.quad	-19935296               # 0xfffffffffecfcfc0
	.quad	-19080246               # 0xfffffffffedcdbca
	.quad	-18225196               # 0xfffffffffee9e7d4
	.quad	-17370146               # 0xfffffffffef6f3de
	.quad	-16515096               # 0xffffffffff03ffe8
	.quad	-15660046               # 0xffffffffff110bf2
	.quad	-14804996               # 0xffffffffff1e17fc
	.quad	-13949946               # 0xffffffffff2b2406
	.quad	-13094896               # 0xffffffffff383010
	.quad	-12239846               # 0xffffffffff453c1a
	.quad	-11384796               # 0xffffffffff524824
	.quad	-10529746               # 0xffffffffff5f542e
	.quad	-9674696                # 0xffffffffff6c6038
	.quad	-8819646                # 0xffffffffff796c42
	.quad	-7964596                # 0xffffffffff86784c
	.quad	-7109546                # 0xffffffffff938456
	.quad	-6254496                # 0xffffffffffa09060
	.quad	-5399446                # 0xffffffffffad9c6a
	.quad	-4544396                # 0xffffffffffbaa874
	.quad	-3689346                # 0xffffffffffc7b47e
	.quad	-2834296                # 0xffffffffffd4c088
	.quad	-1979246                # 0xffffffffffe1cc92
	.quad	-1124196                # 0xffffffffffeed89c
	.quad	-269146                 # 0xfffffffffffbe4a6
	.quad	585904                  # 0x8f0b0
	.quad	1440954                 # 0x15fcba
	.quad	2296004                 # 0x2308c4
	.quad	3151054                 # 0x3014ce
	.quad	4006104                 # 0x3d20d8
	.quad	4861154                 # 0x4a2ce2
	.quad	5716204                 # 0x5738ec
	.quad	6571254                 # 0x6444f6
	.quad	7426304                 # 0x715100
	.quad	8281354                 # 0x7e5d0a
	.quad	9136404                 # 0x8b6914
	.quad	9991454                 # 0x98751e
	.quad	10846504                # 0xa58128
	.quad	11701554                # 0xb28d32
	.quad	12556604                # 0xbf993c
	.quad	13411654                # 0xcca546
	.quad	14266704                # 0xd9b150
	.quad	15121754                # 0xe6bd5a
	.quad	15976804                # 0xf3c964
	.quad	16831854                # 0x100d56e
	.quad	17686904                # 0x10de178
	.quad	18541954                # 0x11aed82
	.quad	19397004                # 0x127f98c
	.quad	20252054                # 0x1350596
	.quad	21107104                # 0x14211a0
	.quad	21962154                # 0x14f1daa
	.quad	22817204                # 0x15c29b4
	.quad	23672254                # 0x16935be
	.quad	24527304                # 0x17641c8
	.quad	25382354                # 0x1834dd2
	.quad	26237404                # 0x19059dc
	.quad	27092454                # 0x19d65e6
	.quad	27947504                # 0x1aa71f0
	.quad	28802554                # 0x1b77dfa
	.quad	29657604                # 0x1c48a04
	.quad	30512654                # 0x1d1960e
	.quad	31367704                # 0x1dea218
	.quad	-3772246                # 0xffffffffffc670aa
	.quad	-2907196                # 0xffffffffffd3a3c4
	.quad	-2042146                # 0xffffffffffe0d6de
	.quad	-1177096                # 0xffffffffffee09f8
	.quad	-312046                 # 0xfffffffffffb3d12
	.quad	553004                  # 0x8702c
	.quad	1418054                 # 0x15a346
	.quad	2283104                 # 0x22d660
	.quad	3148154                 # 0x30097a
	.quad	4013204                 # 0x3d3c94
	.quad	4878254                 # 0x4a6fae
	.quad	5743304                 # 0x57a2c8
	.quad	6608354                 # 0x64d5e2
	.quad	7473404                 # 0x7208fc
	.quad	8338454                 # 0x7f3c16
	.quad	9203504                 # 0x8c6f30
	.quad	10068554                # 0x99a24a
	.quad	10933604                # 0xa6d564
	.quad	11798654                # 0xb4087e
	.quad	12663704                # 0xc13b98
	.quad	13528754                # 0xce6eb2
	.quad	14393804                # 0xdba1cc
	.quad	15258854                # 0xe8d4e6
	.quad	16123904                # 0xf60800
	.quad	16988954                # 0x1033b1a
	.quad	17854004                # 0x1106e34
	.quad	18719054                # 0x11da14e
	.quad	19584104                # 0x12ad468
	.quad	20449154                # 0x1380782
	.quad	21314204                # 0x1453a9c
	.quad	22179254                # 0x1526db6
	.quad	23044304                # 0x15fa0d0
	.quad	23909354                # 0x16cd3ea
	.quad	24774404                # 0x17a0704
	.quad	25639454                # 0x1873a1e
	.quad	26504504                # 0x1946d38
	.quad	27369554                # 0x1a1a052
	.quad	28234604                # 0x1aed36c
	.quad	29099654                # 0x1bc0686
	.quad	29964704                # 0x1c939a0
	.quad	30829754                # 0x1d66cba
	.quad	31694804                # 0x1e39fd4
	.quad	32559854                # 0x1f0d2ee
	.quad	33424904                # 0x1fe0608
	.quad	34289954                # 0x20b3922
	.quad	35155004                # 0x2186c3c
	.quad	36020054                # 0x2259f56
	.quad	36885104                # 0x232d270
	.quad	37750154                # 0x240058a
	.quad	38615204                # 0x24d38a4
	.quad	39480254                # 0x25a6bbe
	.quad	40345304                # 0x2679ed8
	.quad	41210354                # 0x274d1f2
	.quad	42075404                # 0x282050c
	.quad	42940454                # 0x28f3826
	.quad	43805504                # 0x29c6b40
	.quad	44670554                # 0x2a99e5a
	.quad	45535604                # 0x2b6d174
	.quad	46400654                # 0x2c4048e
	.quad	47265704                # 0x2d137a8
	.quad	48130754                # 0x2de6ac2
	.quad	48995804                # 0x2eb9ddc
	.quad	49860854                # 0x2f8d0f6
	.quad	50725904                # 0x3060410
	.quad	51590954                # 0x313372a
	.quad	52456004                # 0x3206a44
	.quad	53321054                # 0x32d9d5e
	.quad	54186104                # 0x33ad078
	.quad	55051154                # 0x3480392
	.quad	55916204                # 0x35536ac
	.quad	56781254                # 0x36269c6
	.quad	57646304                # 0x36f9ce0
	.quad	58511354                # 0x37ccffa
	.quad	59376404                # 0x38a0314
	.quad	60241454                # 0x397362e
	.quad	61106504                # 0x3a46948
	.quad	61971554                # 0x3b19c62
	.quad	62836604                # 0x3becf7c
	.quad	63701654                # 0x3cc0296
	.quad	64566704                # 0x3d935b0
	.quad	65431754                # 0x3e668ca
	.quad	66296804                # 0x3f39be4
	.quad	67161854                # 0x400cefe
	.quad	68026904                # 0x40e0218
	.quad	68891954                # 0x41b3532
	.quad	69757004                # 0x428684c
	.quad	70622054                # 0x4359b66
	.quad	71487104                # 0x442ce80
	.quad	72352154                # 0x450019a
	.quad	73217204                # 0x45d34b4
	.quad	74082254                # 0x46a67ce
	.quad	74947304                # 0x4779ae8
	.quad	75812354                # 0x484ce02
	.quad	76677404                # 0x492011c
	.quad	77542454                # 0x49f3436
	.quad	78407504                # 0x4ac6750
	.quad	79272554                # 0x4b99a6a
	.quad	80137604                # 0x4c6cd84
	.quad	81002654                # 0x4d4009e
	.quad	81867704                # 0x4e133b8
	.quad	45737754                # 0x2b9e71a
	.quad	46612804                # 0x2c74144
	.quad	47487854                # 0x2d49b6e
	.quad	48362904                # 0x2e1f598
	.quad	49237954                # 0x2ef4fc2
	.quad	50113004                # 0x2fca9ec
	.quad	50988054                # 0x30a0416
	.quad	51863104                # 0x3175e40
	.quad	52738154                # 0x324b86a
	.quad	53613204                # 0x3321294
	.quad	54488254                # 0x33f6cbe
	.quad	55363304                # 0x34cc6e8
	.quad	56238354                # 0x35a2112
	.quad	57113404                # 0x3677b3c
	.quad	57988454                # 0x374d566
	.quad	58863504                # 0x3822f90
	.quad	59738554                # 0x38f89ba
	.quad	60613604                # 0x39ce3e4
	.quad	61488654                # 0x3aa3e0e
	.quad	62363704                # 0x3b79838
	.quad	63238754                # 0x3c4f262
	.quad	64113804                # 0x3d24c8c
	.quad	64988854                # 0x3dfa6b6
	.quad	65863904                # 0x3ed00e0
	.quad	66738954                # 0x3fa5b0a
	.quad	67614004                # 0x407b534
	.quad	68489054                # 0x4150f5e
	.quad	69364104                # 0x4226988
	.quad	70239154                # 0x42fc3b2
	.quad	71114204                # 0x43d1ddc
	.quad	71989254                # 0x44a7806
	.quad	72864304                # 0x457d230
	.quad	73739354                # 0x4652c5a
	.quad	74614404                # 0x4728684
	.quad	75489454                # 0x47fe0ae
	.quad	76364504                # 0x48d3ad8
	.quad	77239554                # 0x49a9502
	.quad	78114604                # 0x4a7ef2c
	.quad	78989654                # 0x4b54956
	.quad	79864704                # 0x4c2a380
	.quad	80739754                # 0x4cffdaa
	.quad	81614804                # 0x4dd57d4
	.quad	82489854                # 0x4eab1fe
	.quad	83364904                # 0x4f80c28
	.quad	84239954                # 0x5056652
	.quad	85115004                # 0x512c07c
	.quad	85990054                # 0x5201aa6
	.quad	86865104                # 0x52d74d0
	.quad	87740154                # 0x53acefa
	.quad	88615204                # 0x5482924
	.quad	89490254                # 0x555834e
	.quad	90365304                # 0x562dd78
	.quad	91240354                # 0x57037a2
	.quad	92115404                # 0x57d91cc
	.quad	92990454                # 0x58aebf6
	.quad	93865504                # 0x5984620
	.quad	94740554                # 0x5a5a04a
	.quad	95615604                # 0x5b2fa74
	.quad	96490654                # 0x5c0549e
	.quad	97365704                # 0x5cdaec8
	.quad	98240754                # 0x5db08f2
	.quad	99115804                # 0x5e8631c
	.quad	99990854                # 0x5f5bd46
	.quad	100865904               # 0x6031770
	.quad	101740954               # 0x610719a
	.quad	102616004               # 0x61dcbc4
	.quad	103491054               # 0x62b25ee
	.quad	104366104               # 0x6388018
	.quad	105241154               # 0x645da42
	.quad	106116204               # 0x653346c
	.quad	106991254               # 0x6608e96
	.quad	107866304               # 0x66de8c0
	.quad	108741354               # 0x67b42ea
	.quad	109616404               # 0x6889d14
	.quad	110491454               # 0x695f73e
	.quad	111366504               # 0x6a35168
	.quad	112241554               # 0x6b0ab92
	.quad	113116604               # 0x6be05bc
	.quad	113991654               # 0x6cb5fe6
	.quad	114866704               # 0x6d8ba10
	.quad	115741754               # 0x6e6143a
	.quad	116616804               # 0x6f36e64
	.quad	117491854               # 0x700c88e
	.quad	118366904               # 0x70e22b8
	.quad	119241954               # 0x71b7ce2
	.quad	120117004               # 0x728d70c
	.quad	120992054               # 0x7363136
	.quad	121867104               # 0x7438b60
	.quad	122742154               # 0x750e58a
	.quad	123617204               # 0x75e3fb4
	.quad	124492254               # 0x76b99de
	.quad	125367304               # 0x778f408
	.quad	126242354               # 0x7864e32
	.quad	127117404               # 0x793a85c
	.quad	127992454               # 0x7a10286
	.quad	128867504               # 0x7ae5cb0
	.quad	129742554               # 0x7bbb6da
	.quad	130617604               # 0x7c91104
	.quad	131492654               # 0x7d66b2e
	.quad	132367704               # 0x7e3c558
	.quad	95247754                # 0x5ad5d8a
	.quad	96132804                # 0x5badec4
	.quad	97017854                # 0x5c85ffe
	.quad	97902904                # 0x5d5e138
	.quad	98787954                # 0x5e36272
	.quad	99673004                # 0x5f0e3ac
	.quad	100558054               # 0x5fe64e6
	.quad	101443104               # 0x60be620
	.quad	102328154               # 0x619675a
	.quad	103213204               # 0x626e894
	.quad	104098254               # 0x63469ce
	.quad	104983304               # 0x641eb08
	.quad	105868354               # 0x64f6c42
	.quad	106753404               # 0x65ced7c
	.quad	107638454               # 0x66a6eb6
	.quad	108523504               # 0x677eff0
	.quad	109408554               # 0x685712a
	.quad	110293604               # 0x692f264
	.quad	111178654               # 0x6a0739e
	.quad	112063704               # 0x6adf4d8
	.quad	112948754               # 0x6bb7612
	.quad	113833804               # 0x6c8f74c
	.quad	114718854               # 0x6d67886
	.quad	115603904               # 0x6e3f9c0
	.quad	116488954               # 0x6f17afa
	.quad	117374004               # 0x6fefc34
	.quad	118259054               # 0x70c7d6e
	.quad	119144104               # 0x719fea8
	.quad	120029154               # 0x7277fe2
	.quad	120914204               # 0x735011c
	.quad	121799254               # 0x7428256
	.quad	122684304               # 0x7500390
	.quad	123569354               # 0x75d84ca
	.quad	124454404               # 0x76b0604
	.quad	125339454               # 0x778873e
	.quad	126224504               # 0x7860878
	.quad	127109554               # 0x79389b2
	.quad	127994604               # 0x7a10aec
	.quad	128879654               # 0x7ae8c26
	.quad	129764704               # 0x7bc0d60
	.quad	130649754               # 0x7c98e9a
	.quad	131534804               # 0x7d70fd4
	.quad	132419854               # 0x7e4910e
	.quad	133304904               # 0x7f21248
	.quad	134189954               # 0x7ff9382
	.quad	135075004               # 0x80d14bc
	.quad	135960054               # 0x81a95f6
	.quad	136845104               # 0x8281730
	.quad	137730154               # 0x835986a
	.quad	138615204               # 0x84319a4
	.quad	139500254               # 0x8509ade
	.quad	140385304               # 0x85e1c18
	.quad	141270354               # 0x86b9d52
	.quad	142155404               # 0x8791e8c
	.quad	143040454               # 0x8869fc6
	.quad	143925504               # 0x8942100
	.quad	144810554               # 0x8a1a23a
	.quad	145695604               # 0x8af2374
	.quad	146580654               # 0x8bca4ae
	.quad	147465704               # 0x8ca25e8
	.quad	148350754               # 0x8d7a722
	.quad	149235804               # 0x8e5285c
	.quad	150120854               # 0x8f2a996
	.quad	151005904               # 0x9002ad0
	.quad	151890954               # 0x90dac0a
	.quad	152776004               # 0x91b2d44
	.quad	153661054               # 0x928ae7e
	.quad	154546104               # 0x9362fb8
	.quad	155431154               # 0x943b0f2
	.quad	156316204               # 0x951322c
	.quad	157201254               # 0x95eb366
	.quad	158086304               # 0x96c34a0
	.quad	158971354               # 0x979b5da
	.quad	159856404               # 0x9873714
	.quad	160741454               # 0x994b84e
	.quad	161626504               # 0x9a23988
	.quad	162511554               # 0x9afbac2
	.quad	163396604               # 0x9bd3bfc
	.quad	164281654               # 0x9cabd36
	.quad	165166704               # 0x9d83e70
	.quad	166051754               # 0x9e5bfaa
	.quad	166936804               # 0x9f340e4
	.quad	167821854               # 0xa00c21e
	.quad	168706904               # 0xa0e4358
	.quad	169591954               # 0xa1bc492
	.quad	170477004               # 0xa2945cc
	.quad	171362054               # 0xa36c706
	.quad	172247104               # 0xa444840
	.quad	173132154               # 0xa51c97a
	.quad	174017204               # 0xa5f4ab4
	.quad	174902254               # 0xa6ccbee
	.quad	175787304               # 0xa7a4d28
	.quad	176672354               # 0xa87ce62
	.quad	177557404               # 0xa954f9c
	.quad	178442454               # 0xaa2d0d6
	.quad	179327504               # 0xab05210
	.quad	180212554               # 0xabdd34a
	.quad	181097604               # 0xacb5484
	.quad	181982654               # 0xad8d5be
	.quad	182867704               # 0xae656f8
	.quad	144757754               # 0x8a0d3fa
	.quad	145652804               # 0x8ae7c44
	.quad	146547854               # 0x8bc248e
	.quad	147442904               # 0x8c9ccd8
	.quad	148337954               # 0x8d77522
	.quad	149233004               # 0x8e51d6c
	.quad	150128054               # 0x8f2c5b6
	.quad	151023104               # 0x9006e00
	.quad	151918154               # 0x90e164a
	.quad	152813204               # 0x91bbe94
	.quad	153708254               # 0x92966de
	.quad	154603304               # 0x9370f28
	.quad	155498354               # 0x944b772
	.quad	156393404               # 0x9525fbc
	.quad	157288454               # 0x9600806
	.quad	158183504               # 0x96db050
	.quad	159078554               # 0x97b589a
	.quad	159973604               # 0x98900e4
	.quad	160868654               # 0x996a92e
	.quad	161763704               # 0x9a45178
	.quad	162658754               # 0x9b1f9c2
	.quad	163553804               # 0x9bfa20c
	.quad	164448854               # 0x9cd4a56
	.quad	165343904               # 0x9daf2a0
	.quad	166238954               # 0x9e89aea
	.quad	167134004               # 0x9f64334
	.quad	168029054               # 0xa03eb7e
	.quad	168924104               # 0xa1193c8
	.quad	169819154               # 0xa1f3c12
	.quad	170714204               # 0xa2ce45c
	.quad	171609254               # 0xa3a8ca6
	.quad	172504304               # 0xa4834f0
	.quad	173399354               # 0xa55dd3a
	.quad	174294404               # 0xa638584
	.quad	175189454               # 0xa712dce
	.quad	176084504               # 0xa7ed618
	.quad	176979554               # 0xa8c7e62
	.quad	177874604               # 0xa9a26ac
	.quad	178769654               # 0xaa7cef6
	.quad	179664704               # 0xab57740
	.quad	180559754               # 0xac31f8a
	.quad	181454804               # 0xad0c7d4
	.quad	182349854               # 0xade701e
	.quad	183244904               # 0xaec1868
	.quad	184139954               # 0xaf9c0b2
	.quad	185035004               # 0xb0768fc
	.quad	185930054               # 0xb151146
	.quad	186825104               # 0xb22b990
	.quad	187720154               # 0xb3061da
	.quad	188615204               # 0xb3e0a24
	.quad	189510254               # 0xb4bb26e
	.quad	190405304               # 0xb595ab8
	.quad	191300354               # 0xb670302
	.quad	192195404               # 0xb74ab4c
	.quad	193090454               # 0xb825396
	.quad	193985504               # 0xb8ffbe0
	.quad	194880554               # 0xb9da42a
	.quad	195775604               # 0xbab4c74
	.quad	196670654               # 0xbb8f4be
	.quad	197565704               # 0xbc69d08
	.quad	198460754               # 0xbd44552
	.quad	199355804               # 0xbe1ed9c
	.quad	200250854               # 0xbef95e6
	.quad	201145904               # 0xbfd3e30
	.quad	202040954               # 0xc0ae67a
	.quad	202936004               # 0xc188ec4
	.quad	203831054               # 0xc26370e
	.quad	204726104               # 0xc33df58
	.quad	205621154               # 0xc4187a2
	.quad	206516204               # 0xc4f2fec
	.quad	207411254               # 0xc5cd836
	.quad	208306304               # 0xc6a8080
	.quad	209201354               # 0xc7828ca
	.quad	210096404               # 0xc85d114
	.quad	210991454               # 0xc93795e
	.quad	211886504               # 0xca121a8
	.quad	212781554               # 0xcaec9f2
	.quad	213676604               # 0xcbc723c
	.quad	214571654               # 0xcca1a86
	.quad	215466704               # 0xcd7c2d0
	.quad	216361754               # 0xce56b1a
	.quad	217256804               # 0xcf31364
	.quad	218151854               # 0xd00bbae
	.quad	219046904               # 0xd0e63f8
	.quad	219941954               # 0xd1c0c42
	.quad	220837004               # 0xd29b48c
	.quad	221732054               # 0xd375cd6
	.quad	222627104               # 0xd450520
	.quad	223522154               # 0xd52ad6a
	.quad	224417204               # 0xd6055b4
	.quad	225312254               # 0xd6dfdfe
	.quad	226207304               # 0xd7ba648
	.quad	227102354               # 0xd894e92
	.quad	227997404               # 0xd96f6dc
	.quad	228892454               # 0xda49f26
	.quad	229787504               # 0xdb24770
	.quad	230682554               # 0xdbfefba
	.quad	231577604               # 0xdcd9804
	.quad	232472654               # 0xddb404e
	.quad	233367704               # 0xde8e898
	.quad	194267754               # 0xb944a6a
	.quad	195172804               # 0xba219c4
	.quad	196077854               # 0xbafe91e
	.quad	196982904               # 0xbbdb878
	.quad	197887954               # 0xbcb87d2
	.quad	198793004               # 0xbd9572c
	.quad	199698054               # 0xbe72686
	.quad	200603104               # 0xbf4f5e0
	.quad	201508154               # 0xc02c53a
	.quad	202413204               # 0xc109494
	.quad	203318254               # 0xc1e63ee
	.quad	204223304               # 0xc2c3348
	.quad	205128354               # 0xc3a02a2
	.quad	206033404               # 0xc47d1fc
	.quad	206938454               # 0xc55a156
	.quad	207843504               # 0xc6370b0
	.quad	208748554               # 0xc71400a
	.quad	209653604               # 0xc7f0f64
	.quad	210558654               # 0xc8cdebe
	.quad	211463704               # 0xc9aae18
	.quad	212368754               # 0xca87d72
	.quad	213273804               # 0xcb64ccc
	.quad	214178854               # 0xcc41c26
	.quad	215083904               # 0xcd1eb80
	.quad	215988954               # 0xcdfbada
	.quad	216894004               # 0xced8a34
	.quad	217799054               # 0xcfb598e
	.quad	218704104               # 0xd0928e8
	.quad	219609154               # 0xd16f842
	.quad	220514204               # 0xd24c79c
	.quad	221419254               # 0xd3296f6
	.quad	222324304               # 0xd406650
	.quad	223229354               # 0xd4e35aa
	.quad	224134404               # 0xd5c0504
	.quad	225039454               # 0xd69d45e
	.quad	225944504               # 0xd77a3b8
	.quad	226849554               # 0xd857312
	.quad	227754604               # 0xd93426c
	.quad	228659654               # 0xda111c6
	.quad	229564704               # 0xdaee120
	.quad	230469754               # 0xdbcb07a
	.quad	231374804               # 0xdca7fd4
	.quad	232279854               # 0xdd84f2e
	.quad	233184904               # 0xde61e88
	.quad	234089954               # 0xdf3ede2
	.quad	234995004               # 0xe01bd3c
	.quad	235900054               # 0xe0f8c96
	.quad	236805104               # 0xe1d5bf0
	.quad	237710154               # 0xe2b2b4a
	.quad	238615204               # 0xe38faa4
	.quad	239520254               # 0xe46c9fe
	.quad	240425304               # 0xe549958
	.quad	241330354               # 0xe6268b2
	.quad	242235404               # 0xe70380c
	.quad	243140454               # 0xe7e0766
	.quad	244045504               # 0xe8bd6c0
	.quad	244950554               # 0xe99a61a
	.quad	245855604               # 0xea77574
	.quad	246760654               # 0xeb544ce
	.quad	247665704               # 0xec31428
	.quad	248570754               # 0xed0e382
	.quad	249475804               # 0xedeb2dc
	.quad	250380854               # 0xeec8236
	.quad	251285904               # 0xefa5190
	.quad	252190954               # 0xf0820ea
	.quad	253096004               # 0xf15f044
	.quad	254001054               # 0xf23bf9e
	.quad	254906104               # 0xf318ef8
	.quad	255811154               # 0xf3f5e52
	.quad	256716204               # 0xf4d2dac
	.quad	257621254               # 0xf5afd06
	.quad	258526304               # 0xf68cc60
	.quad	259431354               # 0xf769bba
	.quad	260336404               # 0xf846b14
	.quad	261241454               # 0xf923a6e
	.quad	262146504               # 0xfa009c8
	.quad	263051554               # 0xfadd922
	.quad	263956604               # 0xfbba87c
	.quad	264861654               # 0xfc977d6
	.quad	265766704               # 0xfd74730
	.quad	266671754               # 0xfe5168a
	.quad	267576804               # 0xff2e5e4
	.quad	268481854               # 0x1000b53e
	.quad	269386904               # 0x100e8498
	.quad	270291954               # 0x101c53f2
	.quad	271197004               # 0x102a234c
	.quad	272102054               # 0x1037f2a6
	.quad	273007104               # 0x1045c200
	.quad	273912154               # 0x1053915a
	.quad	274817204               # 0x106160b4
	.quad	275722254               # 0x106f300e
	.quad	276627304               # 0x107cff68
	.quad	277532354               # 0x108acec2
	.quad	278437404               # 0x10989e1c
	.quad	279342454               # 0x10a66d76
	.quad	280247504               # 0x10b43cd0
	.quad	281152554               # 0x10c20c2a
	.quad	282057604               # 0x10cfdb84
	.quad	282962654               # 0x10ddaade
	.quad	283867704               # 0x10eb7a38
	.quad	243777754               # 0xe87c0da
	.quad	244692804               # 0xe95b744
	.quad	245607854               # 0xea3adae
	.quad	246522904               # 0xeb1a418
	.quad	247437954               # 0xebf9a82
	.quad	248353004               # 0xecd90ec
	.quad	249268054               # 0xedb8756
	.quad	250183104               # 0xee97dc0
	.quad	251098154               # 0xef7742a
	.quad	252013204               # 0xf056a94
	.quad	252928254               # 0xf1360fe
	.quad	253843304               # 0xf215768
	.quad	254758354               # 0xf2f4dd2
	.quad	255673404               # 0xf3d443c
	.quad	256588454               # 0xf4b3aa6
	.quad	257503504               # 0xf593110
	.quad	258418554               # 0xf67277a
	.quad	259333604               # 0xf751de4
	.quad	260248654               # 0xf83144e
	.quad	261163704               # 0xf910ab8
	.quad	262078754               # 0xf9f0122
	.quad	262993804               # 0xfacf78c
	.quad	263908854               # 0xfbaedf6
	.quad	264823904               # 0xfc8e460
	.quad	265738954               # 0xfd6daca
	.quad	266654004               # 0xfe4d134
	.quad	267569054               # 0xff2c79e
	.quad	268484104               # 0x1000be08
	.quad	269399154               # 0x100eb472
	.quad	270314204               # 0x101caadc
	.quad	271229254               # 0x102aa146
	.quad	272144304               # 0x103897b0
	.quad	273059354               # 0x10468e1a
	.quad	273974404               # 0x10548484
	.quad	274889454               # 0x10627aee
	.quad	275804504               # 0x10707158
	.quad	276719554               # 0x107e67c2
	.quad	277634604               # 0x108c5e2c
	.quad	278549654               # 0x109a5496
	.quad	279464704               # 0x10a84b00
	.quad	280379754               # 0x10b6416a
	.quad	281294804               # 0x10c437d4
	.quad	282209854               # 0x10d22e3e
	.quad	283124904               # 0x10e024a8
	.quad	284039954               # 0x10ee1b12
	.quad	284955004               # 0x10fc117c
	.quad	285870054               # 0x110a07e6
	.quad	286785104               # 0x1117fe50
	.quad	287700154               # 0x1125f4ba
	.quad	288615204               # 0x1133eb24
	.quad	289530254               # 0x1141e18e
	.quad	290445304               # 0x114fd7f8
	.quad	291360354               # 0x115dce62
	.quad	292275404               # 0x116bc4cc
	.quad	293190454               # 0x1179bb36
	.quad	294105504               # 0x1187b1a0
	.quad	295020554               # 0x1195a80a
	.quad	295935604               # 0x11a39e74
	.quad	296850654               # 0x11b194de
	.quad	297765704               # 0x11bf8b48
	.quad	298680754               # 0x11cd81b2
	.quad	299595804               # 0x11db781c
	.quad	300510854               # 0x11e96e86
	.quad	301425904               # 0x11f764f0
	.quad	302340954               # 0x12055b5a
	.quad	303256004               # 0x121351c4
	.quad	304171054               # 0x1221482e
	.quad	305086104               # 0x122f3e98
	.quad	306001154               # 0x123d3502
	.quad	306916204               # 0x124b2b6c
	.quad	307831254               # 0x125921d6
	.quad	308746304               # 0x12671840
	.quad	309661354               # 0x12750eaa
	.quad	310576404               # 0x12830514
	.quad	311491454               # 0x1290fb7e
	.quad	312406504               # 0x129ef1e8
	.quad	313321554               # 0x12ace852
	.quad	314236604               # 0x12badebc
	.quad	315151654               # 0x12c8d526
	.quad	316066704               # 0x12d6cb90
	.quad	316981754               # 0x12e4c1fa
	.quad	317896804               # 0x12f2b864
	.quad	318811854               # 0x1300aece
	.quad	319726904               # 0x130ea538
	.quad	320641954               # 0x131c9ba2
	.quad	321557004               # 0x132a920c
	.quad	322472054               # 0x13388876
	.quad	323387104               # 0x13467ee0
	.quad	324302154               # 0x1354754a
	.quad	325217204               # 0x13626bb4
	.quad	326132254               # 0x1370621e
	.quad	327047304               # 0x137e5888
	.quad	327962354               # 0x138c4ef2
	.quad	328877404               # 0x139a455c
	.quad	329792454               # 0x13a83bc6
	.quad	330707504               # 0x13b63230
	.quad	331622554               # 0x13c4289a
	.quad	332537604               # 0x13d21f04
	.quad	333452654               # 0x13e0156e
	.quad	334367704               # 0x13ee0bd8
	.quad	293287754               # 0x117b374a
	.quad	294212804               # 0x118954c4
	.quad	295137854               # 0x1197723e
	.quad	296062904               # 0x11a58fb8
	.quad	296987954               # 0x11b3ad32
	.quad	297913004               # 0x11c1caac
	.quad	298838054               # 0x11cfe826
	.quad	299763104               # 0x11de05a0
	.quad	300688154               # 0x11ec231a
	.quad	301613204               # 0x11fa4094
	.quad	302538254               # 0x12085e0e
	.quad	303463304               # 0x12167b88
	.quad	304388354               # 0x12249902
	.quad	305313404               # 0x1232b67c
	.quad	306238454               # 0x1240d3f6
	.quad	307163504               # 0x124ef170
	.quad	308088554               # 0x125d0eea
	.quad	309013604               # 0x126b2c64
	.quad	309938654               # 0x127949de
	.quad	310863704               # 0x12876758
	.quad	311788754               # 0x129584d2
	.quad	312713804               # 0x12a3a24c
	.quad	313638854               # 0x12b1bfc6
	.quad	314563904               # 0x12bfdd40
	.quad	315488954               # 0x12cdfaba
	.quad	316414004               # 0x12dc1834
	.quad	317339054               # 0x12ea35ae
	.quad	318264104               # 0x12f85328
	.quad	319189154               # 0x130670a2
	.quad	320114204               # 0x13148e1c
	.quad	321039254               # 0x1322ab96
	.quad	321964304               # 0x1330c910
	.quad	322889354               # 0x133ee68a
	.quad	323814404               # 0x134d0404
	.quad	324739454               # 0x135b217e
	.quad	325664504               # 0x13693ef8
	.quad	326589554               # 0x13775c72
	.quad	327514604               # 0x138579ec
	.quad	328439654               # 0x13939766
	.quad	329364704               # 0x13a1b4e0
	.quad	330289754               # 0x13afd25a
	.quad	331214804               # 0x13bdefd4
	.quad	332139854               # 0x13cc0d4e
	.quad	333064904               # 0x13da2ac8
	.quad	333989954               # 0x13e84842
	.quad	334915004               # 0x13f665bc
	.quad	335840054               # 0x14048336
	.quad	336765104               # 0x1412a0b0
	.quad	337690154               # 0x1420be2a
	.quad	338615204               # 0x142edba4
	.quad	339540254               # 0x143cf91e
	.quad	340465304               # 0x144b1698
	.quad	341390354               # 0x14593412
	.quad	342315404               # 0x1467518c
	.quad	343240454               # 0x14756f06
	.quad	344165504               # 0x14838c80
	.quad	345090554               # 0x1491a9fa
	.quad	346015604               # 0x149fc774
	.quad	346940654               # 0x14ade4ee
	.quad	347865704               # 0x14bc0268
	.quad	348790754               # 0x14ca1fe2
	.quad	349715804               # 0x14d83d5c
	.quad	350640854               # 0x14e65ad6
	.quad	351565904               # 0x14f47850
	.quad	352490954               # 0x150295ca
	.quad	353416004               # 0x1510b344
	.quad	354341054               # 0x151ed0be
	.quad	355266104               # 0x152cee38
	.quad	356191154               # 0x153b0bb2
	.quad	357116204               # 0x1549292c
	.quad	358041254               # 0x155746a6
	.quad	358966304               # 0x15656420
	.quad	359891354               # 0x1573819a
	.quad	360816404               # 0x15819f14
	.quad	361741454               # 0x158fbc8e
	.quad	362666504               # 0x159dda08
	.quad	363591554               # 0x15abf782
	.quad	364516604               # 0x15ba14fc
	.quad	365441654               # 0x15c83276
	.quad	366366704               # 0x15d64ff0
	.quad	367291754               # 0x15e46d6a
	.quad	368216804               # 0x15f28ae4
	.quad	369141854               # 0x1600a85e
	.quad	370066904               # 0x160ec5d8
	.quad	370991954               # 0x161ce352
	.quad	371917004               # 0x162b00cc
	.quad	372842054               # 0x16391e46
	.quad	373767104               # 0x16473bc0
	.quad	374692154               # 0x1655593a
	.quad	375617204               # 0x166376b4
	.quad	376542254               # 0x1671942e
	.quad	377467304               # 0x167fb1a8
	.quad	378392354               # 0x168dcf22
	.quad	379317404               # 0x169bec9c
	.quad	380242454               # 0x16aa0a16
	.quad	381167504               # 0x16b82790
	.quad	382092554               # 0x16c6450a
	.quad	383017604               # 0x16d46284
	.quad	383942654               # 0x16e27ffe
	.quad	384867704               # 0x16f09d78
	.quad	342797754               # 0x146eadba
	.quad	343732804               # 0x147cf244
	.quad	344667854               # 0x148b36ce
	.quad	345602904               # 0x14997b58
	.quad	346537954               # 0x14a7bfe2
	.quad	347473004               # 0x14b6046c
	.quad	348408054               # 0x14c448f6
	.quad	349343104               # 0x14d28d80
	.quad	350278154               # 0x14e0d20a
	.quad	351213204               # 0x14ef1694
	.quad	352148254               # 0x14fd5b1e
	.quad	353083304               # 0x150b9fa8
	.quad	354018354               # 0x1519e432
	.quad	354953404               # 0x152828bc
	.quad	355888454               # 0x15366d46
	.quad	356823504               # 0x1544b1d0
	.quad	357758554               # 0x1552f65a
	.quad	358693604               # 0x15613ae4
	.quad	359628654               # 0x156f7f6e
	.quad	360563704               # 0x157dc3f8
	.quad	361498754               # 0x158c0882
	.quad	362433804               # 0x159a4d0c
	.quad	363368854               # 0x15a89196
	.quad	364303904               # 0x15b6d620
	.quad	365238954               # 0x15c51aaa
	.quad	366174004               # 0x15d35f34
	.quad	367109054               # 0x15e1a3be
	.quad	368044104               # 0x15efe848
	.quad	368979154               # 0x15fe2cd2
	.quad	369914204               # 0x160c715c
	.quad	370849254               # 0x161ab5e6
	.quad	371784304               # 0x1628fa70
	.quad	372719354               # 0x16373efa
	.quad	373654404               # 0x16458384
	.quad	374589454               # 0x1653c80e
	.quad	375524504               # 0x16620c98
	.quad	376459554               # 0x16705122
	.quad	377394604               # 0x167e95ac
	.quad	378329654               # 0x168cda36
	.quad	379264704               # 0x169b1ec0
	.quad	380199754               # 0x16a9634a
	.quad	381134804               # 0x16b7a7d4
	.quad	382069854               # 0x16c5ec5e
	.quad	383004904               # 0x16d430e8
	.quad	383939954               # 0x16e27572
	.quad	384875004               # 0x16f0b9fc
	.quad	385810054               # 0x16fefe86
	.quad	386745104               # 0x170d4310
	.quad	387680154               # 0x171b879a
	.quad	388615204               # 0x1729cc24
	.quad	389550254               # 0x173810ae
	.quad	390485304               # 0x17465538
	.quad	391420354               # 0x175499c2
	.quad	392355404               # 0x1762de4c
	.quad	393290454               # 0x177122d6
	.quad	394225504               # 0x177f6760
	.quad	395160554               # 0x178dabea
	.quad	396095604               # 0x179bf074
	.quad	397030654               # 0x17aa34fe
	.quad	397965704               # 0x17b87988
	.quad	398900754               # 0x17c6be12
	.quad	399835804               # 0x17d5029c
	.quad	400770854               # 0x17e34726
	.quad	401705904               # 0x17f18bb0
	.quad	402640954               # 0x17ffd03a
	.quad	403576004               # 0x180e14c4
	.quad	404511054               # 0x181c594e
	.quad	405446104               # 0x182a9dd8
	.quad	406381154               # 0x1838e262
	.quad	407316204               # 0x184726ec
	.quad	408251254               # 0x18556b76
	.quad	409186304               # 0x1863b000
	.quad	410121354               # 0x1871f48a
	.quad	411056404               # 0x18803914
	.quad	411991454               # 0x188e7d9e
	.quad	412926504               # 0x189cc228
	.quad	413861554               # 0x18ab06b2
	.quad	414796604               # 0x18b94b3c
	.quad	415731654               # 0x18c78fc6
	.quad	416666704               # 0x18d5d450
	.quad	417601754               # 0x18e418da
	.quad	418536804               # 0x18f25d64
	.quad	419471854               # 0x1900a1ee
	.quad	420406904               # 0x190ee678
	.quad	421341954               # 0x191d2b02
	.quad	422277004               # 0x192b6f8c
	.quad	423212054               # 0x1939b416
	.quad	424147104               # 0x1947f8a0
	.quad	425082154               # 0x19563d2a
	.quad	426017204               # 0x196481b4
	.quad	426952254               # 0x1972c63e
	.quad	427887304               # 0x19810ac8
	.quad	428822354               # 0x198f4f52
	.quad	429757404               # 0x199d93dc
	.quad	430692454               # 0x19abd866
	.quad	431627504               # 0x19ba1cf0
	.quad	432562554               # 0x19c8617a
	.quad	433497604               # 0x19d6a604
	.quad	434432654               # 0x19e4ea8e
	.quad	435367704               # 0x19f32f18
	.quad	392307754               # 0x1762242a
	.quad	393252804               # 0x17708fc4
	.quad	394197854               # 0x177efb5e
	.quad	395142904               # 0x178d66f8
	.quad	396087954               # 0x179bd292
	.quad	397033004               # 0x17aa3e2c
	.quad	397978054               # 0x17b8a9c6
	.quad	398923104               # 0x17c71560
	.quad	399868154               # 0x17d580fa
	.quad	400813204               # 0x17e3ec94
	.quad	401758254               # 0x17f2582e
	.quad	402703304               # 0x1800c3c8
	.quad	403648354               # 0x180f2f62
	.quad	404593404               # 0x181d9afc
	.quad	405538454               # 0x182c0696
	.quad	406483504               # 0x183a7230
	.quad	407428554               # 0x1848ddca
	.quad	408373604               # 0x18574964
	.quad	409318654               # 0x1865b4fe
	.quad	410263704               # 0x18742098
	.quad	411208754               # 0x18828c32
	.quad	412153804               # 0x1890f7cc
	.quad	413098854               # 0x189f6366
	.quad	414043904               # 0x18adcf00
	.quad	414988954               # 0x18bc3a9a
	.quad	415934004               # 0x18caa634
	.quad	416879054               # 0x18d911ce
	.quad	417824104               # 0x18e77d68
	.quad	418769154               # 0x18f5e902
	.quad	419714204               # 0x1904549c
	.quad	420659254               # 0x1912c036
	.quad	421604304               # 0x19212bd0
	.quad	422549354               # 0x192f976a
	.quad	423494404               # 0x193e0304
	.quad	424439454               # 0x194c6e9e
	.quad	425384504               # 0x195ada38
	.quad	426329554               # 0x196945d2
	.quad	427274604               # 0x1977b16c
	.quad	428219654               # 0x19861d06
	.quad	429164704               # 0x199488a0
	.quad	430109754               # 0x19a2f43a
	.quad	431054804               # 0x19b15fd4
	.quad	431999854               # 0x19bfcb6e
	.quad	432944904               # 0x19ce3708
	.quad	433889954               # 0x19dca2a2
	.quad	434835004               # 0x19eb0e3c
	.quad	435780054               # 0x19f979d6
	.quad	436725104               # 0x1a07e570
	.quad	437670154               # 0x1a16510a
	.quad	438615204               # 0x1a24bca4
	.quad	439560254               # 0x1a33283e
	.quad	440505304               # 0x1a4193d8
	.quad	441450354               # 0x1a4fff72
	.quad	442395404               # 0x1a5e6b0c
	.quad	443340454               # 0x1a6cd6a6
	.quad	444285504               # 0x1a7b4240
	.quad	445230554               # 0x1a89adda
	.quad	446175604               # 0x1a981974
	.quad	447120654               # 0x1aa6850e
	.quad	448065704               # 0x1ab4f0a8
	.quad	449010754               # 0x1ac35c42
	.quad	449955804               # 0x1ad1c7dc
	.quad	450900854               # 0x1ae03376
	.quad	451845904               # 0x1aee9f10
	.quad	452790954               # 0x1afd0aaa
	.quad	453736004               # 0x1b0b7644
	.quad	454681054               # 0x1b19e1de
	.quad	455626104               # 0x1b284d78
	.quad	456571154               # 0x1b36b912
	.quad	457516204               # 0x1b4524ac
	.quad	458461254               # 0x1b539046
	.quad	459406304               # 0x1b61fbe0
	.quad	460351354               # 0x1b70677a
	.quad	461296404               # 0x1b7ed314
	.quad	462241454               # 0x1b8d3eae
	.quad	463186504               # 0x1b9baa48
	.quad	464131554               # 0x1baa15e2
	.quad	465076604               # 0x1bb8817c
	.quad	466021654               # 0x1bc6ed16
	.quad	466966704               # 0x1bd558b0
	.quad	467911754               # 0x1be3c44a
	.quad	468856804               # 0x1bf22fe4
	.quad	469801854               # 0x1c009b7e
	.quad	470746904               # 0x1c0f0718
	.quad	471691954               # 0x1c1d72b2
	.quad	472637004               # 0x1c2bde4c
	.quad	473582054               # 0x1c3a49e6
	.quad	474527104               # 0x1c48b580
	.quad	475472154               # 0x1c57211a
	.quad	476417204               # 0x1c658cb4
	.quad	477362254               # 0x1c73f84e
	.quad	478307304               # 0x1c8263e8
	.quad	479252354               # 0x1c90cf82
	.quad	480197404               # 0x1c9f3b1c
	.quad	481142454               # 0x1cada6b6
	.quad	482087504               # 0x1cbc1250
	.quad	483032554               # 0x1cca7dea
	.quad	483977604               # 0x1cd8e984
	.quad	484922654               # 0x1ce7551e
	.quad	485867704               # 0x1cf5c0b8
	.quad	441817754               # 0x1a559a9a
	.quad	442772804               # 0x1a642d44
	.quad	443727854               # 0x1a72bfee
	.quad	444682904               # 0x1a815298
	.quad	445637954               # 0x1a8fe542
	.quad	446593004               # 0x1a9e77ec
	.quad	447548054               # 0x1aad0a96
	.quad	448503104               # 0x1abb9d40
	.quad	449458154               # 0x1aca2fea
	.quad	450413204               # 0x1ad8c294
	.quad	451368254               # 0x1ae7553e
	.quad	452323304               # 0x1af5e7e8
	.quad	453278354               # 0x1b047a92
	.quad	454233404               # 0x1b130d3c
	.quad	455188454               # 0x1b219fe6
	.quad	456143504               # 0x1b303290
	.quad	457098554               # 0x1b3ec53a
	.quad	458053604               # 0x1b4d57e4
	.quad	459008654               # 0x1b5bea8e
	.quad	459963704               # 0x1b6a7d38
	.quad	460918754               # 0x1b790fe2
	.quad	461873804               # 0x1b87a28c
	.quad	462828854               # 0x1b963536
	.quad	463783904               # 0x1ba4c7e0
	.quad	464738954               # 0x1bb35a8a
	.quad	465694004               # 0x1bc1ed34
	.quad	466649054               # 0x1bd07fde
	.quad	467604104               # 0x1bdf1288
	.quad	468559154               # 0x1beda532
	.quad	469514204               # 0x1bfc37dc
	.quad	470469254               # 0x1c0aca86
	.quad	471424304               # 0x1c195d30
	.quad	472379354               # 0x1c27efda
	.quad	473334404               # 0x1c368284
	.quad	474289454               # 0x1c45152e
	.quad	475244504               # 0x1c53a7d8
	.quad	476199554               # 0x1c623a82
	.quad	477154604               # 0x1c70cd2c
	.quad	478109654               # 0x1c7f5fd6
	.quad	479064704               # 0x1c8df280
	.quad	480019754               # 0x1c9c852a
	.quad	480974804               # 0x1cab17d4
	.quad	481929854               # 0x1cb9aa7e
	.quad	482884904               # 0x1cc83d28
	.quad	483839954               # 0x1cd6cfd2
	.quad	484795004               # 0x1ce5627c
	.quad	485750054               # 0x1cf3f526
	.quad	486705104               # 0x1d0287d0
	.quad	487660154               # 0x1d111a7a
	.quad	488615204               # 0x1d1fad24
	.quad	489570254               # 0x1d2e3fce
	.quad	490525304               # 0x1d3cd278
	.quad	491480354               # 0x1d4b6522
	.quad	492435404               # 0x1d59f7cc
	.quad	493390454               # 0x1d688a76
	.quad	494345504               # 0x1d771d20
	.quad	495300554               # 0x1d85afca
	.quad	496255604               # 0x1d944274
	.quad	497210654               # 0x1da2d51e
	.quad	498165704               # 0x1db167c8
	.quad	499120754               # 0x1dbffa72
	.quad	500075804               # 0x1dce8d1c
	.quad	501030854               # 0x1ddd1fc6
	.quad	501985904               # 0x1debb270
	.quad	502940954               # 0x1dfa451a
	.quad	503896004               # 0x1e08d7c4
	.quad	504851054               # 0x1e176a6e
	.quad	505806104               # 0x1e25fd18
	.quad	506761154               # 0x1e348fc2
	.quad	507716204               # 0x1e43226c
	.quad	508671254               # 0x1e51b516
	.quad	509626304               # 0x1e6047c0
	.quad	510581354               # 0x1e6eda6a
	.quad	511536404               # 0x1e7d6d14
	.quad	512491454               # 0x1e8bffbe
	.quad	513446504               # 0x1e9a9268
	.quad	514401554               # 0x1ea92512
	.quad	515356604               # 0x1eb7b7bc
	.quad	516311654               # 0x1ec64a66
	.quad	517266704               # 0x1ed4dd10
	.quad	518221754               # 0x1ee36fba
	.quad	519176804               # 0x1ef20264
	.quad	520131854               # 0x1f00950e
	.quad	521086904               # 0x1f0f27b8
	.quad	522041954               # 0x1f1dba62
	.quad	522997004               # 0x1f2c4d0c
	.quad	523952054               # 0x1f3adfb6
	.quad	524907104               # 0x1f497260
	.quad	525862154               # 0x1f58050a
	.quad	526817204               # 0x1f6697b4
	.quad	527772254               # 0x1f752a5e
	.quad	528727304               # 0x1f83bd08
	.quad	529682354               # 0x1f924fb2
	.quad	530637404               # 0x1fa0e25c
	.quad	531592454               # 0x1faf7506
	.quad	532547504               # 0x1fbe07b0
	.quad	533502554               # 0x1fcc9a5a
	.quad	534457604               # 0x1fdb2d04
	.quad	535412654               # 0x1fe9bfae
	.quad	536367704               # 0x1ff85258
	.quad	491327754               # 0x1d49110a
	.quad	492292804               # 0x1d57cac4
	.quad	493257854               # 0x1d66847e
	.quad	494222904               # 0x1d753e38
	.quad	495187954               # 0x1d83f7f2
	.quad	496153004               # 0x1d92b1ac
	.quad	497118054               # 0x1da16b66
	.quad	498083104               # 0x1db02520
	.quad	499048154               # 0x1dbededa
	.quad	500013204               # 0x1dcd9894
	.quad	500978254               # 0x1ddc524e
	.quad	501943304               # 0x1deb0c08
	.quad	502908354               # 0x1df9c5c2
	.quad	503873404               # 0x1e087f7c
	.quad	504838454               # 0x1e173936
	.quad	505803504               # 0x1e25f2f0
	.quad	506768554               # 0x1e34acaa
	.quad	507733604               # 0x1e436664
	.quad	508698654               # 0x1e52201e
	.quad	509663704               # 0x1e60d9d8
	.quad	510628754               # 0x1e6f9392
	.quad	511593804               # 0x1e7e4d4c
	.quad	512558854               # 0x1e8d0706
	.quad	513523904               # 0x1e9bc0c0
	.quad	514488954               # 0x1eaa7a7a
	.quad	515454004               # 0x1eb93434
	.quad	516419054               # 0x1ec7edee
	.quad	517384104               # 0x1ed6a7a8
	.quad	518349154               # 0x1ee56162
	.quad	519314204               # 0x1ef41b1c
	.quad	520279254               # 0x1f02d4d6
	.quad	521244304               # 0x1f118e90
	.quad	522209354               # 0x1f20484a
	.quad	523174404               # 0x1f2f0204
	.quad	524139454               # 0x1f3dbbbe
	.quad	525104504               # 0x1f4c7578
	.quad	526069554               # 0x1f5b2f32
	.quad	527034604               # 0x1f69e8ec
	.quad	527999654               # 0x1f78a2a6
	.quad	528964704               # 0x1f875c60
	.quad	529929754               # 0x1f96161a
	.quad	530894804               # 0x1fa4cfd4
	.quad	531859854               # 0x1fb3898e
	.quad	532824904               # 0x1fc24348
	.quad	533789954               # 0x1fd0fd02
	.quad	534755004               # 0x1fdfb6bc
	.quad	535720054               # 0x1fee7076
	.quad	536685104               # 0x1ffd2a30
	.quad	537650154               # 0x200be3ea
	.quad	538615204               # 0x201a9da4
	.quad	539580254               # 0x2029575e
	.quad	540545304               # 0x20381118
	.quad	541510354               # 0x2046cad2
	.quad	542475404               # 0x2055848c
	.quad	543440454               # 0x20643e46
	.quad	544405504               # 0x2072f800
	.quad	545370554               # 0x2081b1ba
	.quad	546335604               # 0x20906b74
	.quad	547300654               # 0x209f252e
	.quad	548265704               # 0x20addee8
	.quad	549230754               # 0x20bc98a2
	.quad	550195804               # 0x20cb525c
	.quad	551160854               # 0x20da0c16
	.quad	552125904               # 0x20e8c5d0
	.quad	553090954               # 0x20f77f8a
	.quad	554056004               # 0x21063944
	.quad	555021054               # 0x2114f2fe
	.quad	555986104               # 0x2123acb8
	.quad	556951154               # 0x21326672
	.quad	557916204               # 0x2141202c
	.quad	558881254               # 0x214fd9e6
	.quad	559846304               # 0x215e93a0
	.quad	560811354               # 0x216d4d5a
	.quad	561776404               # 0x217c0714
	.quad	562741454               # 0x218ac0ce
	.quad	563706504               # 0x21997a88
	.quad	564671554               # 0x21a83442
	.quad	565636604               # 0x21b6edfc
	.quad	566601654               # 0x21c5a7b6
	.quad	567566704               # 0x21d46170
	.quad	568531754               # 0x21e31b2a
	.quad	569496804               # 0x21f1d4e4
	.quad	570461854               # 0x22008e9e
	.quad	571426904               # 0x220f4858
	.quad	572391954               # 0x221e0212
	.quad	573357004               # 0x222cbbcc
	.quad	574322054               # 0x223b7586
	.quad	575287104               # 0x224a2f40
	.quad	576252154               # 0x2258e8fa
	.quad	577217204               # 0x2267a2b4
	.quad	578182254               # 0x22765c6e
	.quad	579147304               # 0x22851628
	.quad	580112354               # 0x2293cfe2
	.quad	581077404               # 0x22a2899c
	.quad	582042454               # 0x22b14356
	.quad	583007504               # 0x22bffd10
	.quad	583972554               # 0x22ceb6ca
	.quad	584937604               # 0x22dd7084
	.quad	585902654               # 0x22ec2a3e
	.quad	586867704               # 0x22fae3f8
	.quad	540837754               # 0x203c877a
	.quad	541812804               # 0x204b6844
	.quad	542787854               # 0x205a490e
	.quad	543762904               # 0x206929d8
	.quad	544737954               # 0x20780aa2
	.quad	545713004               # 0x2086eb6c
	.quad	546688054               # 0x2095cc36
	.quad	547663104               # 0x20a4ad00
	.quad	548638154               # 0x20b38dca
	.quad	549613204               # 0x20c26e94
	.quad	550588254               # 0x20d14f5e
	.quad	551563304               # 0x20e03028
	.quad	552538354               # 0x20ef10f2
	.quad	553513404               # 0x20fdf1bc
	.quad	554488454               # 0x210cd286
	.quad	555463504               # 0x211bb350
	.quad	556438554               # 0x212a941a
	.quad	557413604               # 0x213974e4
	.quad	558388654               # 0x214855ae
	.quad	559363704               # 0x21573678
	.quad	560338754               # 0x21661742
	.quad	561313804               # 0x2174f80c
	.quad	562288854               # 0x2183d8d6
	.quad	563263904               # 0x2192b9a0
	.quad	564238954               # 0x21a19a6a
	.quad	565214004               # 0x21b07b34
	.quad	566189054               # 0x21bf5bfe
	.quad	567164104               # 0x21ce3cc8
	.quad	568139154               # 0x21dd1d92
	.quad	569114204               # 0x21ebfe5c
	.quad	570089254               # 0x21fadf26
	.quad	571064304               # 0x2209bff0
	.quad	572039354               # 0x2218a0ba
	.quad	573014404               # 0x22278184
	.quad	573989454               # 0x2236624e
	.quad	574964504               # 0x22454318
	.quad	575939554               # 0x225423e2
	.quad	576914604               # 0x226304ac
	.quad	577889654               # 0x2271e576
	.quad	578864704               # 0x2280c640
	.quad	579839754               # 0x228fa70a
	.quad	580814804               # 0x229e87d4
	.quad	581789854               # 0x22ad689e
	.quad	582764904               # 0x22bc4968
	.quad	583739954               # 0x22cb2a32
	.quad	584715004               # 0x22da0afc
	.quad	585690054               # 0x22e8ebc6
	.quad	586665104               # 0x22f7cc90
	.quad	587640154               # 0x2306ad5a
	.quad	588615204               # 0x23158e24
	.quad	589590254               # 0x23246eee
	.quad	590565304               # 0x23334fb8
	.quad	591540354               # 0x23423082
	.quad	592515404               # 0x2351114c
	.quad	593490454               # 0x235ff216
	.quad	594465504               # 0x236ed2e0
	.quad	595440554               # 0x237db3aa
	.quad	596415604               # 0x238c9474
	.quad	597390654               # 0x239b753e
	.quad	598365704               # 0x23aa5608
	.quad	599340754               # 0x23b936d2
	.quad	600315804               # 0x23c8179c
	.quad	601290854               # 0x23d6f866
	.quad	602265904               # 0x23e5d930
	.quad	603240954               # 0x23f4b9fa
	.quad	604216004               # 0x24039ac4
	.quad	605191054               # 0x24127b8e
	.quad	606166104               # 0x24215c58
	.quad	607141154               # 0x24303d22
	.quad	608116204               # 0x243f1dec
	.quad	609091254               # 0x244dfeb6
	.quad	610066304               # 0x245cdf80
	.quad	611041354               # 0x246bc04a
	.quad	612016404               # 0x247aa114
	.quad	612991454               # 0x248981de
	.quad	613966504               # 0x249862a8
	.quad	614941554               # 0x24a74372
	.quad	615916604               # 0x24b6243c
	.quad	616891654               # 0x24c50506
	.quad	617866704               # 0x24d3e5d0
	.quad	618841754               # 0x24e2c69a
	.quad	619816804               # 0x24f1a764
	.quad	620791854               # 0x2500882e
	.quad	621766904               # 0x250f68f8
	.quad	622741954               # 0x251e49c2
	.quad	623717004               # 0x252d2a8c
	.quad	624692054               # 0x253c0b56
	.quad	625667104               # 0x254aec20
	.quad	626642154               # 0x2559ccea
	.quad	627617204               # 0x2568adb4
	.quad	628592254               # 0x25778e7e
	.quad	629567304               # 0x25866f48
	.quad	630542354               # 0x25955012
	.quad	631517404               # 0x25a430dc
	.quad	632492454               # 0x25b311a6
	.quad	633467504               # 0x25c1f270
	.quad	634442554               # 0x25d0d33a
	.quad	635417604               # 0x25dfb404
	.quad	636392654               # 0x25ee94ce
	.quad	637367704               # 0x25fd7598
	.quad	590347754               # 0x232ffdea
	.quad	591332804               # 0x233f05c4
	.quad	592317854               # 0x234e0d9e
	.quad	593302904               # 0x235d1578
	.quad	594287954               # 0x236c1d52
	.quad	595273004               # 0x237b252c
	.quad	596258054               # 0x238a2d06
	.quad	597243104               # 0x239934e0
	.quad	598228154               # 0x23a83cba
	.quad	599213204               # 0x23b74494
	.quad	600198254               # 0x23c64c6e
	.quad	601183304               # 0x23d55448
	.quad	602168354               # 0x23e45c22
	.quad	603153404               # 0x23f363fc
	.quad	604138454               # 0x24026bd6
	.quad	605123504               # 0x241173b0
	.quad	606108554               # 0x24207b8a
	.quad	607093604               # 0x242f8364
	.quad	608078654               # 0x243e8b3e
	.quad	609063704               # 0x244d9318
	.quad	610048754               # 0x245c9af2
	.quad	611033804               # 0x246ba2cc
	.quad	612018854               # 0x247aaaa6
	.quad	613003904               # 0x2489b280
	.quad	613988954               # 0x2498ba5a
	.quad	614974004               # 0x24a7c234
	.quad	615959054               # 0x24b6ca0e
	.quad	616944104               # 0x24c5d1e8
	.quad	617929154               # 0x24d4d9c2
	.quad	618914204               # 0x24e3e19c
	.quad	619899254               # 0x24f2e976
	.quad	620884304               # 0x2501f150
	.quad	621869354               # 0x2510f92a
	.quad	622854404               # 0x25200104
	.quad	623839454               # 0x252f08de
	.quad	624824504               # 0x253e10b8
	.quad	625809554               # 0x254d1892
	.quad	626794604               # 0x255c206c
	.quad	627779654               # 0x256b2846
	.quad	628764704               # 0x257a3020
	.quad	629749754               # 0x258937fa
	.quad	630734804               # 0x25983fd4
	.quad	631719854               # 0x25a747ae
	.quad	632704904               # 0x25b64f88
	.quad	633689954               # 0x25c55762
	.quad	634675004               # 0x25d45f3c
	.quad	635660054               # 0x25e36716
	.quad	636645104               # 0x25f26ef0
	.quad	637630154               # 0x260176ca
	.quad	638615204               # 0x26107ea4
	.quad	639600254               # 0x261f867e
	.quad	640585304               # 0x262e8e58
	.quad	641570354               # 0x263d9632
	.quad	642555404               # 0x264c9e0c
	.quad	643540454               # 0x265ba5e6
	.quad	644525504               # 0x266aadc0
	.quad	645510554               # 0x2679b59a
	.quad	646495604               # 0x2688bd74
	.quad	647480654               # 0x2697c54e
	.quad	648465704               # 0x26a6cd28
	.quad	649450754               # 0x26b5d502
	.quad	650435804               # 0x26c4dcdc
	.quad	651420854               # 0x26d3e4b6
	.quad	652405904               # 0x26e2ec90
	.quad	653390954               # 0x26f1f46a
	.quad	654376004               # 0x2700fc44
	.quad	655361054               # 0x2710041e
	.quad	656346104               # 0x271f0bf8
	.quad	657331154               # 0x272e13d2
	.quad	658316204               # 0x273d1bac
	.quad	659301254               # 0x274c2386
	.quad	660286304               # 0x275b2b60
	.quad	661271354               # 0x276a333a
	.quad	662256404               # 0x27793b14
	.quad	663241454               # 0x278842ee
	.quad	664226504               # 0x27974ac8
	.quad	665211554               # 0x27a652a2
	.quad	666196604               # 0x27b55a7c
	.quad	667181654               # 0x27c46256
	.quad	668166704               # 0x27d36a30
	.quad	669151754               # 0x27e2720a
	.quad	670136804               # 0x27f179e4
	.quad	671121854               # 0x280081be
	.quad	672106904               # 0x280f8998
	.quad	673091954               # 0x281e9172
	.quad	674077004               # 0x282d994c
	.quad	675062054               # 0x283ca126
	.quad	676047104               # 0x284ba900
	.quad	677032154               # 0x285ab0da
	.quad	678017204               # 0x2869b8b4
	.quad	679002254               # 0x2878c08e
	.quad	679987304               # 0x2887c868
	.quad	680972354               # 0x2896d042
	.quad	681957404               # 0x28a5d81c
	.quad	682942454               # 0x28b4dff6
	.quad	683927504               # 0x28c3e7d0
	.quad	684912554               # 0x28d2efaa
	.quad	685897604               # 0x28e1f784
	.quad	686882654               # 0x28f0ff5e
	.quad	687867704               # 0x29000738
	.quad	639857754               # 0x2623745a
	.quad	640852804               # 0x2632a344
	.quad	641847854               # 0x2641d22e
	.quad	642842904               # 0x26510118
	.quad	643837954               # 0x26603002
	.quad	644833004               # 0x266f5eec
	.quad	645828054               # 0x267e8dd6
	.quad	646823104               # 0x268dbcc0
	.quad	647818154               # 0x269cebaa
	.quad	648813204               # 0x26ac1a94
	.quad	649808254               # 0x26bb497e
	.quad	650803304               # 0x26ca7868
	.quad	651798354               # 0x26d9a752
	.quad	652793404               # 0x26e8d63c
	.quad	653788454               # 0x26f80526
	.quad	654783504               # 0x27073410
	.quad	655778554               # 0x271662fa
	.quad	656773604               # 0x272591e4
	.quad	657768654               # 0x2734c0ce
	.quad	658763704               # 0x2743efb8
	.quad	659758754               # 0x27531ea2
	.quad	660753804               # 0x27624d8c
	.quad	661748854               # 0x27717c76
	.quad	662743904               # 0x2780ab60
	.quad	663738954               # 0x278fda4a
	.quad	664734004               # 0x279f0934
	.quad	665729054               # 0x27ae381e
	.quad	666724104               # 0x27bd6708
	.quad	667719154               # 0x27cc95f2
	.quad	668714204               # 0x27dbc4dc
	.quad	669709254               # 0x27eaf3c6
	.quad	670704304               # 0x27fa22b0
	.quad	671699354               # 0x2809519a
	.quad	672694404               # 0x28188084
	.quad	673689454               # 0x2827af6e
	.quad	674684504               # 0x2836de58
	.quad	675679554               # 0x28460d42
	.quad	676674604               # 0x28553c2c
	.quad	677669654               # 0x28646b16
	.quad	678664704               # 0x28739a00
	.quad	679659754               # 0x2882c8ea
	.quad	680654804               # 0x2891f7d4
	.quad	681649854               # 0x28a126be
	.quad	682644904               # 0x28b055a8
	.quad	683639954               # 0x28bf8492
	.quad	684635004               # 0x28ceb37c
	.quad	685630054               # 0x28dde266
	.quad	686625104               # 0x28ed1150
	.quad	687620154               # 0x28fc403a
	.quad	688615204               # 0x290b6f24
	.quad	689610254               # 0x291a9e0e
	.quad	690605304               # 0x2929ccf8
	.quad	691600354               # 0x2938fbe2
	.quad	692595404               # 0x29482acc
	.quad	693590454               # 0x295759b6
	.quad	694585504               # 0x296688a0
	.quad	695580554               # 0x2975b78a
	.quad	696575604               # 0x2984e674
	.quad	697570654               # 0x2994155e
	.quad	698565704               # 0x29a34448
	.quad	699560754               # 0x29b27332
	.quad	700555804               # 0x29c1a21c
	.quad	701550854               # 0x29d0d106
	.quad	702545904               # 0x29dffff0
	.quad	703540954               # 0x29ef2eda
	.quad	704536004               # 0x29fe5dc4
	.quad	705531054               # 0x2a0d8cae
	.quad	706526104               # 0x2a1cbb98
	.quad	707521154               # 0x2a2bea82
	.quad	708516204               # 0x2a3b196c
	.quad	709511254               # 0x2a4a4856
	.quad	710506304               # 0x2a597740
	.quad	711501354               # 0x2a68a62a
	.quad	712496404               # 0x2a77d514
	.quad	713491454               # 0x2a8703fe
	.quad	714486504               # 0x2a9632e8
	.quad	715481554               # 0x2aa561d2
	.quad	716476604               # 0x2ab490bc
	.quad	717471654               # 0x2ac3bfa6
	.quad	718466704               # 0x2ad2ee90
	.quad	719461754               # 0x2ae21d7a
	.quad	720456804               # 0x2af14c64
	.quad	721451854               # 0x2b007b4e
	.quad	722446904               # 0x2b0faa38
	.quad	723441954               # 0x2b1ed922
	.quad	724437004               # 0x2b2e080c
	.quad	725432054               # 0x2b3d36f6
	.quad	726427104               # 0x2b4c65e0
	.quad	727422154               # 0x2b5b94ca
	.quad	728417204               # 0x2b6ac3b4
	.quad	729412254               # 0x2b79f29e
	.quad	730407304               # 0x2b892188
	.quad	731402354               # 0x2b985072
	.quad	732397404               # 0x2ba77f5c
	.quad	733392454               # 0x2bb6ae46
	.quad	734387504               # 0x2bc5dd30
	.quad	735382554               # 0x2bd50c1a
	.quad	736377604               # 0x2be43b04
	.quad	737372654               # 0x2bf369ee
	.quad	738367704               # 0x2c0298d8
	.size	.Lmain.m_result, 80000

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Accuracy = %d "
	.size	.L.str, 15

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"\n\n"
	.size	.L.str1, 3

	.type	time_begin,@object      # @time_begin
	.section	.sbss,"aw",@nobits
	.p2align	3
time_begin:
	.quad	0                       # double 0
	.size	time_begin, 8

	.type	.L.str2,@object         # @.str2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str2:
	.asciz	"accept_time.txt"
	.size	.L.str2, 16

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	"w"
	.size	.L.str13, 2

	.type	.L.str24,@object        # @.str24
.L.str24:
	.asciz	"%f\n"
	.size	.L.str24, 4

	.type	.Lstr,@object           # @str
.Lstr:
	.asciz	"\n"
	.size	.Lstr, 2

	.section	".note.GNU-stack","",@progbits
