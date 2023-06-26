	.text
	.file	"app.opt.bc"
	.globl	conv                    # -- Begin function conv
	.p2align	2
	.type	conv,@function
conv:                                   # @conv
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
	sw	a2, 8(sp)
	mv	s4, a1
	mv	s5, a0
	mv	s9, zero
	mv	s8, zero
	mv	s3, zero
	addi	s6, zero, 2
	addi	s7, zero, 1000
	lui	a0, %hi(.Lconv.result_acc)
	addi	a0, a0, %lo(.Lconv.result_acc)
	sw	a0, 4(sp)
	addi	a2, zero, 1002
	j	.LBB0_3
.LBB0_1:                                # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	slli	a0, s9, 2
	lw	a1, 4(sp)
	add	a1, a0, a1
	lw	a1, 0(a1)
	lw	a2, 8(sp)
	add	a0, a2, a0
	sw	s1, 0(a0)
	xor	a0, s1, a1
	seqz	a0, a0
	add	s3, a0, s3
	addi	a2, zero, 1002
.LBB0_2:                                # %for.inc18
                                        #   in Loop: Header=BB0_3 Depth=1
	addi	a0, s9, 1
	sltu	a1, a0, s9
	add	s8, s8, a1
	mv	s9, a0
	beq	a0, a2, .LBB0_8
.LBB0_3:                                # %accept_cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	andi	a0, s9, 3
	bnez	a0, .LBB0_2
# %bb.4:                                # %for.body3.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	mv	s2, zero
	mv	s0, zero
	mv	s1, zero
	mv	s11, s9
	mv	s10, s8
	j	.LBB0_6
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_6 Depth=2
	addi	a0, s11, -1
	sltu	a1, a0, s11
	add	a1, s10, a1
	addi	s10, a1, -1
	addi	a1, s2, 1
	sltu	a2, a1, s2
	add	s0, s0, a2
	mv	s2, a1
	mv	s11, a0
	beq	a1, s7, .LBB0_1
.LBB0_6:                                # %for.body3
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	s6, s11, .LBB0_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB0_6 Depth=2
	slli	a0, s11, 2
	add	a0, s5, a0
	lw	a1, 0(a0)
	slli	a0, s2, 2
	add	a0, s4, a0
	lw	a0, 0(a0)
	call	__mulsi3
	add	s1, a0, s1
	j	.LBB0_5
.LBB0_8:                                # %for.end20
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	mv	a1, s3
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
	tail	printf
.Lfunc_end0:
	.size	conv, .Lfunc_end0-conv
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
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	lui	a0, 1
	addi	a0, a0, 1920
	sub	sp, sp, a0
	.cfi_def_cfa_offset 8048
	lui	a0, %hi(.Lmain.A)
	lw	a1, %lo(.Lmain.A)(a0)
	addi	a0, a0, %lo(.Lmain.A)
	lw	a2, 8(a0)
	lw	a0, 4(a0)
	lui	a3, 2
	addi	a3, a3, -172
	add	a3, sp, a3
	sw	a1, 0(a3)
	lui	a1, 2
	addi	a1, a1, -164
	add	a1, sp, a1
	sw	a2, 0(a1)
	lui	a1, 2
	addi	a1, a1, -168
	add	a1, sp, a1
	sw	a0, 0(a1)
	lui	a0, %hi(.Lmain.B)
	addi	a1, a0, %lo(.Lmain.B)
	lui	a0, 1
	addi	s0, a0, -96
	lui	a0, 1
	addi	a0, a0, -80
	add	a0, sp, a0
	mv	s2, a0
	mv	a0, s2
	mv	a2, s0
	call	memcpy
	addi	s1, sp, 16
	mv	a0, s1
	mv	a1, zero
	mv	a2, s0
	call	memset
	lui	a0, 2
	addi	a0, a0, -172
	add	a0, sp, a0
	mv	a0, a0
	mv	a1, s2
	mv	a2, s1
	call	conv
	mv	a0, zero
	lui	a1, 1
	addi	a1, a1, 1920
	add	sp, sp, a1
	lw	s2, 2016(sp)
	lw	s1, 2020(sp)
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
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
.Lfunc_end2:
	.size	accept_roi_begin, .Lfunc_end2-accept_roi_begin
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
	lui	a0, %hi(.L.str1)
	addi	a0, a0, %lo(.L.str1)
	lui	a1, %hi(.L.str12)
	addi	a1, a1, %lo(.L.str12)
	call	fopen
	mv	s0, a0
	lui	a0, %hi(.L.str2)
	addi	a1, a0, %lo(.L.str2)
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
.Lfunc_end3:
	.size	accept_roi_end, .Lfunc_end3-accept_roi_end
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
	.size	fastpow2, .Lfunc_end4-fastpow2
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
	bltz	a0, .LBB5_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB5_2:                                # %entry
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
.Lfunc_end5:
	.size	fastexp, .Lfunc_end5-fastexp
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
	.size	fasterpow2, .Lfunc_end6-fasterpow2
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
	bltz	a0, .LBB7_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB7_2:                                # %entry
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
.Lfunc_end7:
	.size	fasterexp, .Lfunc_end7-fasterexp
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
.Lfunc_end8:
	.size	fastlog2, .Lfunc_end8-fastlog2
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
.Lfunc_end9:
	.size	fastlog, .Lfunc_end9-fastlog
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
.Lfunc_end10:
	.size	fasterlog2, .Lfunc_end10-fasterlog2
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
.Lfunc_end11:
	.size	fasterlog, .Lfunc_end11-fasterlog
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
	bltz	a0, .LBB12_2
# %bb.1:                                # %entry
	mv	s1, s0
.LBB12_2:                               # %entry
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
	bltz	a0, .LBB12_4
# %bb.3:                                # %entry
	mv	s4, s2
.LBB12_4:                               # %entry
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
.Lfunc_end12:
	.size	fasterfc, .Lfunc_end12-fasterfc
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
	bltz	a0, .LBB13_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB13_2:                               # %entry
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
.Lfunc_end13:
	.size	fastererfc, .Lfunc_end13-fastererfc
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
	bltz	a0, .LBB14_2
# %bb.1:                                # %entry
	mv	s1, s0
.LBB14_2:                               # %entry
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
	bltz	a0, .LBB14_4
# %bb.3:                                # %entry
	mv	s4, s2
.LBB14_4:                               # %entry
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
.Lfunc_end14:
	.size	fasterf, .Lfunc_end14-fasterf
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
	bltz	a0, .LBB15_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB15_2:                               # %entry
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
.Lfunc_end15:
	.size	fastererf, .Lfunc_end15-fastererf
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
.Lfunc_end16:
	.size	fastinverseerf, .Lfunc_end16-fastinverseerf
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
.Lfunc_end17:
	.size	fasterinverseerf, .Lfunc_end17-fasterinverseerf
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
.Lfunc_end18:
	.size	fastlgamma, .Lfunc_end18-fastlgamma
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
.Lfunc_end19:
	.size	fasterlgamma, .Lfunc_end19-fasterlgamma
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
.Lfunc_end20:
	.size	fastdigamma, .Lfunc_end20-fastdigamma
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
.Lfunc_end21:
	.size	fasterdigamma, .Lfunc_end21-fasterdigamma
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
	bltz	a0, .LBB22_4
# %bb.3:                                # %entry
	mv	s8, s0
.LBB22_4:                               # %entry
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
.Lfunc_end22:
	.size	fastsinh, .Lfunc_end22-fastsinh
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
	bltz	a1, .LBB23_2
# %bb.1:                                # %entry
	mv	a0, s0
.LBB23_2:                               # %entry
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
	bltz	a0, .LBB23_4
# %bb.3:                                # %entry
	mv	s2, s1
.LBB23_4:                               # %entry
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
.Lfunc_end23:
	.size	fastersinh, .Lfunc_end23-fastersinh
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
	bltz	a0, .LBB24_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB24_2:                               # %entry
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
	bltz	a0, .LBB24_4
# %bb.3:                                # %entry
	mv	s8, s0
.LBB24_4:                               # %entry
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
.Lfunc_end24:
	.size	fastcosh, .Lfunc_end24-fastcosh
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
	bltz	a1, .LBB25_2
# %bb.1:                                # %entry
	mv	a0, s0
.LBB25_2:                               # %entry
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
	bltz	a0, .LBB25_4
# %bb.3:                                # %entry
	mv	s2, s1
.LBB25_4:                               # %entry
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
.Lfunc_end25:
	.size	fastercosh, .Lfunc_end25-fastercosh
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
	bltz	a0, .LBB26_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB26_2:                               # %entry
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
.Lfunc_end26:
	.size	fasttanh, .Lfunc_end26-fasttanh
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
	bltz	a0, .LBB27_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB27_2:                               # %entry
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
.Lfunc_end27:
	.size	fastertanh, .Lfunc_end27-fastertanh
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
	bltz	a0, .LBB28_2
# %bb.1:                                # %entry
	lui	s2, 524288
	lui	a0, 260096
	j	.LBB28_3
.LBB28_2:
	lui	a0, 261216
	addi	a0, a0, -79
	lui	a1, 259022
	addi	s2, a1, -386
.LBB28_3:                               # %entry
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
	bltz	a0, .LBB28_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB28_5:                               # %entry
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
.Lfunc_end28:
	.size	fastlambertw, .Lfunc_end28-fastlambertw
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
	bltz	a0, .LBB29_2
# %bb.1:                                # %entry
	lui	a0, 260096
	j	.LBB29_3
.LBB29_2:
	lui	a0, 261216
	addi	a0, a0, -79
.LBB29_3:                               # %entry
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
	bltz	a0, .LBB29_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB29_5:                               # %entry
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
.Lfunc_end29:
	.size	fasterlambertw, .Lfunc_end29-fasterlambertw
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
	blt	a1, a0, .LBB30_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s8, a0
	j	.LBB30_3
.LBB30_2:
	mv	s8, zero
.LBB30_3:                               # %cond.end
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
	bltz	a0, .LBB30_5
# %bb.4:                                # %cond.end
	mv	s1, s8
.LBB30_5:                               # %cond.end
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
.Lfunc_end30:
	.size	fastlambertwexpx, .Lfunc_end30-fastlambertwexpx
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
	blt	a1, a0, .LBB31_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s6, a0
	j	.LBB31_3
.LBB31_2:
	mv	s6, zero
.LBB31_3:                               # %cond.end
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
	bltz	a0, .LBB31_5
# %bb.4:                                # %cond.end
	mv	s1, s6
.LBB31_5:                               # %cond.end
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
.Lfunc_end31:
	.size	fasterlambertwexpx, .Lfunc_end31-fasterlambertwexpx
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
	bltz	a0, .LBB32_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB32_2:                               # %entry
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
.Lfunc_end32:
	.size	fastpow, .Lfunc_end32-fastpow
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
	bltz	a0, .LBB33_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB33_2:                               # %entry
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
.Lfunc_end33:
	.size	fasterpow, .Lfunc_end33-fasterpow
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
	bltz	a0, .LBB34_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB34_2:                               # %entry
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
.Lfunc_end34:
	.size	fastsigmoid, .Lfunc_end34-fastsigmoid
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
	bltz	a0, .LBB35_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB35_2:                               # %entry
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
.Lfunc_end35:
	.size	fastersigmoid, .Lfunc_end35-fastersigmoid
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
.Lfunc_end36:
	.size	fastsin, .Lfunc_end36-fastsin
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
.Lfunc_end37:
	.size	fastersin, .Lfunc_end37-fastersin
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
.Lfunc_end38:
	.size	fastsinfull, .Lfunc_end38-fastsinfull
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
	bltz	a0, .LBB39_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB39_2:                               # %entry
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
.Lfunc_end39:
	.size	fastersinfull, .Lfunc_end39-fastersinfull
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
	blez	a0, .LBB40_2
# %bb.1:
	lui	a0, 788845
	addi	s1, a0, -1052
.LBB40_2:                               # %entry
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
.Lfunc_end40:
	.size	fastcos, .Lfunc_end40-fastcos
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
.Lfunc_end41:
	.size	fastercos, .Lfunc_end41-fastercos
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
.Lfunc_end42:
	.size	fastcosfull, .Lfunc_end42-fastcosfull
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
.Lfunc_end43:
	.size	fastercosfull, .Lfunc_end43-fastercosfull
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
.Lfunc_end44:
	.size	fasttan, .Lfunc_end44-fasttan
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
.Lfunc_end45:
	.size	fastertan, .Lfunc_end45-fastertan
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
	blez	a0, .LBB46_4
# %bb.3:
	lui	a0, 788845
	addi	s0, a0, -1052
.LBB46_4:                               # %entry
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
.Lfunc_end46:
	.size	fasttanfull, .Lfunc_end46-fasttanfull
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
	bltz	a0, .LBB47_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB47_2:                               # %entry
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
.Lfunc_end47:
	.size	fastertanfull, .Lfunc_end47-fastertanfull
	.cfi_endproc
                                        # -- End function
	.type	.Lconv.result_acc,@object # @conv.result_acc
	.section	.rodata,"a",@progbits
	.p2align	4
.Lconv.result_acc:
	.word	42692955                # 0x28b715b
	.word	118038953               # 0x70921a9
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	67010985                # 0x3fe81a9
	.word	119733203               # 0x722fbd3
	.word	170755725               # 0xa2d868d
	.word	188460082               # 0xb3bac32
	.word	128563823               # 0x7a9ba6f
	.word	67618601                # 0x407c729
	.word	90562976                # 0x565e1a0
	.word	101048390               # 0x605e046
	.word	68698472                # 0x4184168
	.word	86561227                # 0x528d1cb
	.word	71092427                # 0x43cc8cb
	.word	32830616                # 0x1f4f498
	.word	28111387                # 0x1acf21b
	.word	108736261               # 0x67b2f05
	.word	182332502               # 0xade2c56
	.word	185796474               # 0xb13077a
	.word	101450515               # 0x60c0313
	.word	32201821                # 0x1eb5c5d
	.word	88998371                # 0x54e01e3
	.word	161208794               # 0x99bd9da
	.word	120255238               # 0x72af306
	.word	66276307                # 0x3f34bd3
	.word	41964941                # 0x280558d
	.word	86866119                # 0x52d78c7
	.word	74162443                # 0x46ba10b
	.word	24318030                # 0x173104e
	.word	1694250                 # 0x19da2a
	.size	.Lconv.result_acc, 4008

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cont=%d\n"
	.size	.L.str, 9

	.type	.Lmain.A,@object        # @main.A
	.section	.rodata,"a",@progbits
	.p2align	2
.Lmain.A:
	.word	9271                    # 0x2437
	.word	8796                    # 0x225c
	.word	2510                    # 0x9ce
	.size	.Lmain.A, 12

	.type	.Lmain.B,@object        # @main.B
	.p2align	4
.Lmain.B:
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.word	4605                    # 0x11fd
	.word	8363                    # 0x20ab
	.word	9237                    # 0x2415
	.word	9300                    # 0x2454
	.word	2543                    # 0x9ef
	.word	2363                    # 0x93b
	.word	6838                    # 0x1ab6
	.word	3772                    # 0xebc
	.word	1980                    # 0x7bc
	.word	6437                    # 0x1925
	.word	1025                    # 0x401
	.word	826                     # 0x33a
	.word	1971                    # 0x7b3
	.word	9635                    # 0x25a3
	.word	9992                    # 0x2708
	.word	7952                    # 0x1f10
	.word	693                     # 0x2b5
	.word	663                     # 0x297
	.word	8783                    # 0x224f
	.word	8876                    # 0x22ac
	.word	2172                    # 0x87c
	.word	2685                    # 0xa7d
	.word	1391                    # 0x56f
	.word	7323                    # 0x1c9b
	.word	675                     # 0x2a3
	.size	.Lmain.B, 4000

	.type	time_begin,@object      # @time_begin
	.section	.sbss,"aw",@nobits
	.p2align	3
time_begin:
	.quad	0                       # double 0
	.size	time_begin, 8

	.type	.L.str1,@object         # @.str1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1:
	.asciz	"accept_time.txt"
	.size	.L.str1, 16

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	"w"
	.size	.L.str12, 2

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"%f\n"
	.size	.L.str2, 4

	.section	".note.GNU-stack","",@progbits
