	.text
	.file	"app.opt.bc"
	.globl	binary_search           # -- Begin function binary_search
	.p2align	2
	.type	binary_search,@function
binary_search:                          # @binary_search
	.cfi_startproc
# %bb.0:                                # %entry
	mv	a3, zero
	addi	a7, zero, 500
	addi	a6, zero, -1
.LBB0_1:                                # %while.cond.outer10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	mv	a4, a3
.LBB0_2:                                # %while.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	a7, a4, .LBB0_7
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB0_2 Depth=2
	mv	a3, a4
	add	a2, a4, a7
	srai	a5, a2, 1
	slli	a2, a5, 3
	add	a4, a0, a2
	lw	a2, 0(a4)
	beq	a2, a1, .LBB0_6
# %bb.4:                                # %if.else
                                        #   in Loop: Header=BB0_2 Depth=2
	addi	a4, a5, 1
	bge	a1, a2, .LBB0_2
# %bb.5:                                # %if.then8
                                        #   in Loop: Header=BB0_1 Depth=1
	addi	a7, a5, -1
	j	.LBB0_1
.LBB0_6:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	lw	a6, 4(a4)
	addi	a7, a3, -1
	j	.LBB0_1
.LBB0_7:                                # %while.end
	mv	a0, a6
	ret
.Lfunc_end0:
	.size	binary_search, .Lfunc_end0-binary_search
	.cfi_endproc
                                        # -- End function
	.globl	run_in_itim             # -- Begin function run_in_itim
	.p2align	2
	.type	run_in_itim,@function
run_in_itim:                            # @run_in_itim
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
	mv	s2, a1
	mv	s3, a0
	mv	s0, zero
	mv	s1, zero
	lui	a0, %hi(.L.str)
	addi	s4, a0, %lo(.L.str)
	addi	s5, zero, 500
	j	.LBB1_2
.LBB1_1:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	addi	a0, s0, 1
	sltu	a1, a0, s0
	add	s1, s1, a1
	mv	s0, a0
	beq	a0, s5, .LBB1_4
.LBB1_2:                                # %accept_cond
                                        # =>This Inner Loop Header: Depth=1
	andi	a0, s0, 1
	bnez	a0, .LBB1_1
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	slli	a0, s0, 2
	add	a0, s2, a0
	lw	a1, 0(a0)
	mv	a0, s3
	call	binary_search
	mv	a1, a0
	mv	a0, s4
	call	printf
	j	.LBB1_1
.LBB1_4:                                # %for.end
	lw	s5, 4(sp)
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	run_in_itim, .Lfunc_end1-run_in_itim
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
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	lui	a0, 1
	addi	a0, a0, -96
	sub	sp, sp, a0
	.cfi_def_cfa_offset 6032
	lui	a0, %hi(.Lmain.data)
	addi	a1, a0, %lo(.Lmain.data)
	lui	a0, 1
	addi	a2, a0, -96
	addi	s0, sp, 2016
	mv	a0, s0
	call	memcpy
	lui	a0, %hi(.Lmain.keys)
	addi	a1, a0, %lo(.Lmain.keys)
	addi	s1, sp, 16
	addi	a2, zero, 2000
	mv	a0, s1
	call	memcpy
	mv	a0, s0
	mv	a1, s1
	call	run_in_itim
	mv	a0, zero
	lui	a1, 1
	addi	a1, a1, -96
	add	sp, sp, a1
	lw	s1, 2020(sp)
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
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
.Lfunc_end3:
	.size	accept_roi_begin, .Lfunc_end3-accept_roi_begin
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
.Lfunc_end4:
	.size	accept_roi_end, .Lfunc_end4-accept_roi_end
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
	.size	fastpow2, .Lfunc_end5-fastpow2
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
	bltz	a0, .LBB6_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB6_2:                                # %entry
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
.Lfunc_end6:
	.size	fastexp, .Lfunc_end6-fastexp
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
	.size	fasterpow2, .Lfunc_end7-fasterpow2
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
	bltz	a0, .LBB8_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB8_2:                                # %entry
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
.Lfunc_end8:
	.size	fasterexp, .Lfunc_end8-fasterexp
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
.Lfunc_end9:
	.size	fastlog2, .Lfunc_end9-fastlog2
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
.Lfunc_end10:
	.size	fastlog, .Lfunc_end10-fastlog
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
.Lfunc_end11:
	.size	fasterlog2, .Lfunc_end11-fasterlog2
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
.Lfunc_end12:
	.size	fasterlog, .Lfunc_end12-fasterlog
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
	.size	fasterfc, .Lfunc_end13-fasterfc
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
	lui	a0, 262144
	call	__divsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end14:
	.size	fastererfc, .Lfunc_end14-fastererfc
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
	bltz	a0, .LBB15_2
# %bb.1:                                # %entry
	mv	s1, s0
.LBB15_2:                               # %entry
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
	bltz	a0, .LBB15_4
# %bb.3:                                # %entry
	mv	s4, s2
.LBB15_4:                               # %entry
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
.Lfunc_end15:
	.size	fasterf, .Lfunc_end15-fasterf
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
	bltz	a0, .LBB16_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB16_2:                               # %entry
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
.Lfunc_end16:
	.size	fastererf, .Lfunc_end16-fastererf
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
.Lfunc_end17:
	.size	fastinverseerf, .Lfunc_end17-fastinverseerf
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
.Lfunc_end18:
	.size	fasterinverseerf, .Lfunc_end18-fasterinverseerf
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
.Lfunc_end19:
	.size	fastlgamma, .Lfunc_end19-fastlgamma
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
.Lfunc_end20:
	.size	fasterlgamma, .Lfunc_end20-fasterlgamma
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
.Lfunc_end21:
	.size	fastdigamma, .Lfunc_end21-fastdigamma
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
.Lfunc_end22:
	.size	fasterdigamma, .Lfunc_end22-fasterdigamma
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
.Lfunc_end23:
	.size	fastsinh, .Lfunc_end23-fastsinh
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
.Lfunc_end24:
	.size	fastersinh, .Lfunc_end24-fastersinh
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
	bltz	a0, .LBB25_4
# %bb.3:                                # %entry
	mv	s8, s0
.LBB25_4:                               # %entry
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
.Lfunc_end25:
	.size	fastcosh, .Lfunc_end25-fastcosh
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
	bltz	a1, .LBB26_2
# %bb.1:                                # %entry
	mv	a0, s0
.LBB26_2:                               # %entry
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
	bltz	a0, .LBB26_4
# %bb.3:                                # %entry
	mv	s2, s1
.LBB26_4:                               # %entry
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
.Lfunc_end26:
	.size	fastercosh, .Lfunc_end26-fastercosh
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
.Lfunc_end27:
	.size	fasttanh, .Lfunc_end27-fasttanh
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
	bltz	a0, .LBB28_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB28_2:                               # %entry
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
.Lfunc_end28:
	.size	fastertanh, .Lfunc_end28-fastertanh
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
	bltz	a0, .LBB29_2
# %bb.1:                                # %entry
	lui	s2, 524288
	lui	a0, 260096
	j	.LBB29_3
.LBB29_2:
	lui	a0, 261216
	addi	a0, a0, -79
	lui	a1, 259022
	addi	s2, a1, -386
.LBB29_3:                               # %entry
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
	bltz	a0, .LBB29_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB29_5:                               # %entry
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
.Lfunc_end29:
	.size	fastlambertw, .Lfunc_end29-fastlambertw
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
	bltz	a0, .LBB30_2
# %bb.1:                                # %entry
	lui	a0, 260096
	j	.LBB30_3
.LBB30_2:
	lui	a0, 261216
	addi	a0, a0, -79
.LBB30_3:                               # %entry
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
	bltz	a0, .LBB30_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB30_5:                               # %entry
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
.Lfunc_end30:
	.size	fasterlambertw, .Lfunc_end30-fasterlambertw
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
	blt	a1, a0, .LBB31_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s8, a0
	j	.LBB31_3
.LBB31_2:
	mv	s8, zero
.LBB31_3:                               # %cond.end
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
	bltz	a0, .LBB31_5
# %bb.4:                                # %cond.end
	mv	s1, s8
.LBB31_5:                               # %cond.end
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
.Lfunc_end31:
	.size	fastlambertwexpx, .Lfunc_end31-fastlambertwexpx
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
	blt	a1, a0, .LBB32_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s6, a0
	j	.LBB32_3
.LBB32_2:
	mv	s6, zero
.LBB32_3:                               # %cond.end
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
	bltz	a0, .LBB32_5
# %bb.4:                                # %cond.end
	mv	s1, s6
.LBB32_5:                               # %cond.end
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
.Lfunc_end32:
	.size	fasterlambertwexpx, .Lfunc_end32-fasterlambertwexpx
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
.Lfunc_end33:
	.size	fastpow, .Lfunc_end33-fastpow
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
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end34:
	.size	fasterpow, .Lfunc_end34-fasterpow
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
	bltz	a0, .LBB35_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB35_2:                               # %entry
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
.Lfunc_end35:
	.size	fastsigmoid, .Lfunc_end35-fastsigmoid
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
	bltz	a0, .LBB36_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB36_2:                               # %entry
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
.Lfunc_end36:
	.size	fastersigmoid, .Lfunc_end36-fastersigmoid
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
.Lfunc_end37:
	.size	fastsin, .Lfunc_end37-fastsin
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
.Lfunc_end38:
	.size	fastersin, .Lfunc_end38-fastersin
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
	.size	fastsinfull, .Lfunc_end39-fastsinfull
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
	bltz	a0, .LBB40_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB40_2:                               # %entry
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
.Lfunc_end40:
	.size	fastersinfull, .Lfunc_end40-fastersinfull
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
	blez	a0, .LBB41_2
# %bb.1:
	lui	a0, 788845
	addi	s1, a0, -1052
.LBB41_2:                               # %entry
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
.Lfunc_end41:
	.size	fastcos, .Lfunc_end41-fastcos
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
.Lfunc_end42:
	.size	fastercos, .Lfunc_end42-fastercos
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
	.size	fastcosfull, .Lfunc_end43-fastcosfull
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
	.size	fastercosfull, .Lfunc_end44-fastercosfull
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
.Lfunc_end45:
	.size	fasttan, .Lfunc_end45-fasttan
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
.Lfunc_end46:
	.size	fastertan, .Lfunc_end46-fastertan
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
	blez	a0, .LBB47_4
# %bb.3:
	lui	a0, 788845
	addi	s0, a0, -1052
.LBB47_4:                               # %entry
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
.Lfunc_end47:
	.size	fasttanfull, .Lfunc_end47-fasttanfull
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
	bltz	a0, .LBB48_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB48_2:                               # %entry
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
.Lfunc_end48:
	.size	fastertanfull, .Lfunc_end48-fastertanfull
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %d "
	.size	.L.str, 5

	.type	.Lmain.data,@object     # @main.data
	.section	.rodata,"a",@progbits
	.p2align	4
.Lmain.data:
	.word	1                       # 0x1
	.word	4294091545              # 0xfff2a319
	.word	2                       # 0x2
	.word	4293991227              # 0xfff11b3b
	.word	3                       # 0x3
	.word	4294933907              # 0xffff7d93
	.word	4                       # 0x4
	.word	728892                  # 0xb1f3c
	.word	5                       # 0x5
	.word	4294953699              # 0xffffcae3
	.word	6                       # 0x6
	.word	4294312013              # 0xfff6004d
	.word	7                       # 0x7
	.word	208387                  # 0x32e03
	.word	8                       # 0x8
	.word	247263                  # 0x3c5df
	.word	9                       # 0x9
	.word	552173                  # 0x86ced
	.word	10                      # 0xa
	.word	4294570670              # 0xfff9f2ae
	.word	11                      # 0xb
	.word	4294601430              # 0xfffa6ad6
	.word	12                      # 0xc
	.word	22679                   # 0x5897
	.word	13                      # 0xd
	.word	599562                  # 0x9260a
	.word	14                      # 0xe
	.word	258658                  # 0x3f262
	.word	15                      # 0xf
	.word	331702                  # 0x50fb6
	.word	16                      # 0x10
	.word	646517                  # 0x9dd75
	.word	17                      # 0x11
	.word	270585                  # 0x420f9
	.word	18                      # 0x12
	.word	4294869323              # 0xfffe814b
	.word	19                      # 0x13
	.word	4294806697              # 0xfffd8ca9
	.word	20                      # 0x14
	.word	4294435525              # 0xfff7e2c5
	.word	21                      # 0x15
	.word	370030                  # 0x5a56e
	.word	22                      # 0x16
	.word	320322                  # 0x4e342
	.word	23                      # 0x17
	.word	4294947387              # 0xffffb23b
	.word	24                      # 0x18
	.word	4294586854              # 0xfffa31e6
	.word	25                      # 0x19
	.word	4294428857              # 0xfff7c8b9
	.word	26                      # 0x1a
	.word	552231                  # 0x86d27
	.word	27                      # 0x1b
	.word	4294694672              # 0xfffbd710
	.word	28                      # 0x1c
	.word	4294761745              # 0xfffcdd11
	.word	29                      # 0x1d
	.word	822320                  # 0xc8c30
	.word	30                      # 0x1e
	.word	4294292361              # 0xfff5b389
	.word	31                      # 0x1f
	.word	4294641568              # 0xfffb07a0
	.word	32                      # 0x20
	.word	4294736357              # 0xfffc79e5
	.word	33                      # 0x21
	.word	366147                  # 0x59643
	.word	34                      # 0x22
	.word	4294368478              # 0xfff6dcde
	.word	35                      # 0x23
	.word	85041                   # 0x14c31
	.word	36                      # 0x24
	.word	4294751579              # 0xfffcb55b
	.word	37                      # 0x25
	.word	782491                  # 0xbf09b
	.word	38                      # 0x26
	.word	4294841176              # 0xfffe1358
	.word	39                      # 0x27
	.word	112679                  # 0x1b827
	.word	40                      # 0x28
	.word	361825                  # 0x58561
	.word	41                      # 0x29
	.word	117684                  # 0x1cbb4
	.word	42                      # 0x2a
	.word	4294421450              # 0xfff7abca
	.word	43                      # 0x2b
	.word	4294117296              # 0xfff307b0
	.word	44                      # 0x2c
	.word	4294851053              # 0xfffe39ed
	.word	45                      # 0x2d
	.word	500357                  # 0x7a285
	.word	46                      # 0x2e
	.word	793015                  # 0xc19b7
	.word	47                      # 0x2f
	.word	4294269840              # 0xfff55b90
	.word	48                      # 0x30
	.word	143280                  # 0x22fb0
	.word	49                      # 0x31
	.word	4294499556              # 0xfff8dce4
	.word	50                      # 0x32
	.word	113886                  # 0x1bcde
	.word	51                      # 0x33
	.word	782025                  # 0xbeec9
	.word	52                      # 0x34
	.word	307844                  # 0x4b284
	.word	53                      # 0x35
	.word	112214                  # 0x1b656
	.word	54                      # 0x36
	.word	4294177020              # 0xfff3f0fc
	.word	55                      # 0x37
	.word	164914                  # 0x28432
	.word	56                      # 0x38
	.word	421452                  # 0x66e4c
	.word	57                      # 0x39
	.word	4294645063              # 0xfffb1547
	.word	58                      # 0x3a
	.word	4294543343              # 0xfff987ef
	.word	59                      # 0x3b
	.word	301485                  # 0x499ad
	.word	60                      # 0x3c
	.word	4294713493              # 0xfffc2095
	.word	61                      # 0x3d
	.word	80815                   # 0x13baf
	.word	62                      # 0x3e
	.word	4294507939              # 0xfff8fda3
	.word	63                      # 0x3f
	.word	4294247077              # 0xfff502a5
	.word	64                      # 0x40
	.word	86480                   # 0x151d0
	.word	65                      # 0x41
	.word	615417                  # 0x963f9
	.word	66                      # 0x42
	.word	4294369807              # 0xfff6e20f
	.word	67                      # 0x43
	.word	4294670749              # 0xfffb799d
	.word	68                      # 0x44
	.word	375855                  # 0x5bc2f
	.word	69                      # 0x45
	.word	4294720417              # 0xfffc3ba1
	.word	70                      # 0x46
	.word	4294604326              # 0xfffa7626
	.word	71                      # 0x47
	.word	4294207256              # 0xfff46718
	.word	72                      # 0x48
	.word	390792                  # 0x5f688
	.word	73                      # 0x49
	.word	4294385235              # 0xfff71e53
	.word	74                      # 0x4a
	.word	4294656262              # 0xfffb4106
	.word	75                      # 0x4b
	.word	1017471                 # 0xf867f
	.word	76                      # 0x4c
	.word	4294930328              # 0xffff6f98
	.word	77                      # 0x4d
	.word	85635                   # 0x14e83
	.word	78                      # 0x4e
	.word	261005                  # 0x3fb8d
	.word	79                      # 0x4f
	.word	4294530743              # 0xfff956b7
	.word	80                      # 0x50
	.word	690672                  # 0xa89f0
	.word	81                      # 0x51
	.word	608346                  # 0x9485a
	.word	82                      # 0x52
	.word	260453                  # 0x3f965
	.word	83                      # 0x53
	.word	4294748865              # 0xfffcaac1
	.word	84                      # 0x54
	.word	4294361837              # 0xfff6c2ed
	.word	85                      # 0x55
	.word	686553                  # 0xa79d9
	.word	86                      # 0x56
	.word	4294799304              # 0xfffd6fc8
	.word	87                      # 0x57
	.word	4294168412              # 0xfff3cf5c
	.word	88                      # 0x58
	.word	514964                  # 0x7db94
	.word	89                      # 0x59
	.word	119504                  # 0x1d2d0
	.word	90                      # 0x5a
	.word	4294822722              # 0xfffdcb42
	.word	91                      # 0x5b
	.word	4294233735              # 0xfff4ce87
	.word	92                      # 0x5c
	.word	4294311833              # 0xfff5ff99
	.word	93                      # 0x5d
	.word	738753                  # 0xb45c1
	.word	94                      # 0x5e
	.word	4294638230              # 0xfffafa96
	.word	95                      # 0x5f
	.word	458199                  # 0x6fdd7
	.word	96                      # 0x60
	.word	864745                  # 0xd31e9
	.word	97                      # 0x61
	.word	118910                  # 0x1d07e
	.word	98                      # 0x62
	.word	441277                  # 0x6bbbd
	.word	99                      # 0x63
	.word	4294237847              # 0xfff4de97
	.word	100                     # 0x64
	.word	40402                   # 0x9dd2
	.word	101                     # 0x65
	.word	4294091544              # 0xfff2a318
	.word	102                     # 0x66
	.word	4293991227              # 0xfff11b3b
	.word	103                     # 0x67
	.word	4294933907              # 0xffff7d93
	.word	104                     # 0x68
	.word	728892                  # 0xb1f3c
	.word	105                     # 0x69
	.word	4294953699              # 0xffffcae3
	.word	106                     # 0x6a
	.word	4294312013              # 0xfff6004d
	.word	107                     # 0x6b
	.word	208387                  # 0x32e03
	.word	108                     # 0x6c
	.word	247263                  # 0x3c5df
	.word	109                     # 0x6d
	.word	552173                  # 0x86ced
	.word	110                     # 0x6e
	.word	4294570670              # 0xfff9f2ae
	.word	111                     # 0x6f
	.word	4294601430              # 0xfffa6ad6
	.word	112                     # 0x70
	.word	22679                   # 0x5897
	.word	113                     # 0x71
	.word	599562                  # 0x9260a
	.word	114                     # 0x72
	.word	258658                  # 0x3f262
	.word	115                     # 0x73
	.word	331702                  # 0x50fb6
	.word	116                     # 0x74
	.word	646517                  # 0x9dd75
	.word	117                     # 0x75
	.word	270585                  # 0x420f9
	.word	118                     # 0x76
	.word	4294869323              # 0xfffe814b
	.word	119                     # 0x77
	.word	4294806697              # 0xfffd8ca9
	.word	120                     # 0x78
	.word	4294435525              # 0xfff7e2c5
	.word	121                     # 0x79
	.word	370030                  # 0x5a56e
	.word	122                     # 0x7a
	.word	320322                  # 0x4e342
	.word	123                     # 0x7b
	.word	4294947387              # 0xffffb23b
	.word	124                     # 0x7c
	.word	4294586854              # 0xfffa31e6
	.word	125                     # 0x7d
	.word	4294428857              # 0xfff7c8b9
	.word	126                     # 0x7e
	.word	552231                  # 0x86d27
	.word	127                     # 0x7f
	.word	4294694672              # 0xfffbd710
	.word	128                     # 0x80
	.word	4294761745              # 0xfffcdd11
	.word	129                     # 0x81
	.word	822320                  # 0xc8c30
	.word	130                     # 0x82
	.word	4294292361              # 0xfff5b389
	.word	131                     # 0x83
	.word	4294641568              # 0xfffb07a0
	.word	132                     # 0x84
	.word	4294736357              # 0xfffc79e5
	.word	133                     # 0x85
	.word	366147                  # 0x59643
	.word	134                     # 0x86
	.word	4294368478              # 0xfff6dcde
	.word	135                     # 0x87
	.word	85041                   # 0x14c31
	.word	136                     # 0x88
	.word	4294751579              # 0xfffcb55b
	.word	137                     # 0x89
	.word	782491                  # 0xbf09b
	.word	138                     # 0x8a
	.word	4294841176              # 0xfffe1358
	.word	139                     # 0x8b
	.word	112679                  # 0x1b827
	.word	140                     # 0x8c
	.word	361825                  # 0x58561
	.word	141                     # 0x8d
	.word	117684                  # 0x1cbb4
	.word	142                     # 0x8e
	.word	4294421450              # 0xfff7abca
	.word	143                     # 0x8f
	.word	4294117296              # 0xfff307b0
	.word	144                     # 0x90
	.word	4294851053              # 0xfffe39ed
	.word	145                     # 0x91
	.word	500357                  # 0x7a285
	.word	146                     # 0x92
	.word	793015                  # 0xc19b7
	.word	147                     # 0x93
	.word	4294269840              # 0xfff55b90
	.word	148                     # 0x94
	.word	143280                  # 0x22fb0
	.word	149                     # 0x95
	.word	4294499556              # 0xfff8dce4
	.word	150                     # 0x96
	.word	113886                  # 0x1bcde
	.word	151                     # 0x97
	.word	782025                  # 0xbeec9
	.word	152                     # 0x98
	.word	307844                  # 0x4b284
	.word	153                     # 0x99
	.word	112214                  # 0x1b656
	.word	154                     # 0x9a
	.word	4294177020              # 0xfff3f0fc
	.word	155                     # 0x9b
	.word	164914                  # 0x28432
	.word	156                     # 0x9c
	.word	421452                  # 0x66e4c
	.word	157                     # 0x9d
	.word	4294645063              # 0xfffb1547
	.word	158                     # 0x9e
	.word	4294543343              # 0xfff987ef
	.word	159                     # 0x9f
	.word	301485                  # 0x499ad
	.word	160                     # 0xa0
	.word	4294713493              # 0xfffc2095
	.word	161                     # 0xa1
	.word	80815                   # 0x13baf
	.word	162                     # 0xa2
	.word	4294507939              # 0xfff8fda3
	.word	163                     # 0xa3
	.word	4294247077              # 0xfff502a5
	.word	164                     # 0xa4
	.word	86480                   # 0x151d0
	.word	165                     # 0xa5
	.word	615417                  # 0x963f9
	.word	166                     # 0xa6
	.word	4294369807              # 0xfff6e20f
	.word	167                     # 0xa7
	.word	4294670749              # 0xfffb799d
	.word	168                     # 0xa8
	.word	375855                  # 0x5bc2f
	.word	169                     # 0xa9
	.word	4294720417              # 0xfffc3ba1
	.word	170                     # 0xaa
	.word	4294604326              # 0xfffa7626
	.word	171                     # 0xab
	.word	4294207256              # 0xfff46718
	.word	72                      # 0x48
	.word	390792                  # 0x5f688
	.word	173                     # 0xad
	.word	4294385235              # 0xfff71e53
	.word	174                     # 0xae
	.word	4294656262              # 0xfffb4106
	.word	175                     # 0xaf
	.word	1017471                 # 0xf867f
	.word	176                     # 0xb0
	.word	4294930328              # 0xffff6f98
	.word	177                     # 0xb1
	.word	85635                   # 0x14e83
	.word	178                     # 0xb2
	.word	261005                  # 0x3fb8d
	.word	179                     # 0xb3
	.word	4294530743              # 0xfff956b7
	.word	180                     # 0xb4
	.word	690672                  # 0xa89f0
	.word	181                     # 0xb5
	.word	608346                  # 0x9485a
	.word	182                     # 0xb6
	.word	260453                  # 0x3f965
	.word	183                     # 0xb7
	.word	4294748865              # 0xfffcaac1
	.word	184                     # 0xb8
	.word	4294361837              # 0xfff6c2ed
	.word	185                     # 0xb9
	.word	686553                  # 0xa79d9
	.word	186                     # 0xba
	.word	4294799304              # 0xfffd6fc8
	.word	187                     # 0xbb
	.word	4294168412              # 0xfff3cf5c
	.word	188                     # 0xbc
	.word	514964                  # 0x7db94
	.word	189                     # 0xbd
	.word	119504                  # 0x1d2d0
	.word	190                     # 0xbe
	.word	4294822722              # 0xfffdcb42
	.word	191                     # 0xbf
	.word	4294233735              # 0xfff4ce87
	.word	92                      # 0x5c
	.word	4294311833              # 0xfff5ff99
	.word	193                     # 0xc1
	.word	738753                  # 0xb45c1
	.word	194                     # 0xc2
	.word	4294638230              # 0xfffafa96
	.word	195                     # 0xc3
	.word	458199                  # 0x6fdd7
	.word	196                     # 0xc4
	.word	864745                  # 0xd31e9
	.word	197                     # 0xc5
	.word	118910                  # 0x1d07e
	.word	198                     # 0xc6
	.word	441277                  # 0x6bbbd
	.word	199                     # 0xc7
	.word	4294237847              # 0xfff4de97
	.word	200                     # 0xc8
	.word	40402                   # 0x9dd2
	.word	201                     # 0xc9
	.word	4294091545              # 0xfff2a319
	.word	202                     # 0xca
	.word	4293991227              # 0xfff11b3b
	.word	203                     # 0xcb
	.word	4294933907              # 0xffff7d93
	.word	204                     # 0xcc
	.word	728892                  # 0xb1f3c
	.word	205                     # 0xcd
	.word	4294953699              # 0xffffcae3
	.word	206                     # 0xce
	.word	4294312013              # 0xfff6004d
	.word	207                     # 0xcf
	.word	208387                  # 0x32e03
	.word	208                     # 0xd0
	.word	247263                  # 0x3c5df
	.word	209                     # 0xd1
	.word	552173                  # 0x86ced
	.word	210                     # 0xd2
	.word	4294570670              # 0xfff9f2ae
	.word	211                     # 0xd3
	.word	4294601430              # 0xfffa6ad6
	.word	212                     # 0xd4
	.word	22679                   # 0x5897
	.word	213                     # 0xd5
	.word	599562                  # 0x9260a
	.word	214                     # 0xd6
	.word	258658                  # 0x3f262
	.word	215                     # 0xd7
	.word	331702                  # 0x50fb6
	.word	216                     # 0xd8
	.word	646517                  # 0x9dd75
	.word	217                     # 0xd9
	.word	270585                  # 0x420f9
	.word	218                     # 0xda
	.word	4294869323              # 0xfffe814b
	.word	219                     # 0xdb
	.word	4294806697              # 0xfffd8ca9
	.word	220                     # 0xdc
	.word	4294435525              # 0xfff7e2c5
	.word	221                     # 0xdd
	.word	370030                  # 0x5a56e
	.word	222                     # 0xde
	.word	320322                  # 0x4e342
	.word	223                     # 0xdf
	.word	4294947387              # 0xffffb23b
	.word	224                     # 0xe0
	.word	4294586854              # 0xfffa31e6
	.word	225                     # 0xe1
	.word	4294428857              # 0xfff7c8b9
	.word	226                     # 0xe2
	.word	552231                  # 0x86d27
	.word	227                     # 0xe3
	.word	4294694672              # 0xfffbd710
	.word	228                     # 0xe4
	.word	4294761745              # 0xfffcdd11
	.word	229                     # 0xe5
	.word	822320                  # 0xc8c30
	.word	230                     # 0xe6
	.word	4294292361              # 0xfff5b389
	.word	31                      # 0x1f
	.word	4294641568              # 0xfffb07a0
	.word	232                     # 0xe8
	.word	4294736357              # 0xfffc79e5
	.word	233                     # 0xe9
	.word	366147                  # 0x59643
	.word	234                     # 0xea
	.word	4294368478              # 0xfff6dcde
	.word	235                     # 0xeb
	.word	85041                   # 0x14c31
	.word	236                     # 0xec
	.word	4294751579              # 0xfffcb55b
	.word	237                     # 0xed
	.word	782491                  # 0xbf09b
	.word	238                     # 0xee
	.word	4294841176              # 0xfffe1358
	.word	239                     # 0xef
	.word	112679                  # 0x1b827
	.word	240                     # 0xf0
	.word	361825                  # 0x58561
	.word	241                     # 0xf1
	.word	117684                  # 0x1cbb4
	.word	242                     # 0xf2
	.word	4294421450              # 0xfff7abca
	.word	243                     # 0xf3
	.word	4294117296              # 0xfff307b0
	.word	244                     # 0xf4
	.word	4294851053              # 0xfffe39ed
	.word	245                     # 0xf5
	.word	500357                  # 0x7a285
	.word	246                     # 0xf6
	.word	793015                  # 0xc19b7
	.word	247                     # 0xf7
	.word	4294269840              # 0xfff55b90
	.word	248                     # 0xf8
	.word	143280                  # 0x22fb0
	.word	249                     # 0xf9
	.word	4294499556              # 0xfff8dce4
	.word	250                     # 0xfa
	.word	113886                  # 0x1bcde
	.word	251                     # 0xfb
	.word	782025                  # 0xbeec9
	.word	252                     # 0xfc
	.word	307844                  # 0x4b284
	.word	253                     # 0xfd
	.word	112214                  # 0x1b656
	.word	254                     # 0xfe
	.word	4294177020              # 0xfff3f0fc
	.word	255                     # 0xff
	.word	164914                  # 0x28432
	.word	256                     # 0x100
	.word	421452                  # 0x66e4c
	.word	257                     # 0x101
	.word	4294645063              # 0xfffb1547
	.word	258                     # 0x102
	.word	4294543343              # 0xfff987ef
	.word	259                     # 0x103
	.word	301485                  # 0x499ad
	.word	260                     # 0x104
	.word	4294713493              # 0xfffc2095
	.word	261                     # 0x105
	.word	80815                   # 0x13baf
	.word	262                     # 0x106
	.word	4294507939              # 0xfff8fda3
	.word	263                     # 0x107
	.word	4294247077              # 0xfff502a5
	.word	264                     # 0x108
	.word	86480                   # 0x151d0
	.word	265                     # 0x109
	.word	615417                  # 0x963f9
	.word	266                     # 0x10a
	.word	4294369807              # 0xfff6e20f
	.word	267                     # 0x10b
	.word	4294670749              # 0xfffb799d
	.word	268                     # 0x10c
	.word	375855                  # 0x5bc2f
	.word	269                     # 0x10d
	.word	4294720417              # 0xfffc3ba1
	.word	270                     # 0x10e
	.word	4294604326              # 0xfffa7626
	.word	271                     # 0x10f
	.word	4294207256              # 0xfff46718
	.word	272                     # 0x110
	.word	390792                  # 0x5f688
	.word	273                     # 0x111
	.word	4294385235              # 0xfff71e53
	.word	274                     # 0x112
	.word	4294656262              # 0xfffb4106
	.word	275                     # 0x113
	.word	1017471                 # 0xf867f
	.word	276                     # 0x114
	.word	4294930328              # 0xffff6f98
	.word	277                     # 0x115
	.word	85635                   # 0x14e83
	.word	278                     # 0x116
	.word	261005                  # 0x3fb8d
	.word	279                     # 0x117
	.word	4294530743              # 0xfff956b7
	.word	280                     # 0x118
	.word	690672                  # 0xa89f0
	.word	281                     # 0x119
	.word	608346                  # 0x9485a
	.word	282                     # 0x11a
	.word	260453                  # 0x3f965
	.word	283                     # 0x11b
	.word	4294748865              # 0xfffcaac1
	.word	284                     # 0x11c
	.word	4294361837              # 0xfff6c2ed
	.word	285                     # 0x11d
	.word	686553                  # 0xa79d9
	.word	286                     # 0x11e
	.word	4294799304              # 0xfffd6fc8
	.word	287                     # 0x11f
	.word	4294168412              # 0xfff3cf5c
	.word	288                     # 0x120
	.word	514964                  # 0x7db94
	.word	289                     # 0x121
	.word	119504                  # 0x1d2d0
	.word	290                     # 0x122
	.word	4294822722              # 0xfffdcb42
	.word	291                     # 0x123
	.word	4294233735              # 0xfff4ce87
	.word	292                     # 0x124
	.word	4294311833              # 0xfff5ff99
	.word	293                     # 0x125
	.word	738753                  # 0xb45c1
	.word	294                     # 0x126
	.word	4294638230              # 0xfffafa96
	.word	295                     # 0x127
	.word	458199                  # 0x6fdd7
	.word	296                     # 0x128
	.word	864745                  # 0xd31e9
	.word	297                     # 0x129
	.word	118910                  # 0x1d07e
	.word	298                     # 0x12a
	.word	441277                  # 0x6bbbd
	.word	299                     # 0x12b
	.word	4294237847              # 0xfff4de97
	.word	300                     # 0x12c
	.word	40402                   # 0x9dd2
	.word	301                     # 0x12d
	.word	4294091545              # 0xfff2a319
	.word	302                     # 0x12e
	.word	4293991227              # 0xfff11b3b
	.word	303                     # 0x12f
	.word	4294933907              # 0xffff7d93
	.word	304                     # 0x130
	.word	728892                  # 0xb1f3c
	.word	305                     # 0x131
	.word	4294953699              # 0xffffcae3
	.word	306                     # 0x132
	.word	4294312013              # 0xfff6004d
	.word	307                     # 0x133
	.word	208387                  # 0x32e03
	.word	308                     # 0x134
	.word	247263                  # 0x3c5df
	.word	309                     # 0x135
	.word	552173                  # 0x86ced
	.word	310                     # 0x136
	.word	4294570670              # 0xfff9f2ae
	.word	311                     # 0x137
	.word	4294601430              # 0xfffa6ad6
	.word	312                     # 0x138
	.word	22679                   # 0x5897
	.word	313                     # 0x139
	.word	599562                  # 0x9260a
	.word	314                     # 0x13a
	.word	258658                  # 0x3f262
	.word	315                     # 0x13b
	.word	331702                  # 0x50fb6
	.word	316                     # 0x13c
	.word	646517                  # 0x9dd75
	.word	317                     # 0x13d
	.word	270585                  # 0x420f9
	.word	318                     # 0x13e
	.word	4294869323              # 0xfffe814b
	.word	319                     # 0x13f
	.word	4294806697              # 0xfffd8ca9
	.word	320                     # 0x140
	.word	4294435525              # 0xfff7e2c5
	.word	321                     # 0x141
	.word	370030                  # 0x5a56e
	.word	322                     # 0x142
	.word	320322                  # 0x4e342
	.word	323                     # 0x143
	.word	4294947387              # 0xffffb23b
	.word	324                     # 0x144
	.word	4294586854              # 0xfffa31e6
	.word	325                     # 0x145
	.word	4294428857              # 0xfff7c8b9
	.word	326                     # 0x146
	.word	552231                  # 0x86d27
	.word	327                     # 0x147
	.word	4294694672              # 0xfffbd710
	.word	328                     # 0x148
	.word	4294761745              # 0xfffcdd11
	.word	329                     # 0x149
	.word	822320                  # 0xc8c30
	.word	330                     # 0x14a
	.word	4294292361              # 0xfff5b389
	.word	331                     # 0x14b
	.word	4294641568              # 0xfffb07a0
	.word	332                     # 0x14c
	.word	4294736357              # 0xfffc79e5
	.word	333                     # 0x14d
	.word	366147                  # 0x59643
	.word	334                     # 0x14e
	.word	4294368478              # 0xfff6dcde
	.word	335                     # 0x14f
	.word	85041                   # 0x14c31
	.word	336                     # 0x150
	.word	4294751579              # 0xfffcb55b
	.word	337                     # 0x151
	.word	782491                  # 0xbf09b
	.word	338                     # 0x152
	.word	4294841176              # 0xfffe1358
	.word	339                     # 0x153
	.word	112679                  # 0x1b827
	.word	340                     # 0x154
	.word	361825                  # 0x58561
	.word	341                     # 0x155
	.word	117684                  # 0x1cbb4
	.word	342                     # 0x156
	.word	4294421450              # 0xfff7abca
	.word	343                     # 0x157
	.word	4294117296              # 0xfff307b0
	.word	344                     # 0x158
	.word	4294851053              # 0xfffe39ed
	.word	345                     # 0x159
	.word	500357                  # 0x7a285
	.word	346                     # 0x15a
	.word	793015                  # 0xc19b7
	.word	347                     # 0x15b
	.word	4294269840              # 0xfff55b90
	.word	348                     # 0x15c
	.word	143280                  # 0x22fb0
	.word	349                     # 0x15d
	.word	4294499556              # 0xfff8dce4
	.word	350                     # 0x15e
	.word	113886                  # 0x1bcde
	.word	351                     # 0x15f
	.word	782025                  # 0xbeec9
	.word	352                     # 0x160
	.word	307844                  # 0x4b284
	.word	353                     # 0x161
	.word	112214                  # 0x1b656
	.word	354                     # 0x162
	.word	4294177020              # 0xfff3f0fc
	.word	355                     # 0x163
	.word	164914                  # 0x28432
	.word	356                     # 0x164
	.word	421452                  # 0x66e4c
	.word	357                     # 0x165
	.word	4294645063              # 0xfffb1547
	.word	358                     # 0x166
	.word	4294543343              # 0xfff987ef
	.word	359                     # 0x167
	.word	301485                  # 0x499ad
	.word	360                     # 0x168
	.word	4294713493              # 0xfffc2095
	.word	361                     # 0x169
	.word	80815                   # 0x13baf
	.word	362                     # 0x16a
	.word	4294507939              # 0xfff8fda3
	.word	363                     # 0x16b
	.word	4294247077              # 0xfff502a5
	.word	364                     # 0x16c
	.word	86480                   # 0x151d0
	.word	365                     # 0x16d
	.word	615417                  # 0x963f9
	.word	366                     # 0x16e
	.word	4294369807              # 0xfff6e20f
	.word	367                     # 0x16f
	.word	4294670749              # 0xfffb799d
	.word	368                     # 0x170
	.word	375855                  # 0x5bc2f
	.word	369                     # 0x171
	.word	4294720417              # 0xfffc3ba1
	.word	370                     # 0x172
	.word	4294604326              # 0xfffa7626
	.word	371                     # 0x173
	.word	4294207256              # 0xfff46718
	.word	372                     # 0x174
	.word	390792                  # 0x5f688
	.word	373                     # 0x175
	.word	4294385235              # 0xfff71e53
	.word	374                     # 0x176
	.word	4294656262              # 0xfffb4106
	.word	375                     # 0x177
	.word	1017471                 # 0xf867f
	.word	376                     # 0x178
	.word	4294930328              # 0xffff6f98
	.word	377                     # 0x179
	.word	85635                   # 0x14e83
	.word	378                     # 0x17a
	.word	261005                  # 0x3fb8d
	.word	379                     # 0x17b
	.word	4294530743              # 0xfff956b7
	.word	380                     # 0x17c
	.word	690672                  # 0xa89f0
	.word	381                     # 0x17d
	.word	608346                  # 0x9485a
	.word	382                     # 0x17e
	.word	260453                  # 0x3f965
	.word	383                     # 0x17f
	.word	4294748865              # 0xfffcaac1
	.word	384                     # 0x180
	.word	4294361837              # 0xfff6c2ed
	.word	385                     # 0x181
	.word	686553                  # 0xa79d9
	.word	386                     # 0x182
	.word	4294799304              # 0xfffd6fc8
	.word	387                     # 0x183
	.word	4294168412              # 0xfff3cf5c
	.word	388                     # 0x184
	.word	514964                  # 0x7db94
	.word	389                     # 0x185
	.word	119504                  # 0x1d2d0
	.word	390                     # 0x186
	.word	4294822722              # 0xfffdcb42
	.word	391                     # 0x187
	.word	4294233735              # 0xfff4ce87
	.word	392                     # 0x188
	.word	4294311833              # 0xfff5ff99
	.word	393                     # 0x189
	.word	738753                  # 0xb45c1
	.word	394                     # 0x18a
	.word	4294638230              # 0xfffafa96
	.word	395                     # 0x18b
	.word	458199                  # 0x6fdd7
	.word	396                     # 0x18c
	.word	864745                  # 0xd31e9
	.word	397                     # 0x18d
	.word	118910                  # 0x1d07e
	.word	398                     # 0x18e
	.word	441277                  # 0x6bbbd
	.word	399                     # 0x18f
	.word	4294237847              # 0xfff4de97
	.word	400                     # 0x190
	.word	40402                   # 0x9dd2
	.word	401                     # 0x191
	.word	4294091545              # 0xfff2a319
	.word	402                     # 0x192
	.word	4293991227              # 0xfff11b3b
	.word	403                     # 0x193
	.word	4294933907              # 0xffff7d93
	.word	404                     # 0x194
	.word	728892                  # 0xb1f3c
	.word	405                     # 0x195
	.word	4294953699              # 0xffffcae3
	.word	406                     # 0x196
	.word	4294312013              # 0xfff6004d
	.word	407                     # 0x197
	.word	208387                  # 0x32e03
	.word	408                     # 0x198
	.word	247263                  # 0x3c5df
	.word	409                     # 0x199
	.word	552173                  # 0x86ced
	.word	410                     # 0x19a
	.word	4294570670              # 0xfff9f2ae
	.word	411                     # 0x19b
	.word	4294601430              # 0xfffa6ad6
	.word	412                     # 0x19c
	.word	22679                   # 0x5897
	.word	413                     # 0x19d
	.word	599562                  # 0x9260a
	.word	414                     # 0x19e
	.word	258658                  # 0x3f262
	.word	415                     # 0x19f
	.word	331702                  # 0x50fb6
	.word	416                     # 0x1a0
	.word	646517                  # 0x9dd75
	.word	417                     # 0x1a1
	.word	270585                  # 0x420f9
	.word	418                     # 0x1a2
	.word	4294869323              # 0xfffe814b
	.word	419                     # 0x1a3
	.word	4294806697              # 0xfffd8ca9
	.word	420                     # 0x1a4
	.word	4294435525              # 0xfff7e2c5
	.word	421                     # 0x1a5
	.word	370030                  # 0x5a56e
	.word	422                     # 0x1a6
	.word	320322                  # 0x4e342
	.word	423                     # 0x1a7
	.word	4294947387              # 0xffffb23b
	.word	424                     # 0x1a8
	.word	4294586854              # 0xfffa31e6
	.word	425                     # 0x1a9
	.word	4294428857              # 0xfff7c8b9
	.word	426                     # 0x1aa
	.word	552231                  # 0x86d27
	.word	427                     # 0x1ab
	.word	4294694672              # 0xfffbd710
	.word	428                     # 0x1ac
	.word	4294761745              # 0xfffcdd11
	.word	429                     # 0x1ad
	.word	822320                  # 0xc8c30
	.word	430                     # 0x1ae
	.word	4294292361              # 0xfff5b389
	.word	431                     # 0x1af
	.word	4294641568              # 0xfffb07a0
	.word	432                     # 0x1b0
	.word	4294736357              # 0xfffc79e5
	.word	433                     # 0x1b1
	.word	366147                  # 0x59643
	.word	434                     # 0x1b2
	.word	4294368478              # 0xfff6dcde
	.word	435                     # 0x1b3
	.word	85041                   # 0x14c31
	.word	436                     # 0x1b4
	.word	4294751579              # 0xfffcb55b
	.word	437                     # 0x1b5
	.word	782491                  # 0xbf09b
	.word	438                     # 0x1b6
	.word	4294841176              # 0xfffe1358
	.word	439                     # 0x1b7
	.word	112679                  # 0x1b827
	.word	440                     # 0x1b8
	.word	361825                  # 0x58561
	.word	441                     # 0x1b9
	.word	117684                  # 0x1cbb4
	.word	442                     # 0x1ba
	.word	4294421450              # 0xfff7abca
	.word	443                     # 0x1bb
	.word	4294117296              # 0xfff307b0
	.word	444                     # 0x1bc
	.word	4294851053              # 0xfffe39ed
	.word	445                     # 0x1bd
	.word	500357                  # 0x7a285
	.word	446                     # 0x1be
	.word	793015                  # 0xc19b7
	.word	447                     # 0x1bf
	.word	4294269840              # 0xfff55b90
	.word	448                     # 0x1c0
	.word	143280                  # 0x22fb0
	.word	449                     # 0x1c1
	.word	4294499556              # 0xfff8dce4
	.word	540                     # 0x21c
	.word	113886                  # 0x1bcde
	.word	451                     # 0x1c3
	.word	782025                  # 0xbeec9
	.word	452                     # 0x1c4
	.word	307844                  # 0x4b284
	.word	453                     # 0x1c5
	.word	112214                  # 0x1b656
	.word	454                     # 0x1c6
	.word	4294177020              # 0xfff3f0fc
	.word	455                     # 0x1c7
	.word	164914                  # 0x28432
	.word	456                     # 0x1c8
	.word	421452                  # 0x66e4c
	.word	457                     # 0x1c9
	.word	4294645063              # 0xfffb1547
	.word	458                     # 0x1ca
	.word	4294543343              # 0xfff987ef
	.word	459                     # 0x1cb
	.word	301485                  # 0x499ad
	.word	460                     # 0x1cc
	.word	4294713493              # 0xfffc2095
	.word	461                     # 0x1cd
	.word	80815                   # 0x13baf
	.word	462                     # 0x1ce
	.word	4294507939              # 0xfff8fda3
	.word	463                     # 0x1cf
	.word	4294247077              # 0xfff502a5
	.word	464                     # 0x1d0
	.word	86480                   # 0x151d0
	.word	465                     # 0x1d1
	.word	615417                  # 0x963f9
	.word	466                     # 0x1d2
	.word	4294369807              # 0xfff6e20f
	.word	467                     # 0x1d3
	.word	4294670749              # 0xfffb799d
	.word	468                     # 0x1d4
	.word	375855                  # 0x5bc2f
	.word	469                     # 0x1d5
	.word	4294720417              # 0xfffc3ba1
	.word	470                     # 0x1d6
	.word	4294604326              # 0xfffa7626
	.word	471                     # 0x1d7
	.word	4294207256              # 0xfff46718
	.word	472                     # 0x1d8
	.word	390792                  # 0x5f688
	.word	473                     # 0x1d9
	.word	4294385235              # 0xfff71e53
	.word	474                     # 0x1da
	.word	4294656262              # 0xfffb4106
	.word	475                     # 0x1db
	.word	1017471                 # 0xf867f
	.word	476                     # 0x1dc
	.word	4294930328              # 0xffff6f98
	.word	477                     # 0x1dd
	.word	85635                   # 0x14e83
	.word	478                     # 0x1de
	.word	261005                  # 0x3fb8d
	.word	479                     # 0x1df
	.word	4294530743              # 0xfff956b7
	.word	480                     # 0x1e0
	.word	690672                  # 0xa89f0
	.word	481                     # 0x1e1
	.word	608346                  # 0x9485a
	.word	482                     # 0x1e2
	.word	260453                  # 0x3f965
	.word	483                     # 0x1e3
	.word	4294748865              # 0xfffcaac1
	.word	484                     # 0x1e4
	.word	4294361837              # 0xfff6c2ed
	.word	485                     # 0x1e5
	.word	686553                  # 0xa79d9
	.word	486                     # 0x1e6
	.word	4294799304              # 0xfffd6fc8
	.word	487                     # 0x1e7
	.word	4294168412              # 0xfff3cf5c
	.word	488                     # 0x1e8
	.word	514964                  # 0x7db94
	.word	489                     # 0x1e9
	.word	119504                  # 0x1d2d0
	.word	490                     # 0x1ea
	.word	4294822722              # 0xfffdcb42
	.word	491                     # 0x1eb
	.word	4294233735              # 0xfff4ce87
	.word	492                     # 0x1ec
	.word	4294311833              # 0xfff5ff99
	.word	493                     # 0x1ed
	.word	738753                  # 0xb45c1
	.word	494                     # 0x1ee
	.word	4294638230              # 0xfffafa96
	.word	495                     # 0x1ef
	.word	458199                  # 0x6fdd7
	.word	496                     # 0x1f0
	.word	864745                  # 0xd31e9
	.word	497                     # 0x1f1
	.word	118910                  # 0x1d07e
	.word	498                     # 0x1f2
	.word	441277                  # 0x6bbbd
	.word	499                     # 0x1f3
	.word	4294237847              # 0xfff4de97
	.word	500                     # 0x1f4
	.word	40402                   # 0x9dd2
	.size	.Lmain.data, 4000

	.type	.Lmain.keys,@object     # @main.keys
	.p2align	4
.Lmain.keys:
	.word	319                     # 0x13f
	.word	500                     # 0x1f4
	.word	37                      # 0x25
	.word	475                     # 0x1db
	.word	431                     # 0x1af
	.word	495                     # 0x1ef
	.word	208                     # 0xd0
	.word	408                     # 0x198
	.word	414                     # 0x19e
	.word	100                     # 0x64
	.word	143                     # 0x8f
	.word	253                     # 0xfd
	.word	221                     # 0xdd
	.word	26                      # 0x1a
	.word	350                     # 0x15e
	.word	320                     # 0x140
	.word	57                      # 0x39
	.word	122                     # 0x7a
	.word	317                     # 0x13d
	.word	483                     # 0x1e3
	.word	14                      # 0xe
	.word	63                      # 0x3f
	.word	199                     # 0xc7
	.word	232                     # 0xe8
	.word	150                     # 0x96
	.word	482                     # 0x1e2
	.word	50                      # 0x32
	.word	46                      # 0x2e
	.word	248                     # 0xf8
	.word	368                     # 0x170
	.word	477                     # 0x1dd
	.word	403                     # 0x193
	.word	101                     # 0x65
	.word	32                      # 0x20
	.word	485                     # 0x1e5
	.word	95                      # 0x5f
	.word	396                     # 0x18c
	.word	298                     # 0x12a
	.word	235                     # 0xeb
	.word	144                     # 0x90
	.word	272                     # 0x110
	.word	231                     # 0xe7
	.word	240                     # 0xf0
	.word	412                     # 0x19c
	.word	66                      # 0x42
	.word	126                     # 0x7e
	.word	429                     # 0x1ad
	.word	323                     # 0x143
	.word	471                     # 0x1d7
	.word	38                      # 0x26
	.word	74                      # 0x4a
	.word	40                      # 0x28
	.word	187                     # 0xbb
	.word	102                     # 0x66
	.word	171                     # 0xab
	.word	188                     # 0xbc
	.word	259                     # 0x103
	.word	181                     # 0xb5
	.word	313                     # 0x139
	.word	246                     # 0xf6
	.word	490                     # 0x1ea
	.word	277                     # 0x115
	.word	178                     # 0xb2
	.word	250                     # 0xfa
	.word	434                     # 0x1b2
	.word	382                     # 0x17e
	.word	43                      # 0x2b
	.word	352                     # 0x160
	.word	398                     # 0x18e
	.word	182                     # 0xb6
	.word	77                      # 0x4d
	.word	410                     # 0x19a
	.word	141                     # 0x8d
	.word	459                     # 0x1cb
	.word	121                     # 0x79
	.word	428                     # 0x1ac
	.word	207                     # 0xcf
	.word	284                     # 0x11c
	.word	11                      # 0xb
	.word	452                     # 0x1c4
	.word	33                      # 0x21
	.word	464                     # 0x1d0
	.word	371                     # 0x173
	.word	389                     # 0x185
	.word	358                     # 0x166
	.word	190                     # 0xbe
	.word	149                     # 0x95
	.word	295                     # 0x127
	.word	2                       # 0x2
	.word	213                     # 0xd5
	.word	51                      # 0x33
	.word	266                     # 0x10a
	.word	418                     # 0x1a2
	.word	214                     # 0xd6
	.word	131                     # 0x83
	.word	234                     # 0xea
	.word	328                     # 0x148
	.word	71                      # 0x47
	.word	117                     # 0x75
	.word	21                      # 0x15
	.word	176                     # 0xb0
	.word	18                      # 0x12
	.word	329                     # 0x149
	.word	159                     # 0x9f
	.word	297                     # 0x129
	.word	97                      # 0x61
	.word	200                     # 0xc8
	.word	383                     # 0x17f
	.word	84                      # 0x54
	.word	438                     # 0x1b6
	.word	351                     # 0x15f
	.word	466                     # 0x1d2
	.word	487                     # 0x1e7
	.word	42                      # 0x2a
	.word	91                      # 0x5b
	.word	430                     # 0x1ae
	.word	241                     # 0xf1
	.word	388                     # 0x184
	.word	180                     # 0xb4
	.word	244                     # 0xf4
	.word	105                     # 0x69
	.word	120                     # 0x78
	.word	56                      # 0x38
	.word	183                     # 0xb7
	.word	177                     # 0xb1
	.word	375                     # 0x177
	.word	264                     # 0x108
	.word	83                      # 0x53
	.word	302                     # 0x12e
	.word	155                     # 0x9b
	.word	432                     # 0x1b0
	.word	99                      # 0x63
	.word	488                     # 0x1e8
	.word	304                     # 0x130
	.word	194                     # 0xc2
	.word	115                     # 0x73
	.word	334                     # 0x14e
	.word	85                      # 0x55
	.word	62                      # 0x3e
	.word	392                     # 0x188
	.word	52                      # 0x34
	.word	421                     # 0x1a5
	.word	367                     # 0x16f
	.word	308                     # 0x134
	.word	78                      # 0x4e
	.word	271                     # 0x10f
	.word	385                     # 0x181
	.word	273                     # 0x111
	.word	489                     # 0x1e9
	.word	325                     # 0x145
	.word	472                     # 0x1d8
	.word	158                     # 0x9e
	.word	444                     # 0x1bc
	.word	48                      # 0x30
	.word	61                      # 0x3d
	.word	133                     # 0x85
	.word	473                     # 0x1d9
	.word	252                     # 0xfc
	.word	404                     # 0x194
	.word	256                     # 0x100
	.word	294                     # 0x126
	.word	230                     # 0xe6
	.word	285                     # 0x11d
	.word	175                     # 0xaf
	.word	67                      # 0x43
	.word	139                     # 0x8b
	.word	423                     # 0x1a7
	.word	154                     # 0x9a
	.word	92                      # 0x5c
	.word	65                      # 0x41
	.word	493                     # 0x1ed
	.word	481                     # 0x1e1
	.word	247                     # 0xf7
	.word	53                      # 0x35
	.word	20                      # 0x14
	.word	457                     # 0x1c9
	.word	209                     # 0xd1
	.word	293                     # 0x125
	.word	411                     # 0x19b
	.word	218                     # 0xda
	.word	311                     # 0x137
	.word	465                     # 0x1d1
	.word	274                     # 0x112
	.word	276                     # 0x114
	.word	455                     # 0x1c7
	.word	189                     # 0xbd
	.word	204                     # 0xcc
	.word	395                     # 0x18b
	.word	72                      # 0x48
	.word	10                      # 0xa
	.word	419                     # 0x1a3
	.word	24                      # 0x18
	.word	161                     # 0xa1
	.word	289                     # 0x121
	.word	87                      # 0x57
	.word	7                       # 0x7
	.word	331                     # 0x14b
	.word	94                      # 0x5e
	.word	442                     # 0x1ba
	.word	163                     # 0xa3
	.word	5                       # 0x5
	.word	318                     # 0x13e
	.word	34                      # 0x22
	.word	123                     # 0x7b
	.word	164                     # 0xa4
	.word	173                     # 0xad
	.word	142                     # 0x8e
	.word	433                     # 0x1b1
	.word	88                      # 0x58
	.word	127                     # 0x7f
	.word	215                     # 0xd7
	.word	90                      # 0x5a
	.word	174                     # 0xae
	.word	165                     # 0xa5
	.word	17                      # 0x11
	.word	192                     # 0xc0
	.word	405                     # 0x195
	.word	96                      # 0x60
	.word	359                     # 0x167
	.word	390                     # 0x186
	.word	118                     # 0x76
	.word	6                       # 0x6
	.word	399                     # 0x18f
	.word	315                     # 0x13b
	.word	353                     # 0x161
	.word	251                     # 0xfb
	.word	347                     # 0x15b
	.word	310                     # 0x136
	.word	322                     # 0x142
	.word	23                      # 0x17
	.word	124                     # 0x7c
	.word	153                     # 0x99
	.word	394                     # 0x18a
	.word	287                     # 0x11f
	.word	168                     # 0xa8
	.word	167                     # 0xa7
	.word	81                      # 0x51
	.word	494                     # 0x1ee
	.word	462                     # 0x1ce
	.word	326                     # 0x146
	.word	195                     # 0xc3
	.word	343                     # 0x157
	.word	265                     # 0x109
	.word	223                     # 0xdf
	.word	186                     # 0xba
	.word	446                     # 0x1be
	.word	309                     # 0x135
	.word	427                     # 0x1ab
	.word	496                     # 0x1f0
	.word	198                     # 0xc6
	.word	440                     # 0x1b8
	.word	372                     # 0x174
	.word	299                     # 0x12b
	.word	13                      # 0xd
	.word	461                     # 0x1cd
	.word	129                     # 0x81
	.word	219                     # 0xdb
	.word	362                     # 0x16a
	.word	4                       # 0x4
	.word	470                     # 0x1d6
	.word	211                     # 0xd3
	.word	292                     # 0x124
	.word	112                     # 0x70
	.word	417                     # 0x1a1
	.word	420                     # 0x1a4
	.word	443                     # 0x1bb
	.word	409                     # 0x199
	.word	340                     # 0x154
	.word	379                     # 0x17b
	.word	12                      # 0xc
	.word	400                     # 0x190
	.word	29                      # 0x1d
	.word	332                     # 0x14c
	.word	365                     # 0x16d
	.word	498                     # 0x1f2
	.word	374                     # 0x176
	.word	184                     # 0xb8
	.word	416                     # 0x1a0
	.word	338                     # 0x152
	.word	454                     # 0x1c6
	.word	138                     # 0x8a
	.word	333                     # 0x14d
	.word	137                     # 0x89
	.word	354                     # 0x162
	.word	290                     # 0x122
	.word	134                     # 0x86
	.word	89                      # 0x59
	.word	422                     # 0x1a6
	.word	98                      # 0x62
	.word	220                     # 0xdc
	.word	225                     # 0xe1
	.word	270                     # 0x10e
	.word	499                     # 0x1f3
	.word	342                     # 0x156
	.word	39                      # 0x27
	.word	135                     # 0x87
	.word	31                      # 0x1f
	.word	492                     # 0x1ec
	.word	243                     # 0xf3
	.word	447                     # 0x1bf
	.word	157                     # 0x9d
	.word	478                     # 0x1de
	.word	283                     # 0x11b
	.word	497                     # 0x1f1
	.word	476                     # 0x1dc
	.word	70                      # 0x46
	.word	170                     # 0xaa
	.word	152                     # 0x98
	.word	202                     # 0xca
	.word	449                     # 0x1c1
	.word	479                     # 0x1df
	.word	348                     # 0x15c
	.word	3                       # 0x3
	.word	291                     # 0x123
	.word	300                     # 0x12c
	.word	437                     # 0x1b5
	.word	436                     # 0x1b4
	.word	282                     # 0x11a
	.word	376                     # 0x178
	.word	469                     # 0x1d5
	.word	279                     # 0x117
	.word	467                     # 0x1d3
	.word	255                     # 0xff
	.word	458                     # 0x1ca
	.word	110                     # 0x6e
	.word	402                     # 0x192
	.word	217                     # 0xd9
	.word	401                     # 0x191
	.word	286                     # 0x11e
	.word	108                     # 0x6c
	.word	236                     # 0xec
	.word	86                      # 0x56
	.word	363                     # 0x16b
	.word	222                     # 0xde
	.word	366                     # 0x16e
	.word	324                     # 0x144
	.word	337                     # 0x151
	.word	450                     # 0x1c2
	.word	226                     # 0xe2
	.word	35                      # 0x23
	.word	448                     # 0x1c0
	.word	147                     # 0x93
	.word	254                     # 0xfe
	.word	257                     # 0x101
	.word	132                     # 0x84
	.word	463                     # 0x1cf
	.word	196                     # 0xc4
	.word	381                     # 0x17d
	.word	130                     # 0x82
	.word	425                     # 0x1a9
	.word	193                     # 0xc1
	.word	16                      # 0x10
	.word	407                     # 0x197
	.word	269                     # 0x10d
	.word	179                     # 0xb3
	.word	233                     # 0xe9
	.word	59                      # 0x3b
	.word	191                     # 0xbf
	.word	185                     # 0xb9
	.word	260                     # 0x104
	.word	441                     # 0x1b9
	.word	239                     # 0xef
	.word	356                     # 0x164
	.word	491                     # 0x1eb
	.word	68                      # 0x44
	.word	453                     # 0x1c5
	.word	280                     # 0x118
	.word	113                     # 0x71
	.word	160                     # 0xa0
	.word	364                     # 0x16c
	.word	321                     # 0x141
	.word	229                     # 0xe5
	.word	15                      # 0xf
	.word	145                     # 0x91
	.word	306                     # 0x132
	.word	263                     # 0x107
	.word	357                     # 0x165
	.word	413                     # 0x19d
	.word	484                     # 0x1e4
	.word	268                     # 0x10c
	.word	119                     # 0x77
	.word	369                     # 0x171
	.word	140                     # 0x8c
	.word	378                     # 0x17a
	.word	327                     # 0x147
	.word	242                     # 0xf2
	.word	109                     # 0x6d
	.word	114                     # 0x72
	.word	73                      # 0x49
	.word	227                     # 0xe3
	.word	439                     # 0x1b7
	.word	237                     # 0xed
	.word	47                      # 0x2f
	.word	1                       # 0x1
	.word	262                     # 0x106
	.word	336                     # 0x150
	.word	82                      # 0x52
	.word	344                     # 0x158
	.word	460                     # 0x1cc
	.word	474                     # 0x1da
	.word	125                     # 0x7d
	.word	103                     # 0x67
	.word	169                     # 0xa9
	.word	377                     # 0x179
	.word	349                     # 0x15d
	.word	93                      # 0x5d
	.word	393                     # 0x189
	.word	8                       # 0x8
	.word	212                     # 0xd4
	.word	312                     # 0x138
	.word	201                     # 0xc9
	.word	314                     # 0x13a
	.word	486                     # 0x1e6
	.word	281                     # 0x119
	.word	228                     # 0xe4
	.word	339                     # 0x153
	.word	9                       # 0x9
	.word	116                     # 0x74
	.word	278                     # 0x116
	.word	45                      # 0x2d
	.word	445                     # 0x1bd
	.word	104                     # 0x68
	.word	301                     # 0x12d
	.word	44                      # 0x2c
	.word	275                     # 0x113
	.word	341                     # 0x155
	.word	79                      # 0x4f
	.word	296                     # 0x128
	.word	60                      # 0x3c
	.word	303                     # 0x12f
	.word	267                     # 0x10b
	.word	205                     # 0xcd
	.word	373                     # 0x175
	.word	238                     # 0xee
	.word	346                     # 0x15a
	.word	197                     # 0xc5
	.word	203                     # 0xcb
	.word	424                     # 0x1a8
	.word	249                     # 0xf9
	.word	345                     # 0x159
	.word	58                      # 0x3a
	.word	210                     # 0xd2
	.word	107                     # 0x6b
	.word	435                     # 0x1b3
	.word	166                     # 0xa6
	.word	415                     # 0x19f
	.word	148                     # 0x94
	.word	111                     # 0x6f
	.word	360                     # 0x168
	.word	391                     # 0x187
	.word	41                      # 0x29
	.word	27                      # 0x1b
	.word	55                      # 0x37
	.word	386                     # 0x182
	.word	28                      # 0x1c
	.word	54                      # 0x36
	.word	355                     # 0x163
	.word	206                     # 0xce
	.word	456                     # 0x1c8
	.word	335                     # 0x14f
	.word	19                      # 0x13
	.word	136                     # 0x88
	.word	370                     # 0x172
	.word	384                     # 0x180
	.word	69                      # 0x45
	.word	305                     # 0x131
	.word	330                     # 0x14a
	.word	288                     # 0x120
	.word	106                     # 0x6a
	.word	316                     # 0x13c
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.word	0                       # 0x0
	.size	.Lmain.keys, 2000

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
