	.text
	.file	"app.opt.bc"
	.globl	minDistance             # -- Begin function minDistance
	.p2align	2
	.type	minDistance,@function
minDistance:                            # @minDistance
	.cfi_startproc
# %bb.0:                                # %entry
	mv	a4, zero
	mv	a3, zero
	lui	a2, 524288
	addi	a7, a2, -1
	addi	a5, zero, 100
                                        # implicit-def: $x16
	j	.LBB0_2
.LBB0_1:                                # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	addi	a2, a4, 1
	sltu	a4, a2, a4
	add	a3, a3, a4
	mv	a4, a2
	beq	a2, a5, .LBB0_6
.LBB0_2:                                # %accept_cond
                                        # =>This Inner Loop Header: Depth=1
	andi	a2, a4, 255
	bnez	a2, .LBB0_1
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	add	a2, a1, a4
	lbu	a2, 0(a2)
	andi	a2, a2, 1
	bnez	a2, .LBB0_1
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=1
	slli	a2, a4, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	blt	a7, a2, .LBB0_1
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=1
	mv	a7, a2
	mv	a6, a4
	j	.LBB0_1
.LBB0_6:                                # %for.end
	mv	a0, a6
	ret
.Lfunc_end0:
	.size	minDistance, .Lfunc_end0-minDistance
	.cfi_endproc
                                        # -- End function
	.globl	printSolution           # -- Begin function printSolution
	.p2align	2
	.type	printSolution,@function
printSolution:                          # @printSolution
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
	mv	s2, a0
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	mv	s0, zero
	mv	s1, zero
	mv	s4, zero
	lui	a0, %hi(.L.str1)
	addi	s3, a0, %lo(.L.str1)
	lui	a0, %hi(.LprintSolution.vector_result)
	addi	s5, a0, %lo(.LprintSolution.vector_result)
	addi	s6, zero, 100
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli	s7, s0, 2
	add	s8, s2, s7
	lw	a2, 0(s8)
	mv	a0, s3
	mv	a1, s0
	call	printf
	lw	a0, 0(s8)
	add	a1, s7, s5
	lw	a1, 0(a1)
	xor	a0, a0, a1
	seqz	a0, a0
	add	s4, a0, s4
	addi	a0, s0, 1
	sltu	a1, a0, s0
	add	s1, s1, a1
	mv	s0, a0
	bne	a0, s6, .LBB1_1
# %bb.2:                                # %for.end
	lui	a0, %hi(.L.str2)
	addi	a0, a0, %lo(.L.str2)
	mv	a1, s4
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
.Lfunc_end1:
	.size	printSolution, .Lfunc_end1-printSolution
	.cfi_endproc
                                        # -- End function
	.globl	dijkstra                # -- Begin function dijkstra
	.p2align	2
	.type	dijkstra,@function
dijkstra:                               # @dijkstra
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -576
	.cfi_def_cfa_offset 576
	sw	ra, 572(sp)
	sw	s0, 568(sp)
	sw	s1, 564(sp)
	sw	s2, 560(sp)
	sw	s3, 556(sp)
	sw	s4, 552(sp)
	sw	s5, 548(sp)
	sw	s6, 544(sp)
	sw	s7, 540(sp)
	sw	s8, 536(sp)
	sw	s9, 532(sp)
	sw	s10, 528(sp)
	sw	s11, 524(sp)
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
	mv	s0, a1
	mv	s3, a0
	mv	s7, sp
	addi	a2, zero, 100
	addi	s1, zero, 100
	mv	a0, s7
	mv	a1, zero
	call	memset
	mv	a1, zero
	mv	a0, zero
	addi	s2, sp, 112
	lui	a2, 524288
	addi	a2, a2, -1
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli	a3, a1, 2
	add	a3, s2, a3
	sw	a2, 0(a3)
	addi	a3, a1, 1
	sltu	a1, a3, a1
	add	a0, a0, a1
	mv	a1, a3
	bne	a3, s1, .LBB2_1
# %bb.2:                                # %for.end
	mv	s4, zero
	slli	a0, s0, 2
	add	a0, s2, a0
	sw	zero, 0(a0)
	addi	s5, zero, 1
	lui	a0, 524288
	addi	s6, a0, -1
	addi	s9, zero, 100
	addi	s8, zero, 99
	j	.LBB2_4
.LBB2_3:                                # %for.inc47
                                        #   in Loop: Header=BB2_4 Depth=1
	addi	s4, s4, 1
	beq	s4, s8, .LBB2_11
.LBB2_4:                                # %for.body7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	mv	a0, s2
	mv	a1, s7
	call	minDistance
	mv	s10, a0
	mv	s0, zero
	mv	s1, zero
	add	a0, s7, a0
	sb	s5, 0(a0)
	slli	a0, s10, 2
	add	s11, s2, a0
	j	.LBB2_6
.LBB2_5:                                # %for.inc44
                                        #   in Loop: Header=BB2_6 Depth=2
	addi	a0, s0, 1
	sltu	a1, a0, s0
	add	s1, s1, a1
	mv	s0, a0
	beq	a0, s9, .LBB2_3
.LBB2_6:                                # %for.body13
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, s7, s0
	lbu	a0, 0(a0)
	andi	a0, a0, 1
	bnez	a0, .LBB2_5
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_6 Depth=2
	addi	a1, zero, 400
	mv	a0, s10
	call	__mulsi3
	add	a1, s3, a0
	slli	a0, s0, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	beqz	a1, .LBB2_5
# %bb.8:                                # %land.lhs.true21
                                        #   in Loop: Header=BB2_6 Depth=2
	lw	a2, 0(s11)
	beq	a2, s6, .LBB2_5
# %bb.9:                                # %land.lhs.true25
                                        #   in Loop: Header=BB2_6 Depth=2
	add	a0, s2, a0
	lw	a3, 0(a0)
	add	a1, a2, a1
	bge	a1, a3, .LBB2_5
# %bb.10:                               # %if.then
                                        #   in Loop: Header=BB2_6 Depth=2
	sw	a1, 0(a0)
	j	.LBB2_5
.LBB2_11:                               # %for.end49
	addi	a0, sp, 112
	call	printSolution
	lw	s11, 524(sp)
	lw	s10, 528(sp)
	lw	s9, 532(sp)
	lw	s8, 536(sp)
	lw	s7, 540(sp)
	lw	s6, 544(sp)
	lw	s5, 548(sp)
	lw	s4, 552(sp)
	lw	s3, 556(sp)
	lw	s2, 560(sp)
	lw	s1, 564(sp)
	lw	s0, 568(sp)
	lw	ra, 572(sp)
	addi	sp, sp, 576
	ret
.Lfunc_end2:
	.size	dijkstra, .Lfunc_end2-dijkstra
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
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	lui	a0, 9
	addi	a0, a0, 1136
	sub	sp, sp, a0
	.cfi_def_cfa_offset 40032
	lui	a0, %hi(.Lmain.graph)
	addi	a1, a0, %lo(.Lmain.graph)
	lui	a0, 10
	addi	a2, a0, -960
	addi	s0, sp, 16
	mv	a0, s0
	call	memcpy
	mv	a0, s0
	mv	a1, zero
	call	dijkstra
	mv	a0, zero
	lui	a1, 9
	addi	a1, a1, 1136
	add	sp, sp, a1
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
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
.Lfunc_end4:
	.size	accept_roi_begin, .Lfunc_end4-accept_roi_begin
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
	lui	a0, %hi(.L.str3)
	addi	a0, a0, %lo(.L.str3)
	lui	a1, %hi(.L.str14)
	addi	a1, a1, %lo(.L.str14)
	call	fopen
	mv	s0, a0
	lui	a0, %hi(.L.str25)
	addi	a1, a0, %lo(.L.str25)
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
.Lfunc_end5:
	.size	accept_roi_end, .Lfunc_end5-accept_roi_end
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
	.size	fastpow2, .Lfunc_end6-fastpow2
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
	bltz	a0, .LBB7_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB7_2:                                # %entry
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
.Lfunc_end7:
	.size	fastexp, .Lfunc_end7-fastexp
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
	.size	fasterpow2, .Lfunc_end8-fasterpow2
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
	bltz	a0, .LBB9_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	fasterexp, .Lfunc_end9-fasterexp
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
.Lfunc_end10:
	.size	fastlog2, .Lfunc_end10-fastlog2
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
.Lfunc_end11:
	.size	fastlog, .Lfunc_end11-fastlog
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
.Lfunc_end12:
	.size	fasterlog2, .Lfunc_end12-fasterlog2
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
.Lfunc_end13:
	.size	fasterlog, .Lfunc_end13-fasterlog
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
	.size	fasterfc, .Lfunc_end14-fasterfc
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
	lui	a0, 262144
	call	__divsf3
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end15:
	.size	fastererfc, .Lfunc_end15-fastererfc
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
	bltz	a0, .LBB16_2
# %bb.1:                                # %entry
	mv	s1, s0
.LBB16_2:                               # %entry
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
	bltz	a0, .LBB16_4
# %bb.3:                                # %entry
	mv	s4, s2
.LBB16_4:                               # %entry
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
.Lfunc_end16:
	.size	fasterf, .Lfunc_end16-fasterf
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
	bltz	a0, .LBB17_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB17_2:                               # %entry
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
.Lfunc_end17:
	.size	fastererf, .Lfunc_end17-fastererf
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
.Lfunc_end18:
	.size	fastinverseerf, .Lfunc_end18-fastinverseerf
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
.Lfunc_end19:
	.size	fasterinverseerf, .Lfunc_end19-fasterinverseerf
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
.Lfunc_end20:
	.size	fastlgamma, .Lfunc_end20-fastlgamma
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
.Lfunc_end21:
	.size	fasterlgamma, .Lfunc_end21-fasterlgamma
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
.Lfunc_end22:
	.size	fastdigamma, .Lfunc_end22-fastdigamma
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
.Lfunc_end23:
	.size	fasterdigamma, .Lfunc_end23-fasterdigamma
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
.Lfunc_end24:
	.size	fastsinh, .Lfunc_end24-fastsinh
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
.Lfunc_end25:
	.size	fastersinh, .Lfunc_end25-fastersinh
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
	bltz	a0, .LBB26_4
# %bb.3:                                # %entry
	mv	s8, s0
.LBB26_4:                               # %entry
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
.Lfunc_end26:
	.size	fastcosh, .Lfunc_end26-fastcosh
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
	bltz	a1, .LBB27_2
# %bb.1:                                # %entry
	mv	a0, s0
.LBB27_2:                               # %entry
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
	bltz	a0, .LBB27_4
# %bb.3:                                # %entry
	mv	s2, s1
.LBB27_4:                               # %entry
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
.Lfunc_end27:
	.size	fastercosh, .Lfunc_end27-fastercosh
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
	bltz	a0, .LBB28_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB28_2:                               # %entry
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
.Lfunc_end28:
	.size	fasttanh, .Lfunc_end28-fasttanh
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
	bltz	a0, .LBB29_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB29_2:                               # %entry
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
.Lfunc_end29:
	.size	fastertanh, .Lfunc_end29-fastertanh
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
	bltz	a0, .LBB30_2
# %bb.1:                                # %entry
	lui	s2, 524288
	lui	a0, 260096
	j	.LBB30_3
.LBB30_2:
	lui	a0, 261216
	addi	a0, a0, -79
	lui	a1, 259022
	addi	s2, a1, -386
.LBB30_3:                               # %entry
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
	bltz	a0, .LBB30_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB30_5:                               # %entry
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
.Lfunc_end30:
	.size	fastlambertw, .Lfunc_end30-fastlambertw
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
	bltz	a0, .LBB31_2
# %bb.1:                                # %entry
	lui	a0, 260096
	j	.LBB31_3
.LBB31_2:
	lui	a0, 261216
	addi	a0, a0, -79
.LBB31_3:                               # %entry
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
	bltz	a0, .LBB31_5
# %bb.4:                                # %entry
	mv	s1, s0
.LBB31_5:                               # %entry
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
.Lfunc_end31:
	.size	fasterlambertw, .Lfunc_end31-fasterlambertw
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
	blt	a1, a0, .LBB32_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s8, a0
	j	.LBB32_3
.LBB32_2:
	mv	s8, zero
.LBB32_3:                               # %cond.end
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
	bltz	a0, .LBB32_5
# %bb.4:                                # %cond.end
	mv	s1, s8
.LBB32_5:                               # %cond.end
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
.Lfunc_end32:
	.size	fastlambertwexpx, .Lfunc_end32-fastlambertwexpx
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
	blt	a1, a0, .LBB33_2
# %bb.1:                                # %cond.true
	lui	a0, 784746
	addi	a1, a0, -1633
	mv	a0, s2
	call	__addsf3
	lui	a1, 259872
	addi	a1, a1, 1069
	call	__mulsf3
	mv	s6, a0
	j	.LBB33_3
.LBB33_2:
	mv	s6, zero
.LBB33_3:                               # %cond.end
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
	bltz	a0, .LBB33_5
# %bb.4:                                # %cond.end
	mv	s1, s6
.LBB33_5:                               # %cond.end
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
.Lfunc_end33:
	.size	fasterlambertwexpx, .Lfunc_end33-fasterlambertwexpx
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
.Lfunc_end34:
	.size	fastpow, .Lfunc_end34-fastpow
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
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end35:
	.size	fasterpow, .Lfunc_end35-fasterpow
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
	bltz	a0, .LBB36_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB36_2:                               # %entry
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
.Lfunc_end36:
	.size	fastsigmoid, .Lfunc_end36-fastsigmoid
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
	bltz	a0, .LBB37_2
# %bb.1:                                # %entry
	mv	s0, s1
.LBB37_2:                               # %entry
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
.Lfunc_end37:
	.size	fastersigmoid, .Lfunc_end37-fastersigmoid
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
.Lfunc_end38:
	.size	fastsin, .Lfunc_end38-fastsin
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
.Lfunc_end39:
	.size	fastersin, .Lfunc_end39-fastersin
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
	.size	fastsinfull, .Lfunc_end40-fastsinfull
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
.Lfunc_end41:
	.size	fastersinfull, .Lfunc_end41-fastersinfull
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
	blez	a0, .LBB42_2
# %bb.1:
	lui	a0, 788845
	addi	s1, a0, -1052
.LBB42_2:                               # %entry
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
.Lfunc_end42:
	.size	fastcos, .Lfunc_end42-fastcos
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
.Lfunc_end43:
	.size	fastercos, .Lfunc_end43-fastercos
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
.Lfunc_end44:
	.size	fastcosfull, .Lfunc_end44-fastcosfull
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
	bltz	a0, .LBB45_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB45_2:                               # %entry
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
.Lfunc_end45:
	.size	fastercosfull, .Lfunc_end45-fastercosfull
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
.Lfunc_end46:
	.size	fasttan, .Lfunc_end46-fasttan
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
.Lfunc_end47:
	.size	fastertan, .Lfunc_end47-fastertan
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
	blez	a0, .LBB48_4
# %bb.3:
	lui	a0, 788845
	addi	s0, a0, -1052
.LBB48_4:                               # %entry
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
.Lfunc_end48:
	.size	fasttanfull, .Lfunc_end48-fasttanfull
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
	bltz	a0, .LBB49_2
# %bb.1:                                # %entry
	lui	s1, 258048
.LBB49_2:                               # %entry
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
.Lfunc_end49:
	.size	fastertanfull, .Lfunc_end49-fastertanfull
	.cfi_endproc
                                        # -- End function
	.type	.LprintSolution.vector_result,@object # @printSolution.vector_result
	.section	.rodata,"a",@progbits
	.p2align	4
.LprintSolution.vector_result:
	.word	0                       # 0x0
	.word	7                       # 0x7
	.word	9                       # 0x9
	.word	12                      # 0xc
	.word	6                       # 0x6
	.word	10                      # 0xa
	.word	8                       # 0x8
	.word	7                       # 0x7
	.word	6                       # 0x6
	.word	7                       # 0x7
	.word	10                      # 0xa
	.word	3                       # 0x3
	.word	9                       # 0x9
	.word	7                       # 0x7
	.word	4                       # 0x4
	.word	8                       # 0x8
	.word	1                       # 0x1
	.word	5                       # 0x5
	.word	7                       # 0x7
	.word	4                       # 0x4
	.word	11                      # 0xb
	.word	10                      # 0xa
	.word	11                      # 0xb
	.word	7                       # 0x7
	.word	6                       # 0x6
	.word	15                      # 0xf
	.word	6                       # 0x6
	.word	6                       # 0x6
	.word	11                      # 0xb
	.word	9                       # 0x9
	.word	9                       # 0x9
	.word	8                       # 0x8
	.word	8                       # 0x8
	.word	7                       # 0x7
	.word	5                       # 0x5
	.word	12                      # 0xc
	.word	11                      # 0xb
	.word	5                       # 0x5
	.word	7                       # 0x7
	.word	15                      # 0xf
	.word	11                      # 0xb
	.word	6                       # 0x6
	.word	8                       # 0x8
	.word	8                       # 0x8
	.word	5                       # 0x5
	.word	9                       # 0x9
	.word	9                       # 0x9
	.word	10                      # 0xa
	.word	12                      # 0xc
	.word	13                      # 0xd
	.word	6                       # 0x6
	.word	5                       # 0x5
	.word	14                      # 0xe
	.word	7                       # 0x7
	.word	7                       # 0x7
	.word	8                       # 0x8
	.word	10                      # 0xa
	.word	9                       # 0x9
	.word	14                      # 0xe
	.word	8                       # 0x8
	.word	6                       # 0x6
	.word	8                       # 0x8
	.word	5                       # 0x5
	.word	5                       # 0x5
	.word	11                      # 0xb
	.word	5                       # 0x5
	.word	8                       # 0x8
	.word	14                      # 0xe
	.word	9                       # 0x9
	.word	5                       # 0x5
	.word	7                       # 0x7
	.word	8                       # 0x8
	.word	7                       # 0x7
	.word	8                       # 0x8
	.word	8                       # 0x8
	.word	7                       # 0x7
	.word	9                       # 0x9
	.word	9                       # 0x9
	.word	7                       # 0x7
	.word	7                       # 0x7
	.word	8                       # 0x8
	.word	12                      # 0xc
	.word	8                       # 0x8
	.word	10                      # 0xa
	.word	8                       # 0x8
	.word	5                       # 0x5
	.word	13                      # 0xd
	.word	9                       # 0x9
	.word	9                       # 0x9
	.word	8                       # 0x8
	.word	6                       # 0x6
	.word	10                      # 0xa
	.word	5                       # 0x5
	.word	3                       # 0x3
	.word	9                       # 0x9
	.word	6                       # 0x6
	.word	7                       # 0x7
	.word	10                      # 0xa
	.word	7                       # 0x7
	.word	8                       # 0x8
	.size	.LprintSolution.vector_result, 400

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Vertex \t\t Distance from Source\n"
	.size	.L.str, 32

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"%d \t\t\t\t %d\n"
	.size	.L.str1, 12

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"\nResult = %d \n"
	.size	.L.str2, 15

	.type	.Lmain.graph,@object    # @main.graph
	.section	.rodata,"a",@progbits
	.p2align	4
.Lmain.graph:
	.word	32                      # 0x20
	.word	32                      # 0x20
	.word	54                      # 0x36
	.word	12                      # 0xc
	.word	52                      # 0x34
	.word	56                      # 0x38
	.word	8                       # 0x8
	.word	30                      # 0x1e
	.word	44                      # 0x2c
	.word	94                      # 0x5e
	.word	44                      # 0x2c
	.word	39                      # 0x27
	.word	65                      # 0x41
	.word	19                      # 0x13
	.word	51                      # 0x33
	.word	91                      # 0x5b
	.word	1                       # 0x1
	.word	5                       # 0x5
	.word	89                      # 0x59
	.word	34                      # 0x22
	.word	25                      # 0x19
	.word	58                      # 0x3a
	.word	20                      # 0x14
	.word	51                      # 0x33
	.word	38                      # 0x26
	.word	65                      # 0x41
	.word	30                      # 0x1e
	.word	7                       # 0x7
	.word	20                      # 0x14
	.word	10                      # 0xa
	.word	51                      # 0x33
	.word	18                      # 0x12
	.word	43                      # 0x2b
	.word	71                      # 0x47
	.word	97                      # 0x61
	.word	61                      # 0x3d
	.word	26                      # 0x1a
	.word	5                       # 0x5
	.word	57                      # 0x39
	.word	70                      # 0x46
	.word	65                      # 0x41
	.word	0                       # 0x0
	.word	75                      # 0x4b
	.word	29                      # 0x1d
	.word	86                      # 0x56
	.word	93                      # 0x5d
	.word	87                      # 0x57
	.word	87                      # 0x57
	.word	64                      # 0x40
	.word	75                      # 0x4b
	.word	88                      # 0x58
	.word	89                      # 0x59
	.word	100                     # 0x64
	.word	7                       # 0x7
	.word	40                      # 0x28
	.word	37                      # 0x25
	.word	38                      # 0x26
	.word	36                      # 0x24
	.word	44                      # 0x2c
	.word	24                      # 0x18
	.word	46                      # 0x2e
	.word	95                      # 0x5f
	.word	43                      # 0x2b
	.word	89                      # 0x59
	.word	32                      # 0x20
	.word	5                       # 0x5
	.word	15                      # 0xf
	.word	58                      # 0x3a
	.word	77                      # 0x4d
	.word	72                      # 0x48
	.word	95                      # 0x5f
	.word	8                       # 0x8
	.word	38                      # 0x26
	.word	69                      # 0x45
	.word	37                      # 0x25
	.word	24                      # 0x18
	.word	27                      # 0x1b
	.word	90                      # 0x5a
	.word	77                      # 0x4d
	.word	92                      # 0x5c
	.word	31                      # 0x1f
	.word	30                      # 0x1e
	.word	80                      # 0x50
	.word	30                      # 0x1e
	.word	37                      # 0x25
	.word	86                      # 0x56
	.word	33                      # 0x21
	.word	76                      # 0x4c
	.word	21                      # 0x15
	.word	77                      # 0x4d
	.word	100                     # 0x64
	.word	68                      # 0x44
	.word	37                      # 0x25
	.word	8                       # 0x8
	.word	22                      # 0x16
	.word	69                      # 0x45
	.word	81                      # 0x51
	.word	38                      # 0x26
	.word	94                      # 0x5e
	.word	57                      # 0x39
	.word	76                      # 0x4c
	.word	54                      # 0x36
	.word	65                      # 0x41
	.word	14                      # 0xe
	.word	89                      # 0x59
	.word	69                      # 0x45
	.word	4                       # 0x4
	.word	16                      # 0x10
	.word	24                      # 0x18
	.word	47                      # 0x2f
	.word	7                       # 0x7
	.word	21                      # 0x15
	.word	78                      # 0x4e
	.word	53                      # 0x35
	.word	17                      # 0x11
	.word	81                      # 0x51
	.word	39                      # 0x27
	.word	50                      # 0x32
	.word	22                      # 0x16
	.word	60                      # 0x3c
	.word	93                      # 0x5d
	.word	89                      # 0x59
	.word	94                      # 0x5e
	.word	30                      # 0x1e
	.word	97                      # 0x61
	.word	16                      # 0x10
	.word	65                      # 0x41
	.word	43                      # 0x2b
	.word	20                      # 0x14
	.word	24                      # 0x18
	.word	67                      # 0x43
	.word	62                      # 0x3e
	.word	78                      # 0x4e
	.word	98                      # 0x62
	.word	42                      # 0x2a
	.word	67                      # 0x43
	.word	32                      # 0x20
	.word	46                      # 0x2e
	.word	49                      # 0x31
	.word	57                      # 0x39
	.word	60                      # 0x3c
	.word	56                      # 0x38
	.word	44                      # 0x2c
	.word	37                      # 0x25
	.word	75                      # 0x4b
	.word	62                      # 0x3e
	.word	17                      # 0x11
	.word	13                      # 0xd
	.word	11                      # 0xb
	.word	40                      # 0x28
	.word	40                      # 0x28
	.word	4                       # 0x4
	.word	95                      # 0x5f
	.word	100                     # 0x64
	.word	0                       # 0x0
	.word	57                      # 0x39
	.word	82                      # 0x52
	.word	31                      # 0x1f
	.word	0                       # 0x0
	.word	1                       # 0x1
	.word	56                      # 0x38
	.word	67                      # 0x43
	.word	30                      # 0x1e
	.word	100                     # 0x64
	.word	64                      # 0x40
	.word	72                      # 0x48
	.word	66                      # 0x42
	.word	63                      # 0x3f
	.word	18                      # 0x12
	.word	81                      # 0x51
	.word	19                      # 0x13
	.word	44                      # 0x2c
	.word	2                       # 0x2
	.word	63                      # 0x3f
	.word	81                      # 0x51
	.word	78                      # 0x4e
	.word	91                      # 0x5b
	.word	64                      # 0x40
	.word	91                      # 0x5b
	.word	2                       # 0x2
	.word	70                      # 0x46
	.word	97                      # 0x61
	.word	73                      # 0x49
	.word	64                      # 0x40
	.word	97                      # 0x61
	.word	39                      # 0x27
	.word	21                      # 0x15
	.word	78                      # 0x4e
	.word	70                      # 0x46
	.word	21                      # 0x15
	.word	46                      # 0x2e
	.word	25                      # 0x19
	.word	54                      # 0x36
	.word	76                      # 0x4c
	.word	92                      # 0x5c
	.word	84                      # 0x54
	.word	47                      # 0x2f
	.word	57                      # 0x39
	.word	46                      # 0x2e
	.word	31                      # 0x1f
	.word	38                      # 0x26
	.word	31                      # 0x1f
	.word	75                      # 0x4b
	.word	40                      # 0x28
	.word	61                      # 0x3d
	.word	21                      # 0x15
	.word	84                      # 0x54
	.word	51                      # 0x33
	.word	86                      # 0x56
	.word	41                      # 0x29
	.word	19                      # 0x13
	.word	21                      # 0x15
	.word	37                      # 0x25
	.word	58                      # 0x3a
	.word	86                      # 0x56
	.word	100                     # 0x64
	.word	97                      # 0x61
	.word	73                      # 0x49
	.word	44                      # 0x2c
	.word	67                      # 0x43
	.word	60                      # 0x3c
	.word	90                      # 0x5a
	.word	58                      # 0x3a
	.word	13                      # 0xd
	.word	31                      # 0x1f
	.word	49                      # 0x31
	.word	63                      # 0x3f
	.word	44                      # 0x2c
	.word	73                      # 0x49
	.word	76                      # 0x4c
	.word	76                      # 0x4c
	.word	77                      # 0x4d
	.word	73                      # 0x49
	.word	16                      # 0x10
	.word	83                      # 0x53
	.word	100                     # 0x64
	.word	4                       # 0x4
	.word	67                      # 0x43
	.word	51                      # 0x33
	.word	56                      # 0x38
	.word	7                       # 0x7
	.word	36                      # 0x24
	.word	77                      # 0x4d
	.word	10                      # 0xa
	.word	95                      # 0x5f
	.word	28                      # 0x1c
	.word	10                      # 0xa
	.word	57                      # 0x39
	.word	0                       # 0x0
	.word	54                      # 0x36
	.word	23                      # 0x17
	.word	60                      # 0x3c
	.word	9                       # 0x9
	.word	48                      # 0x30
	.word	39                      # 0x27
	.word	40                      # 0x28
	.word	97                      # 0x61
	.word	69                      # 0x45
	.word	84                      # 0x54
	.word	35                      # 0x23
	.word	44                      # 0x2c
	.word	25                      # 0x19
	.word	11                      # 0xb
	.word	83                      # 0x53
	.word	8                       # 0x8
	.word	61                      # 0x3d
	.word	83                      # 0x53
	.word	12                      # 0xc
	.word	27                      # 0x1b
	.word	100                     # 0x64
	.word	34                      # 0x22
	.word	0                       # 0x0
	.word	35                      # 0x23
	.word	10                      # 0xa
	.word	10                      # 0xa
	.word	96                      # 0x60
	.word	39                      # 0x27
	.word	87                      # 0x57
	.word	53                      # 0x35
	.word	5                       # 0x5
	.word	40                      # 0x28
	.word	42                      # 0x2a
	.word	66                      # 0x42
	.word	15                      # 0xf
	.word	90                      # 0x5a
	.word	71                      # 0x47
	.word	55                      # 0x37
	.word	87                      # 0x57
	.word	39                      # 0x27
	.word	5                       # 0x5
	.word	88                      # 0x58
	.word	49                      # 0x31
	.word	97                      # 0x61
	.word	100                     # 0x64
	.word	32                      # 0x20
	.word	4                       # 0x4
	.word	60                      # 0x3c
	.word	81                      # 0x51
	.word	83                      # 0x53
	.word	53                      # 0x35
	.word	80                      # 0x50
	.word	16                      # 0x10
	.word	53                      # 0x35
	.word	14                      # 0xe
	.word	94                      # 0x5e
	.word	29                      # 0x1d
	.word	77                      # 0x4d
	.word	99                      # 0x63
	.word	16                      # 0x10
	.word	29                      # 0x1d
	.word	3                       # 0x3
	.word	22                      # 0x16
	.word	71                      # 0x47
	.word	35                      # 0x23
	.word	4                       # 0x4
	.word	61                      # 0x3d
	.word	6                       # 0x6
	.word	25                      # 0x19
	.word	13                      # 0xd
	.word	11                      # 0xb
	.word	30                      # 0x1e
	.word	0                       # 0x0
	.word	27                      # 0x1b
	.word	94                      # 0x5e
	.word	66                      # 0x42
	.word	25                      # 0x19
	.word	64                      # 0x40
	.word	92                      # 0x5c
	.word	5                       # 0x5
	.word	47                      # 0x2f
	.word	44                      # 0x2c
	.word	85                      # 0x55
	.word	29                      # 0x1d
	.word	63                      # 0x3f
	.word	65                      # 0x41
	.word	89                      # 0x59
	.word	59                      # 0x3b
	.word	41                      # 0x29
	.word	87                      # 0x57
	.word	41                      # 0x29
	.word	36                      # 0x24
	.word	57                      # 0x39
	.word	29                      # 0x1d
	.word	7                       # 0x7
	.word	92                      # 0x5c
	.word	33                      # 0x21
	.word	34                      # 0x22
	.word	64                      # 0x40
	.word	59                      # 0x3b
	.word	47                      # 0x2f
	.word	76                      # 0x4c
	.word	55                      # 0x37
	.word	13                      # 0xd
	.word	2                       # 0x2
	.word	48                      # 0x30
	.word	46                      # 0x2e
	.word	27                      # 0x1b
	.word	12                      # 0xc
	.word	37                      # 0x25
	.word	99                      # 0x63
	.word	25                      # 0x19
	.word	48                      # 0x30
	.word	83                      # 0x53
	.word	20                      # 0x14
	.word	77                      # 0x4d
	.word	13                      # 0xd
	.word	9                       # 0x9
	.word	35                      # 0x23
	.word	55                      # 0x37
	.word	62                      # 0x3e
	.word	76                      # 0x4c
	.word	57                      # 0x39
	.word	18                      # 0x12
	.word	72                      # 0x48
	.word	64                      # 0x40
	.word	10                      # 0xa
	.word	4                       # 0x4
	.word	64                      # 0x40
	.word	74                      # 0x4a
	.word	63                      # 0x3f
	.word	77                      # 0x4d
	.word	15                      # 0xf
	.word	18                      # 0x12
	.word	91                      # 0x5b
	.word	84                      # 0x54
	.word	32                      # 0x20
	.word	36                      # 0x24
	.word	77                      # 0x4d
	.word	10                      # 0xa
	.word	39                      # 0x27
	.word	75                      # 0x4b
	.word	35                      # 0x23
	.word	87                      # 0x57
	.word	23                      # 0x17
	.word	22                      # 0x16
	.word	30                      # 0x1e
	.word	37                      # 0x25
	.word	31                      # 0x1f
	.word	65                      # 0x41
	.word	58                      # 0x3a
	.word	59                      # 0x3b
	.word	7                       # 0x7
	.word	14                      # 0xe
	.word	78                      # 0x4e
	.word	79                      # 0x4f
	.word	45                      # 0x2d
	.word	54                      # 0x36
	.word	83                      # 0x53
	.word	8                       # 0x8
	.word	94                      # 0x5e
	.word	12                      # 0xc
	.word	86                      # 0x56
	.word	9                       # 0x9
	.word	97                      # 0x61
	.word	42                      # 0x2a
	.word	93                      # 0x5d
	.word	95                      # 0x5f
	.word	44                      # 0x2c
	.word	70                      # 0x46
	.word	5                       # 0x5
	.word	83                      # 0x53
	.word	10                      # 0xa
	.word	40                      # 0x28
	.word	36                      # 0x24
	.word	34                      # 0x22
	.word	62                      # 0x3e
	.word	66                      # 0x42
	.word	71                      # 0x47
	.word	59                      # 0x3b
	.word	97                      # 0x61
	.word	95                      # 0x5f
	.word	18                      # 0x12
	.word	3                       # 0x3
	.word	8                       # 0x8
	.word	62                      # 0x3e
	.word	48                      # 0x30
	.word	19                      # 0x13
	.word	15                      # 0xf
	.word	98                      # 0x62
	.word	28                      # 0x1c
	.word	8                       # 0x8
	.word	9                       # 0x9
	.word	80                      # 0x50
	.word	84                      # 0x54
	.word	72                      # 0x48
	.word	21                      # 0x15
	.word	43                      # 0x2b
	.word	66                      # 0x42
	.word	65                      # 0x41
	.word	79                      # 0x4f
	.word	71                      # 0x47
	.word	13                      # 0xd
	.word	89                      # 0x59
	.word	78                      # 0x4e
	.word	49                      # 0x31
	.word	22                      # 0x16
	.word	5                       # 0x5
	.word	14                      # 0xe
	.word	59                      # 0x3b
	.word	65                      # 0x41
	.word	11                      # 0xb
	.word	53                      # 0x35
	.word	49                      # 0x31
	.word	81                      # 0x51
	.word	28                      # 0x1c
	.word	77                      # 0x4d
	.word	29                      # 0x1d
	.word	47                      # 0x2f
	.word	92                      # 0x5c
	.word	26                      # 0x1a
	.word	41                      # 0x29
	.word	66                      # 0x42
	.word	1                       # 0x1
	.word	20                      # 0x14
	.word	50                      # 0x32
	.word	73                      # 0x49
	.word	7                       # 0x7
	.word	59                      # 0x3b
	.word	4                       # 0x4
	.word	72                      # 0x48
	.word	37                      # 0x25
	.word	76                      # 0x4c
	.word	86                      # 0x56
	.word	25                      # 0x19
	.word	19                      # 0x13
	.word	0                       # 0x0
	.word	14                      # 0xe
	.word	24                      # 0x18
	.word	15                      # 0xf
	.word	73                      # 0x49
	.word	55                      # 0x37
	.word	93                      # 0x5d
	.word	93                      # 0x5d
	.word	3                       # 0x3
	.word	73                      # 0x49
	.word	87                      # 0x57
	.word	80                      # 0x50
	.word	68                      # 0x44
	.word	100                     # 0x64
	.word	37                      # 0x25
	.word	94                      # 0x5e
	.word	41                      # 0x29
	.word	3                       # 0x3
	.word	61                      # 0x3d
	.word	27                      # 0x1b
	.word	19                      # 0x13
	.word	33                      # 0x21
	.word	35                      # 0x23
	.word	78                      # 0x4e
	.word	38                      # 0x26
	.word	73                      # 0x49
	.word	14                      # 0xe
	.word	80                      # 0x50
	.word	58                      # 0x3a
	.word	5                       # 0x5
	.word	99                      # 0x63
	.word	59                      # 0x3b
	.word	19                      # 0x13
	.word	22                      # 0x16
	.word	40                      # 0x28
	.word	59                      # 0x3b
	.word	78                      # 0x4e
	.word	32                      # 0x20
	.word	17                      # 0x11
	.word	47                      # 0x2f
	.word	71                      # 0x47
	.word	3                       # 0x3
	.word	94                      # 0x5e
	.word	39                      # 0x27
	.word	2                       # 0x2
	.word	97                      # 0x61
	.word	99                      # 0x63
	.word	9                       # 0x9
	.word	66                      # 0x42
	.word	60                      # 0x3c
	.word	37                      # 0x25
	.word	85                      # 0x55
	.word	59                      # 0x3b
	.word	38                      # 0x26
	.word	28                      # 0x1c
	.word	63                      # 0x3f
	.word	10                      # 0xa
	.word	8                       # 0x8
	.word	8                       # 0x8
	.word	35                      # 0x23
	.word	81                      # 0x51
	.word	6                       # 0x6
	.word	60                      # 0x3c
	.word	100                     # 0x64
	.word	96                      # 0x60
	.word	66                      # 0x42
	.word	24                      # 0x18
	.word	39                      # 0x27
	.word	64                      # 0x40
	.word	41                      # 0x29
	.word	52                      # 0x34
	.word	34                      # 0x22
	.word	10                      # 0xa
	.word	11                      # 0xb
	.word	39                      # 0x27
	.word	80                      # 0x50
	.word	8                       # 0x8
	.word	4                       # 0x4
	.word	89                      # 0x59
	.word	74                      # 0x4a
	.word	64                      # 0x40
	.word	92                      # 0x5c
	.word	25                      # 0x19
	.word	89                      # 0x59
	.word	29                      # 0x1d
	.word	19                      # 0x13
	.word	18                      # 0x12
	.word	6                       # 0x6
	.word	28                      # 0x1c
	.word	26                      # 0x1a
	.word	7                       # 0x7
	.word	8                       # 0x8
	.word	33                      # 0x21
	.word	67                      # 0x43
	.word	74                      # 0x4a
	.word	95                      # 0x5f
	.word	32                      # 0x20
	.word	99                      # 0x63
	.word	33                      # 0x21
	.word	96                      # 0x60
	.word	5                       # 0x5
	.word	51                      # 0x33
	.word	96                      # 0x60
	.word	83                      # 0x53
	.word	63                      # 0x3f
	.word	35                      # 0x23
	.word	62                      # 0x3e
	.word	71                      # 0x47
	.word	39                      # 0x27
	.word	16                      # 0x10
	.word	10                      # 0xa
	.word	69                      # 0x45
	.word	8                       # 0x8
	.word	35                      # 0x23
	.word	23                      # 0x17
	.word	3                       # 0x3
	.word	55                      # 0x37
	.word	41                      # 0x29
	.word	76                      # 0x4c
	.word	49                      # 0x31
	.word	68                      # 0x44
	.word	83                      # 0x53
	.word	23                      # 0x17
	.word	67                      # 0x43
	.word	15                      # 0xf
	.word	97                      # 0x61
	.word	61                      # 0x3d
	.word	13                      # 0xd
	.word	61                      # 0x3d
	.word	60                      # 0x3c
	.word	75                      # 0x4b
	.word	33                      # 0x21
	.word	77                      # 0x4d
	.word	71                      # 0x47
	.word	15                      # 0xf
	.word	39                      # 0x27
	.word	72                      # 0x48
	.word	43                      # 0x2b
	.word	76                      # 0x4c
	.word	77                      # 0x4d
	.word	59                      # 0x3b
	.word	53                      # 0x35
	.word	11                      # 0xb
	.word	33                      # 0x21
	.word	88                      # 0x58
	.word	34                      # 0x22
	.word	37                      # 0x25
	.word	8                       # 0x8
	.word	76                      # 0x4c
	.word	79                      # 0x4f
	.word	23                      # 0x17
	.word	9                       # 0x9
	.word	62                      # 0x3e
	.word	46                      # 0x2e
	.word	76                      # 0x4c
	.word	43                      # 0x2b
	.word	9                       # 0x9
	.word	2                       # 0x2
	.word	57                      # 0x39
	.word	70                      # 0x46
	.word	28                      # 0x1c
	.word	31                      # 0x1f
	.word	69                      # 0x45
	.word	4                       # 0x4
	.word	68                      # 0x44
	.word	84                      # 0x54
	.word	10                      # 0xa
	.word	39                      # 0x27
	.word	26                      # 0x1a
	.word	52                      # 0x34
	.word	82                      # 0x52
	.word	52                      # 0x34
	.word	4                       # 0x4
	.word	93                      # 0x5d
	.word	85                      # 0x55
	.word	59                      # 0x3b
	.word	94                      # 0x5e
	.word	21                      # 0x15
	.word	33                      # 0x21
	.word	35                      # 0x23
	.word	67                      # 0x43
	.word	57                      # 0x39
	.word	44                      # 0x2c
	.word	28                      # 0x1c
	.word	69                      # 0x45
	.word	86                      # 0x56
	.word	37                      # 0x25
	.word	78                      # 0x4e
	.word	54                      # 0x36
	.word	94                      # 0x5e
	.word	14                      # 0xe
	.word	48                      # 0x30
	.word	25                      # 0x19
	.word	83                      # 0x53
	.word	18                      # 0x12
	.word	59                      # 0x3b
	.word	33                      # 0x21
	.word	28                      # 0x1c
	.word	99                      # 0x63
	.word	25                      # 0x19
	.word	81                      # 0x51
	.word	46                      # 0x2e
	.word	77                      # 0x4d
	.word	51                      # 0x33
	.word	39                      # 0x27
	.word	62                      # 0x3e
	.word	9                       # 0x9
	.word	32                      # 0x20
	.word	49                      # 0x31
	.word	43                      # 0x2b
	.word	33                      # 0x21
	.word	15                      # 0xf
	.word	100                     # 0x64
	.word	77                      # 0x4d
	.word	9                       # 0x9
	.word	68                      # 0x44
	.word	28                      # 0x1c
	.word	47                      # 0x2f
	.word	12                      # 0xc
	.word	82                      # 0x52
	.word	6                       # 0x6
	.word	26                      # 0x1a
	.word	96                      # 0x60
	.word	98                      # 0x62
	.word	75                      # 0x4b
	.word	13                      # 0xd
	.word	57                      # 0x39
	.word	7                       # 0x7
	.word	8                       # 0x8
	.word	55                      # 0x37
	.word	33                      # 0x21
	.word	55                      # 0x37
	.word	0                       # 0x0
	.word	76                      # 0x4c
	.word	5                       # 0x5
	.word	5                       # 0x5
	.word	3                       # 0x3
	.word	15                      # 0xf
	.word	3                       # 0x3
	.word	53                      # 0x35
	.word	58                      # 0x3a
	.word	36                      # 0x24
	.word	34                      # 0x22
	.word	23                      # 0x17
	.word	79                      # 0x4f
	.word	10                      # 0xa
	.word	57                      # 0x39
	.word	6                       # 0x6
	.word	23                      # 0x17
	.word	69                      # 0x45
	.word	54                      # 0x36
	.word	29                      # 0x1d
	.word	61                      # 0x3d
	.word	49                      # 0x31
	.word	27                      # 0x1b
	.word	36                      # 0x24
	.word	63                      # 0x3f
	.word	84                      # 0x54
	.word	9                       # 0x9
	.word	71                      # 0x47
	.word	4                       # 0x4
	.word	8                       # 0x8
	.word	25                      # 0x19
	.word	71                      # 0x47
	.word	85                      # 0x55
	.word	97                      # 0x61
	.word	77                      # 0x4d
	.word	88                      # 0x58
	.word	11                      # 0xb
	.word	46                      # 0x2e
	.word	6                       # 0x6
	.word	35                      # 0x23
	.word	83                      # 0x53
	.word	7                       # 0x7
	.word	24                      # 0x18
	.word	27                      # 0x1b
	.word	17                      # 0x11
	.word	82                      # 0x52
	.word	34                      # 0x22
	.word	40                      # 0x28
	.word	16                      # 0x10
	.word	88                      # 0x58
	.word	69                      # 0x45
	.word	44                      # 0x2c
	.word	3                       # 0x3
	.word	62                      # 0x3e
	.word	46                      # 0x2e
	.word	32                      # 0x20
	.word	45                      # 0x2d
	.word	55                      # 0x37
	.word	2                       # 0x2
	.word	49                      # 0x31
	.word	64                      # 0x40
	.word	94                      # 0x5e
	.word	87                      # 0x57
	.word	14                      # 0xe
	.word	90                      # 0x5a
	.word	63                      # 0x3f
	.word	68                      # 0x44
	.word	68                      # 0x44
	.word	75                      # 0x4b
	.word	75                      # 0x4b
	.word	2                       # 0x2
	.word	23                      # 0x17
	.word	82                      # 0x52
	.word	27                      # 0x1b
	.word	51                      # 0x33
	.word	65                      # 0x41
	.word	75                      # 0x4b
	.word	85                      # 0x55
	.word	71                      # 0x47
	.word	57                      # 0x39
	.word	38                      # 0x26
	.word	39                      # 0x27
	.word	0                       # 0x0
	.word	7                       # 0x7
	.word	1                       # 0x1
	.word	46                      # 0x2e
	.word	39                      # 0x27
	.word	12                      # 0xc
	.word	68                      # 0x44
	.word	41                      # 0x29
	.word	28                      # 0x1c
	.word	31                      # 0x1f
	.word	0                       # 0x0
	.word	14                      # 0xe
	.word	45                      # 0x2d
	.word	91                      # 0x5b
	.word	43                      # 0x2b
	.word	12                      # 0xc
	.word	58                      # 0x3a
	.word	17                      # 0x11
	.word	53                      # 0x35
	.word	26                      # 0x1a
	.word	41                      # 0x29
	.word	0                       # 0x0
	.word	19                      # 0x13
	.word	92                      # 0x5c
	.word	31                      # 0x1f
	.word	60                      # 0x3c
	.word	42                      # 0x2a
	.word	1                       # 0x1
	.word	17                      # 0x11
	.word	46                      # 0x2e
	.word	41                      # 0x29
	.word	84                      # 0x54
	.word	54                      # 0x36
	.word	8                       # 0x8
	.word	97                      # 0x61
	.word	93                      # 0x5d
	.word	20                      # 0x14
	.word	64                      # 0x40
	.word	0                       # 0x0
	.word	14                      # 0xe
	.word	61                      # 0x3d
	.word	0                       # 0x0
	.word	28                      # 0x1c
	.word	72                      # 0x48
	.word	57                      # 0x39
	.word	71                      # 0x47
	.word	50                      # 0x32
	.word	81                      # 0x51
	.word	89                      # 0x59
	.word	70                      # 0x46
	.word	7                       # 0x7
	.word	96                      # 0x60
	.word	70                      # 0x46
	.word	26                      # 0x1a
	.word	87                      # 0x57
	.word	1                       # 0x1
	.word	87                      # 0x57
	.word	95                      # 0x5f
	.word	69                      # 0x45
	.word	70                      # 0x46
	.word	40                      # 0x28
	.word	9                       # 0x9
	.word	19                      # 0x13
	.word	94                      # 0x5e
	.word	84                      # 0x54
	.word	15                      # 0xf
	.word	87                      # 0x57
	.word	71                      # 0x47
	.word	45                      # 0x2d
	.word	87                      # 0x57
	.word	85                      # 0x55
	.word	5                       # 0x5
	.word	53                      # 0x35
	.word	13                      # 0xd
	.word	43                      # 0x2b
	.word	10                      # 0xa
	.word	50                      # 0x32
	.word	94                      # 0x5e
	.word	91                      # 0x5b
	.word	38                      # 0x26
	.word	63                      # 0x3f
	.word	98                      # 0x62
	.word	33                      # 0x21
	.word	99                      # 0x63
	.word	91                      # 0x5b
	.word	86                      # 0x56
	.word	66                      # 0x42
	.word	43                      # 0x2b
	.word	80                      # 0x50
	.word	35                      # 0x23
	.word	79                      # 0x4f
	.word	20                      # 0x14
	.word	10                      # 0xa
	.word	98                      # 0x62
	.word	80                      # 0x50
	.word	61                      # 0x3d
	.word	13                      # 0xd
	.word	66                      # 0x42
	.word	31                      # 0x1f
	.word	24                      # 0x18
	.word	18                      # 0x12
	.word	82                      # 0x52
	.word	97                      # 0x61
	.word	72                      # 0x48
	.word	61                      # 0x3d
	.word	39                      # 0x27
	.word	48                      # 0x30
	.word	11                      # 0xb
	.word	99                      # 0x63
	.word	38                      # 0x26
	.word	49                      # 0x31
	.word	27                      # 0x1b
	.word	2                       # 0x2
	.word	49                      # 0x31
	.word	26                      # 0x1a
	.word	59                      # 0x3b
	.word	0                       # 0x0
	.word	58                      # 0x3a
	.word	1                       # 0x1
	.word	81                      # 0x51
	.word	59                      # 0x3b
	.word	80                      # 0x50
	.word	67                      # 0x43
	.word	70                      # 0x46
	.word	77                      # 0x4d
	.word	46                      # 0x2e
	.word	97                      # 0x61
	.word	56                      # 0x38
	.word	79                      # 0x4f
	.word	27                      # 0x1b
	.word	81                      # 0x51
	.word	63                      # 0x3f
	.word	75                      # 0x4b
	.word	77                      # 0x4d
	.word	0                       # 0x0
	.word	36                      # 0x24
	.word	82                      # 0x52
	.word	48                      # 0x30
	.word	47                      # 0x2f
	.word	81                      # 0x51
	.word	53                      # 0x35
	.word	62                      # 0x3e
	.word	7                       # 0x7
	.word	55                      # 0x37
	.word	77                      # 0x4d
	.word	100                     # 0x64
	.word	13                      # 0xd
	.word	78                      # 0x4e
	.word	24                      # 0x18
	.word	81                      # 0x51
	.word	24                      # 0x18
	.word	83                      # 0x53
	.word	26                      # 0x1a
	.word	91                      # 0x5b
	.word	18                      # 0x12
	.word	2                       # 0x2
	.word	2                       # 0x2
	.word	14                      # 0xe
	.word	25                      # 0x19
	.word	47                      # 0x2f
	.word	7                       # 0x7
	.word	72                      # 0x48
	.word	10                      # 0xa
	.word	83                      # 0x53
	.word	14                      # 0xe
	.word	10                      # 0xa
	.word	18                      # 0x12
	.word	96                      # 0x60
	.word	25                      # 0x19
	.word	65                      # 0x41
	.word	42                      # 0x2a
	.word	78                      # 0x4e
	.word	93                      # 0x5d
	.word	16                      # 0x10
	.word	32                      # 0x20
	.word	70                      # 0x46
	.word	15                      # 0xf
	.word	11                      # 0xb
	.word	47                      # 0x2f
	.word	5                       # 0x5
	.word	58                      # 0x3a
	.word	71                      # 0x47
	.word	89                      # 0x59
	.word	84                      # 0x54
	.word	27                      # 0x1b
	.word	73                      # 0x49
	.word	86                      # 0x56
	.word	96                      # 0x60
	.word	88                      # 0x58
	.word	77                      # 0x4d
	.word	43                      # 0x2b
	.word	95                      # 0x5f
	.word	48                      # 0x30
	.word	19                      # 0x13
	.word	43                      # 0x2b
	.word	62                      # 0x3e
	.word	96                      # 0x60
	.word	61                      # 0x3d
	.word	24                      # 0x18
	.word	20                      # 0x14
	.word	92                      # 0x5c
	.word	66                      # 0x42
	.word	98                      # 0x62
	.word	85                      # 0x55
	.word	82                      # 0x52
	.word	96                      # 0x60
	.word	20                      # 0x14
	.word	64                      # 0x40
	.word	73                      # 0x49
	.word	67                      # 0x43
	.word	69                      # 0x45
	.word	30                      # 0x1e
	.word	3                       # 0x3
	.word	23                      # 0x17
	.word	13                      # 0xd
	.word	97                      # 0x61
	.word	97                      # 0x61
	.word	66                      # 0x42
	.word	58                      # 0x3a
	.word	50                      # 0x32
	.word	42                      # 0x2a
	.word	0                       # 0x0
	.word	44                      # 0x2c
	.word	57                      # 0x39
	.word	86                      # 0x56
	.word	54                      # 0x36
	.word	85                      # 0x55
	.word	82                      # 0x52
	.word	14                      # 0xe
	.word	8                       # 0x8
	.word	1                       # 0x1
	.word	73                      # 0x49
	.word	41                      # 0x29
	.word	66                      # 0x42
	.word	23                      # 0x17
	.word	22                      # 0x16
	.word	61                      # 0x3d
	.word	43                      # 0x2b
	.word	86                      # 0x56
	.word	0                       # 0x0
	.word	9                       # 0x9
	.word	21                      # 0x15
	.word	30                      # 0x1e
	.word	79                      # 0x4f
	.word	44                      # 0x2c
	.word	44                      # 0x2c
	.word	75                      # 0x4b
	.word	40                      # 0x28
	.word	76                      # 0x4c
	.word	99                      # 0x63
	.word	56                      # 0x38
	.word	17                      # 0x11
	.word	100                     # 0x64
	.word	67                      # 0x43
	.word	40                      # 0x28
	.word	51                      # 0x33
	.word	20                      # 0x14
	.word	25                      # 0x19
	.word	32                      # 0x20
	.word	0                       # 0x0
	.word	100                     # 0x64
	.word	0                       # 0x0
	.word	73                      # 0x49
	.word	40                      # 0x28
	.word	66                      # 0x42
	.word	96                      # 0x60
	.word	29                      # 0x1d
	.word	93                      # 0x5d
	.word	38                      # 0x26
	.word	81                      # 0x51
	.word	93                      # 0x5d
	.word	13                      # 0xd
	.word	1                       # 0x1
	.word	90                      # 0x5a
	.word	92                      # 0x5c
	.word	46                      # 0x2e
	.word	100                     # 0x64
	.word	32                      # 0x20
	.word	52                      # 0x34
	.word	75                      # 0x4b
	.word	31                      # 0x1f
	.word	8                       # 0x8
	.word	58                      # 0x3a
	.word	97                      # 0x61
	.word	75                      # 0x4b
	.word	99                      # 0x63
	.word	13                      # 0xd
	.word	61                      # 0x3d
	.word	90                      # 0x5a
	.word	46                      # 0x2e
	.word	61                      # 0x3d
	.word	89                      # 0x59
	.word	12                      # 0xc
	.word	34                      # 0x22
	.word	96                      # 0x60
	.word	78                      # 0x4e
	.word	96                      # 0x60
	.word	24                      # 0x18
	.word	36                      # 0x24
	.word	34                      # 0x22
	.word	4                       # 0x4
	.word	48                      # 0x30
	.word	14                      # 0xe
	.word	79                      # 0x4f
	.word	95                      # 0x5f
	.word	6                       # 0x6
	.word	70                      # 0x46
	.word	76                      # 0x4c
	.word	4                       # 0x4
	.word	98                      # 0x62
	.word	98                      # 0x62
	.word	87                      # 0x57
	.word	39                      # 0x27
	.word	14                      # 0xe
	.word	81                      # 0x51
	.word	1                       # 0x1
	.word	99                      # 0x63
	.word	7                       # 0x7
	.word	33                      # 0x21
	.word	81                      # 0x51
	.word	1                       # 0x1
	.word	92                      # 0x5c
	.word	96                      # 0x60
	.word	16                      # 0x10
	.word	15                      # 0xf
	.word	3                       # 0x3
	.word	15                      # 0xf
	.word	54                      # 0x36
	.word	30                      # 0x1e
	.word	57                      # 0x39
	.word	12                      # 0xc
	.word	55                      # 0x37
	.word	5                       # 0x5
	.word	93                      # 0x5d
	.word	0                       # 0x0
	.word	100                     # 0x64
	.word	99                      # 0x63
	.word	70                      # 0x46
	.word	42                      # 0x2a
	.word	69                      # 0x45
	.word	67                      # 0x43
	.word	39                      # 0x27
	.word	21                      # 0x15
	.word	5                       # 0x5
	.word	53                      # 0x35
	.word	2                       # 0x2
	.word	6                       # 0x6
	.word	51                      # 0x33
	.word	76                      # 0x4c
	.word	40                      # 0x28
	.word	99                      # 0x63
	.word	78                      # 0x4e
	.word	98                      # 0x62
	.word	60                      # 0x3c
	.word	60                      # 0x3c
	.word	79                      # 0x4f
	.word	63                      # 0x3f
	.word	75                      # 0x4b
	.word	99                      # 0x63
	.word	59                      # 0x3b
	.word	98                      # 0x62
	.word	10                      # 0xa
	.word	80                      # 0x50
	.word	2                       # 0x2
	.word	2                       # 0x2
	.word	80                      # 0x50
	.word	69                      # 0x45
	.word	67                      # 0x43
	.word	49                      # 0x31
	.word	10                      # 0xa
	.word	2                       # 0x2
	.word	16                      # 0x10
	.word	49                      # 0x31
	.word	23                      # 0x17
	.word	88                      # 0x58
	.word	68                      # 0x44
	.word	92                      # 0x5c
	.word	95                      # 0x5f
	.word	86                      # 0x56
	.word	68                      # 0x44
	.word	0                       # 0x0
	.word	84                      # 0x54
	.word	11                      # 0xb
	.word	64                      # 0x40
	.word	43                      # 0x2b
	.word	71                      # 0x47
	.word	42                      # 0x2a
	.word	72                      # 0x48
	.word	45                      # 0x2d
	.word	40                      # 0x28
	.word	97                      # 0x61
	.word	42                      # 0x2a
	.word	17                      # 0x11
	.word	76                      # 0x4c
	.word	11                      # 0xb
	.word	86                      # 0x56
	.word	56                      # 0x38
	.word	80                      # 0x50
	.word	19                      # 0x13
	.word	4                       # 0x4
	.word	90                      # 0x5a
	.word	88                      # 0x58
	.word	87                      # 0x57
	.word	4                       # 0x4
	.word	77                      # 0x4d
	.word	75                      # 0x4b
	.word	72                      # 0x48
	.word	69                      # 0x45
	.word	35                      # 0x23
	.word	23                      # 0x17
	.word	2                       # 0x2
	.word	35                      # 0x23
	.word	6                       # 0x6
	.word	80                      # 0x50
	.word	99                      # 0x63
	.word	15                      # 0xf
	.word	50                      # 0x32
	.word	6                       # 0x6
	.word	53                      # 0x35
	.word	61                      # 0x3d
	.word	46                      # 0x2e
	.word	49                      # 0x31
	.word	69                      # 0x45
	.word	29                      # 0x1d
	.word	25                      # 0x19
	.word	80                      # 0x50
	.word	15                      # 0xf
	.word	47                      # 0x2f
	.word	25                      # 0x19
	.word	34                      # 0x22
	.word	51                      # 0x33
	.word	14                      # 0xe
	.word	21                      # 0x15
	.word	38                      # 0x26
	.word	85                      # 0x55
	.word	98                      # 0x62
	.word	79                      # 0x4f
	.word	57                      # 0x39
	.word	32                      # 0x20
	.word	13                      # 0xd
	.word	46                      # 0x2e
	.word	0                       # 0x0
	.word	48                      # 0x30
	.word	53                      # 0x35
	.word	80                      # 0x50
	.word	12                      # 0xc
	.word	34                      # 0x22
	.word	29                      # 0x1d
	.word	18                      # 0x12
	.word	54                      # 0x36
	.word	56                      # 0x38
	.word	30                      # 0x1e
	.word	2                       # 0x2
	.word	25                      # 0x19
	.word	60                      # 0x3c
	.word	94                      # 0x5e
	.word	4                       # 0x4
	.word	41                      # 0x29
	.word	40                      # 0x28
	.word	30                      # 0x1e
	.word	75                      # 0x4b
	.word	58                      # 0x3a
	.word	10                      # 0xa
	.word	62                      # 0x3e
	.word	62                      # 0x3e
	.word	96                      # 0x60
	.word	59                      # 0x3b
	.word	40                      # 0x28
	.word	18                      # 0x12
	.word	58                      # 0x3a
	.word	53                      # 0x35
	.word	64                      # 0x40
	.word	24                      # 0x18
	.word	67                      # 0x43
	.word	83                      # 0x53
	.word	4                       # 0x4
	.word	79                      # 0x4f
	.word	17                      # 0x11
	.word	100                     # 0x64
	.word	63                      # 0x3f
	.word	37                      # 0x25
	.word	56                      # 0x38
	.word	93                      # 0x5d
	.word	39                      # 0x27
	.word	81                      # 0x51
	.word	18                      # 0x12
	.word	100                     # 0x64
	.word	51                      # 0x33
	.word	59                      # 0x3b
	.word	5                       # 0x5
	.word	81                      # 0x51
	.word	100                     # 0x64
	.word	63                      # 0x3f
	.word	58                      # 0x3a
	.word	61                      # 0x3d
	.word	24                      # 0x18
	.word	53                      # 0x35
	.word	87                      # 0x57
	.word	64                      # 0x40
	.word	37                      # 0x25
	.word	10                      # 0xa
	.word	83                      # 0x53
	.word	67                      # 0x43
	.word	34                      # 0x22
	.word	49                      # 0x31
	.word	50                      # 0x32
	.word	38                      # 0x26
	.word	27                      # 0x1b
	.word	33                      # 0x21
	.word	4                       # 0x4
	.word	56                      # 0x38
	.word	70                      # 0x46
	.word	60                      # 0x3c
	.word	15                      # 0xf
	.word	75                      # 0x4b
	.word	6                       # 0x6
	.word	33                      # 0x21
	.word	40                      # 0x28
	.word	57                      # 0x39
	.word	59                      # 0x3b
	.word	46                      # 0x2e
	.word	4                       # 0x4
	.word	24                      # 0x18
	.word	75                      # 0x4b
	.word	62                      # 0x3e
	.word	86                      # 0x56
	.word	100                     # 0x64
	.word	81                      # 0x51
	.word	38                      # 0x26
	.word	29                      # 0x1d
	.word	17                      # 0x11
	.word	48                      # 0x30
	.word	79                      # 0x4f
	.word	84                      # 0x54
	.word	48                      # 0x30
	.word	27                      # 0x1b
	.word	100                     # 0x64
	.word	87                      # 0x57
	.word	21                      # 0x15
	.word	32                      # 0x20
	.word	57                      # 0x39
	.word	77                      # 0x4d
	.word	68                      # 0x44
	.word	16                      # 0x10
	.word	92                      # 0x5c
	.word	9                       # 0x9
	.word	22                      # 0x16
	.word	92                      # 0x5c
	.word	49                      # 0x31
	.word	79                      # 0x4f
	.word	16                      # 0x10
	.word	95                      # 0x5f
	.word	83                      # 0x53
	.word	40                      # 0x28
	.word	70                      # 0x46
	.word	10                      # 0xa
	.word	25                      # 0x19
	.word	35                      # 0x23
	.word	91                      # 0x5b
	.word	29                      # 0x1d
	.word	30                      # 0x1e
	.word	74                      # 0x4a
	.word	43                      # 0x2b
	.word	8                       # 0x8
	.word	24                      # 0x18
	.word	92                      # 0x5c
	.word	2                       # 0x2
	.word	23                      # 0x17
	.word	44                      # 0x2c
	.word	23                      # 0x17
	.word	22                      # 0x16
	.word	0                       # 0x0
	.word	66                      # 0x42
	.word	56                      # 0x38
	.word	16                      # 0x10
	.word	58                      # 0x3a
	.word	65                      # 0x41
	.word	4                       # 0x4
	.word	15                      # 0xf
	.word	14                      # 0xe
	.word	49                      # 0x31
	.word	31                      # 0x1f
	.word	75                      # 0x4b
	.word	32                      # 0x20
	.word	71                      # 0x47
	.word	10                      # 0xa
	.word	8                       # 0x8
	.word	63                      # 0x3f
	.word	45                      # 0x2d
	.word	100                     # 0x64
	.word	92                      # 0x5c
	.word	42                      # 0x2a
	.word	73                      # 0x49
	.word	1                       # 0x1
	.word	50                      # 0x32
	.word	97                      # 0x61
	.word	93                      # 0x5d
	.word	18                      # 0x12
	.word	87                      # 0x57
	.word	36                      # 0x24
	.word	41                      # 0x29
	.word	75                      # 0x4b
	.word	36                      # 0x24
	.word	7                       # 0x7
	.word	30                      # 0x1e
	.word	18                      # 0x12
	.word	31                      # 0x1f
	.word	96                      # 0x60
	.word	22                      # 0x16
	.word	12                      # 0xc
	.word	76                      # 0x4c
	.word	71                      # 0x47
	.word	43                      # 0x2b
	.word	50                      # 0x32
	.word	69                      # 0x45
	.word	80                      # 0x50
	.word	61                      # 0x3d
	.word	78                      # 0x4e
	.word	42                      # 0x2a
	.word	72                      # 0x48
	.word	43                      # 0x2b
	.word	0                       # 0x0
	.word	13                      # 0xd
	.word	15                      # 0xf
	.word	68                      # 0x44
	.word	30                      # 0x1e
	.word	79                      # 0x4f
	.word	60                      # 0x3c
	.word	48                      # 0x30
	.word	31                      # 0x1f
	.word	62                      # 0x3e
	.word	56                      # 0x38
	.word	5                       # 0x5
	.word	98                      # 0x62
	.word	29                      # 0x1d
	.word	1                       # 0x1
	.word	82                      # 0x52
	.word	26                      # 0x1a
	.word	97                      # 0x61
	.word	3                       # 0x3
	.word	38                      # 0x26
	.word	72                      # 0x48
	.word	40                      # 0x28
	.word	81                      # 0x51
	.word	89                      # 0x59
	.word	76                      # 0x4c
	.word	26                      # 0x1a
	.word	15                      # 0xf
	.word	53                      # 0x35
	.word	35                      # 0x23
	.word	87                      # 0x57
	.word	96                      # 0x60
	.word	1                       # 0x1
	.word	67                      # 0x43
	.word	77                      # 0x4d
	.word	69                      # 0x45
	.word	97                      # 0x61
	.word	21                      # 0x15
	.word	28                      # 0x1c
	.word	10                      # 0xa
	.word	18                      # 0x12
	.word	90                      # 0x5a
	.word	32                      # 0x20
	.word	23                      # 0x17
	.word	53                      # 0x35
	.word	61                      # 0x3d
	.word	25                      # 0x19
	.word	34                      # 0x22
	.word	87                      # 0x57
	.word	88                      # 0x58
	.word	3                       # 0x3
	.word	91                      # 0x5b
	.word	26                      # 0x1a
	.word	9                       # 0x9
	.word	37                      # 0x25
	.word	81                      # 0x51
	.word	85                      # 0x55
	.word	64                      # 0x40
	.word	96                      # 0x60
	.word	3                       # 0x3
	.word	99                      # 0x63
	.word	82                      # 0x52
	.word	65                      # 0x41
	.word	100                     # 0x64
	.word	48                      # 0x30
	.word	42                      # 0x2a
	.word	68                      # 0x44
	.word	10                      # 0xa
	.word	29                      # 0x1d
	.word	62                      # 0x3e
	.word	88                      # 0x58
	.word	48                      # 0x30
	.word	17                      # 0x11
	.word	19                      # 0x13
	.word	37                      # 0x25
	.word	70                      # 0x46
	.word	47                      # 0x2f
	.word	28                      # 0x1c
	.word	70                      # 0x46
	.word	100                     # 0x64
	.word	16                      # 0x10
	.word	73                      # 0x49
	.word	91                      # 0x5b
	.word	8                       # 0x8
	.word	82                      # 0x52
	.word	94                      # 0x5e
	.word	89                      # 0x59
	.word	33                      # 0x21
	.word	57                      # 0x39
	.word	84                      # 0x54
	.word	36                      # 0x24
	.word	21                      # 0x15
	.word	31                      # 0x1f
	.word	1                       # 0x1
	.word	87                      # 0x57
	.word	46                      # 0x2e
	.word	9                       # 0x9
	.word	20                      # 0x14
	.word	56                      # 0x38
	.word	4                       # 0x4
	.word	82                      # 0x52
	.word	9                       # 0x9
	.word	52                      # 0x34
	.word	99                      # 0x63
	.word	96                      # 0x60
	.word	56                      # 0x38
	.word	34                      # 0x22
	.word	8                       # 0x8
	.word	84                      # 0x54
	.word	3                       # 0x3
	.word	7                       # 0x7
	.word	66                      # 0x42
	.word	42                      # 0x2a
	.word	64                      # 0x40
	.word	74                      # 0x4a
	.word	24                      # 0x18
	.word	58                      # 0x3a
	.word	28                      # 0x1c
	.word	23                      # 0x17
	.word	81                      # 0x51
	.word	11                      # 0xb
	.word	59                      # 0x3b
	.word	2                       # 0x2
	.word	9                       # 0x9
	.word	26                      # 0x1a
	.word	55                      # 0x37
	.word	55                      # 0x37
	.word	1                       # 0x1
	.word	76                      # 0x4c
	.word	77                      # 0x4d
	.word	6                       # 0x6
	.word	23                      # 0x17
	.word	87                      # 0x57
	.word	24                      # 0x18
	.word	89                      # 0x59
	.word	82                      # 0x52
	.word	80                      # 0x50
	.word	22                      # 0x16
	.word	90                      # 0x5a
	.word	30                      # 0x1e
	.word	93                      # 0x5d
	.word	63                      # 0x3f
	.word	96                      # 0x60
	.word	34                      # 0x22
	.word	27                      # 0x1b
	.word	36                      # 0x24
	.word	24                      # 0x18
	.word	51                      # 0x33
	.word	30                      # 0x1e
	.word	47                      # 0x2f
	.word	98                      # 0x62
	.word	8                       # 0x8
	.word	73                      # 0x49
	.word	100                     # 0x64
	.word	17                      # 0x11
	.word	99                      # 0x63
	.word	21                      # 0x15
	.word	72                      # 0x48
	.word	0                       # 0x0
	.word	97                      # 0x61
	.word	48                      # 0x30
	.word	73                      # 0x49
	.word	86                      # 0x56
	.word	34                      # 0x22
	.word	97                      # 0x61
	.word	74                      # 0x4a
	.word	82                      # 0x52
	.word	43                      # 0x2b
	.word	63                      # 0x3f
	.word	37                      # 0x25
	.word	73                      # 0x49
	.word	55                      # 0x37
	.word	0                       # 0x0
	.word	34                      # 0x22
	.word	55                      # 0x37
	.word	94                      # 0x5e
	.word	36                      # 0x24
	.word	80                      # 0x50
	.word	10                      # 0xa
	.word	67                      # 0x43
	.word	93                      # 0x5d
	.word	7                       # 0x7
	.word	75                      # 0x4b
	.word	65                      # 0x41
	.word	74                      # 0x4a
	.word	92                      # 0x5c
	.word	64                      # 0x40
	.word	95                      # 0x5f
	.word	63                      # 0x3f
	.word	30                      # 0x1e
	.word	57                      # 0x39
	.word	77                      # 0x4d
	.word	2                       # 0x2
	.word	42                      # 0x2a
	.word	11                      # 0xb
	.word	65                      # 0x41
	.word	16                      # 0x10
	.word	59                      # 0x3b
	.word	7                       # 0x7
	.word	45                      # 0x2d
	.word	97                      # 0x61
	.word	46                      # 0x2e
	.word	66                      # 0x42
	.word	63                      # 0x3f
	.word	81                      # 0x51
	.word	20                      # 0x14
	.word	56                      # 0x38
	.word	83                      # 0x53
	.word	66                      # 0x42
	.word	32                      # 0x20
	.word	49                      # 0x31
	.word	59                      # 0x3b
	.word	39                      # 0x27
	.word	90                      # 0x5a
	.word	23                      # 0x17
	.word	12                      # 0xc
	.word	81                      # 0x51
	.word	53                      # 0x35
	.word	73                      # 0x49
	.word	9                       # 0x9
	.word	49                      # 0x31
	.word	29                      # 0x1d
	.word	87                      # 0x57
	.word	17                      # 0x11
	.word	72                      # 0x48
	.word	64                      # 0x40
	.word	83                      # 0x53
	.word	54                      # 0x36
	.word	89                      # 0x59
	.word	90                      # 0x5a
	.word	65                      # 0x41
	.word	85                      # 0x55
	.word	36                      # 0x24
	.word	30                      # 0x1e
	.word	13                      # 0xd
	.word	83                      # 0x53
	.word	16                      # 0x10
	.word	35                      # 0x23
	.word	65                      # 0x41
	.word	83                      # 0x53
	.word	67                      # 0x43
	.word	14                      # 0xe
	.word	7                       # 0x7
	.word	73                      # 0x49
	.word	70                      # 0x46
	.word	97                      # 0x61
	.word	85                      # 0x55
	.word	51                      # 0x33
	.word	16                      # 0x10
	.word	24                      # 0x18
	.word	26                      # 0x1a
	.word	65                      # 0x41
	.word	53                      # 0x35
	.word	79                      # 0x4f
	.word	83                      # 0x53
	.word	91                      # 0x5b
	.word	8                       # 0x8
	.word	65                      # 0x41
	.word	10                      # 0xa
	.word	98                      # 0x62
	.word	20                      # 0x14
	.word	41                      # 0x29
	.word	48                      # 0x30
	.word	22                      # 0x16
	.word	71                      # 0x47
	.word	62                      # 0x3e
	.word	4                       # 0x4
	.word	54                      # 0x36
	.word	63                      # 0x3f
	.word	36                      # 0x24
	.word	36                      # 0x24
	.word	30                      # 0x1e
	.word	16                      # 0x10
	.word	9                       # 0x9
	.word	2                       # 0x2
	.word	86                      # 0x56
	.word	5                       # 0x5
	.word	53                      # 0x35
	.word	36                      # 0x24
	.word	88                      # 0x58
	.word	77                      # 0x4d
	.word	29                      # 0x1d
	.word	53                      # 0x35
	.word	97                      # 0x61
	.word	74                      # 0x4a
	.word	1                       # 0x1
	.word	53                      # 0x35
	.word	83                      # 0x53
	.word	32                      # 0x20
	.word	30                      # 0x1e
	.word	46                      # 0x2e
	.word	52                      # 0x34
	.word	71                      # 0x47
	.word	94                      # 0x5e
	.word	41                      # 0x29
	.word	42                      # 0x2a
	.word	21                      # 0x15
	.word	45                      # 0x2d
	.word	62                      # 0x3e
	.word	85                      # 0x55
	.word	81                      # 0x51
	.word	98                      # 0x62
	.word	81                      # 0x51
	.word	97                      # 0x61
	.word	73                      # 0x49
	.word	83                      # 0x53
	.word	83                      # 0x53
	.word	44                      # 0x2c
	.word	1                       # 0x1
	.word	85                      # 0x55
	.word	32                      # 0x20
	.word	45                      # 0x2d
	.word	80                      # 0x50
	.word	85                      # 0x55
	.word	41                      # 0x29
	.word	54                      # 0x36
	.word	52                      # 0x34
	.word	60                      # 0x3c
	.word	2                       # 0x2
	.word	84                      # 0x54
	.word	90                      # 0x5a
	.word	48                      # 0x30
	.word	1                       # 0x1
	.word	61                      # 0x3d
	.word	7                       # 0x7
	.word	42                      # 0x2a
	.word	69                      # 0x45
	.word	96                      # 0x60
	.word	54                      # 0x36
	.word	30                      # 0x1e
	.word	46                      # 0x2e
	.word	0                       # 0x0
	.word	94                      # 0x5e
	.word	26                      # 0x1a
	.word	64                      # 0x40
	.word	32                      # 0x20
	.word	75                      # 0x4b
	.word	46                      # 0x2e
	.word	76                      # 0x4c
	.word	42                      # 0x2a
	.word	97                      # 0x61
	.word	7                       # 0x7
	.word	87                      # 0x57
	.word	43                      # 0x2b
	.word	58                      # 0x3a
	.word	94                      # 0x5e
	.word	97                      # 0x61
	.word	9                       # 0x9
	.word	54                      # 0x36
	.word	99                      # 0x63
	.word	59                      # 0x3b
	.word	43                      # 0x2b
	.word	12                      # 0xc
	.word	61                      # 0x3d
	.word	70                      # 0x46
	.word	19                      # 0x13
	.word	69                      # 0x45
	.word	4                       # 0x4
	.word	14                      # 0xe
	.word	22                      # 0x16
	.word	0                       # 0x0
	.word	26                      # 0x1a
	.word	23                      # 0x17
	.word	60                      # 0x3c
	.word	52                      # 0x34
	.word	53                      # 0x35
	.word	92                      # 0x5c
	.word	93                      # 0x5d
	.word	65                      # 0x41
	.word	68                      # 0x44
	.word	35                      # 0x23
	.word	61                      # 0x3d
	.word	75                      # 0x4b
	.word	88                      # 0x58
	.word	70                      # 0x46
	.word	33                      # 0x21
	.word	82                      # 0x52
	.word	66                      # 0x42
	.word	8                       # 0x8
	.word	35                      # 0x23
	.word	30                      # 0x1e
	.word	68                      # 0x44
	.word	44                      # 0x2c
	.word	8                       # 0x8
	.word	95                      # 0x5f
	.word	81                      # 0x51
	.word	28                      # 0x1c
	.word	63                      # 0x3f
	.word	85                      # 0x55
	.word	8                       # 0x8
	.word	52                      # 0x34
	.word	86                      # 0x56
	.word	35                      # 0x23
	.word	41                      # 0x29
	.word	11                      # 0xb
	.word	53                      # 0x35
	.word	94                      # 0x5e
	.word	3                       # 0x3
	.word	12                      # 0xc
	.word	58                      # 0x3a
	.word	71                      # 0x47
	.word	13                      # 0xd
	.word	85                      # 0x55
	.word	11                      # 0xb
	.word	0                       # 0x0
	.word	55                      # 0x37
	.word	44                      # 0x2c
	.word	82                      # 0x52
	.word	87                      # 0x57
	.word	19                      # 0x13
	.word	83                      # 0x53
	.word	84                      # 0x54
	.word	87                      # 0x57
	.word	27                      # 0x1b
	.word	92                      # 0x5c
	.word	81                      # 0x51
	.word	7                       # 0x7
	.word	86                      # 0x56
	.word	9                       # 0x9
	.word	58                      # 0x3a
	.word	61                      # 0x3d
	.word	27                      # 0x1b
	.word	9                       # 0x9
	.word	62                      # 0x3e
	.word	68                      # 0x44
	.word	21                      # 0x15
	.word	81                      # 0x51
	.word	61                      # 0x3d
	.word	24                      # 0x18
	.word	93                      # 0x5d
	.word	85                      # 0x55
	.word	61                      # 0x3d
	.word	72                      # 0x48
	.word	70                      # 0x46
	.word	72                      # 0x48
	.word	73                      # 0x49
	.word	91                      # 0x5b
	.word	16                      # 0x10
	.word	20                      # 0x14
	.word	77                      # 0x4d
	.word	35                      # 0x23
	.word	3                       # 0x3
	.word	26                      # 0x1a
	.word	88                      # 0x58
	.word	97                      # 0x61
	.word	18                      # 0x12
	.word	34                      # 0x22
	.word	3                       # 0x3
	.word	70                      # 0x46
	.word	9                       # 0x9
	.word	27                      # 0x1b
	.word	30                      # 0x1e
	.word	37                      # 0x25
	.word	37                      # 0x25
	.word	92                      # 0x5c
	.word	4                       # 0x4
	.word	24                      # 0x18
	.word	73                      # 0x49
	.word	32                      # 0x20
	.word	48                      # 0x30
	.word	31                      # 0x1f
	.word	83                      # 0x53
	.word	8                       # 0x8
	.word	3                       # 0x3
	.word	52                      # 0x34
	.word	80                      # 0x50
	.word	42                      # 0x2a
	.word	8                       # 0x8
	.word	62                      # 0x3e
	.word	62                      # 0x3e
	.word	52                      # 0x34
	.word	63                      # 0x3f
	.word	65                      # 0x41
	.word	78                      # 0x4e
	.word	16                      # 0x10
	.word	27                      # 0x1b
	.word	62                      # 0x3e
	.word	50                      # 0x32
	.word	30                      # 0x1e
	.word	32                      # 0x20
	.word	26                      # 0x1a
	.word	24                      # 0x18
	.word	62                      # 0x3e
	.word	63                      # 0x3f
	.word	27                      # 0x1b
	.word	20                      # 0x14
	.word	67                      # 0x43
	.word	51                      # 0x33
	.word	59                      # 0x3b
	.word	65                      # 0x41
	.word	65                      # 0x41
	.word	90                      # 0x5a
	.word	48                      # 0x30
	.word	73                      # 0x49
	.word	93                      # 0x5d
	.word	66                      # 0x42
	.word	18                      # 0x12
	.word	0                       # 0x0
	.word	75                      # 0x4b
	.word	47                      # 0x2f
	.word	63                      # 0x3f
	.word	26                      # 0x1a
	.word	76                      # 0x4c
	.word	94                      # 0x5e
	.word	3                       # 0x3
	.word	59                      # 0x3b
	.word	21                      # 0x15
	.word	66                      # 0x42
	.word	75                      # 0x4b
	.word	17                      # 0x11
	.word	64                      # 0x40
	.word	0                       # 0x0
	.word	41                      # 0x29
	.word	25                      # 0x19
	.word	63                      # 0x3f
	.word	68                      # 0x44
	.word	11                      # 0xb
	.word	97                      # 0x61
	.word	85                      # 0x55
	.word	70                      # 0x46
	.word	61                      # 0x3d
	.word	49                      # 0x31
	.word	60                      # 0x3c
	.word	8                       # 0x8
	.word	88                      # 0x58
	.word	18                      # 0x12
	.word	41                      # 0x29
	.word	6                       # 0x6
	.word	19                      # 0x13
	.word	15                      # 0xf
	.word	19                      # 0x13
	.word	48                      # 0x30
	.word	41                      # 0x29
	.word	61                      # 0x3d
	.word	41                      # 0x29
	.word	10                      # 0xa
	.word	19                      # 0x13
	.word	62                      # 0x3e
	.word	42                      # 0x2a
	.word	95                      # 0x5f
	.word	46                      # 0x2e
	.word	5                       # 0x5
	.word	95                      # 0x5f
	.word	53                      # 0x35
	.word	98                      # 0x62
	.word	58                      # 0x3a
	.word	21                      # 0x15
	.word	8                       # 0x8
	.word	20                      # 0x14
	.word	5                       # 0x5
	.word	79                      # 0x4f
	.word	81                      # 0x51
	.word	21                      # 0x15
	.word	4                       # 0x4
	.word	56                      # 0x38
	.word	8                       # 0x8
	.word	89                      # 0x59
	.word	97                      # 0x61
	.word	81                      # 0x51
	.word	74                      # 0x4a
	.word	11                      # 0xb
	.word	100                     # 0x64
	.word	21                      # 0x15
	.word	18                      # 0x12
	.word	61                      # 0x3d
	.word	29                      # 0x1d
	.word	95                      # 0x5f
	.word	46                      # 0x2e
	.word	57                      # 0x39
	.word	37                      # 0x25
	.word	40                      # 0x28
	.word	2                       # 0x2
	.word	42                      # 0x2a
	.word	1                       # 0x1
	.word	56                      # 0x38
	.word	5                       # 0x5
	.word	59                      # 0x3b
	.word	43                      # 0x2b
	.word	14                      # 0xe
	.word	79                      # 0x4f
	.word	14                      # 0xe
	.word	59                      # 0x3b
	.word	25                      # 0x19
	.word	35                      # 0x23
	.word	29                      # 0x1d
	.word	81                      # 0x51
	.word	44                      # 0x2c
	.word	84                      # 0x54
	.word	43                      # 0x2b
	.word	24                      # 0x18
	.word	58                      # 0x3a
	.word	20                      # 0x14
	.word	91                      # 0x5b
	.word	45                      # 0x2d
	.word	38                      # 0x26
	.word	17                      # 0x11
	.word	74                      # 0x4a
	.word	100                     # 0x64
	.word	63                      # 0x3f
	.word	31                      # 0x1f
	.word	36                      # 0x24
	.word	3                       # 0x3
	.word	33                      # 0x21
	.word	44                      # 0x2c
	.word	71                      # 0x47
	.word	55                      # 0x37
	.word	50                      # 0x32
	.word	96                      # 0x60
	.word	98                      # 0x62
	.word	30                      # 0x1e
	.word	40                      # 0x28
	.word	12                      # 0xc
	.word	55                      # 0x37
	.word	65                      # 0x41
	.word	13                      # 0xd
	.word	50                      # 0x32
	.word	12                      # 0xc
	.word	57                      # 0x39
	.word	33                      # 0x21
	.word	55                      # 0x37
	.word	48                      # 0x30
	.word	91                      # 0x5b
	.word	42                      # 0x2a
	.word	38                      # 0x26
	.word	36                      # 0x24
	.word	46                      # 0x2e
	.word	55                      # 0x37
	.word	76                      # 0x4c
	.word	45                      # 0x2d
	.word	17                      # 0x11
	.word	6                       # 0x6
	.word	81                      # 0x51
	.word	87                      # 0x57
	.word	6                       # 0x6
	.word	25                      # 0x19
	.word	57                      # 0x39
	.word	61                      # 0x3d
	.word	41                      # 0x29
	.word	52                      # 0x34
	.word	25                      # 0x19
	.word	37                      # 0x25
	.word	92                      # 0x5c
	.word	3                       # 0x3
	.word	92                      # 0x5c
	.word	23                      # 0x17
	.word	16                      # 0x10
	.word	7                       # 0x7
	.word	35                      # 0x23
	.word	74                      # 0x4a
	.word	40                      # 0x28
	.word	56                      # 0x38
	.word	21                      # 0x15
	.word	98                      # 0x62
	.word	98                      # 0x62
	.word	59                      # 0x3b
	.word	100                     # 0x64
	.word	44                      # 0x2c
	.word	80                      # 0x50
	.word	75                      # 0x4b
	.word	89                      # 0x59
	.word	97                      # 0x61
	.word	82                      # 0x52
	.word	36                      # 0x24
	.word	50                      # 0x32
	.word	54                      # 0x36
	.word	27                      # 0x1b
	.word	6                       # 0x6
	.word	14                      # 0xe
	.word	68                      # 0x44
	.word	25                      # 0x19
	.word	5                       # 0x5
	.word	4                       # 0x4
	.word	83                      # 0x53
	.word	8                       # 0x8
	.word	62                      # 0x3e
	.word	5                       # 0x5
	.word	25                      # 0x19
	.word	69                      # 0x45
	.word	40                      # 0x28
	.word	65                      # 0x41
	.word	75                      # 0x4b
	.word	63                      # 0x3f
	.word	52                      # 0x34
	.word	72                      # 0x48
	.word	60                      # 0x3c
	.word	10                      # 0xa
	.word	71                      # 0x47
	.word	70                      # 0x46
	.word	56                      # 0x38
	.word	12                      # 0xc
	.word	59                      # 0x3b
	.word	52                      # 0x34
	.word	94                      # 0x5e
	.word	95                      # 0x5f
	.word	68                      # 0x44
	.word	13                      # 0xd
	.word	21                      # 0x15
	.word	41                      # 0x29
	.word	94                      # 0x5e
	.word	55                      # 0x37
	.word	66                      # 0x42
	.word	100                     # 0x64
	.word	25                      # 0x19
	.word	48                      # 0x30
	.word	7                       # 0x7
	.word	53                      # 0x35
	.word	54                      # 0x36
	.word	99                      # 0x63
	.word	88                      # 0x58
	.word	60                      # 0x3c
	.word	63                      # 0x3f
	.word	62                      # 0x3e
	.word	22                      # 0x16
	.word	14                      # 0xe
	.word	34                      # 0x22
	.word	49                      # 0x31
	.word	91                      # 0x5b
	.word	71                      # 0x47
	.word	18                      # 0x12
	.word	46                      # 0x2e
	.word	83                      # 0x53
	.word	77                      # 0x4d
	.word	65                      # 0x41
	.word	42                      # 0x2a
	.word	37                      # 0x25
	.word	32                      # 0x20
	.word	55                      # 0x37
	.word	24                      # 0x18
	.word	39                      # 0x27
	.word	15                      # 0xf
	.word	45                      # 0x2d
	.word	4                       # 0x4
	.word	14                      # 0xe
	.word	36                      # 0x24
	.word	19                      # 0x13
	.word	21                      # 0x15
	.word	89                      # 0x59
	.word	39                      # 0x27
	.word	87                      # 0x57
	.word	76                      # 0x4c
	.word	99                      # 0x63
	.word	49                      # 0x31
	.word	4                       # 0x4
	.word	88                      # 0x58
	.word	64                      # 0x40
	.word	4                       # 0x4
	.word	36                      # 0x24
	.word	54                      # 0x36
	.word	75                      # 0x4b
	.word	20                      # 0x14
	.word	67                      # 0x43
	.word	24                      # 0x18
	.word	64                      # 0x40
	.word	31                      # 0x1f
	.word	32                      # 0x20
	.word	0                       # 0x0
	.word	29                      # 0x1d
	.word	54                      # 0x36
	.word	92                      # 0x5c
	.word	69                      # 0x45
	.word	69                      # 0x45
	.word	36                      # 0x24
	.word	39                      # 0x27
	.word	83                      # 0x53
	.word	39                      # 0x27
	.word	58                      # 0x3a
	.word	70                      # 0x46
	.word	27                      # 0x1b
	.word	63                      # 0x3f
	.word	56                      # 0x38
	.word	70                      # 0x46
	.word	28                      # 0x1c
	.word	5                       # 0x5
	.word	74                      # 0x4a
	.word	15                      # 0xf
	.word	35                      # 0x23
	.word	78                      # 0x4e
	.word	17                      # 0x11
	.word	55                      # 0x37
	.word	18                      # 0x12
	.word	37                      # 0x25
	.word	88                      # 0x58
	.word	8                       # 0x8
	.word	0                       # 0x0
	.word	85                      # 0x55
	.word	41                      # 0x29
	.word	68                      # 0x44
	.word	14                      # 0xe
	.word	95                      # 0x5f
	.word	59                      # 0x3b
	.word	49                      # 0x31
	.word	63                      # 0x3f
	.word	61                      # 0x3d
	.word	54                      # 0x36
	.word	11                      # 0xb
	.word	66                      # 0x42
	.word	79                      # 0x4f
	.word	81                      # 0x51
	.word	94                      # 0x5e
	.word	41                      # 0x29
	.word	3                       # 0x3
	.word	29                      # 0x1d
	.word	69                      # 0x45
	.word	75                      # 0x4b
	.word	69                      # 0x45
	.word	50                      # 0x32
	.word	9                       # 0x9
	.word	46                      # 0x2e
	.word	33                      # 0x21
	.word	30                      # 0x1e
	.word	30                      # 0x1e
	.word	71                      # 0x47
	.word	18                      # 0x12
	.word	39                      # 0x27
	.word	37                      # 0x25
	.word	2                       # 0x2
	.word	80                      # 0x50
	.word	4                       # 0x4
	.word	83                      # 0x53
	.word	40                      # 0x28
	.word	29                      # 0x1d
	.word	98                      # 0x62
	.word	2                       # 0x2
	.word	57                      # 0x39
	.word	52                      # 0x34
	.word	13                      # 0xd
	.word	22                      # 0x16
	.word	30                      # 0x1e
	.word	60                      # 0x3c
	.word	82                      # 0x52
	.word	71                      # 0x47
	.word	29                      # 0x1d
	.word	10                      # 0xa
	.word	6                       # 0x6
	.word	3                       # 0x3
	.word	79                      # 0x4f
	.word	22                      # 0x16
	.word	79                      # 0x4f
	.word	91                      # 0x5b
	.word	56                      # 0x38
	.word	76                      # 0x4c
	.word	21                      # 0x15
	.word	26                      # 0x1a
	.word	94                      # 0x5e
	.word	26                      # 0x1a
	.word	63                      # 0x3f
	.word	62                      # 0x3e
	.word	72                      # 0x48
	.word	34                      # 0x22
	.word	45                      # 0x2d
	.word	11                      # 0xb
	.word	29                      # 0x1d
	.word	42                      # 0x2a
	.word	13                      # 0xd
	.word	86                      # 0x56
	.word	94                      # 0x5e
	.word	93                      # 0x5d
	.word	75                      # 0x4b
	.word	90                      # 0x5a
	.word	18                      # 0x12
	.word	56                      # 0x38
	.word	27                      # 0x1b
	.word	48                      # 0x30
	.word	33                      # 0x21
	.word	33                      # 0x21
	.word	17                      # 0x11
	.word	78                      # 0x4e
	.word	55                      # 0x37
	.word	63                      # 0x3f
	.word	69                      # 0x45
	.word	10                      # 0xa
	.word	38                      # 0x26
	.word	56                      # 0x38
	.word	2                       # 0x2
	.word	31                      # 0x1f
	.word	48                      # 0x30
	.word	32                      # 0x20
	.word	93                      # 0x5d
	.word	19                      # 0x13
	.word	32                      # 0x20
	.word	3                       # 0x3
	.word	30                      # 0x1e
	.word	61                      # 0x3d
	.word	46                      # 0x2e
	.word	43                      # 0x2b
	.word	13                      # 0xd
	.word	5                       # 0x5
	.word	1                       # 0x1
	.word	88                      # 0x58
	.word	96                      # 0x60
	.word	86                      # 0x56
	.word	9                       # 0x9
	.word	89                      # 0x59
	.word	100                     # 0x64
	.word	42                      # 0x2a
	.word	21                      # 0x15
	.word	17                      # 0x11
	.word	20                      # 0x14
	.word	42                      # 0x2a
	.word	80                      # 0x50
	.word	55                      # 0x37
	.word	19                      # 0x13
	.word	17                      # 0x11
	.word	10                      # 0xa
	.word	88                      # 0x58
	.word	14                      # 0xe
	.word	58                      # 0x3a
	.word	19                      # 0x13
	.word	6                       # 0x6
	.word	77                      # 0x4d
	.word	17                      # 0x11
	.word	77                      # 0x4d
	.word	73                      # 0x49
	.word	79                      # 0x4f
	.word	22                      # 0x16
	.word	15                      # 0xf
	.word	58                      # 0x3a
	.word	94                      # 0x5e
	.word	83                      # 0x53
	.word	45                      # 0x2d
	.word	55                      # 0x37
	.word	68                      # 0x44
	.word	20                      # 0x14
	.word	43                      # 0x2b
	.word	68                      # 0x44
	.word	63                      # 0x3f
	.word	30                      # 0x1e
	.word	51                      # 0x33
	.word	49                      # 0x31
	.word	39                      # 0x27
	.word	97                      # 0x61
	.word	3                       # 0x3
	.word	58                      # 0x3a
	.word	13                      # 0xd
	.word	80                      # 0x50
	.word	45                      # 0x2d
	.word	27                      # 0x1b
	.word	3                       # 0x3
	.word	31                      # 0x1f
	.word	100                     # 0x64
	.word	80                      # 0x50
	.word	48                      # 0x30
	.word	76                      # 0x4c
	.word	52                      # 0x34
	.word	93                      # 0x5d
	.word	64                      # 0x40
	.word	33                      # 0x21
	.word	50                      # 0x32
	.word	24                      # 0x18
	.word	82                      # 0x52
	.word	61                      # 0x3d
	.word	45                      # 0x2d
	.word	15                      # 0xf
	.word	82                      # 0x52
	.word	89                      # 0x59
	.word	49                      # 0x31
	.word	10                      # 0xa
	.word	85                      # 0x55
	.word	100                     # 0x64
	.word	59                      # 0x3b
	.word	23                      # 0x17
	.word	96                      # 0x60
	.word	28                      # 0x1c
	.word	81                      # 0x51
	.word	75                      # 0x4b
	.word	7                       # 0x7
	.word	93                      # 0x5d
	.word	68                      # 0x44
	.word	10                      # 0xa
	.word	90                      # 0x5a
	.word	34                      # 0x22
	.word	56                      # 0x38
	.word	3                       # 0x3
	.word	76                      # 0x4c
	.word	74                      # 0x4a
	.word	97                      # 0x61
	.word	6                       # 0x6
	.word	73                      # 0x49
	.word	12                      # 0xc
	.word	30                      # 0x1e
	.word	20                      # 0x14
	.word	40                      # 0x28
	.word	75                      # 0x4b
	.word	35                      # 0x23
	.word	88                      # 0x58
	.word	29                      # 0x1d
	.word	85                      # 0x55
	.word	64                      # 0x40
	.word	14                      # 0xe
	.word	50                      # 0x32
	.word	22                      # 0x16
	.word	37                      # 0x25
	.word	12                      # 0xc
	.word	16                      # 0x10
	.word	85                      # 0x55
	.word	87                      # 0x57
	.word	23                      # 0x17
	.word	77                      # 0x4d
	.word	21                      # 0x15
	.word	100                     # 0x64
	.word	66                      # 0x42
	.word	55                      # 0x37
	.word	21                      # 0x15
	.word	35                      # 0x23
	.word	30                      # 0x1e
	.word	95                      # 0x5f
	.word	31                      # 0x1f
	.word	2                       # 0x2
	.word	33                      # 0x21
	.word	10                      # 0xa
	.word	32                      # 0x20
	.word	53                      # 0x35
	.word	16                      # 0x10
	.word	74                      # 0x4a
	.word	54                      # 0x36
	.word	70                      # 0x46
	.word	69                      # 0x45
	.word	38                      # 0x26
	.word	33                      # 0x21
	.word	83                      # 0x53
	.word	55                      # 0x37
	.word	55                      # 0x37
	.word	87                      # 0x57
	.word	67                      # 0x43
	.word	71                      # 0x47
	.word	71                      # 0x47
	.word	19                      # 0x13
	.word	60                      # 0x3c
	.word	13                      # 0xd
	.word	40                      # 0x28
	.word	25                      # 0x19
	.word	45                      # 0x2d
	.word	61                      # 0x3d
	.word	46                      # 0x2e
	.word	80                      # 0x50
	.word	58                      # 0x3a
	.word	6                       # 0x6
	.word	78                      # 0x4e
	.word	60                      # 0x3c
	.word	39                      # 0x27
	.word	88                      # 0x58
	.word	93                      # 0x5d
	.word	58                      # 0x3a
	.word	70                      # 0x46
	.word	32                      # 0x20
	.word	11                      # 0xb
	.word	39                      # 0x27
	.word	0                       # 0x0
	.word	16                      # 0x10
	.word	72                      # 0x48
	.word	50                      # 0x32
	.word	71                      # 0x47
	.word	93                      # 0x5d
	.word	36                      # 0x24
	.word	37                      # 0x25
	.word	29                      # 0x1d
	.word	6                       # 0x6
	.word	56                      # 0x38
	.word	55                      # 0x37
	.word	19                      # 0x13
	.word	63                      # 0x3f
	.word	80                      # 0x50
	.word	64                      # 0x40
	.word	23                      # 0x17
	.word	25                      # 0x19
	.word	43                      # 0x2b
	.word	81                      # 0x51
	.word	98                      # 0x62
	.word	87                      # 0x57
	.word	41                      # 0x29
	.word	2                       # 0x2
	.word	40                      # 0x28
	.word	100                     # 0x64
	.word	60                      # 0x3c
	.word	9                       # 0x9
	.word	31                      # 0x1f
	.word	37                      # 0x25
	.word	14                      # 0xe
	.word	98                      # 0x62
	.word	53                      # 0x35
	.word	86                      # 0x56
	.word	47                      # 0x2f
	.word	90                      # 0x5a
	.word	44                      # 0x2c
	.word	83                      # 0x53
	.word	26                      # 0x1a
	.word	73                      # 0x49
	.word	55                      # 0x37
	.word	49                      # 0x31
	.word	27                      # 0x1b
	.word	40                      # 0x28
	.word	11                      # 0xb
	.word	73                      # 0x49
	.word	70                      # 0x46
	.word	0                       # 0x0
	.word	64                      # 0x40
	.word	13                      # 0xd
	.word	82                      # 0x52
	.word	61                      # 0x3d
	.word	66                      # 0x42
	.word	89                      # 0x59
	.word	29                      # 0x1d
	.word	6                       # 0x6
	.word	88                      # 0x58
	.word	89                      # 0x59
	.word	15                      # 0xf
	.word	85                      # 0x55
	.word	93                      # 0x5d
	.word	30                      # 0x1e
	.word	82                      # 0x52
	.word	11                      # 0xb
	.word	82                      # 0x52
	.word	96                      # 0x60
	.word	1                       # 0x1
	.word	26                      # 0x1a
	.word	78                      # 0x4e
	.word	27                      # 0x1b
	.word	65                      # 0x41
	.word	100                     # 0x64
	.word	42                      # 0x2a
	.word	93                      # 0x5d
	.word	39                      # 0x27
	.word	53                      # 0x35
	.word	31                      # 0x1f
	.word	9                       # 0x9
	.word	54                      # 0x36
	.word	96                      # 0x60
	.word	89                      # 0x59
	.word	1                       # 0x1
	.word	22                      # 0x16
	.word	54                      # 0x36
	.word	90                      # 0x5a
	.word	52                      # 0x34
	.word	60                      # 0x3c
	.word	43                      # 0x2b
	.word	6                       # 0x6
	.word	42                      # 0x2a
	.word	27                      # 0x1b
	.word	99                      # 0x63
	.word	72                      # 0x48
	.word	75                      # 0x4b
	.word	10                      # 0xa
	.word	19                      # 0x13
	.word	70                      # 0x46
	.word	11                      # 0xb
	.word	45                      # 0x2d
	.word	14                      # 0xe
	.word	4                       # 0x4
	.word	10                      # 0xa
	.word	13                      # 0xd
	.word	47                      # 0x2f
	.word	69                      # 0x45
	.word	52                      # 0x34
	.word	66                      # 0x42
	.word	100                     # 0x64
	.word	27                      # 0x1b
	.word	86                      # 0x56
	.word	61                      # 0x3d
	.word	15                      # 0xf
	.word	53                      # 0x35
	.word	84                      # 0x54
	.word	36                      # 0x24
	.word	42                      # 0x2a
	.word	35                      # 0x23
	.word	96                      # 0x60
	.word	85                      # 0x55
	.word	41                      # 0x29
	.word	37                      # 0x25
	.word	78                      # 0x4e
	.word	40                      # 0x28
	.word	75                      # 0x4b
	.word	53                      # 0x35
	.word	16                      # 0x10
	.word	95                      # 0x5f
	.word	22                      # 0x16
	.word	94                      # 0x5e
	.word	5                       # 0x5
	.word	36                      # 0x24
	.word	98                      # 0x62
	.word	15                      # 0xf
	.word	15                      # 0xf
	.word	80                      # 0x50
	.word	63                      # 0x3f
	.word	13                      # 0xd
	.word	11                      # 0xb
	.word	92                      # 0x5c
	.word	48                      # 0x30
	.word	44                      # 0x2c
	.word	88                      # 0x58
	.word	55                      # 0x37
	.word	99                      # 0x63
	.word	9                       # 0x9
	.word	4                       # 0x4
	.word	48                      # 0x30
	.word	1                       # 0x1
	.word	20                      # 0x14
	.word	2                       # 0x2
	.word	10                      # 0xa
	.word	61                      # 0x3d
	.word	1                       # 0x1
	.word	44                      # 0x2c
	.word	86                      # 0x56
	.word	73                      # 0x49
	.word	74                      # 0x4a
	.word	83                      # 0x53
	.word	23                      # 0x17
	.word	11                      # 0xb
	.word	62                      # 0x3e
	.word	50                      # 0x32
	.word	93                      # 0x5d
	.word	26                      # 0x1a
	.word	22                      # 0x16
	.word	38                      # 0x26
	.word	90                      # 0x5a
	.word	1                       # 0x1
	.word	15                      # 0xf
	.word	47                      # 0x2f
	.word	49                      # 0x31
	.word	59                      # 0x3b
	.word	34                      # 0x22
	.word	71                      # 0x47
	.word	23                      # 0x17
	.word	44                      # 0x2c
	.word	75                      # 0x4b
	.word	38                      # 0x26
	.word	11                      # 0xb
	.word	61                      # 0x3d
	.word	40                      # 0x28
	.word	22                      # 0x16
	.word	21                      # 0x15
	.word	41                      # 0x29
	.word	32                      # 0x20
	.word	7                       # 0x7
	.word	13                      # 0xd
	.word	6                       # 0x6
	.word	56                      # 0x38
	.word	36                      # 0x24
	.word	84                      # 0x54
	.word	17                      # 0x11
	.word	52                      # 0x34
	.word	76                      # 0x4c
	.word	44                      # 0x2c
	.word	74                      # 0x4a
	.word	80                      # 0x50
	.word	100                     # 0x64
	.word	42                      # 0x2a
	.word	96                      # 0x60
	.word	46                      # 0x2e
	.word	91                      # 0x5b
	.word	20                      # 0x14
	.word	81                      # 0x51
	.word	27                      # 0x1b
	.word	10                      # 0xa
	.word	91                      # 0x5b
	.word	2                       # 0x2
	.word	48                      # 0x30
	.word	1                       # 0x1
	.word	29                      # 0x1d
	.word	88                      # 0x58
	.word	90                      # 0x5a
	.word	51                      # 0x33
	.word	95                      # 0x5f
	.word	22                      # 0x16
	.word	58                      # 0x3a
	.word	7                       # 0x7
	.word	95                      # 0x5f
	.word	13                      # 0xd
	.word	9                       # 0x9
	.word	78                      # 0x4e
	.word	31                      # 0x1f
	.word	61                      # 0x3d
	.word	19                      # 0x13
	.word	41                      # 0x29
	.word	1                       # 0x1
	.word	65                      # 0x41
	.word	40                      # 0x28
	.word	43                      # 0x2b
	.word	26                      # 0x1a
	.word	86                      # 0x56
	.word	100                     # 0x64
	.word	47                      # 0x2f
	.word	32                      # 0x20
	.word	94                      # 0x5e
	.word	23                      # 0x17
	.word	22                      # 0x16
	.word	62                      # 0x3e
	.word	71                      # 0x47
	.word	91                      # 0x5b
	.word	91                      # 0x5b
	.word	58                      # 0x3a
	.word	80                      # 0x50
	.word	41                      # 0x29
	.word	18                      # 0x12
	.word	68                      # 0x44
	.word	65                      # 0x41
	.word	25                      # 0x19
	.word	62                      # 0x3e
	.word	79                      # 0x4f
	.word	0                       # 0x0
	.word	5                       # 0x5
	.word	76                      # 0x4c
	.word	27                      # 0x1b
	.word	24                      # 0x18
	.word	83                      # 0x53
	.word	28                      # 0x1c
	.word	56                      # 0x38
	.word	22                      # 0x16
	.word	37                      # 0x25
	.word	82                      # 0x52
	.word	74                      # 0x4a
	.word	3                       # 0x3
	.word	95                      # 0x5f
	.word	6                       # 0x6
	.word	97                      # 0x61
	.word	17                      # 0x11
	.word	95                      # 0x5f
	.word	24                      # 0x18
	.word	54                      # 0x36
	.word	85                      # 0x55
	.word	14                      # 0xe
	.word	78                      # 0x4e
	.word	31                      # 0x1f
	.word	56                      # 0x38
	.word	96                      # 0x60
	.word	99                      # 0x63
	.word	20                      # 0x14
	.word	87                      # 0x57
	.word	27                      # 0x1b
	.word	65                      # 0x41
	.word	87                      # 0x57
	.word	32                      # 0x20
	.word	6                       # 0x6
	.word	14                      # 0xe
	.word	23                      # 0x17
	.word	89                      # 0x59
	.word	8                       # 0x8
	.word	45                      # 0x2d
	.word	77                      # 0x4d
	.word	12                      # 0xc
	.word	26                      # 0x1a
	.word	51                      # 0x33
	.word	82                      # 0x52
	.word	88                      # 0x58
	.word	23                      # 0x17
	.word	44                      # 0x2c
	.word	71                      # 0x47
	.word	17                      # 0x11
	.word	68                      # 0x44
	.word	25                      # 0x19
	.word	69                      # 0x45
	.word	82                      # 0x52
	.word	2                       # 0x2
	.word	100                     # 0x64
	.word	3                       # 0x3
	.word	99                      # 0x63
	.word	64                      # 0x40
	.word	91                      # 0x5b
	.word	85                      # 0x55
	.word	91                      # 0x5b
	.word	21                      # 0x15
	.word	38                      # 0x26
	.word	90                      # 0x5a
	.word	28                      # 0x1c
	.word	52                      # 0x34
	.word	79                      # 0x4f
	.word	83                      # 0x53
	.word	26                      # 0x1a
	.word	23                      # 0x17
	.word	60                      # 0x3c
	.word	38                      # 0x26
	.word	49                      # 0x31
	.word	10                      # 0xa
	.word	86                      # 0x56
	.word	2                       # 0x2
	.word	33                      # 0x21
	.word	29                      # 0x1d
	.word	74                      # 0x4a
	.word	16                      # 0x10
	.word	97                      # 0x61
	.word	65                      # 0x41
	.word	51                      # 0x33
	.word	45                      # 0x2d
	.word	67                      # 0x43
	.word	16                      # 0x10
	.word	48                      # 0x30
	.word	31                      # 0x1f
	.word	81                      # 0x51
	.word	4                       # 0x4
	.word	16                      # 0x10
	.word	37                      # 0x25
	.word	26                      # 0x1a
	.word	20                      # 0x14
	.word	93                      # 0x5d
	.word	20                      # 0x14
	.word	38                      # 0x26
	.word	71                      # 0x47
	.word	2                       # 0x2
	.word	64                      # 0x40
	.word	94                      # 0x5e
	.word	62                      # 0x3e
	.word	69                      # 0x45
	.word	9                       # 0x9
	.word	72                      # 0x48
	.word	54                      # 0x36
	.word	11                      # 0xb
	.word	71                      # 0x47
	.word	84                      # 0x54
	.word	51                      # 0x33
	.word	54                      # 0x36
	.word	80                      # 0x50
	.word	15                      # 0xf
	.word	4                       # 0x4
	.word	24                      # 0x18
	.word	83                      # 0x53
	.word	88                      # 0x58
	.word	39                      # 0x27
	.word	80                      # 0x50
	.word	68                      # 0x44
	.word	43                      # 0x2b
	.word	62                      # 0x3e
	.word	71                      # 0x47
	.word	35                      # 0x23
	.word	82                      # 0x52
	.word	64                      # 0x40
	.word	55                      # 0x37
	.word	19                      # 0x13
	.word	0                       # 0x0
	.word	58                      # 0x3a
	.word	84                      # 0x54
	.word	95                      # 0x5f
	.word	19                      # 0x13
	.word	18                      # 0x12
	.word	3                       # 0x3
	.word	58                      # 0x3a
	.word	72                      # 0x48
	.word	81                      # 0x51
	.word	95                      # 0x5f
	.word	55                      # 0x37
	.word	32                      # 0x20
	.word	14                      # 0xe
	.word	1                       # 0x1
	.word	47                      # 0x2f
	.word	19                      # 0x13
	.word	92                      # 0x5c
	.word	96                      # 0x60
	.word	6                       # 0x6
	.word	30                      # 0x1e
	.word	76                      # 0x4c
	.word	40                      # 0x28
	.word	40                      # 0x28
	.word	37                      # 0x25
	.word	77                      # 0x4d
	.word	75                      # 0x4b
	.word	19                      # 0x13
	.word	6                       # 0x6
	.word	30                      # 0x1e
	.word	38                      # 0x26
	.word	7                       # 0x7
	.word	54                      # 0x36
	.word	88                      # 0x58
	.word	68                      # 0x44
	.word	73                      # 0x49
	.word	5                       # 0x5
	.word	71                      # 0x47
	.word	97                      # 0x61
	.word	78                      # 0x4e
	.word	51                      # 0x33
	.word	58                      # 0x3a
	.word	99                      # 0x63
	.word	49                      # 0x31
	.word	72                      # 0x48
	.word	66                      # 0x42
	.word	97                      # 0x61
	.word	57                      # 0x39
	.word	58                      # 0x3a
	.word	58                      # 0x3a
	.word	63                      # 0x3f
	.word	54                      # 0x36
	.word	33                      # 0x21
	.word	69                      # 0x45
	.word	60                      # 0x3c
	.word	37                      # 0x25
	.word	12                      # 0xc
	.word	1                       # 0x1
	.word	56                      # 0x38
	.word	18                      # 0x12
	.word	31                      # 0x1f
	.word	60                      # 0x3c
	.word	92                      # 0x5c
	.word	51                      # 0x33
	.word	14                      # 0xe
	.word	59                      # 0x3b
	.word	90                      # 0x5a
	.word	19                      # 0x13
	.word	29                      # 0x1d
	.word	87                      # 0x57
	.word	63                      # 0x3f
	.word	47                      # 0x2f
	.word	10                      # 0xa
	.word	28                      # 0x1c
	.word	96                      # 0x60
	.word	82                      # 0x52
	.word	94                      # 0x5e
	.word	58                      # 0x3a
	.word	39                      # 0x27
	.word	17                      # 0x11
	.word	16                      # 0x10
	.word	68                      # 0x44
	.word	38                      # 0x26
	.word	15                      # 0xf
	.word	3                       # 0x3
	.word	64                      # 0x40
	.word	52                      # 0x34
	.word	15                      # 0xf
	.word	65                      # 0x41
	.word	74                      # 0x4a
	.word	100                     # 0x64
	.word	62                      # 0x3e
	.word	0                       # 0x0
	.word	92                      # 0x5c
	.word	12                      # 0xc
	.word	14                      # 0xe
	.word	50                      # 0x32
	.word	2                       # 0x2
	.word	33                      # 0x21
	.word	46                      # 0x2e
	.word	55                      # 0x37
	.word	63                      # 0x3f
	.word	59                      # 0x3b
	.word	65                      # 0x41
	.word	91                      # 0x5b
	.word	20                      # 0x14
	.word	46                      # 0x2e
	.word	50                      # 0x32
	.word	79                      # 0x4f
	.word	51                      # 0x33
	.word	34                      # 0x22
	.word	61                      # 0x3d
	.word	19                      # 0x13
	.word	72                      # 0x48
	.word	76                      # 0x4c
	.word	89                      # 0x59
	.word	35                      # 0x23
	.word	95                      # 0x5f
	.word	3                       # 0x3
	.word	67                      # 0x43
	.word	68                      # 0x44
	.word	69                      # 0x45
	.word	28                      # 0x1c
	.word	68                      # 0x44
	.word	60                      # 0x3c
	.word	41                      # 0x29
	.word	82                      # 0x52
	.word	77                      # 0x4d
	.word	43                      # 0x2b
	.word	82                      # 0x52
	.word	22                      # 0x16
	.word	98                      # 0x62
	.word	44                      # 0x2c
	.word	47                      # 0x2f
	.word	28                      # 0x1c
	.word	0                       # 0x0
	.word	67                      # 0x43
	.word	74                      # 0x4a
	.word	50                      # 0x32
	.word	11                      # 0xb
	.word	92                      # 0x5c
	.word	84                      # 0x54
	.word	72                      # 0x48
	.word	77                      # 0x4d
	.word	21                      # 0x15
	.word	14                      # 0xe
	.word	65                      # 0x41
	.word	23                      # 0x17
	.word	8                       # 0x8
	.word	34                      # 0x22
	.word	90                      # 0x5a
	.word	42                      # 0x2a
	.word	2                       # 0x2
	.word	84                      # 0x54
	.word	10                      # 0xa
	.word	63                      # 0x3f
	.word	24                      # 0x18
	.word	58                      # 0x3a
	.word	5                       # 0x5
	.word	33                      # 0x21
	.word	5                       # 0x5
	.word	94                      # 0x5e
	.word	97                      # 0x61
	.word	15                      # 0xf
	.word	40                      # 0x28
	.word	24                      # 0x18
	.word	15                      # 0xf
	.word	6                       # 0x6
	.word	65                      # 0x41
	.word	32                      # 0x20
	.word	18                      # 0x12
	.word	56                      # 0x38
	.word	82                      # 0x52
	.word	56                      # 0x38
	.word	32                      # 0x20
	.word	70                      # 0x46
	.word	70                      # 0x46
	.word	97                      # 0x61
	.word	93                      # 0x5d
	.word	78                      # 0x4e
	.word	30                      # 0x1e
	.word	48                      # 0x30
	.word	87                      # 0x57
	.word	99                      # 0x63
	.word	31                      # 0x1f
	.word	97                      # 0x61
	.word	27                      # 0x1b
	.word	22                      # 0x16
	.word	20                      # 0x14
	.word	32                      # 0x20
	.word	55                      # 0x37
	.word	93                      # 0x5d
	.word	25                      # 0x19
	.word	52                      # 0x34
	.word	7                       # 0x7
	.word	31                      # 0x1f
	.word	42                      # 0x2a
	.word	90                      # 0x5a
	.word	4                       # 0x4
	.word	6                       # 0x6
	.word	88                      # 0x58
	.word	89                      # 0x59
	.word	62                      # 0x3e
	.word	35                      # 0x23
	.word	44                      # 0x2c
	.word	60                      # 0x3c
	.word	4                       # 0x4
	.word	81                      # 0x51
	.word	56                      # 0x38
	.word	63                      # 0x3f
	.word	24                      # 0x18
	.word	52                      # 0x34
	.word	10                      # 0xa
	.word	10                      # 0xa
	.word	17                      # 0x11
	.word	8                       # 0x8
	.word	73                      # 0x49
	.word	44                      # 0x2c
	.word	30                      # 0x1e
	.word	94                      # 0x5e
	.word	77                      # 0x4d
	.word	51                      # 0x33
	.word	86                      # 0x56
	.word	68                      # 0x44
	.word	69                      # 0x45
	.word	59                      # 0x3b
	.word	66                      # 0x42
	.word	11                      # 0xb
	.word	48                      # 0x30
	.word	70                      # 0x46
	.word	84                      # 0x54
	.word	1                       # 0x1
	.word	58                      # 0x3a
	.word	12                      # 0xc
	.word	37                      # 0x25
	.word	68                      # 0x44
	.word	72                      # 0x48
	.word	41                      # 0x29
	.word	48                      # 0x30
	.word	95                      # 0x5f
	.word	71                      # 0x47
	.word	73                      # 0x49
	.word	12                      # 0xc
	.word	47                      # 0x2f
	.word	83                      # 0x53
	.word	29                      # 0x1d
	.word	55                      # 0x37
	.word	56                      # 0x38
	.word	74                      # 0x4a
	.word	51                      # 0x33
	.word	15                      # 0xf
	.word	16                      # 0x10
	.word	2                       # 0x2
	.word	67                      # 0x43
	.word	50                      # 0x32
	.word	71                      # 0x47
	.word	92                      # 0x5c
	.word	15                      # 0xf
	.word	82                      # 0x52
	.word	6                       # 0x6
	.word	51                      # 0x33
	.word	66                      # 0x42
	.word	7                       # 0x7
	.word	75                      # 0x4b
	.word	44                      # 0x2c
	.word	44                      # 0x2c
	.word	43                      # 0x2b
	.word	15                      # 0xf
	.word	52                      # 0x34
	.word	57                      # 0x39
	.word	9                       # 0x9
	.word	22                      # 0x16
	.word	96                      # 0x60
	.word	89                      # 0x59
	.word	35                      # 0x23
	.word	79                      # 0x4f
	.word	17                      # 0x11
	.word	91                      # 0x5b
	.word	0                       # 0x0
	.word	57                      # 0x39
	.word	7                       # 0x7
	.word	82                      # 0x52
	.word	73                      # 0x49
	.word	9                       # 0x9
	.word	14                      # 0xe
	.word	90                      # 0x5a
	.word	81                      # 0x51
	.word	5                       # 0x5
	.word	4                       # 0x4
	.word	28                      # 0x1c
	.word	11                      # 0xb
	.word	22                      # 0x16
	.word	60                      # 0x3c
	.word	19                      # 0x13
	.word	97                      # 0x61
	.word	3                       # 0x3
	.word	29                      # 0x1d
	.word	5                       # 0x5
	.word	86                      # 0x56
	.word	81                      # 0x51
	.word	63                      # 0x3f
	.word	61                      # 0x3d
	.word	69                      # 0x45
	.word	58                      # 0x3a
	.word	49                      # 0x31
	.word	71                      # 0x47
	.word	2                       # 0x2
	.word	67                      # 0x43
	.word	27                      # 0x1b
	.word	69                      # 0x45
	.word	90                      # 0x5a
	.word	34                      # 0x22
	.word	50                      # 0x32
	.word	29                      # 0x1d
	.word	44                      # 0x2c
	.word	64                      # 0x40
	.word	18                      # 0x12
	.word	91                      # 0x5b
	.word	36                      # 0x24
	.word	89                      # 0x59
	.word	85                      # 0x55
	.word	47                      # 0x2f
	.word	10                      # 0xa
	.word	45                      # 0x2d
	.word	32                      # 0x20
	.word	7                       # 0x7
	.word	14                      # 0xe
	.word	62                      # 0x3e
	.word	12                      # 0xc
	.word	100                     # 0x64
	.word	8                       # 0x8
	.word	41                      # 0x29
	.word	61                      # 0x3d
	.word	44                      # 0x2c
	.word	100                     # 0x64
	.word	9                       # 0x9
	.word	14                      # 0xe
	.word	68                      # 0x44
	.word	42                      # 0x2a
	.word	41                      # 0x29
	.word	37                      # 0x25
	.word	99                      # 0x63
	.word	75                      # 0x4b
	.word	87                      # 0x57
	.word	27                      # 0x1b
	.word	85                      # 0x55
	.word	17                      # 0x11
	.word	45                      # 0x2d
	.word	75                      # 0x4b
	.word	53                      # 0x35
	.word	33                      # 0x21
	.word	26                      # 0x1a
	.word	66                      # 0x42
	.word	10                      # 0xa
	.word	71                      # 0x47
	.word	99                      # 0x63
	.word	84                      # 0x54
	.word	85                      # 0x55
	.word	60                      # 0x3c
	.word	62                      # 0x3e
	.word	51                      # 0x33
	.word	68                      # 0x44
	.word	3                       # 0x3
	.word	11                      # 0xb
	.word	11                      # 0xb
	.word	69                      # 0x45
	.word	87                      # 0x57
	.word	92                      # 0x5c
	.word	36                      # 0x24
	.word	96                      # 0x60
	.word	32                      # 0x20
	.word	39                      # 0x27
	.word	94                      # 0x5e
	.word	74                      # 0x4a
	.word	93                      # 0x5d
	.word	87                      # 0x57
	.word	58                      # 0x3a
	.word	9                       # 0x9
	.word	31                      # 0x1f
	.word	100                     # 0x64
	.word	28                      # 0x1c
	.word	30                      # 0x1e
	.word	25                      # 0x19
	.word	94                      # 0x5e
	.word	6                       # 0x6
	.word	62                      # 0x3e
	.word	92                      # 0x5c
	.word	90                      # 0x5a
	.word	12                      # 0xc
	.word	17                      # 0x11
	.word	52                      # 0x34
	.word	29                      # 0x1d
	.word	86                      # 0x56
	.word	55                      # 0x37
	.word	40                      # 0x28
	.word	63                      # 0x3f
	.word	90                      # 0x5a
	.word	94                      # 0x5e
	.word	21                      # 0x15
	.word	92                      # 0x5c
	.word	55                      # 0x37
	.word	53                      # 0x35
	.word	31                      # 0x1f
	.word	14                      # 0xe
	.word	93                      # 0x5d
	.word	23                      # 0x17
	.word	0                       # 0x0
	.word	17                      # 0x11
	.word	99                      # 0x63
	.word	98                      # 0x62
	.word	16                      # 0x10
	.word	26                      # 0x1a
	.word	27                      # 0x1b
	.word	7                       # 0x7
	.word	86                      # 0x56
	.word	34                      # 0x22
	.word	35                      # 0x23
	.word	78                      # 0x4e
	.word	90                      # 0x5a
	.word	13                      # 0xd
	.word	95                      # 0x5f
	.word	41                      # 0x29
	.word	43                      # 0x2b
	.word	46                      # 0x2e
	.word	62                      # 0x3e
	.word	49                      # 0x31
	.word	76                      # 0x4c
	.word	51                      # 0x33
	.word	42                      # 0x2a
	.word	97                      # 0x61
	.word	9                       # 0x9
	.word	63                      # 0x3f
	.word	15                      # 0xf
	.word	40                      # 0x28
	.word	77                      # 0x4d
	.word	8                       # 0x8
	.word	63                      # 0x3f
	.word	43                      # 0x2b
	.word	25                      # 0x19
	.word	61                      # 0x3d
	.word	40                      # 0x28
	.word	7                       # 0x7
	.word	53                      # 0x35
	.word	68                      # 0x44
	.word	81                      # 0x51
	.word	38                      # 0x26
	.word	68                      # 0x44
	.word	82                      # 0x52
	.word	82                      # 0x52
	.word	57                      # 0x39
	.word	95                      # 0x5f
	.word	43                      # 0x2b
	.word	65                      # 0x41
	.word	37                      # 0x25
	.word	55                      # 0x37
	.word	55                      # 0x37
	.word	15                      # 0xf
	.word	15                      # 0xf
	.word	53                      # 0x35
	.word	30                      # 0x1e
	.word	28                      # 0x1c
	.word	99                      # 0x63
	.word	8                       # 0x8
	.word	71                      # 0x47
	.word	88                      # 0x58
	.word	75                      # 0x4b
	.word	59                      # 0x3b
	.word	77                      # 0x4d
	.word	88                      # 0x58
	.word	4                       # 0x4
	.word	44                      # 0x2c
	.word	93                      # 0x5d
	.word	29                      # 0x1d
	.word	66                      # 0x42
	.word	51                      # 0x33
	.word	17                      # 0x11
	.word	85                      # 0x55
	.word	10                      # 0xa
	.word	96                      # 0x60
	.word	17                      # 0x11
	.word	54                      # 0x36
	.word	100                     # 0x64
	.word	8                       # 0x8
	.word	77                      # 0x4d
	.word	73                      # 0x49
	.word	2                       # 0x2
	.word	31                      # 0x1f
	.word	89                      # 0x59
	.word	17                      # 0x11
	.word	50                      # 0x32
	.word	85                      # 0x55
	.word	46                      # 0x2e
	.word	48                      # 0x30
	.word	93                      # 0x5d
	.word	83                      # 0x53
	.word	35                      # 0x23
	.word	67                      # 0x43
	.word	7                       # 0x7
	.word	11                      # 0xb
	.word	54                      # 0x36
	.word	78                      # 0x4e
	.word	21                      # 0x15
	.word	13                      # 0xd
	.word	7                       # 0x7
	.word	88                      # 0x58
	.word	64                      # 0x40
	.word	91                      # 0x5b
	.word	38                      # 0x26
	.word	74                      # 0x4a
	.word	87                      # 0x57
	.word	56                      # 0x38
	.word	94                      # 0x5e
	.word	86                      # 0x56
	.word	64                      # 0x40
	.word	70                      # 0x46
	.word	25                      # 0x19
	.word	32                      # 0x20
	.word	67                      # 0x43
	.word	80                      # 0x50
	.word	50                      # 0x32
	.word	16                      # 0x10
	.word	64                      # 0x40
	.word	62                      # 0x3e
	.word	30                      # 0x1e
	.word	56                      # 0x38
	.word	10                      # 0xa
	.word	32                      # 0x20
	.word	89                      # 0x59
	.word	17                      # 0x11
	.word	9                       # 0x9
	.word	8                       # 0x8
	.word	95                      # 0x5f
	.word	31                      # 0x1f
	.word	21                      # 0x15
	.word	68                      # 0x44
	.word	18                      # 0x12
	.word	85                      # 0x55
	.word	59                      # 0x3b
	.word	22                      # 0x16
	.word	24                      # 0x18
	.word	11                      # 0xb
	.word	78                      # 0x4e
	.word	84                      # 0x54
	.word	97                      # 0x61
	.word	42                      # 0x2a
	.word	19                      # 0x13
	.word	88                      # 0x58
	.word	40                      # 0x28
	.word	86                      # 0x56
	.word	67                      # 0x43
	.word	90                      # 0x5a
	.word	68                      # 0x44
	.word	30                      # 0x1e
	.word	17                      # 0x11
	.word	99                      # 0x63
	.word	52                      # 0x34
	.word	27                      # 0x1b
	.word	30                      # 0x1e
	.word	40                      # 0x28
	.word	44                      # 0x2c
	.word	5                       # 0x5
	.word	49                      # 0x31
	.word	5                       # 0x5
	.word	36                      # 0x24
	.word	70                      # 0x46
	.word	73                      # 0x49
	.word	20                      # 0x14
	.word	21                      # 0x15
	.word	31                      # 0x1f
	.word	43                      # 0x2b
	.word	11                      # 0xb
	.word	42                      # 0x2a
	.word	20                      # 0x14
	.word	96                      # 0x60
	.word	5                       # 0x5
	.word	28                      # 0x1c
	.word	14                      # 0xe
	.word	93                      # 0x5d
	.word	69                      # 0x45
	.word	67                      # 0x43
	.word	26                      # 0x1a
	.word	24                      # 0x18
	.word	34                      # 0x22
	.word	56                      # 0x38
	.word	8                       # 0x8
	.word	99                      # 0x63
	.word	75                      # 0x4b
	.word	35                      # 0x23
	.word	95                      # 0x5f
	.word	14                      # 0xe
	.word	46                      # 0x2e
	.word	0                       # 0x0
	.word	29                      # 0x1d
	.word	51                      # 0x33
	.word	36                      # 0x24
	.word	66                      # 0x42
	.word	23                      # 0x17
	.word	57                      # 0x39
	.word	87                      # 0x57
	.word	21                      # 0x15
	.word	100                     # 0x64
	.word	98                      # 0x62
	.word	29                      # 0x1d
	.word	86                      # 0x56
	.word	59                      # 0x3b
	.word	0                       # 0x0
	.word	81                      # 0x51
	.word	74                      # 0x4a
	.word	60                      # 0x3c
	.word	15                      # 0xf
	.word	40                      # 0x28
	.word	86                      # 0x56
	.word	39                      # 0x27
	.word	40                      # 0x28
	.word	7                       # 0x7
	.word	47                      # 0x2f
	.word	5                       # 0x5
	.word	82                      # 0x52
	.word	49                      # 0x31
	.word	100                     # 0x64
	.word	63                      # 0x3f
	.word	95                      # 0x5f
	.word	66                      # 0x42
	.word	92                      # 0x5c
	.word	11                      # 0xb
	.word	2                       # 0x2
	.word	57                      # 0x39
	.word	0                       # 0x0
	.word	25                      # 0x19
	.word	9                       # 0x9
	.word	21                      # 0x15
	.word	91                      # 0x5b
	.word	74                      # 0x4a
	.word	17                      # 0x11
	.word	76                      # 0x4c
	.word	32                      # 0x20
	.word	17                      # 0x11
	.word	22                      # 0x16
	.word	72                      # 0x48
	.word	43                      # 0x2b
	.word	37                      # 0x25
	.word	78                      # 0x4e
	.word	28                      # 0x1c
	.word	77                      # 0x4d
	.word	18                      # 0x12
	.word	36                      # 0x24
	.word	90                      # 0x5a
	.word	90                      # 0x5a
	.word	84                      # 0x54
	.word	38                      # 0x26
	.word	89                      # 0x59
	.word	46                      # 0x2e
	.word	99                      # 0x63
	.word	21                      # 0x15
	.word	4                       # 0x4
	.word	9                       # 0x9
	.word	90                      # 0x5a
	.word	27                      # 0x1b
	.word	10                      # 0xa
	.word	14                      # 0xe
	.word	3                       # 0x3
	.word	98                      # 0x62
	.word	4                       # 0x4
	.word	77                      # 0x4d
	.word	14                      # 0xe
	.word	46                      # 0x2e
	.word	75                      # 0x4b
	.word	99                      # 0x63
	.word	35                      # 0x23
	.word	47                      # 0x2f
	.word	41                      # 0x29
	.word	72                      # 0x48
	.word	24                      # 0x18
	.word	70                      # 0x46
	.word	48                      # 0x30
	.word	8                       # 0x8
	.word	72                      # 0x48
	.word	4                       # 0x4
	.word	98                      # 0x62
	.word	55                      # 0x37
	.word	42                      # 0x2a
	.word	53                      # 0x35
	.word	68                      # 0x44
	.word	7                       # 0x7
	.word	74                      # 0x4a
	.word	72                      # 0x48
	.word	16                      # 0x10
	.word	63                      # 0x3f
	.word	99                      # 0x63
	.word	26                      # 0x1a
	.word	43                      # 0x2b
	.word	1                       # 0x1
	.word	24                      # 0x18
	.word	13                      # 0xd
	.word	44                      # 0x2c
	.word	4                       # 0x4
	.word	25                      # 0x19
	.word	19                      # 0x13
	.word	2                       # 0x2
	.word	60                      # 0x3c
	.word	32                      # 0x20
	.word	10                      # 0xa
	.word	32                      # 0x20
	.word	22                      # 0x16
	.word	80                      # 0x50
	.word	46                      # 0x2e
	.word	98                      # 0x62
	.word	17                      # 0x11
	.word	50                      # 0x32
	.word	95                      # 0x5f
	.word	38                      # 0x26
	.word	59                      # 0x3b
	.word	13                      # 0xd
	.word	5                       # 0x5
	.word	66                      # 0x42
	.word	87                      # 0x57
	.word	77                      # 0x4d
	.word	48                      # 0x30
	.word	15                      # 0xf
	.word	42                      # 0x2a
	.word	41                      # 0x29
	.word	58                      # 0x3a
	.word	9                       # 0x9
	.word	31                      # 0x1f
	.word	71                      # 0x47
	.word	54                      # 0x36
	.word	35                      # 0x23
	.word	97                      # 0x61
	.word	39                      # 0x27
	.word	4                       # 0x4
	.word	56                      # 0x38
	.word	37                      # 0x25
	.word	14                      # 0xe
	.word	88                      # 0x58
	.word	59                      # 0x3b
	.word	60                      # 0x3c
	.word	0                       # 0x0
	.word	56                      # 0x38
	.word	77                      # 0x4d
	.word	50                      # 0x32
	.word	17                      # 0x11
	.word	81                      # 0x51
	.word	75                      # 0x4b
	.word	30                      # 0x1e
	.word	87                      # 0x57
	.word	6                       # 0x6
	.word	84                      # 0x54
	.word	29                      # 0x1d
	.word	55                      # 0x37
	.word	99                      # 0x63
	.word	37                      # 0x25
	.word	96                      # 0x60
	.word	57                      # 0x39
	.word	47                      # 0x2f
	.word	26                      # 0x1a
	.word	94                      # 0x5e
	.word	67                      # 0x43
	.word	27                      # 0x1b
	.word	56                      # 0x38
	.word	5                       # 0x5
	.word	98                      # 0x62
	.word	12                      # 0xc
	.word	8                       # 0x8
	.word	11                      # 0xb
	.word	66                      # 0x42
	.word	67                      # 0x43
	.word	37                      # 0x25
	.word	66                      # 0x42
	.word	90                      # 0x5a
	.word	80                      # 0x50
	.word	83                      # 0x53
	.word	6                       # 0x6
	.word	61                      # 0x3d
	.word	23                      # 0x17
	.word	2                       # 0x2
	.word	47                      # 0x2f
	.word	30                      # 0x1e
	.word	86                      # 0x56
	.word	42                      # 0x2a
	.word	51                      # 0x33
	.word	51                      # 0x33
	.word	80                      # 0x50
	.word	46                      # 0x2e
	.word	74                      # 0x4a
	.word	26                      # 0x1a
	.word	38                      # 0x26
	.word	67                      # 0x43
	.word	59                      # 0x3b
	.word	31                      # 0x1f
	.word	23                      # 0x17
	.word	64                      # 0x40
	.word	29                      # 0x1d
	.word	1                       # 0x1
	.word	38                      # 0x26
	.word	6                       # 0x6
	.word	33                      # 0x21
	.word	4                       # 0x4
	.word	44                      # 0x2c
	.word	100                     # 0x64
	.word	60                      # 0x3c
	.word	90                      # 0x5a
	.word	48                      # 0x30
	.word	32                      # 0x20
	.word	50                      # 0x32
	.word	71                      # 0x47
	.word	1                       # 0x1
	.word	63                      # 0x3f
	.word	67                      # 0x43
	.word	87                      # 0x57
	.word	5                       # 0x5
	.word	17                      # 0x11
	.word	3                       # 0x3
	.word	51                      # 0x33
	.word	29                      # 0x1d
	.word	77                      # 0x4d
	.word	77                      # 0x4d
	.word	33                      # 0x21
	.word	10                      # 0xa
	.word	35                      # 0x23
	.word	65                      # 0x41
	.word	100                     # 0x64
	.word	65                      # 0x41
	.word	60                      # 0x3c
	.word	0                       # 0x0
	.word	2                       # 0x2
	.word	32                      # 0x20
	.word	33                      # 0x21
	.word	73                      # 0x49
	.word	42                      # 0x2a
	.word	99                      # 0x63
	.word	100                     # 0x64
	.word	32                      # 0x20
	.word	12                      # 0xc
	.word	31                      # 0x1f
	.word	48                      # 0x30
	.word	84                      # 0x54
	.word	99                      # 0x63
	.word	11                      # 0xb
	.word	50                      # 0x32
	.word	86                      # 0x56
	.word	83                      # 0x53
	.word	34                      # 0x22
	.word	55                      # 0x37
	.word	33                      # 0x21
	.word	63                      # 0x3f
	.word	32                      # 0x20
	.word	76                      # 0x4c
	.word	97                      # 0x61
	.word	8                       # 0x8
	.word	77                      # 0x4d
	.word	27                      # 0x1b
	.word	7                       # 0x7
	.word	7                       # 0x7
	.word	53                      # 0x35
	.word	74                      # 0x4a
	.word	76                      # 0x4c
	.word	85                      # 0x55
	.word	73                      # 0x49
	.word	14                      # 0xe
	.word	27                      # 0x1b
	.word	72                      # 0x48
	.word	13                      # 0xd
	.word	59                      # 0x3b
	.word	50                      # 0x32
	.word	11                      # 0xb
	.word	73                      # 0x49
	.word	33                      # 0x21
	.word	9                       # 0x9
	.word	84                      # 0x54
	.word	50                      # 0x32
	.word	61                      # 0x3d
	.word	32                      # 0x20
	.word	84                      # 0x54
	.word	16                      # 0x10
	.word	31                      # 0x1f
	.word	12                      # 0xc
	.word	14                      # 0xe
	.word	6                       # 0x6
	.word	8                       # 0x8
	.word	89                      # 0x59
	.word	49                      # 0x31
	.word	1                       # 0x1
	.word	96                      # 0x60
	.word	56                      # 0x38
	.word	54                      # 0x36
	.word	35                      # 0x23
	.word	31                      # 0x1f
	.word	39                      # 0x27
	.word	7                       # 0x7
	.word	46                      # 0x2e
	.word	32                      # 0x20
	.word	45                      # 0x2d
	.word	59                      # 0x3b
	.word	57                      # 0x39
	.word	96                      # 0x60
	.word	36                      # 0x24
	.word	29                      # 0x1d
	.word	95                      # 0x5f
	.word	46                      # 0x2e
	.word	80                      # 0x50
	.word	10                      # 0xa
	.word	73                      # 0x49
	.word	11                      # 0xb
	.word	94                      # 0x5e
	.word	89                      # 0x59
	.word	9                       # 0x9
	.word	73                      # 0x49
	.word	69                      # 0x45
	.word	15                      # 0xf
	.word	47                      # 0x2f
	.word	57                      # 0x39
	.word	31                      # 0x1f
	.word	49                      # 0x31
	.word	18                      # 0x12
	.word	87                      # 0x57
	.word	69                      # 0x45
	.word	53                      # 0x35
	.word	18                      # 0x12
	.word	74                      # 0x4a
	.word	27                      # 0x1b
	.word	30                      # 0x1e
	.word	5                       # 0x5
	.word	38                      # 0x26
	.word	55                      # 0x37
	.word	28                      # 0x1c
	.word	33                      # 0x21
	.word	92                      # 0x5c
	.word	58                      # 0x3a
	.word	95                      # 0x5f
	.word	3                       # 0x3
	.word	37                      # 0x25
	.word	4                       # 0x4
	.word	76                      # 0x4c
	.word	14                      # 0xe
	.word	65                      # 0x41
	.word	31                      # 0x1f
	.word	23                      # 0x17
	.word	37                      # 0x25
	.word	66                      # 0x42
	.word	5                       # 0x5
	.word	50                      # 0x32
	.word	23                      # 0x17
	.word	36                      # 0x24
	.word	99                      # 0x63
	.word	41                      # 0x29
	.word	22                      # 0x16
	.word	68                      # 0x44
	.word	61                      # 0x3d
	.word	6                       # 0x6
	.word	7                       # 0x7
	.word	88                      # 0x58
	.word	2                       # 0x2
	.word	13                      # 0xd
	.word	92                      # 0x5c
	.word	58                      # 0x3a
	.word	41                      # 0x29
	.word	92                      # 0x5c
	.word	15                      # 0xf
	.word	65                      # 0x41
	.word	86                      # 0x56
	.word	18                      # 0x12
	.word	1                       # 0x1
	.word	56                      # 0x38
	.word	60                      # 0x3c
	.word	83                      # 0x53
	.word	87                      # 0x57
	.word	57                      # 0x39
	.word	5                       # 0x5
	.word	90                      # 0x5a
	.word	23                      # 0x17
	.word	10                      # 0xa
	.word	40                      # 0x28
	.word	12                      # 0xc
	.word	12                      # 0xc
	.word	38                      # 0x26
	.word	19                      # 0x13
	.word	35                      # 0x23
	.word	72                      # 0x48
	.word	80                      # 0x50
	.word	7                       # 0x7
	.word	80                      # 0x50
	.word	33                      # 0x21
	.word	10                      # 0xa
	.word	59                      # 0x3b
	.word	25                      # 0x19
	.word	34                      # 0x22
	.word	66                      # 0x42
	.word	16                      # 0x10
	.word	49                      # 0x31
	.word	31                      # 0x1f
	.word	68                      # 0x44
	.word	33                      # 0x21
	.word	99                      # 0x63
	.word	23                      # 0x17
	.word	59                      # 0x3b
	.word	47                      # 0x2f
	.word	10                      # 0xa
	.word	16                      # 0x10
	.word	53                      # 0x35
	.word	100                     # 0x64
	.word	5                       # 0x5
	.word	29                      # 0x1d
	.word	39                      # 0x27
	.word	17                      # 0x11
	.word	42                      # 0x2a
	.word	44                      # 0x2c
	.word	2                       # 0x2
	.word	43                      # 0x2b
	.word	82                      # 0x52
	.word	49                      # 0x31
	.word	16                      # 0x10
	.word	27                      # 0x1b
	.word	82                      # 0x52
	.word	93                      # 0x5d
	.word	86                      # 0x56
	.word	73                      # 0x49
	.word	26                      # 0x1a
	.word	18                      # 0x12
	.word	55                      # 0x37
	.word	75                      # 0x4b
	.word	49                      # 0x31
	.word	89                      # 0x59
	.word	7                       # 0x7
	.word	13                      # 0xd
	.word	79                      # 0x4f
	.word	33                      # 0x21
	.word	61                      # 0x3d
	.word	55                      # 0x37
	.word	15                      # 0xf
	.word	80                      # 0x50
	.word	20                      # 0x14
	.word	20                      # 0x14
	.word	75                      # 0x4b
	.word	60                      # 0x3c
	.word	3                       # 0x3
	.word	83                      # 0x53
	.word	70                      # 0x46
	.word	5                       # 0x5
	.word	92                      # 0x5c
	.word	17                      # 0x11
	.word	54                      # 0x36
	.word	8                       # 0x8
	.word	45                      # 0x2d
	.word	2                       # 0x2
	.word	0                       # 0x0
	.word	30                      # 0x1e
	.word	41                      # 0x29
	.word	27                      # 0x1b
	.word	14                      # 0xe
	.word	63                      # 0x3f
	.word	68                      # 0x44
	.word	29                      # 0x1d
	.word	51                      # 0x33
	.word	42                      # 0x2a
	.word	43                      # 0x2b
	.word	96                      # 0x60
	.word	75                      # 0x4b
	.word	70                      # 0x46
	.word	50                      # 0x32
	.word	90                      # 0x5a
	.word	49                      # 0x31
	.word	71                      # 0x47
	.word	9                       # 0x9
	.word	90                      # 0x5a
	.word	97                      # 0x61
	.word	79                      # 0x4f
	.word	73                      # 0x49
	.word	66                      # 0x42
	.word	50                      # 0x32
	.word	64                      # 0x40
	.word	83                      # 0x53
	.word	4                       # 0x4
	.word	72                      # 0x48
	.word	27                      # 0x1b
	.word	73                      # 0x49
	.word	39                      # 0x27
	.word	24                      # 0x18
	.word	80                      # 0x50
	.word	32                      # 0x20
	.word	4                       # 0x4
	.word	42                      # 0x2a
	.word	100                     # 0x64
	.word	34                      # 0x22
	.word	60                      # 0x3c
	.word	41                      # 0x29
	.word	43                      # 0x2b
	.word	55                      # 0x37
	.word	82                      # 0x52
	.word	12                      # 0xc
	.word	5                       # 0x5
	.word	71                      # 0x47
	.word	27                      # 0x1b
	.word	42                      # 0x2a
	.word	46                      # 0x2e
	.word	16                      # 0x10
	.word	38                      # 0x26
	.word	24                      # 0x18
	.word	89                      # 0x59
	.word	3                       # 0x3
	.word	41                      # 0x29
	.word	19                      # 0x13
	.word	52                      # 0x34
	.word	11                      # 0xb
	.word	57                      # 0x39
	.word	46                      # 0x2e
	.word	84                      # 0x54
	.word	96                      # 0x60
	.word	36                      # 0x24
	.word	29                      # 0x1d
	.word	27                      # 0x1b
	.word	40                      # 0x28
	.word	72                      # 0x48
	.word	94                      # 0x5e
	.word	40                      # 0x28
	.word	98                      # 0x62
	.word	0                       # 0x0
	.word	83                      # 0x53
	.word	18                      # 0x12
	.word	83                      # 0x53
	.word	95                      # 0x5f
	.word	90                      # 0x5a
	.word	53                      # 0x35
	.word	88                      # 0x58
	.word	31                      # 0x1f
	.word	66                      # 0x42
	.word	71                      # 0x47
	.word	69                      # 0x45
	.word	56                      # 0x38
	.word	59                      # 0x3b
	.word	38                      # 0x26
	.word	97                      # 0x61
	.word	44                      # 0x2c
	.word	57                      # 0x39
	.word	7                       # 0x7
	.word	1                       # 0x1
	.word	2                       # 0x2
	.word	57                      # 0x39
	.word	97                      # 0x61
	.word	4                       # 0x4
	.word	87                      # 0x57
	.word	91                      # 0x5b
	.word	10                      # 0xa
	.word	24                      # 0x18
	.word	84                      # 0x54
	.word	51                      # 0x33
	.word	21                      # 0x15
	.word	84                      # 0x54
	.word	33                      # 0x21
	.word	39                      # 0x27
	.word	66                      # 0x42
	.word	95                      # 0x5f
	.word	96                      # 0x60
	.word	86                      # 0x56
	.word	82                      # 0x52
	.word	26                      # 0x1a
	.word	51                      # 0x33
	.word	52                      # 0x34
	.word	96                      # 0x60
	.word	73                      # 0x49
	.word	78                      # 0x4e
	.word	33                      # 0x21
	.word	70                      # 0x46
	.word	21                      # 0x15
	.word	90                      # 0x5a
	.word	77                      # 0x4d
	.word	89                      # 0x59
	.word	58                      # 0x3a
	.word	0                       # 0x0
	.word	86                      # 0x56
	.word	28                      # 0x1c
	.word	87                      # 0x57
	.word	42                      # 0x2a
	.word	39                      # 0x27
	.word	10                      # 0xa
	.word	25                      # 0x19
	.word	56                      # 0x38
	.word	98                      # 0x62
	.word	75                      # 0x4b
	.word	89                      # 0x59
	.word	2                       # 0x2
	.word	7                       # 0x7
	.word	49                      # 0x31
	.word	98                      # 0x62
	.word	59                      # 0x3b
	.word	98                      # 0x62
	.word	24                      # 0x18
	.word	76                      # 0x4c
	.word	15                      # 0xf
	.word	86                      # 0x56
	.word	48                      # 0x30
	.word	59                      # 0x3b
	.word	18                      # 0x12
	.word	17                      # 0x11
	.word	81                      # 0x51
	.word	75                      # 0x4b
	.word	61                      # 0x3d
	.word	69                      # 0x45
	.word	99                      # 0x63
	.word	61                      # 0x3d
	.word	20                      # 0x14
	.word	27                      # 0x1b
	.word	13                      # 0xd
	.word	62                      # 0x3e
	.word	32                      # 0x20
	.word	90                      # 0x5a
	.word	53                      # 0x35
	.word	88                      # 0x58
	.word	87                      # 0x57
	.word	95                      # 0x5f
	.word	42                      # 0x2a
	.word	89                      # 0x59
	.word	1                       # 0x1
	.word	58                      # 0x3a
	.word	53                      # 0x35
	.word	60                      # 0x3c
	.word	55                      # 0x37
	.word	43                      # 0x2b
	.word	1                       # 0x1
	.word	70                      # 0x46
	.word	28                      # 0x1c
	.word	49                      # 0x31
	.word	29                      # 0x1d
	.word	12                      # 0xc
	.word	33                      # 0x21
	.word	76                      # 0x4c
	.word	53                      # 0x35
	.word	60                      # 0x3c
	.word	10                      # 0xa
	.word	52                      # 0x34
	.word	87                      # 0x57
	.word	98                      # 0x62
	.word	45                      # 0x2d
	.word	100                     # 0x64
	.word	25                      # 0x19
	.word	43                      # 0x2b
	.word	89                      # 0x59
	.word	79                      # 0x4f
	.word	97                      # 0x61
	.word	41                      # 0x29
	.word	73                      # 0x49
	.word	4                       # 0x4
	.word	96                      # 0x60
	.word	40                      # 0x28
	.word	62                      # 0x3e
	.word	48                      # 0x30
	.word	66                      # 0x42
	.word	16                      # 0x10
	.word	91                      # 0x5b
	.word	67                      # 0x43
	.word	53                      # 0x35
	.word	85                      # 0x55
	.word	82                      # 0x52
	.word	48                      # 0x30
	.word	98                      # 0x62
	.word	14                      # 0xe
	.word	90                      # 0x5a
	.word	50                      # 0x32
	.word	74                      # 0x4a
	.word	66                      # 0x42
	.word	68                      # 0x44
	.word	26                      # 0x1a
	.word	63                      # 0x3f
	.word	12                      # 0xc
	.word	25                      # 0x19
	.word	89                      # 0x59
	.word	55                      # 0x37
	.word	80                      # 0x50
	.word	33                      # 0x21
	.word	17                      # 0x11
	.word	20                      # 0x14
	.word	72                      # 0x48
	.word	22                      # 0x16
	.word	83                      # 0x53
	.word	11                      # 0xb
	.word	84                      # 0x54
	.word	30                      # 0x1e
	.word	77                      # 0x4d
	.word	67                      # 0x43
	.word	88                      # 0x58
	.word	9                       # 0x9
	.word	86                      # 0x56
	.word	72                      # 0x48
	.word	91                      # 0x5b
	.word	33                      # 0x21
	.word	35                      # 0x23
	.word	72                      # 0x48
	.word	89                      # 0x59
	.word	86                      # 0x56
	.word	11                      # 0xb
	.word	54                      # 0x36
	.word	53                      # 0x35
	.word	38                      # 0x26
	.word	17                      # 0x11
	.word	32                      # 0x20
	.word	29                      # 0x1d
	.word	72                      # 0x48
	.word	53                      # 0x35
	.word	76                      # 0x4c
	.word	71                      # 0x47
	.word	71                      # 0x47
	.word	62                      # 0x3e
	.word	42                      # 0x2a
	.word	93                      # 0x5d
	.word	44                      # 0x2c
	.word	19                      # 0x13
	.word	76                      # 0x4c
	.word	41                      # 0x29
	.word	62                      # 0x3e
	.word	42                      # 0x2a
	.word	28                      # 0x1c
	.word	71                      # 0x47
	.word	27                      # 0x1b
	.word	66                      # 0x42
	.word	27                      # 0x1b
	.word	26                      # 0x1a
	.word	1                       # 0x1
	.word	99                      # 0x63
	.word	14                      # 0xe
	.word	87                      # 0x57
	.word	10                      # 0xa
	.word	35                      # 0x23
	.word	5                       # 0x5
	.word	14                      # 0xe
	.word	52                      # 0x34
	.word	37                      # 0x25
	.word	43                      # 0x2b
	.word	90                      # 0x5a
	.word	91                      # 0x5b
	.word	18                      # 0x12
	.word	60                      # 0x3c
	.word	27                      # 0x1b
	.word	81                      # 0x51
	.word	68                      # 0x44
	.word	19                      # 0x13
	.word	24                      # 0x18
	.word	87                      # 0x57
	.word	95                      # 0x5f
	.word	31                      # 0x1f
	.word	48                      # 0x30
	.word	3                       # 0x3
	.word	59                      # 0x3b
	.word	18                      # 0x12
	.word	97                      # 0x61
	.word	92                      # 0x5c
	.word	11                      # 0xb
	.word	90                      # 0x5a
	.word	93                      # 0x5d
	.word	10                      # 0xa
	.word	70                      # 0x46
	.word	45                      # 0x2d
	.word	20                      # 0x14
	.word	4                       # 0x4
	.word	16                      # 0x10
	.word	34                      # 0x22
	.word	22                      # 0x16
	.word	54                      # 0x36
	.word	43                      # 0x2b
	.word	11                      # 0xb
	.word	10                      # 0xa
	.word	62                      # 0x3e
	.word	37                      # 0x25
	.word	37                      # 0x25
	.word	8                       # 0x8
	.word	4                       # 0x4
	.word	22                      # 0x16
	.word	99                      # 0x63
	.word	57                      # 0x39
	.word	83                      # 0x53
	.word	30                      # 0x1e
	.word	4                       # 0x4
	.word	86                      # 0x56
	.word	55                      # 0x37
	.word	89                      # 0x59
	.word	49                      # 0x31
	.word	46                      # 0x2e
	.word	0                       # 0x0
	.word	38                      # 0x26
	.word	38                      # 0x26
	.word	77                      # 0x4d
	.word	74                      # 0x4a
	.word	49                      # 0x31
	.word	97                      # 0x61
	.word	79                      # 0x4f
	.word	66                      # 0x42
	.word	97                      # 0x61
	.word	0                       # 0x0
	.word	86                      # 0x56
	.word	5                       # 0x5
	.word	79                      # 0x4f
	.word	62                      # 0x3e
	.word	33                      # 0x21
	.word	15                      # 0xf
	.word	65                      # 0x41
	.word	41                      # 0x29
	.word	87                      # 0x57
	.word	87                      # 0x57
	.word	6                       # 0x6
	.word	9                       # 0x9
	.word	35                      # 0x23
	.word	2                       # 0x2
	.word	14                      # 0xe
	.word	21                      # 0x15
	.word	57                      # 0x39
	.word	69                      # 0x45
	.word	36                      # 0x24
	.word	3                       # 0x3
	.word	35                      # 0x23
	.word	40                      # 0x28
	.word	7                       # 0x7
	.word	11                      # 0xb
	.word	13                      # 0xd
	.word	23                      # 0x17
	.word	74                      # 0x4a
	.word	92                      # 0x5c
	.word	55                      # 0x37
	.word	36                      # 0x24
	.word	93                      # 0x5d
	.word	40                      # 0x28
	.word	42                      # 0x2a
	.word	37                      # 0x25
	.word	68                      # 0x44
	.word	75                      # 0x4b
	.word	18                      # 0x12
	.word	32                      # 0x20
	.word	83                      # 0x53
	.word	71                      # 0x47
	.word	85                      # 0x55
	.word	89                      # 0x59
	.word	81                      # 0x51
	.word	19                      # 0x13
	.word	91                      # 0x5b
	.word	61                      # 0x3d
	.word	6                       # 0x6
	.word	13                      # 0xd
	.word	29                      # 0x1d
	.word	8                       # 0x8
	.word	16                      # 0x10
	.word	65                      # 0x41
	.word	48                      # 0x30
	.word	91                      # 0x5b
	.word	76                      # 0x4c
	.word	62                      # 0x3e
	.word	80                      # 0x50
	.word	16                      # 0x10
	.word	19                      # 0x13
	.word	34                      # 0x22
	.word	52                      # 0x34
	.word	78                      # 0x4e
	.word	74                      # 0x4a
	.word	94                      # 0x5e
	.word	14                      # 0xe
	.word	7                       # 0x7
	.word	69                      # 0x45
	.word	33                      # 0x21
	.word	5                       # 0x5
	.word	17                      # 0x11
	.word	3                       # 0x3
	.word	56                      # 0x38
	.word	5                       # 0x5
	.word	84                      # 0x54
	.word	41                      # 0x29
	.word	62                      # 0x3e
	.word	44                      # 0x2c
	.word	48                      # 0x30
	.word	75                      # 0x4b
	.word	40                      # 0x28
	.word	56                      # 0x38
	.word	58                      # 0x3a
	.word	71                      # 0x47
	.word	71                      # 0x47
	.word	14                      # 0xe
	.word	12                      # 0xc
	.word	99                      # 0x63
	.word	94                      # 0x5e
	.word	28                      # 0x1c
	.word	17                      # 0x11
	.word	27                      # 0x1b
	.word	81                      # 0x51
	.word	96                      # 0x60
	.word	67                      # 0x43
	.word	74                      # 0x4a
	.word	76                      # 0x4c
	.word	74                      # 0x4a
	.word	8                       # 0x8
	.word	75                      # 0x4b
	.word	45                      # 0x2d
	.word	25                      # 0x19
	.word	79                      # 0x4f
	.word	0                       # 0x0
	.word	97                      # 0x61
	.word	28                      # 0x1c
	.word	41                      # 0x29
	.word	58                      # 0x3a
	.word	39                      # 0x27
	.word	55                      # 0x37
	.word	100                     # 0x64
	.word	45                      # 0x2d
	.word	11                      # 0xb
	.word	23                      # 0x17
	.word	15                      # 0xf
	.word	48                      # 0x30
	.word	37                      # 0x25
	.word	27                      # 0x1b
	.word	46                      # 0x2e
	.word	97                      # 0x61
	.word	56                      # 0x38
	.word	63                      # 0x3f
	.word	90                      # 0x5a
	.word	36                      # 0x24
	.word	24                      # 0x18
	.word	56                      # 0x38
	.word	76                      # 0x4c
	.word	0                       # 0x0
	.word	96                      # 0x60
	.word	85                      # 0x55
	.word	41                      # 0x29
	.word	40                      # 0x28
	.word	9                       # 0x9
	.word	19                      # 0x13
	.word	6                       # 0x6
	.word	6                       # 0x6
	.word	14                      # 0xe
	.word	47                      # 0x2f
	.word	30                      # 0x1e
	.word	19                      # 0x13
	.word	2                       # 0x2
	.word	96                      # 0x60
	.word	64                      # 0x40
	.word	80                      # 0x50
	.word	18                      # 0x12
	.word	45                      # 0x2d
	.word	27                      # 0x1b
	.word	21                      # 0x15
	.word	72                      # 0x48
	.word	39                      # 0x27
	.word	17                      # 0x11
	.word	94                      # 0x5e
	.word	1                       # 0x1
	.word	6                       # 0x6
	.word	96                      # 0x60
	.word	93                      # 0x5d
	.word	28                      # 0x1c
	.word	72                      # 0x48
	.word	59                      # 0x3b
	.word	90                      # 0x5a
	.word	56                      # 0x38
	.word	100                     # 0x64
	.word	96                      # 0x60
	.word	31                      # 0x1f
	.word	86                      # 0x56
	.word	1                       # 0x1
	.word	3                       # 0x3
	.word	66                      # 0x42
	.word	15                      # 0xf
	.word	0                       # 0x0
	.word	85                      # 0x55
	.word	17                      # 0x11
	.word	96                      # 0x60
	.word	14                      # 0xe
	.word	63                      # 0x3f
	.word	81                      # 0x51
	.word	59                      # 0x3b
	.word	90                      # 0x5a
	.word	1                       # 0x1
	.word	97                      # 0x61
	.word	28                      # 0x1c
	.word	19                      # 0x13
	.word	57                      # 0x39
	.word	96                      # 0x60
	.word	92                      # 0x5c
	.word	52                      # 0x34
	.word	54                      # 0x36
	.word	87                      # 0x57
	.word	23                      # 0x17
	.word	12                      # 0xc
	.word	76                      # 0x4c
	.word	45                      # 0x2d
	.word	79                      # 0x4f
	.word	72                      # 0x48
	.word	43                      # 0x2b
	.word	64                      # 0x40
	.word	39                      # 0x27
	.word	46                      # 0x2e
	.word	29                      # 0x1d
	.word	54                      # 0x36
	.word	12                      # 0xc
	.word	80                      # 0x50
	.word	37                      # 0x25
	.word	8                       # 0x8
	.word	60                      # 0x3c
	.word	100                     # 0x64
	.word	89                      # 0x59
	.word	85                      # 0x55
	.word	55                      # 0x37
	.word	56                      # 0x38
	.word	47                      # 0x2f
	.word	49                      # 0x31
	.word	75                      # 0x4b
	.word	3                       # 0x3
	.word	45                      # 0x2d
	.word	33                      # 0x21
	.word	56                      # 0x38
	.word	99                      # 0x63
	.word	19                      # 0x13
	.word	45                      # 0x2d
	.word	78                      # 0x4e
	.word	61                      # 0x3d
	.word	91                      # 0x5b
	.word	56                      # 0x38
	.word	99                      # 0x63
	.word	33                      # 0x21
	.word	86                      # 0x56
	.word	4                       # 0x4
	.word	45                      # 0x2d
	.word	81                      # 0x51
	.word	58                      # 0x3a
	.word	58                      # 0x3a
	.word	60                      # 0x3c
	.word	96                      # 0x60
	.word	32                      # 0x20
	.word	19                      # 0x13
	.word	61                      # 0x3d
	.word	87                      # 0x57
	.word	70                      # 0x46
	.word	16                      # 0x10
	.word	42                      # 0x2a
	.word	16                      # 0x10
	.word	65                      # 0x41
	.word	84                      # 0x54
	.word	20                      # 0x14
	.word	76                      # 0x4c
	.word	83                      # 0x53
	.word	42                      # 0x2a
	.word	41                      # 0x29
	.word	68                      # 0x44
	.word	87                      # 0x57
	.word	18                      # 0x12
	.word	28                      # 0x1c
	.word	77                      # 0x4d
	.word	40                      # 0x28
	.word	94                      # 0x5e
	.word	76                      # 0x4c
	.word	25                      # 0x19
	.word	98                      # 0x62
	.word	88                      # 0x58
	.word	5                       # 0x5
	.word	21                      # 0x15
	.word	11                      # 0xb
	.word	31                      # 0x1f
	.word	16                      # 0x10
	.word	43                      # 0x2b
	.word	16                      # 0x10
	.word	44                      # 0x2c
	.word	29                      # 0x1d
	.word	86                      # 0x56
	.word	96                      # 0x60
	.word	75                      # 0x4b
	.word	70                      # 0x46
	.word	50                      # 0x32
	.word	90                      # 0x5a
	.word	49                      # 0x31
	.word	71                      # 0x47
	.word	9                       # 0x9
	.word	90                      # 0x5a
	.word	97                      # 0x61
	.word	79                      # 0x4f
	.word	73                      # 0x49
	.word	66                      # 0x42
	.word	50                      # 0x32
	.word	64                      # 0x40
	.word	83                      # 0x53
	.word	4                       # 0x4
	.word	72                      # 0x48
	.word	27                      # 0x1b
	.word	73                      # 0x49
	.word	39                      # 0x27
	.word	24                      # 0x18
	.word	80                      # 0x50
	.word	32                      # 0x20
	.word	4                       # 0x4
	.word	42                      # 0x2a
	.word	100                     # 0x64
	.word	34                      # 0x22
	.word	60                      # 0x3c
	.word	41                      # 0x29
	.word	43                      # 0x2b
	.word	55                      # 0x37
	.word	82                      # 0x52
	.word	12                      # 0xc
	.word	5                       # 0x5
	.word	71                      # 0x47
	.word	27                      # 0x1b
	.word	42                      # 0x2a
	.word	46                      # 0x2e
	.word	16                      # 0x10
	.word	38                      # 0x26
	.word	24                      # 0x18
	.word	89                      # 0x59
	.word	3                       # 0x3
	.word	41                      # 0x29
	.word	19                      # 0x13
	.word	52                      # 0x34
	.word	11                      # 0xb
	.word	57                      # 0x39
	.word	46                      # 0x2e
	.word	84                      # 0x54
	.word	96                      # 0x60
	.word	36                      # 0x24
	.word	29                      # 0x1d
	.word	27                      # 0x1b
	.word	40                      # 0x28
	.word	72                      # 0x48
	.word	94                      # 0x5e
	.word	40                      # 0x28
	.word	98                      # 0x62
	.word	0                       # 0x0
	.word	83                      # 0x53
	.word	18                      # 0x12
	.word	83                      # 0x53
	.word	95                      # 0x5f
	.word	90                      # 0x5a
	.word	53                      # 0x35
	.word	88                      # 0x58
	.word	31                      # 0x1f
	.word	66                      # 0x42
	.word	71                      # 0x47
	.word	69                      # 0x45
	.word	56                      # 0x38
	.word	59                      # 0x3b
	.word	38                      # 0x26
	.word	97                      # 0x61
	.word	44                      # 0x2c
	.word	57                      # 0x39
	.word	7                       # 0x7
	.word	1                       # 0x1
	.word	2                       # 0x2
	.word	57                      # 0x39
	.word	97                      # 0x61
	.word	4                       # 0x4
	.word	87                      # 0x57
	.word	91                      # 0x5b
	.word	10                      # 0xa
	.word	24                      # 0x18
	.word	84                      # 0x54
	.word	51                      # 0x33
	.word	21                      # 0x15
	.word	84                      # 0x54
	.word	33                      # 0x21
	.word	39                      # 0x27
	.word	66                      # 0x42
	.word	95                      # 0x5f
	.word	96                      # 0x60
	.word	86                      # 0x56
	.word	82                      # 0x52
	.word	26                      # 0x1a
	.word	51                      # 0x33
	.word	52                      # 0x34
	.word	96                      # 0x60
	.word	73                      # 0x49
	.word	78                      # 0x4e
	.word	33                      # 0x21
	.word	70                      # 0x46
	.word	21                      # 0x15
	.word	90                      # 0x5a
	.word	77                      # 0x4d
	.word	89                      # 0x59
	.word	58                      # 0x3a
	.word	0                       # 0x0
	.word	86                      # 0x56
	.word	28                      # 0x1c
	.word	87                      # 0x57
	.word	42                      # 0x2a
	.word	39                      # 0x27
	.word	10                      # 0xa
	.word	25                      # 0x19
	.word	56                      # 0x38
	.word	98                      # 0x62
	.word	75                      # 0x4b
	.word	89                      # 0x59
	.word	2                       # 0x2
	.word	7                       # 0x7
	.word	49                      # 0x31
	.word	98                      # 0x62
	.word	59                      # 0x3b
	.word	98                      # 0x62
	.word	24                      # 0x18
	.word	76                      # 0x4c
	.word	15                      # 0xf
	.word	86                      # 0x56
	.word	48                      # 0x30
	.word	59                      # 0x3b
	.word	18                      # 0x12
	.word	17                      # 0x11
	.word	81                      # 0x51
	.word	75                      # 0x4b
	.word	61                      # 0x3d
	.word	69                      # 0x45
	.word	99                      # 0x63
	.word	61                      # 0x3d
	.word	20                      # 0x14
	.word	27                      # 0x1b
	.word	13                      # 0xd
	.word	62                      # 0x3e
	.word	32                      # 0x20
	.word	90                      # 0x5a
	.word	53                      # 0x35
	.word	88                      # 0x58
	.word	87                      # 0x57
	.word	95                      # 0x5f
	.word	42                      # 0x2a
	.word	89                      # 0x59
	.word	1                       # 0x1
	.word	58                      # 0x3a
	.word	53                      # 0x35
	.word	60                      # 0x3c
	.word	55                      # 0x37
	.word	43                      # 0x2b
	.word	1                       # 0x1
	.word	70                      # 0x46
	.word	28                      # 0x1c
	.word	49                      # 0x31
	.word	29                      # 0x1d
	.word	12                      # 0xc
	.word	33                      # 0x21
	.word	76                      # 0x4c
	.word	53                      # 0x35
	.word	60                      # 0x3c
	.word	10                      # 0xa
	.word	52                      # 0x34
	.word	87                      # 0x57
	.word	98                      # 0x62
	.word	45                      # 0x2d
	.word	100                     # 0x64
	.word	25                      # 0x19
	.word	43                      # 0x2b
	.word	89                      # 0x59
	.word	79                      # 0x4f
	.word	97                      # 0x61
	.word	41                      # 0x29
	.word	73                      # 0x49
	.word	4                       # 0x4
	.word	96                      # 0x60
	.word	40                      # 0x28
	.word	62                      # 0x3e
	.word	48                      # 0x30
	.word	66                      # 0x42
	.word	16                      # 0x10
	.word	91                      # 0x5b
	.word	67                      # 0x43
	.word	53                      # 0x35
	.word	85                      # 0x55
	.word	82                      # 0x52
	.word	48                      # 0x30
	.word	98                      # 0x62
	.word	14                      # 0xe
	.word	90                      # 0x5a
	.word	50                      # 0x32
	.word	74                      # 0x4a
	.word	66                      # 0x42
	.word	68                      # 0x44
	.word	26                      # 0x1a
	.word	63                      # 0x3f
	.word	12                      # 0xc
	.word	25                      # 0x19
	.word	89                      # 0x59
	.word	55                      # 0x37
	.word	80                      # 0x50
	.word	33                      # 0x21
	.word	17                      # 0x11
	.word	20                      # 0x14
	.word	72                      # 0x48
	.word	22                      # 0x16
	.word	83                      # 0x53
	.word	11                      # 0xb
	.word	84                      # 0x54
	.word	30                      # 0x1e
	.word	77                      # 0x4d
	.word	67                      # 0x43
	.word	88                      # 0x58
	.word	9                       # 0x9
	.word	86                      # 0x56
	.word	72                      # 0x48
	.word	91                      # 0x5b
	.word	33                      # 0x21
	.word	35                      # 0x23
	.word	72                      # 0x48
	.word	89                      # 0x59
	.word	86                      # 0x56
	.word	11                      # 0xb
	.word	54                      # 0x36
	.word	53                      # 0x35
	.word	38                      # 0x26
	.word	17                      # 0x11
	.word	32                      # 0x20
	.word	29                      # 0x1d
	.word	72                      # 0x48
	.word	53                      # 0x35
	.word	76                      # 0x4c
	.word	71                      # 0x47
	.word	71                      # 0x47
	.word	62                      # 0x3e
	.word	42                      # 0x2a
	.word	93                      # 0x5d
	.word	44                      # 0x2c
	.word	19                      # 0x13
	.word	76                      # 0x4c
	.word	41                      # 0x29
	.word	62                      # 0x3e
	.word	42                      # 0x2a
	.word	28                      # 0x1c
	.word	71                      # 0x47
	.word	27                      # 0x1b
	.word	66                      # 0x42
	.word	27                      # 0x1b
	.word	26                      # 0x1a
	.word	1                       # 0x1
	.word	99                      # 0x63
	.word	14                      # 0xe
	.word	87                      # 0x57
	.word	10                      # 0xa
	.word	35                      # 0x23
	.word	5                       # 0x5
	.word	14                      # 0xe
	.word	52                      # 0x34
	.word	37                      # 0x25
	.word	43                      # 0x2b
	.word	90                      # 0x5a
	.word	91                      # 0x5b
	.word	18                      # 0x12
	.word	60                      # 0x3c
	.word	27                      # 0x1b
	.word	81                      # 0x51
	.word	68                      # 0x44
	.word	19                      # 0x13
	.word	24                      # 0x18
	.word	87                      # 0x57
	.word	95                      # 0x5f
	.word	31                      # 0x1f
	.word	48                      # 0x30
	.word	3                       # 0x3
	.word	59                      # 0x3b
	.word	18                      # 0x12
	.word	97                      # 0x61
	.word	92                      # 0x5c
	.word	11                      # 0xb
	.word	90                      # 0x5a
	.word	93                      # 0x5d
	.word	10                      # 0xa
	.word	70                      # 0x46
	.word	45                      # 0x2d
	.word	20                      # 0x14
	.word	4                       # 0x4
	.word	16                      # 0x10
	.word	34                      # 0x22
	.word	22                      # 0x16
	.word	54                      # 0x36
	.word	43                      # 0x2b
	.word	11                      # 0xb
	.word	10                      # 0xa
	.word	62                      # 0x3e
	.word	37                      # 0x25
	.word	37                      # 0x25
	.word	8                       # 0x8
	.word	4                       # 0x4
	.word	22                      # 0x16
	.word	99                      # 0x63
	.word	57                      # 0x39
	.word	83                      # 0x53
	.word	30                      # 0x1e
	.word	4                       # 0x4
	.word	86                      # 0x56
	.word	55                      # 0x37
	.word	89                      # 0x59
	.word	49                      # 0x31
	.word	46                      # 0x2e
	.word	0                       # 0x0
	.word	38                      # 0x26
	.word	38                      # 0x26
	.word	77                      # 0x4d
	.word	74                      # 0x4a
	.word	49                      # 0x31
	.word	97                      # 0x61
	.word	79                      # 0x4f
	.word	66                      # 0x42
	.word	97                      # 0x61
	.word	0                       # 0x0
	.word	86                      # 0x56
	.word	5                       # 0x5
	.word	79                      # 0x4f
	.word	62                      # 0x3e
	.word	33                      # 0x21
	.word	15                      # 0xf
	.word	65                      # 0x41
	.word	41                      # 0x29
	.word	87                      # 0x57
	.word	87                      # 0x57
	.word	6                       # 0x6
	.word	9                       # 0x9
	.word	35                      # 0x23
	.word	2                       # 0x2
	.word	14                      # 0xe
	.word	21                      # 0x15
	.word	57                      # 0x39
	.word	69                      # 0x45
	.word	36                      # 0x24
	.word	3                       # 0x3
	.word	35                      # 0x23
	.word	40                      # 0x28
	.word	7                       # 0x7
	.word	11                      # 0xb
	.word	13                      # 0xd
	.word	23                      # 0x17
	.word	74                      # 0x4a
	.word	92                      # 0x5c
	.word	55                      # 0x37
	.word	36                      # 0x24
	.word	93                      # 0x5d
	.word	40                      # 0x28
	.word	42                      # 0x2a
	.word	37                      # 0x25
	.word	68                      # 0x44
	.word	75                      # 0x4b
	.word	18                      # 0x12
	.word	32                      # 0x20
	.word	83                      # 0x53
	.word	71                      # 0x47
	.word	85                      # 0x55
	.word	89                      # 0x59
	.word	81                      # 0x51
	.word	19                      # 0x13
	.word	91                      # 0x5b
	.word	61                      # 0x3d
	.word	6                       # 0x6
	.word	13                      # 0xd
	.word	29                      # 0x1d
	.word	8                       # 0x8
	.word	16                      # 0x10
	.word	65                      # 0x41
	.word	48                      # 0x30
	.word	91                      # 0x5b
	.word	76                      # 0x4c
	.word	62                      # 0x3e
	.word	80                      # 0x50
	.word	16                      # 0x10
	.word	19                      # 0x13
	.word	34                      # 0x22
	.word	52                      # 0x34
	.word	78                      # 0x4e
	.word	74                      # 0x4a
	.word	94                      # 0x5e
	.word	14                      # 0xe
	.word	7                       # 0x7
	.word	69                      # 0x45
	.word	33                      # 0x21
	.word	5                       # 0x5
	.word	17                      # 0x11
	.word	3                       # 0x3
	.word	56                      # 0x38
	.word	5                       # 0x5
	.word	84                      # 0x54
	.word	41                      # 0x29
	.word	62                      # 0x3e
	.word	44                      # 0x2c
	.word	48                      # 0x30
	.word	75                      # 0x4b
	.word	40                      # 0x28
	.word	56                      # 0x38
	.word	58                      # 0x3a
	.word	71                      # 0x47
	.word	71                      # 0x47
	.word	14                      # 0xe
	.word	12                      # 0xc
	.word	99                      # 0x63
	.word	94                      # 0x5e
	.word	28                      # 0x1c
	.word	17                      # 0x11
	.word	27                      # 0x1b
	.word	81                      # 0x51
	.word	96                      # 0x60
	.word	67                      # 0x43
	.word	74                      # 0x4a
	.word	76                      # 0x4c
	.word	74                      # 0x4a
	.word	8                       # 0x8
	.word	75                      # 0x4b
	.word	45                      # 0x2d
	.word	25                      # 0x19
	.word	79                      # 0x4f
	.word	0                       # 0x0
	.word	97                      # 0x61
	.word	28                      # 0x1c
	.word	41                      # 0x29
	.word	58                      # 0x3a
	.word	39                      # 0x27
	.word	55                      # 0x37
	.word	100                     # 0x64
	.word	45                      # 0x2d
	.word	11                      # 0xb
	.word	23                      # 0x17
	.word	15                      # 0xf
	.word	48                      # 0x30
	.word	37                      # 0x25
	.word	27                      # 0x1b
	.word	46                      # 0x2e
	.word	97                      # 0x61
	.word	56                      # 0x38
	.word	63                      # 0x3f
	.word	90                      # 0x5a
	.word	36                      # 0x24
	.word	24                      # 0x18
	.word	56                      # 0x38
	.word	76                      # 0x4c
	.word	0                       # 0x0
	.word	96                      # 0x60
	.word	85                      # 0x55
	.word	41                      # 0x29
	.word	40                      # 0x28
	.word	9                       # 0x9
	.word	19                      # 0x13
	.word	6                       # 0x6
	.word	6                       # 0x6
	.word	14                      # 0xe
	.word	47                      # 0x2f
	.word	30                      # 0x1e
	.word	19                      # 0x13
	.word	2                       # 0x2
	.word	96                      # 0x60
	.word	64                      # 0x40
	.word	80                      # 0x50
	.word	18                      # 0x12
	.word	45                      # 0x2d
	.word	27                      # 0x1b
	.word	21                      # 0x15
	.word	72                      # 0x48
	.word	39                      # 0x27
	.word	17                      # 0x11
	.word	94                      # 0x5e
	.word	1                       # 0x1
	.word	6                       # 0x6
	.word	96                      # 0x60
	.word	93                      # 0x5d
	.word	28                      # 0x1c
	.word	72                      # 0x48
	.word	59                      # 0x3b
	.word	90                      # 0x5a
	.word	56                      # 0x38
	.word	100                     # 0x64
	.word	96                      # 0x60
	.word	31                      # 0x1f
	.word	86                      # 0x56
	.word	1                       # 0x1
	.word	3                       # 0x3
	.word	66                      # 0x42
	.word	15                      # 0xf
	.word	0                       # 0x0
	.word	85                      # 0x55
	.word	17                      # 0x11
	.word	96                      # 0x60
	.word	14                      # 0xe
	.word	63                      # 0x3f
	.word	81                      # 0x51
	.word	59                      # 0x3b
	.word	90                      # 0x5a
	.word	1                       # 0x1
	.word	97                      # 0x61
	.word	28                      # 0x1c
	.word	19                      # 0x13
	.word	57                      # 0x39
	.word	96                      # 0x60
	.word	92                      # 0x5c
	.word	52                      # 0x34
	.word	54                      # 0x36
	.word	87                      # 0x57
	.word	23                      # 0x17
	.word	12                      # 0xc
	.word	76                      # 0x4c
	.word	45                      # 0x2d
	.word	79                      # 0x4f
	.word	72                      # 0x48
	.word	43                      # 0x2b
	.word	64                      # 0x40
	.word	39                      # 0x27
	.word	46                      # 0x2e
	.word	29                      # 0x1d
	.word	54                      # 0x36
	.word	12                      # 0xc
	.word	80                      # 0x50
	.word	37                      # 0x25
	.word	8                       # 0x8
	.word	60                      # 0x3c
	.word	100                     # 0x64
	.word	89                      # 0x59
	.word	85                      # 0x55
	.word	55                      # 0x37
	.word	56                      # 0x38
	.word	47                      # 0x2f
	.word	49                      # 0x31
	.word	75                      # 0x4b
	.word	3                       # 0x3
	.word	45                      # 0x2d
	.word	33                      # 0x21
	.word	56                      # 0x38
	.word	99                      # 0x63
	.word	19                      # 0x13
	.word	45                      # 0x2d
	.word	78                      # 0x4e
	.word	61                      # 0x3d
	.word	91                      # 0x5b
	.word	56                      # 0x38
	.word	99                      # 0x63
	.word	33                      # 0x21
	.word	86                      # 0x56
	.word	4                       # 0x4
	.word	45                      # 0x2d
	.word	81                      # 0x51
	.word	58                      # 0x3a
	.word	58                      # 0x3a
	.word	60                      # 0x3c
	.word	96                      # 0x60
	.word	32                      # 0x20
	.word	19                      # 0x13
	.word	61                      # 0x3d
	.word	87                      # 0x57
	.word	70                      # 0x46
	.word	16                      # 0x10
	.word	42                      # 0x2a
	.word	16                      # 0x10
	.word	65                      # 0x41
	.word	84                      # 0x54
	.word	20                      # 0x14
	.word	76                      # 0x4c
	.word	83                      # 0x53
	.word	42                      # 0x2a
	.word	41                      # 0x29
	.word	68                      # 0x44
	.word	87                      # 0x57
	.word	18                      # 0x12
	.word	28                      # 0x1c
	.word	77                      # 0x4d
	.word	40                      # 0x28
	.word	94                      # 0x5e
	.word	76                      # 0x4c
	.word	25                      # 0x19
	.word	98                      # 0x62
	.word	88                      # 0x58
	.word	5                       # 0x5
	.word	21                      # 0x15
	.word	11                      # 0xb
	.word	31                      # 0x1f
	.word	16                      # 0x10
	.word	43                      # 0x2b
	.word	16                      # 0x10
	.word	44                      # 0x2c
	.word	29                      # 0x1d
	.word	86                      # 0x56
	.word	32                      # 0x20
	.word	32                      # 0x20
	.word	54                      # 0x36
	.word	12                      # 0xc
	.word	52                      # 0x34
	.word	56                      # 0x38
	.word	8                       # 0x8
	.word	30                      # 0x1e
	.word	44                      # 0x2c
	.word	94                      # 0x5e
	.word	44                      # 0x2c
	.word	39                      # 0x27
	.word	65                      # 0x41
	.word	19                      # 0x13
	.word	51                      # 0x33
	.word	91                      # 0x5b
	.word	1                       # 0x1
	.word	5                       # 0x5
	.word	89                      # 0x59
	.word	34                      # 0x22
	.word	25                      # 0x19
	.word	58                      # 0x3a
	.word	20                      # 0x14
	.word	51                      # 0x33
	.word	38                      # 0x26
	.word	65                      # 0x41
	.word	30                      # 0x1e
	.word	7                       # 0x7
	.word	20                      # 0x14
	.word	10                      # 0xa
	.word	51                      # 0x33
	.word	18                      # 0x12
	.word	43                      # 0x2b
	.word	71                      # 0x47
	.word	97                      # 0x61
	.word	61                      # 0x3d
	.word	26                      # 0x1a
	.word	5                       # 0x5
	.word	57                      # 0x39
	.word	70                      # 0x46
	.word	65                      # 0x41
	.word	0                       # 0x0
	.word	75                      # 0x4b
	.word	29                      # 0x1d
	.word	86                      # 0x56
	.word	93                      # 0x5d
	.word	87                      # 0x57
	.word	87                      # 0x57
	.word	64                      # 0x40
	.word	75                      # 0x4b
	.word	88                      # 0x58
	.word	89                      # 0x59
	.word	100                     # 0x64
	.word	7                       # 0x7
	.word	40                      # 0x28
	.word	37                      # 0x25
	.word	38                      # 0x26
	.word	36                      # 0x24
	.word	44                      # 0x2c
	.word	24                      # 0x18
	.word	46                      # 0x2e
	.word	95                      # 0x5f
	.word	43                      # 0x2b
	.word	89                      # 0x59
	.word	32                      # 0x20
	.word	5                       # 0x5
	.word	15                      # 0xf
	.word	58                      # 0x3a
	.word	77                      # 0x4d
	.word	72                      # 0x48
	.word	95                      # 0x5f
	.word	8                       # 0x8
	.word	38                      # 0x26
	.word	69                      # 0x45
	.word	37                      # 0x25
	.word	24                      # 0x18
	.word	27                      # 0x1b
	.word	90                      # 0x5a
	.word	77                      # 0x4d
	.word	92                      # 0x5c
	.word	31                      # 0x1f
	.word	30                      # 0x1e
	.word	80                      # 0x50
	.word	30                      # 0x1e
	.word	37                      # 0x25
	.word	86                      # 0x56
	.word	33                      # 0x21
	.word	76                      # 0x4c
	.word	21                      # 0x15
	.word	77                      # 0x4d
	.word	100                     # 0x64
	.word	68                      # 0x44
	.word	37                      # 0x25
	.word	8                       # 0x8
	.word	22                      # 0x16
	.word	69                      # 0x45
	.word	81                      # 0x51
	.word	38                      # 0x26
	.word	94                      # 0x5e
	.word	57                      # 0x39
	.word	76                      # 0x4c
	.word	54                      # 0x36
	.word	65                      # 0x41
	.word	14                      # 0xe
	.word	89                      # 0x59
	.word	69                      # 0x45
	.word	4                       # 0x4
	.word	16                      # 0x10
	.word	24                      # 0x18
	.word	47                      # 0x2f
	.word	7                       # 0x7
	.word	21                      # 0x15
	.word	78                      # 0x4e
	.word	53                      # 0x35
	.word	17                      # 0x11
	.word	81                      # 0x51
	.word	39                      # 0x27
	.word	50                      # 0x32
	.word	22                      # 0x16
	.word	60                      # 0x3c
	.word	93                      # 0x5d
	.word	89                      # 0x59
	.word	94                      # 0x5e
	.word	30                      # 0x1e
	.word	97                      # 0x61
	.word	16                      # 0x10
	.word	65                      # 0x41
	.word	43                      # 0x2b
	.word	20                      # 0x14
	.word	24                      # 0x18
	.word	67                      # 0x43
	.word	62                      # 0x3e
	.word	78                      # 0x4e
	.word	98                      # 0x62
	.word	42                      # 0x2a
	.word	67                      # 0x43
	.word	32                      # 0x20
	.word	46                      # 0x2e
	.word	49                      # 0x31
	.word	57                      # 0x39
	.word	60                      # 0x3c
	.word	56                      # 0x38
	.word	44                      # 0x2c
	.word	37                      # 0x25
	.word	75                      # 0x4b
	.word	62                      # 0x3e
	.word	17                      # 0x11
	.word	13                      # 0xd
	.word	11                      # 0xb
	.word	40                      # 0x28
	.word	40                      # 0x28
	.word	4                       # 0x4
	.word	95                      # 0x5f
	.word	100                     # 0x64
	.word	0                       # 0x0
	.word	57                      # 0x39
	.word	82                      # 0x52
	.word	31                      # 0x1f
	.word	0                       # 0x0
	.word	1                       # 0x1
	.word	56                      # 0x38
	.word	67                      # 0x43
	.word	30                      # 0x1e
	.word	100                     # 0x64
	.word	64                      # 0x40
	.word	72                      # 0x48
	.word	66                      # 0x42
	.word	63                      # 0x3f
	.word	18                      # 0x12
	.word	81                      # 0x51
	.word	19                      # 0x13
	.word	44                      # 0x2c
	.word	2                       # 0x2
	.word	63                      # 0x3f
	.word	81                      # 0x51
	.word	78                      # 0x4e
	.word	91                      # 0x5b
	.word	64                      # 0x40
	.word	91                      # 0x5b
	.word	2                       # 0x2
	.word	70                      # 0x46
	.word	97                      # 0x61
	.word	73                      # 0x49
	.word	64                      # 0x40
	.word	97                      # 0x61
	.word	39                      # 0x27
	.word	21                      # 0x15
	.word	78                      # 0x4e
	.word	70                      # 0x46
	.word	21                      # 0x15
	.word	46                      # 0x2e
	.word	25                      # 0x19
	.word	54                      # 0x36
	.word	76                      # 0x4c
	.word	92                      # 0x5c
	.word	84                      # 0x54
	.word	47                      # 0x2f
	.word	57                      # 0x39
	.word	46                      # 0x2e
	.word	31                      # 0x1f
	.word	38                      # 0x26
	.word	31                      # 0x1f
	.word	75                      # 0x4b
	.word	40                      # 0x28
	.word	61                      # 0x3d
	.word	21                      # 0x15
	.word	84                      # 0x54
	.word	51                      # 0x33
	.word	86                      # 0x56
	.word	41                      # 0x29
	.word	19                      # 0x13
	.word	21                      # 0x15
	.word	37                      # 0x25
	.word	58                      # 0x3a
	.word	86                      # 0x56
	.word	100                     # 0x64
	.word	97                      # 0x61
	.word	73                      # 0x49
	.word	44                      # 0x2c
	.word	67                      # 0x43
	.word	60                      # 0x3c
	.word	90                      # 0x5a
	.word	58                      # 0x3a
	.word	13                      # 0xd
	.word	31                      # 0x1f
	.word	49                      # 0x31
	.word	63                      # 0x3f
	.word	44                      # 0x2c
	.word	73                      # 0x49
	.word	76                      # 0x4c
	.word	76                      # 0x4c
	.word	77                      # 0x4d
	.word	73                      # 0x49
	.word	16                      # 0x10
	.word	83                      # 0x53
	.word	100                     # 0x64
	.word	4                       # 0x4
	.word	67                      # 0x43
	.word	51                      # 0x33
	.word	56                      # 0x38
	.word	7                       # 0x7
	.word	36                      # 0x24
	.word	77                      # 0x4d
	.word	10                      # 0xa
	.word	95                      # 0x5f
	.word	28                      # 0x1c
	.word	10                      # 0xa
	.word	57                      # 0x39
	.word	0                       # 0x0
	.word	54                      # 0x36
	.word	23                      # 0x17
	.word	60                      # 0x3c
	.word	9                       # 0x9
	.word	48                      # 0x30
	.word	39                      # 0x27
	.word	40                      # 0x28
	.word	97                      # 0x61
	.word	69                      # 0x45
	.word	84                      # 0x54
	.word	35                      # 0x23
	.word	44                      # 0x2c
	.word	25                      # 0x19
	.word	11                      # 0xb
	.word	83                      # 0x53
	.word	8                       # 0x8
	.word	61                      # 0x3d
	.word	83                      # 0x53
	.word	12                      # 0xc
	.word	27                      # 0x1b
	.word	100                     # 0x64
	.word	34                      # 0x22
	.word	0                       # 0x0
	.word	35                      # 0x23
	.word	10                      # 0xa
	.word	10                      # 0xa
	.word	96                      # 0x60
	.word	39                      # 0x27
	.word	87                      # 0x57
	.word	53                      # 0x35
	.word	5                       # 0x5
	.word	40                      # 0x28
	.word	42                      # 0x2a
	.word	66                      # 0x42
	.word	15                      # 0xf
	.word	90                      # 0x5a
	.word	71                      # 0x47
	.word	55                      # 0x37
	.word	87                      # 0x57
	.word	39                      # 0x27
	.word	5                       # 0x5
	.word	88                      # 0x58
	.word	49                      # 0x31
	.word	97                      # 0x61
	.word	100                     # 0x64
	.word	32                      # 0x20
	.word	4                       # 0x4
	.word	60                      # 0x3c
	.word	81                      # 0x51
	.word	83                      # 0x53
	.word	53                      # 0x35
	.word	80                      # 0x50
	.word	16                      # 0x10
	.word	53                      # 0x35
	.word	14                      # 0xe
	.word	94                      # 0x5e
	.word	29                      # 0x1d
	.word	77                      # 0x4d
	.word	99                      # 0x63
	.word	16                      # 0x10
	.word	29                      # 0x1d
	.word	3                       # 0x3
	.word	22                      # 0x16
	.word	71                      # 0x47
	.word	35                      # 0x23
	.word	4                       # 0x4
	.word	61                      # 0x3d
	.word	6                       # 0x6
	.word	25                      # 0x19
	.word	13                      # 0xd
	.word	11                      # 0xb
	.word	30                      # 0x1e
	.word	0                       # 0x0
	.word	27                      # 0x1b
	.word	94                      # 0x5e
	.word	66                      # 0x42
	.word	25                      # 0x19
	.word	64                      # 0x40
	.word	92                      # 0x5c
	.word	5                       # 0x5
	.word	47                      # 0x2f
	.word	44                      # 0x2c
	.word	85                      # 0x55
	.word	29                      # 0x1d
	.word	63                      # 0x3f
	.word	65                      # 0x41
	.word	89                      # 0x59
	.word	59                      # 0x3b
	.word	41                      # 0x29
	.word	87                      # 0x57
	.word	41                      # 0x29
	.word	36                      # 0x24
	.word	57                      # 0x39
	.word	29                      # 0x1d
	.word	7                       # 0x7
	.word	92                      # 0x5c
	.word	33                      # 0x21
	.word	34                      # 0x22
	.word	64                      # 0x40
	.word	59                      # 0x3b
	.word	47                      # 0x2f
	.word	76                      # 0x4c
	.word	55                      # 0x37
	.word	13                      # 0xd
	.word	2                       # 0x2
	.word	48                      # 0x30
	.word	46                      # 0x2e
	.word	27                      # 0x1b
	.word	12                      # 0xc
	.word	37                      # 0x25
	.word	99                      # 0x63
	.word	25                      # 0x19
	.word	48                      # 0x30
	.word	83                      # 0x53
	.word	20                      # 0x14
	.word	77                      # 0x4d
	.word	13                      # 0xd
	.word	9                       # 0x9
	.word	35                      # 0x23
	.word	55                      # 0x37
	.word	62                      # 0x3e
	.word	76                      # 0x4c
	.word	57                      # 0x39
	.word	18                      # 0x12
	.word	72                      # 0x48
	.word	64                      # 0x40
	.word	10                      # 0xa
	.word	4                       # 0x4
	.word	64                      # 0x40
	.word	74                      # 0x4a
	.word	63                      # 0x3f
	.word	77                      # 0x4d
	.word	15                      # 0xf
	.word	18                      # 0x12
	.word	91                      # 0x5b
	.word	84                      # 0x54
	.word	32                      # 0x20
	.word	36                      # 0x24
	.word	77                      # 0x4d
	.word	10                      # 0xa
	.word	39                      # 0x27
	.word	75                      # 0x4b
	.word	35                      # 0x23
	.word	87                      # 0x57
	.word	23                      # 0x17
	.word	22                      # 0x16
	.word	30                      # 0x1e
	.word	37                      # 0x25
	.word	31                      # 0x1f
	.word	65                      # 0x41
	.word	58                      # 0x3a
	.word	59                      # 0x3b
	.word	7                       # 0x7
	.word	14                      # 0xe
	.word	78                      # 0x4e
	.word	79                      # 0x4f
	.word	45                      # 0x2d
	.word	54                      # 0x36
	.word	83                      # 0x53
	.word	8                       # 0x8
	.word	94                      # 0x5e
	.word	12                      # 0xc
	.word	86                      # 0x56
	.word	9                       # 0x9
	.word	97                      # 0x61
	.word	42                      # 0x2a
	.word	93                      # 0x5d
	.word	95                      # 0x5f
	.word	44                      # 0x2c
	.word	70                      # 0x46
	.word	5                       # 0x5
	.word	83                      # 0x53
	.word	10                      # 0xa
	.word	40                      # 0x28
	.word	36                      # 0x24
	.word	34                      # 0x22
	.word	62                      # 0x3e
	.word	66                      # 0x42
	.word	71                      # 0x47
	.word	59                      # 0x3b
	.word	97                      # 0x61
	.word	95                      # 0x5f
	.word	18                      # 0x12
	.word	3                       # 0x3
	.word	8                       # 0x8
	.word	62                      # 0x3e
	.word	48                      # 0x30
	.word	19                      # 0x13
	.word	15                      # 0xf
	.word	98                      # 0x62
	.word	28                      # 0x1c
	.word	8                       # 0x8
	.word	9                       # 0x9
	.word	80                      # 0x50
	.word	84                      # 0x54
	.word	72                      # 0x48
	.word	21                      # 0x15
	.word	43                      # 0x2b
	.word	66                      # 0x42
	.word	65                      # 0x41
	.word	79                      # 0x4f
	.word	71                      # 0x47
	.word	13                      # 0xd
	.word	89                      # 0x59
	.word	78                      # 0x4e
	.word	49                      # 0x31
	.word	22                      # 0x16
	.word	5                       # 0x5
	.word	14                      # 0xe
	.word	59                      # 0x3b
	.word	65                      # 0x41
	.word	11                      # 0xb
	.word	53                      # 0x35
	.word	49                      # 0x31
	.word	81                      # 0x51
	.word	28                      # 0x1c
	.word	77                      # 0x4d
	.word	29                      # 0x1d
	.word	47                      # 0x2f
	.word	92                      # 0x5c
	.word	26                      # 0x1a
	.word	41                      # 0x29
	.word	66                      # 0x42
	.word	1                       # 0x1
	.word	20                      # 0x14
	.word	50                      # 0x32
	.word	73                      # 0x49
	.word	7                       # 0x7
	.word	59                      # 0x3b
	.word	4                       # 0x4
	.word	72                      # 0x48
	.word	37                      # 0x25
	.word	76                      # 0x4c
	.word	86                      # 0x56
	.word	25                      # 0x19
	.word	19                      # 0x13
	.word	0                       # 0x0
	.word	14                      # 0xe
	.word	24                      # 0x18
	.word	15                      # 0xf
	.word	73                      # 0x49
	.word	55                      # 0x37
	.word	93                      # 0x5d
	.word	93                      # 0x5d
	.word	3                       # 0x3
	.word	73                      # 0x49
	.word	87                      # 0x57
	.word	80                      # 0x50
	.word	68                      # 0x44
	.word	100                     # 0x64
	.word	37                      # 0x25
	.word	94                      # 0x5e
	.word	41                      # 0x29
	.word	3                       # 0x3
	.word	61                      # 0x3d
	.word	27                      # 0x1b
	.word	19                      # 0x13
	.word	33                      # 0x21
	.word	35                      # 0x23
	.word	78                      # 0x4e
	.word	38                      # 0x26
	.word	73                      # 0x49
	.word	14                      # 0xe
	.word	80                      # 0x50
	.word	58                      # 0x3a
	.word	5                       # 0x5
	.word	99                      # 0x63
	.word	59                      # 0x3b
	.word	19                      # 0x13
	.word	22                      # 0x16
	.word	40                      # 0x28
	.word	59                      # 0x3b
	.word	78                      # 0x4e
	.word	32                      # 0x20
	.word	17                      # 0x11
	.word	47                      # 0x2f
	.word	71                      # 0x47
	.word	3                       # 0x3
	.word	94                      # 0x5e
	.word	39                      # 0x27
	.word	2                       # 0x2
	.word	97                      # 0x61
	.word	99                      # 0x63
	.word	9                       # 0x9
	.word	66                      # 0x42
	.word	60                      # 0x3c
	.word	37                      # 0x25
	.word	85                      # 0x55
	.word	59                      # 0x3b
	.word	38                      # 0x26
	.word	28                      # 0x1c
	.word	63                      # 0x3f
	.word	10                      # 0xa
	.word	8                       # 0x8
	.word	8                       # 0x8
	.word	35                      # 0x23
	.word	81                      # 0x51
	.word	6                       # 0x6
	.word	60                      # 0x3c
	.word	100                     # 0x64
	.word	96                      # 0x60
	.word	66                      # 0x42
	.word	24                      # 0x18
	.word	39                      # 0x27
	.word	64                      # 0x40
	.word	41                      # 0x29
	.word	52                      # 0x34
	.word	34                      # 0x22
	.word	10                      # 0xa
	.word	11                      # 0xb
	.word	39                      # 0x27
	.word	80                      # 0x50
	.word	8                       # 0x8
	.word	4                       # 0x4
	.word	89                      # 0x59
	.word	74                      # 0x4a
	.word	64                      # 0x40
	.word	92                      # 0x5c
	.word	25                      # 0x19
	.word	89                      # 0x59
	.word	29                      # 0x1d
	.word	19                      # 0x13
	.word	18                      # 0x12
	.word	6                       # 0x6
	.word	28                      # 0x1c
	.word	26                      # 0x1a
	.word	7                       # 0x7
	.word	8                       # 0x8
	.word	33                      # 0x21
	.word	67                      # 0x43
	.word	74                      # 0x4a
	.word	95                      # 0x5f
	.word	32                      # 0x20
	.word	99                      # 0x63
	.word	33                      # 0x21
	.word	96                      # 0x60
	.word	5                       # 0x5
	.word	51                      # 0x33
	.word	96                      # 0x60
	.word	83                      # 0x53
	.word	63                      # 0x3f
	.word	35                      # 0x23
	.word	62                      # 0x3e
	.word	71                      # 0x47
	.word	39                      # 0x27
	.word	16                      # 0x10
	.word	10                      # 0xa
	.word	69                      # 0x45
	.word	8                       # 0x8
	.word	35                      # 0x23
	.word	23                      # 0x17
	.word	3                       # 0x3
	.word	55                      # 0x37
	.word	41                      # 0x29
	.word	76                      # 0x4c
	.word	49                      # 0x31
	.word	68                      # 0x44
	.word	83                      # 0x53
	.word	23                      # 0x17
	.word	67                      # 0x43
	.word	15                      # 0xf
	.word	97                      # 0x61
	.word	61                      # 0x3d
	.word	13                      # 0xd
	.word	61                      # 0x3d
	.word	60                      # 0x3c
	.word	75                      # 0x4b
	.word	33                      # 0x21
	.word	77                      # 0x4d
	.word	71                      # 0x47
	.word	15                      # 0xf
	.word	39                      # 0x27
	.word	72                      # 0x48
	.word	43                      # 0x2b
	.word	76                      # 0x4c
	.word	77                      # 0x4d
	.word	59                      # 0x3b
	.word	53                      # 0x35
	.word	11                      # 0xb
	.word	33                      # 0x21
	.word	88                      # 0x58
	.word	34                      # 0x22
	.word	37                      # 0x25
	.word	8                       # 0x8
	.word	76                      # 0x4c
	.word	79                      # 0x4f
	.word	23                      # 0x17
	.word	9                       # 0x9
	.word	62                      # 0x3e
	.word	46                      # 0x2e
	.word	76                      # 0x4c
	.word	43                      # 0x2b
	.word	9                       # 0x9
	.word	2                       # 0x2
	.word	57                      # 0x39
	.word	70                      # 0x46
	.word	28                      # 0x1c
	.word	31                      # 0x1f
	.word	69                      # 0x45
	.word	4                       # 0x4
	.word	68                      # 0x44
	.word	84                      # 0x54
	.word	10                      # 0xa
	.word	39                      # 0x27
	.word	26                      # 0x1a
	.word	52                      # 0x34
	.word	82                      # 0x52
	.word	52                      # 0x34
	.word	4                       # 0x4
	.word	93                      # 0x5d
	.word	85                      # 0x55
	.word	59                      # 0x3b
	.word	94                      # 0x5e
	.word	21                      # 0x15
	.word	33                      # 0x21
	.word	35                      # 0x23
	.word	67                      # 0x43
	.word	57                      # 0x39
	.word	44                      # 0x2c
	.word	28                      # 0x1c
	.word	69                      # 0x45
	.word	86                      # 0x56
	.word	37                      # 0x25
	.word	78                      # 0x4e
	.word	54                      # 0x36
	.word	94                      # 0x5e
	.word	14                      # 0xe
	.word	48                      # 0x30
	.word	25                      # 0x19
	.word	83                      # 0x53
	.word	18                      # 0x12
	.word	59                      # 0x3b
	.word	33                      # 0x21
	.word	28                      # 0x1c
	.word	99                      # 0x63
	.word	25                      # 0x19
	.word	81                      # 0x51
	.word	46                      # 0x2e
	.word	77                      # 0x4d
	.word	51                      # 0x33
	.word	39                      # 0x27
	.word	62                      # 0x3e
	.word	9                       # 0x9
	.word	32                      # 0x20
	.word	49                      # 0x31
	.word	43                      # 0x2b
	.word	33                      # 0x21
	.word	15                      # 0xf
	.word	100                     # 0x64
	.word	77                      # 0x4d
	.word	9                       # 0x9
	.word	68                      # 0x44
	.word	28                      # 0x1c
	.word	47                      # 0x2f
	.word	12                      # 0xc
	.word	82                      # 0x52
	.word	6                       # 0x6
	.word	26                      # 0x1a
	.word	96                      # 0x60
	.word	98                      # 0x62
	.word	75                      # 0x4b
	.word	13                      # 0xd
	.word	57                      # 0x39
	.word	7                       # 0x7
	.word	8                       # 0x8
	.word	55                      # 0x37
	.word	33                      # 0x21
	.word	55                      # 0x37
	.word	0                       # 0x0
	.word	76                      # 0x4c
	.word	5                       # 0x5
	.word	5                       # 0x5
	.word	3                       # 0x3
	.word	15                      # 0xf
	.word	3                       # 0x3
	.word	53                      # 0x35
	.word	58                      # 0x3a
	.word	36                      # 0x24
	.word	34                      # 0x22
	.word	23                      # 0x17
	.word	79                      # 0x4f
	.word	10                      # 0xa
	.word	57                      # 0x39
	.word	6                       # 0x6
	.word	23                      # 0x17
	.word	69                      # 0x45
	.word	54                      # 0x36
	.word	29                      # 0x1d
	.word	61                      # 0x3d
	.word	49                      # 0x31
	.word	27                      # 0x1b
	.word	36                      # 0x24
	.word	63                      # 0x3f
	.word	84                      # 0x54
	.word	9                       # 0x9
	.word	71                      # 0x47
	.word	4                       # 0x4
	.word	8                       # 0x8
	.word	25                      # 0x19
	.word	71                      # 0x47
	.word	85                      # 0x55
	.word	97                      # 0x61
	.word	77                      # 0x4d
	.word	88                      # 0x58
	.word	11                      # 0xb
	.word	46                      # 0x2e
	.word	6                       # 0x6
	.word	35                      # 0x23
	.word	83                      # 0x53
	.word	7                       # 0x7
	.word	24                      # 0x18
	.word	27                      # 0x1b
	.word	17                      # 0x11
	.word	82                      # 0x52
	.word	34                      # 0x22
	.word	40                      # 0x28
	.word	16                      # 0x10
	.word	88                      # 0x58
	.word	69                      # 0x45
	.word	44                      # 0x2c
	.word	3                       # 0x3
	.word	62                      # 0x3e
	.word	46                      # 0x2e
	.word	32                      # 0x20
	.word	45                      # 0x2d
	.word	55                      # 0x37
	.word	2                       # 0x2
	.word	49                      # 0x31
	.word	64                      # 0x40
	.word	94                      # 0x5e
	.word	87                      # 0x57
	.word	14                      # 0xe
	.word	90                      # 0x5a
	.word	63                      # 0x3f
	.word	68                      # 0x44
	.word	68                      # 0x44
	.word	75                      # 0x4b
	.word	75                      # 0x4b
	.word	2                       # 0x2
	.word	23                      # 0x17
	.word	82                      # 0x52
	.word	27                      # 0x1b
	.word	51                      # 0x33
	.word	65                      # 0x41
	.word	75                      # 0x4b
	.word	85                      # 0x55
	.word	71                      # 0x47
	.word	57                      # 0x39
	.word	38                      # 0x26
	.word	39                      # 0x27
	.word	0                       # 0x0
	.word	7                       # 0x7
	.word	1                       # 0x1
	.word	46                      # 0x2e
	.word	39                      # 0x27
	.word	12                      # 0xc
	.word	68                      # 0x44
	.word	41                      # 0x29
	.word	28                      # 0x1c
	.word	31                      # 0x1f
	.word	0                       # 0x0
	.word	14                      # 0xe
	.word	45                      # 0x2d
	.word	91                      # 0x5b
	.word	43                      # 0x2b
	.word	12                      # 0xc
	.word	58                      # 0x3a
	.word	17                      # 0x11
	.word	53                      # 0x35
	.word	26                      # 0x1a
	.word	41                      # 0x29
	.word	0                       # 0x0
	.word	19                      # 0x13
	.word	92                      # 0x5c
	.word	31                      # 0x1f
	.word	60                      # 0x3c
	.word	42                      # 0x2a
	.word	1                       # 0x1
	.word	17                      # 0x11
	.word	46                      # 0x2e
	.word	41                      # 0x29
	.word	84                      # 0x54
	.word	54                      # 0x36
	.word	8                       # 0x8
	.word	97                      # 0x61
	.word	93                      # 0x5d
	.word	20                      # 0x14
	.word	64                      # 0x40
	.word	0                       # 0x0
	.word	14                      # 0xe
	.word	61                      # 0x3d
	.word	0                       # 0x0
	.word	28                      # 0x1c
	.word	72                      # 0x48
	.word	57                      # 0x39
	.word	71                      # 0x47
	.word	50                      # 0x32
	.word	81                      # 0x51
	.word	89                      # 0x59
	.word	70                      # 0x46
	.word	7                       # 0x7
	.word	96                      # 0x60
	.word	70                      # 0x46
	.word	26                      # 0x1a
	.word	87                      # 0x57
	.word	1                       # 0x1
	.word	87                      # 0x57
	.word	95                      # 0x5f
	.word	69                      # 0x45
	.word	70                      # 0x46
	.word	40                      # 0x28
	.word	9                       # 0x9
	.word	19                      # 0x13
	.word	94                      # 0x5e
	.word	84                      # 0x54
	.word	15                      # 0xf
	.word	87                      # 0x57
	.word	71                      # 0x47
	.word	45                      # 0x2d
	.word	87                      # 0x57
	.word	85                      # 0x55
	.word	5                       # 0x5
	.word	53                      # 0x35
	.word	13                      # 0xd
	.word	43                      # 0x2b
	.word	10                      # 0xa
	.word	50                      # 0x32
	.word	94                      # 0x5e
	.word	91                      # 0x5b
	.word	38                      # 0x26
	.word	63                      # 0x3f
	.word	98                      # 0x62
	.word	33                      # 0x21
	.word	99                      # 0x63
	.word	91                      # 0x5b
	.word	86                      # 0x56
	.word	66                      # 0x42
	.word	43                      # 0x2b
	.word	80                      # 0x50
	.word	35                      # 0x23
	.word	79                      # 0x4f
	.word	20                      # 0x14
	.word	10                      # 0xa
	.word	98                      # 0x62
	.word	80                      # 0x50
	.word	61                      # 0x3d
	.word	13                      # 0xd
	.word	66                      # 0x42
	.word	31                      # 0x1f
	.word	24                      # 0x18
	.word	18                      # 0x12
	.word	82                      # 0x52
	.word	97                      # 0x61
	.word	72                      # 0x48
	.word	61                      # 0x3d
	.word	39                      # 0x27
	.word	48                      # 0x30
	.word	11                      # 0xb
	.word	99                      # 0x63
	.word	38                      # 0x26
	.word	49                      # 0x31
	.word	27                      # 0x1b
	.word	2                       # 0x2
	.word	49                      # 0x31
	.word	26                      # 0x1a
	.word	59                      # 0x3b
	.word	0                       # 0x0
	.word	58                      # 0x3a
	.word	1                       # 0x1
	.word	81                      # 0x51
	.word	59                      # 0x3b
	.word	80                      # 0x50
	.word	67                      # 0x43
	.word	70                      # 0x46
	.word	77                      # 0x4d
	.word	46                      # 0x2e
	.word	97                      # 0x61
	.word	56                      # 0x38
	.word	79                      # 0x4f
	.word	27                      # 0x1b
	.word	81                      # 0x51
	.word	63                      # 0x3f
	.word	75                      # 0x4b
	.word	77                      # 0x4d
	.word	0                       # 0x0
	.word	36                      # 0x24
	.word	82                      # 0x52
	.word	48                      # 0x30
	.word	47                      # 0x2f
	.word	81                      # 0x51
	.word	53                      # 0x35
	.word	62                      # 0x3e
	.word	7                       # 0x7
	.word	55                      # 0x37
	.word	77                      # 0x4d
	.word	100                     # 0x64
	.word	13                      # 0xd
	.word	78                      # 0x4e
	.word	24                      # 0x18
	.word	81                      # 0x51
	.word	24                      # 0x18
	.word	83                      # 0x53
	.word	26                      # 0x1a
	.word	91                      # 0x5b
	.word	18                      # 0x12
	.word	2                       # 0x2
	.word	2                       # 0x2
	.word	14                      # 0xe
	.word	25                      # 0x19
	.word	47                      # 0x2f
	.word	7                       # 0x7
	.word	72                      # 0x48
	.word	10                      # 0xa
	.word	83                      # 0x53
	.word	14                      # 0xe
	.word	10                      # 0xa
	.word	18                      # 0x12
	.word	96                      # 0x60
	.word	25                      # 0x19
	.word	65                      # 0x41
	.word	42                      # 0x2a
	.word	78                      # 0x4e
	.word	93                      # 0x5d
	.word	16                      # 0x10
	.word	32                      # 0x20
	.word	70                      # 0x46
	.word	15                      # 0xf
	.word	11                      # 0xb
	.word	47                      # 0x2f
	.word	5                       # 0x5
	.word	58                      # 0x3a
	.word	71                      # 0x47
	.word	89                      # 0x59
	.word	84                      # 0x54
	.word	27                      # 0x1b
	.word	73                      # 0x49
	.word	86                      # 0x56
	.word	96                      # 0x60
	.word	88                      # 0x58
	.word	77                      # 0x4d
	.word	43                      # 0x2b
	.word	95                      # 0x5f
	.word	48                      # 0x30
	.word	19                      # 0x13
	.word	43                      # 0x2b
	.word	62                      # 0x3e
	.word	96                      # 0x60
	.word	61                      # 0x3d
	.word	24                      # 0x18
	.word	20                      # 0x14
	.word	92                      # 0x5c
	.word	66                      # 0x42
	.word	98                      # 0x62
	.word	85                      # 0x55
	.word	82                      # 0x52
	.word	96                      # 0x60
	.word	20                      # 0x14
	.word	64                      # 0x40
	.word	73                      # 0x49
	.word	67                      # 0x43
	.word	69                      # 0x45
	.word	30                      # 0x1e
	.word	3                       # 0x3
	.word	23                      # 0x17
	.word	13                      # 0xd
	.word	97                      # 0x61
	.word	97                      # 0x61
	.word	66                      # 0x42
	.word	58                      # 0x3a
	.word	50                      # 0x32
	.word	42                      # 0x2a
	.word	0                       # 0x0
	.word	44                      # 0x2c
	.word	57                      # 0x39
	.word	86                      # 0x56
	.word	54                      # 0x36
	.word	85                      # 0x55
	.word	82                      # 0x52
	.word	14                      # 0xe
	.word	8                       # 0x8
	.word	1                       # 0x1
	.word	73                      # 0x49
	.word	41                      # 0x29
	.word	66                      # 0x42
	.word	23                      # 0x17
	.word	22                      # 0x16
	.word	61                      # 0x3d
	.word	43                      # 0x2b
	.word	86                      # 0x56
	.word	0                       # 0x0
	.word	9                       # 0x9
	.word	21                      # 0x15
	.word	30                      # 0x1e
	.word	79                      # 0x4f
	.word	44                      # 0x2c
	.word	44                      # 0x2c
	.word	75                      # 0x4b
	.word	40                      # 0x28
	.word	76                      # 0x4c
	.word	99                      # 0x63
	.word	56                      # 0x38
	.word	17                      # 0x11
	.word	100                     # 0x64
	.word	67                      # 0x43
	.word	40                      # 0x28
	.word	51                      # 0x33
	.word	20                      # 0x14
	.word	25                      # 0x19
	.word	32                      # 0x20
	.word	0                       # 0x0
	.word	100                     # 0x64
	.word	0                       # 0x0
	.word	73                      # 0x49
	.word	40                      # 0x28
	.word	66                      # 0x42
	.word	96                      # 0x60
	.word	29                      # 0x1d
	.word	93                      # 0x5d
	.word	38                      # 0x26
	.word	81                      # 0x51
	.word	93                      # 0x5d
	.word	13                      # 0xd
	.word	1                       # 0x1
	.word	90                      # 0x5a
	.word	92                      # 0x5c
	.word	46                      # 0x2e
	.word	100                     # 0x64
	.word	32                      # 0x20
	.word	52                      # 0x34
	.word	75                      # 0x4b
	.word	31                      # 0x1f
	.word	8                       # 0x8
	.word	58                      # 0x3a
	.word	97                      # 0x61
	.word	75                      # 0x4b
	.word	99                      # 0x63
	.word	13                      # 0xd
	.word	61                      # 0x3d
	.word	90                      # 0x5a
	.word	46                      # 0x2e
	.word	61                      # 0x3d
	.word	89                      # 0x59
	.word	12                      # 0xc
	.word	34                      # 0x22
	.word	96                      # 0x60
	.word	78                      # 0x4e
	.word	96                      # 0x60
	.word	24                      # 0x18
	.word	36                      # 0x24
	.word	34                      # 0x22
	.word	4                       # 0x4
	.word	48                      # 0x30
	.word	14                      # 0xe
	.word	79                      # 0x4f
	.word	95                      # 0x5f
	.word	6                       # 0x6
	.word	70                      # 0x46
	.word	76                      # 0x4c
	.word	4                       # 0x4
	.word	98                      # 0x62
	.word	98                      # 0x62
	.word	87                      # 0x57
	.word	39                      # 0x27
	.word	14                      # 0xe
	.word	81                      # 0x51
	.word	1                       # 0x1
	.word	99                      # 0x63
	.word	7                       # 0x7
	.word	33                      # 0x21
	.word	81                      # 0x51
	.word	1                       # 0x1
	.word	92                      # 0x5c
	.word	96                      # 0x60
	.word	16                      # 0x10
	.word	15                      # 0xf
	.word	3                       # 0x3
	.word	15                      # 0xf
	.word	54                      # 0x36
	.word	30                      # 0x1e
	.word	57                      # 0x39
	.word	12                      # 0xc
	.word	55                      # 0x37
	.word	5                       # 0x5
	.word	93                      # 0x5d
	.word	0                       # 0x0
	.word	100                     # 0x64
	.word	99                      # 0x63
	.word	70                      # 0x46
	.word	42                      # 0x2a
	.word	69                      # 0x45
	.word	67                      # 0x43
	.word	39                      # 0x27
	.word	21                      # 0x15
	.word	5                       # 0x5
	.word	53                      # 0x35
	.word	2                       # 0x2
	.word	6                       # 0x6
	.word	51                      # 0x33
	.word	76                      # 0x4c
	.word	40                      # 0x28
	.word	99                      # 0x63
	.word	78                      # 0x4e
	.word	98                      # 0x62
	.word	60                      # 0x3c
	.word	60                      # 0x3c
	.word	79                      # 0x4f
	.word	63                      # 0x3f
	.word	75                      # 0x4b
	.word	99                      # 0x63
	.word	59                      # 0x3b
	.word	98                      # 0x62
	.word	10                      # 0xa
	.word	80                      # 0x50
	.word	2                       # 0x2
	.word	2                       # 0x2
	.word	80                      # 0x50
	.word	69                      # 0x45
	.word	67                      # 0x43
	.word	49                      # 0x31
	.word	10                      # 0xa
	.word	2                       # 0x2
	.word	16                      # 0x10
	.word	49                      # 0x31
	.word	23                      # 0x17
	.word	88                      # 0x58
	.word	68                      # 0x44
	.word	92                      # 0x5c
	.word	95                      # 0x5f
	.word	86                      # 0x56
	.word	68                      # 0x44
	.word	0                       # 0x0
	.word	84                      # 0x54
	.word	11                      # 0xb
	.word	64                      # 0x40
	.word	43                      # 0x2b
	.word	71                      # 0x47
	.word	42                      # 0x2a
	.word	72                      # 0x48
	.word	45                      # 0x2d
	.word	40                      # 0x28
	.word	97                      # 0x61
	.word	42                      # 0x2a
	.word	17                      # 0x11
	.word	76                      # 0x4c
	.word	11                      # 0xb
	.word	86                      # 0x56
	.word	56                      # 0x38
	.word	80                      # 0x50
	.word	19                      # 0x13
	.word	4                       # 0x4
	.word	90                      # 0x5a
	.word	88                      # 0x58
	.word	87                      # 0x57
	.word	4                       # 0x4
	.word	77                      # 0x4d
	.word	75                      # 0x4b
	.word	72                      # 0x48
	.word	69                      # 0x45
	.word	35                      # 0x23
	.word	23                      # 0x17
	.word	2                       # 0x2
	.word	35                      # 0x23
	.word	6                       # 0x6
	.word	80                      # 0x50
	.word	99                      # 0x63
	.word	15                      # 0xf
	.word	50                      # 0x32
	.word	6                       # 0x6
	.word	53                      # 0x35
	.word	61                      # 0x3d
	.word	46                      # 0x2e
	.word	49                      # 0x31
	.word	69                      # 0x45
	.word	29                      # 0x1d
	.word	25                      # 0x19
	.word	80                      # 0x50
	.word	15                      # 0xf
	.word	47                      # 0x2f
	.word	25                      # 0x19
	.word	34                      # 0x22
	.word	51                      # 0x33
	.word	14                      # 0xe
	.word	21                      # 0x15
	.word	38                      # 0x26
	.word	85                      # 0x55
	.word	98                      # 0x62
	.word	79                      # 0x4f
	.word	57                      # 0x39
	.word	32                      # 0x20
	.word	13                      # 0xd
	.word	46                      # 0x2e
	.word	0                       # 0x0
	.word	48                      # 0x30
	.word	53                      # 0x35
	.word	80                      # 0x50
	.word	12                      # 0xc
	.word	34                      # 0x22
	.word	29                      # 0x1d
	.word	18                      # 0x12
	.word	54                      # 0x36
	.word	56                      # 0x38
	.word	30                      # 0x1e
	.word	2                       # 0x2
	.word	25                      # 0x19
	.word	60                      # 0x3c
	.word	94                      # 0x5e
	.word	4                       # 0x4
	.word	41                      # 0x29
	.word	40                      # 0x28
	.word	30                      # 0x1e
	.word	75                      # 0x4b
	.word	58                      # 0x3a
	.word	10                      # 0xa
	.word	62                      # 0x3e
	.word	62                      # 0x3e
	.word	96                      # 0x60
	.word	59                      # 0x3b
	.word	40                      # 0x28
	.word	18                      # 0x12
	.word	58                      # 0x3a
	.word	53                      # 0x35
	.word	64                      # 0x40
	.word	24                      # 0x18
	.word	67                      # 0x43
	.word	83                      # 0x53
	.word	4                       # 0x4
	.word	79                      # 0x4f
	.word	17                      # 0x11
	.word	100                     # 0x64
	.word	63                      # 0x3f
	.word	37                      # 0x25
	.word	56                      # 0x38
	.word	93                      # 0x5d
	.word	39                      # 0x27
	.word	81                      # 0x51
	.word	18                      # 0x12
	.word	100                     # 0x64
	.word	51                      # 0x33
	.word	59                      # 0x3b
	.word	5                       # 0x5
	.word	81                      # 0x51
	.word	100                     # 0x64
	.word	63                      # 0x3f
	.word	58                      # 0x3a
	.word	61                      # 0x3d
	.word	24                      # 0x18
	.word	53                      # 0x35
	.word	87                      # 0x57
	.word	64                      # 0x40
	.word	37                      # 0x25
	.word	10                      # 0xa
	.word	83                      # 0x53
	.word	67                      # 0x43
	.word	34                      # 0x22
	.word	49                      # 0x31
	.word	50                      # 0x32
	.word	38                      # 0x26
	.word	27                      # 0x1b
	.word	33                      # 0x21
	.word	4                       # 0x4
	.word	56                      # 0x38
	.word	70                      # 0x46
	.word	60                      # 0x3c
	.word	15                      # 0xf
	.word	75                      # 0x4b
	.word	6                       # 0x6
	.word	33                      # 0x21
	.word	40                      # 0x28
	.word	57                      # 0x39
	.word	59                      # 0x3b
	.word	46                      # 0x2e
	.word	4                       # 0x4
	.word	24                      # 0x18
	.word	75                      # 0x4b
	.word	62                      # 0x3e
	.word	86                      # 0x56
	.word	100                     # 0x64
	.word	81                      # 0x51
	.word	38                      # 0x26
	.word	29                      # 0x1d
	.word	17                      # 0x11
	.word	48                      # 0x30
	.word	79                      # 0x4f
	.word	84                      # 0x54
	.word	48                      # 0x30
	.word	27                      # 0x1b
	.word	100                     # 0x64
	.word	87                      # 0x57
	.word	21                      # 0x15
	.word	32                      # 0x20
	.word	57                      # 0x39
	.word	77                      # 0x4d
	.word	68                      # 0x44
	.word	16                      # 0x10
	.word	92                      # 0x5c
	.word	9                       # 0x9
	.word	22                      # 0x16
	.word	92                      # 0x5c
	.word	49                      # 0x31
	.word	79                      # 0x4f
	.word	16                      # 0x10
	.word	95                      # 0x5f
	.word	83                      # 0x53
	.word	40                      # 0x28
	.word	70                      # 0x46
	.word	10                      # 0xa
	.word	25                      # 0x19
	.word	35                      # 0x23
	.word	91                      # 0x5b
	.word	29                      # 0x1d
	.word	30                      # 0x1e
	.word	74                      # 0x4a
	.word	43                      # 0x2b
	.word	8                       # 0x8
	.word	24                      # 0x18
	.word	92                      # 0x5c
	.word	2                       # 0x2
	.word	23                      # 0x17
	.word	44                      # 0x2c
	.word	23                      # 0x17
	.word	22                      # 0x16
	.word	0                       # 0x0
	.word	66                      # 0x42
	.word	56                      # 0x38
	.word	16                      # 0x10
	.word	58                      # 0x3a
	.word	65                      # 0x41
	.word	4                       # 0x4
	.word	15                      # 0xf
	.word	14                      # 0xe
	.word	49                      # 0x31
	.word	31                      # 0x1f
	.word	75                      # 0x4b
	.word	32                      # 0x20
	.word	71                      # 0x47
	.word	10                      # 0xa
	.word	8                       # 0x8
	.word	63                      # 0x3f
	.word	45                      # 0x2d
	.word	100                     # 0x64
	.word	92                      # 0x5c
	.word	42                      # 0x2a
	.word	73                      # 0x49
	.word	1                       # 0x1
	.word	50                      # 0x32
	.word	97                      # 0x61
	.word	93                      # 0x5d
	.word	18                      # 0x12
	.word	87                      # 0x57
	.word	36                      # 0x24
	.word	41                      # 0x29
	.word	75                      # 0x4b
	.word	36                      # 0x24
	.word	7                       # 0x7
	.word	30                      # 0x1e
	.word	18                      # 0x12
	.word	31                      # 0x1f
	.word	96                      # 0x60
	.word	22                      # 0x16
	.word	12                      # 0xc
	.word	76                      # 0x4c
	.word	71                      # 0x47
	.word	43                      # 0x2b
	.word	50                      # 0x32
	.word	69                      # 0x45
	.word	80                      # 0x50
	.word	61                      # 0x3d
	.word	78                      # 0x4e
	.word	42                      # 0x2a
	.word	72                      # 0x48
	.word	43                      # 0x2b
	.word	0                       # 0x0
	.word	13                      # 0xd
	.word	15                      # 0xf
	.word	68                      # 0x44
	.word	30                      # 0x1e
	.word	79                      # 0x4f
	.word	60                      # 0x3c
	.word	48                      # 0x30
	.word	31                      # 0x1f
	.word	62                      # 0x3e
	.word	56                      # 0x38
	.word	5                       # 0x5
	.word	98                      # 0x62
	.word	29                      # 0x1d
	.word	1                       # 0x1
	.word	82                      # 0x52
	.word	26                      # 0x1a
	.word	97                      # 0x61
	.word	3                       # 0x3
	.word	38                      # 0x26
	.word	72                      # 0x48
	.word	40                      # 0x28
	.word	81                      # 0x51
	.word	89                      # 0x59
	.word	76                      # 0x4c
	.word	26                      # 0x1a
	.word	15                      # 0xf
	.word	53                      # 0x35
	.word	35                      # 0x23
	.word	87                      # 0x57
	.word	96                      # 0x60
	.word	1                       # 0x1
	.word	67                      # 0x43
	.word	77                      # 0x4d
	.word	69                      # 0x45
	.word	97                      # 0x61
	.word	21                      # 0x15
	.word	28                      # 0x1c
	.word	10                      # 0xa
	.word	18                      # 0x12
	.word	90                      # 0x5a
	.word	32                      # 0x20
	.word	23                      # 0x17
	.word	53                      # 0x35
	.word	61                      # 0x3d
	.word	25                      # 0x19
	.word	34                      # 0x22
	.word	87                      # 0x57
	.word	88                      # 0x58
	.word	3                       # 0x3
	.word	91                      # 0x5b
	.word	26                      # 0x1a
	.word	9                       # 0x9
	.word	37                      # 0x25
	.word	81                      # 0x51
	.word	85                      # 0x55
	.word	64                      # 0x40
	.word	96                      # 0x60
	.word	3                       # 0x3
	.word	99                      # 0x63
	.word	82                      # 0x52
	.word	65                      # 0x41
	.word	100                     # 0x64
	.word	48                      # 0x30
	.word	42                      # 0x2a
	.word	68                      # 0x44
	.word	10                      # 0xa
	.word	29                      # 0x1d
	.word	62                      # 0x3e
	.word	88                      # 0x58
	.word	48                      # 0x30
	.word	17                      # 0x11
	.word	19                      # 0x13
	.word	37                      # 0x25
	.word	70                      # 0x46
	.word	47                      # 0x2f
	.word	28                      # 0x1c
	.word	70                      # 0x46
	.word	100                     # 0x64
	.word	16                      # 0x10
	.word	73                      # 0x49
	.word	91                      # 0x5b
	.word	8                       # 0x8
	.word	82                      # 0x52
	.word	94                      # 0x5e
	.word	89                      # 0x59
	.word	33                      # 0x21
	.word	57                      # 0x39
	.word	84                      # 0x54
	.word	36                      # 0x24
	.word	21                      # 0x15
	.word	31                      # 0x1f
	.word	1                       # 0x1
	.word	87                      # 0x57
	.word	46                      # 0x2e
	.word	9                       # 0x9
	.word	20                      # 0x14
	.word	56                      # 0x38
	.word	4                       # 0x4
	.word	82                      # 0x52
	.word	9                       # 0x9
	.word	52                      # 0x34
	.word	99                      # 0x63
	.word	96                      # 0x60
	.word	56                      # 0x38
	.word	34                      # 0x22
	.word	8                       # 0x8
	.word	84                      # 0x54
	.word	3                       # 0x3
	.word	7                       # 0x7
	.word	66                      # 0x42
	.word	42                      # 0x2a
	.word	64                      # 0x40
	.word	74                      # 0x4a
	.word	24                      # 0x18
	.word	58                      # 0x3a
	.word	28                      # 0x1c
	.word	23                      # 0x17
	.word	81                      # 0x51
	.word	11                      # 0xb
	.word	59                      # 0x3b
	.word	2                       # 0x2
	.word	9                       # 0x9
	.word	26                      # 0x1a
	.word	55                      # 0x37
	.word	55                      # 0x37
	.word	1                       # 0x1
	.word	76                      # 0x4c
	.word	77                      # 0x4d
	.word	6                       # 0x6
	.word	23                      # 0x17
	.word	87                      # 0x57
	.word	24                      # 0x18
	.word	89                      # 0x59
	.word	82                      # 0x52
	.word	80                      # 0x50
	.word	22                      # 0x16
	.word	90                      # 0x5a
	.word	30                      # 0x1e
	.word	93                      # 0x5d
	.word	63                      # 0x3f
	.word	96                      # 0x60
	.word	34                      # 0x22
	.word	27                      # 0x1b
	.word	36                      # 0x24
	.word	24                      # 0x18
	.word	51                      # 0x33
	.word	30                      # 0x1e
	.word	47                      # 0x2f
	.word	98                      # 0x62
	.word	8                       # 0x8
	.word	73                      # 0x49
	.word	100                     # 0x64
	.word	17                      # 0x11
	.word	99                      # 0x63
	.word	21                      # 0x15
	.word	72                      # 0x48
	.word	0                       # 0x0
	.word	97                      # 0x61
	.word	48                      # 0x30
	.word	73                      # 0x49
	.word	86                      # 0x56
	.word	34                      # 0x22
	.word	97                      # 0x61
	.word	74                      # 0x4a
	.word	82                      # 0x52
	.word	43                      # 0x2b
	.word	63                      # 0x3f
	.word	37                      # 0x25
	.word	73                      # 0x49
	.word	55                      # 0x37
	.word	0                       # 0x0
	.word	34                      # 0x22
	.word	55                      # 0x37
	.word	94                      # 0x5e
	.word	36                      # 0x24
	.word	80                      # 0x50
	.word	10                      # 0xa
	.word	67                      # 0x43
	.word	93                      # 0x5d
	.word	7                       # 0x7
	.word	75                      # 0x4b
	.word	65                      # 0x41
	.word	74                      # 0x4a
	.word	92                      # 0x5c
	.word	64                      # 0x40
	.word	95                      # 0x5f
	.word	63                      # 0x3f
	.word	30                      # 0x1e
	.word	57                      # 0x39
	.word	77                      # 0x4d
	.word	2                       # 0x2
	.word	42                      # 0x2a
	.word	11                      # 0xb
	.word	65                      # 0x41
	.word	16                      # 0x10
	.word	59                      # 0x3b
	.word	7                       # 0x7
	.word	45                      # 0x2d
	.word	97                      # 0x61
	.word	46                      # 0x2e
	.word	66                      # 0x42
	.word	63                      # 0x3f
	.word	81                      # 0x51
	.word	20                      # 0x14
	.word	56                      # 0x38
	.word	83                      # 0x53
	.word	66                      # 0x42
	.word	32                      # 0x20
	.word	49                      # 0x31
	.word	59                      # 0x3b
	.word	39                      # 0x27
	.word	90                      # 0x5a
	.word	23                      # 0x17
	.word	12                      # 0xc
	.word	81                      # 0x51
	.word	53                      # 0x35
	.word	73                      # 0x49
	.word	9                       # 0x9
	.word	49                      # 0x31
	.word	29                      # 0x1d
	.word	87                      # 0x57
	.word	17                      # 0x11
	.word	72                      # 0x48
	.word	64                      # 0x40
	.word	83                      # 0x53
	.word	54                      # 0x36
	.word	89                      # 0x59
	.word	90                      # 0x5a
	.word	65                      # 0x41
	.word	85                      # 0x55
	.word	36                      # 0x24
	.word	30                      # 0x1e
	.word	13                      # 0xd
	.word	83                      # 0x53
	.word	16                      # 0x10
	.word	35                      # 0x23
	.word	65                      # 0x41
	.word	83                      # 0x53
	.word	67                      # 0x43
	.word	14                      # 0xe
	.word	7                       # 0x7
	.word	73                      # 0x49
	.word	70                      # 0x46
	.word	97                      # 0x61
	.word	85                      # 0x55
	.word	51                      # 0x33
	.word	16                      # 0x10
	.word	24                      # 0x18
	.word	26                      # 0x1a
	.word	65                      # 0x41
	.word	53                      # 0x35
	.word	79                      # 0x4f
	.word	83                      # 0x53
	.word	91                      # 0x5b
	.word	8                       # 0x8
	.word	65                      # 0x41
	.word	10                      # 0xa
	.word	98                      # 0x62
	.word	20                      # 0x14
	.word	41                      # 0x29
	.word	48                      # 0x30
	.word	22                      # 0x16
	.word	71                      # 0x47
	.word	62                      # 0x3e
	.word	4                       # 0x4
	.word	54                      # 0x36
	.word	63                      # 0x3f
	.word	36                      # 0x24
	.word	36                      # 0x24
	.word	30                      # 0x1e
	.word	16                      # 0x10
	.word	9                       # 0x9
	.word	2                       # 0x2
	.word	86                      # 0x56
	.word	5                       # 0x5
	.word	53                      # 0x35
	.word	36                      # 0x24
	.word	88                      # 0x58
	.word	77                      # 0x4d
	.word	29                      # 0x1d
	.word	53                      # 0x35
	.word	97                      # 0x61
	.word	74                      # 0x4a
	.word	1                       # 0x1
	.word	53                      # 0x35
	.word	83                      # 0x53
	.word	32                      # 0x20
	.word	30                      # 0x1e
	.word	46                      # 0x2e
	.word	52                      # 0x34
	.word	71                      # 0x47
	.word	94                      # 0x5e
	.word	41                      # 0x29
	.word	42                      # 0x2a
	.word	21                      # 0x15
	.word	45                      # 0x2d
	.word	62                      # 0x3e
	.word	85                      # 0x55
	.word	81                      # 0x51
	.word	98                      # 0x62
	.word	81                      # 0x51
	.word	97                      # 0x61
	.word	73                      # 0x49
	.word	83                      # 0x53
	.word	83                      # 0x53
	.word	44                      # 0x2c
	.word	1                       # 0x1
	.word	85                      # 0x55
	.word	32                      # 0x20
	.word	45                      # 0x2d
	.word	80                      # 0x50
	.word	85                      # 0x55
	.word	41                      # 0x29
	.word	54                      # 0x36
	.word	52                      # 0x34
	.word	60                      # 0x3c
	.word	2                       # 0x2
	.word	84                      # 0x54
	.word	90                      # 0x5a
	.word	48                      # 0x30
	.word	1                       # 0x1
	.word	61                      # 0x3d
	.word	7                       # 0x7
	.word	42                      # 0x2a
	.word	69                      # 0x45
	.word	96                      # 0x60
	.word	54                      # 0x36
	.word	30                      # 0x1e
	.word	46                      # 0x2e
	.word	0                       # 0x0
	.word	94                      # 0x5e
	.word	26                      # 0x1a
	.word	64                      # 0x40
	.word	32                      # 0x20
	.word	75                      # 0x4b
	.word	46                      # 0x2e
	.word	76                      # 0x4c
	.word	42                      # 0x2a
	.word	97                      # 0x61
	.word	7                       # 0x7
	.word	87                      # 0x57
	.word	43                      # 0x2b
	.word	58                      # 0x3a
	.word	94                      # 0x5e
	.word	97                      # 0x61
	.word	9                       # 0x9
	.word	54                      # 0x36
	.word	99                      # 0x63
	.word	59                      # 0x3b
	.word	43                      # 0x2b
	.word	12                      # 0xc
	.word	61                      # 0x3d
	.word	70                      # 0x46
	.word	19                      # 0x13
	.word	69                      # 0x45
	.word	4                       # 0x4
	.word	14                      # 0xe
	.word	22                      # 0x16
	.word	0                       # 0x0
	.word	26                      # 0x1a
	.word	23                      # 0x17
	.word	60                      # 0x3c
	.word	52                      # 0x34
	.word	53                      # 0x35
	.word	92                      # 0x5c
	.word	93                      # 0x5d
	.word	65                      # 0x41
	.word	68                      # 0x44
	.word	35                      # 0x23
	.word	61                      # 0x3d
	.word	75                      # 0x4b
	.word	88                      # 0x58
	.word	70                      # 0x46
	.word	33                      # 0x21
	.word	82                      # 0x52
	.word	66                      # 0x42
	.word	8                       # 0x8
	.word	35                      # 0x23
	.word	30                      # 0x1e
	.word	68                      # 0x44
	.word	44                      # 0x2c
	.word	8                       # 0x8
	.word	95                      # 0x5f
	.word	81                      # 0x51
	.word	28                      # 0x1c
	.word	63                      # 0x3f
	.word	85                      # 0x55
	.word	8                       # 0x8
	.word	52                      # 0x34
	.word	86                      # 0x56
	.word	35                      # 0x23
	.word	41                      # 0x29
	.word	11                      # 0xb
	.word	53                      # 0x35
	.word	94                      # 0x5e
	.word	3                       # 0x3
	.word	12                      # 0xc
	.word	58                      # 0x3a
	.word	71                      # 0x47
	.word	13                      # 0xd
	.word	85                      # 0x55
	.word	11                      # 0xb
	.word	0                       # 0x0
	.word	55                      # 0x37
	.word	44                      # 0x2c
	.word	82                      # 0x52
	.word	87                      # 0x57
	.word	19                      # 0x13
	.word	83                      # 0x53
	.word	84                      # 0x54
	.word	87                      # 0x57
	.word	27                      # 0x1b
	.word	92                      # 0x5c
	.word	81                      # 0x51
	.word	7                       # 0x7
	.word	86                      # 0x56
	.word	9                       # 0x9
	.word	58                      # 0x3a
	.word	61                      # 0x3d
	.word	27                      # 0x1b
	.word	9                       # 0x9
	.word	62                      # 0x3e
	.word	68                      # 0x44
	.word	21                      # 0x15
	.word	81                      # 0x51
	.word	61                      # 0x3d
	.word	24                      # 0x18
	.word	93                      # 0x5d
	.word	85                      # 0x55
	.word	61                      # 0x3d
	.word	72                      # 0x48
	.word	70                      # 0x46
	.word	72                      # 0x48
	.word	73                      # 0x49
	.word	91                      # 0x5b
	.word	16                      # 0x10
	.word	20                      # 0x14
	.word	77                      # 0x4d
	.word	35                      # 0x23
	.word	3                       # 0x3
	.word	26                      # 0x1a
	.word	88                      # 0x58
	.word	97                      # 0x61
	.word	18                      # 0x12
	.word	34                      # 0x22
	.word	3                       # 0x3
	.word	70                      # 0x46
	.word	9                       # 0x9
	.word	27                      # 0x1b
	.word	30                      # 0x1e
	.word	37                      # 0x25
	.word	37                      # 0x25
	.word	92                      # 0x5c
	.word	4                       # 0x4
	.word	24                      # 0x18
	.word	73                      # 0x49
	.word	32                      # 0x20
	.word	48                      # 0x30
	.word	31                      # 0x1f
	.word	83                      # 0x53
	.word	8                       # 0x8
	.word	3                       # 0x3
	.word	52                      # 0x34
	.word	80                      # 0x50
	.word	42                      # 0x2a
	.word	8                       # 0x8
	.word	62                      # 0x3e
	.word	62                      # 0x3e
	.word	52                      # 0x34
	.word	63                      # 0x3f
	.word	65                      # 0x41
	.word	78                      # 0x4e
	.word	16                      # 0x10
	.word	27                      # 0x1b
	.word	62                      # 0x3e
	.word	50                      # 0x32
	.word	30                      # 0x1e
	.word	32                      # 0x20
	.word	26                      # 0x1a
	.word	24                      # 0x18
	.word	62                      # 0x3e
	.word	63                      # 0x3f
	.word	27                      # 0x1b
	.word	20                      # 0x14
	.word	67                      # 0x43
	.word	51                      # 0x33
	.word	59                      # 0x3b
	.word	65                      # 0x41
	.word	65                      # 0x41
	.word	90                      # 0x5a
	.word	48                      # 0x30
	.word	73                      # 0x49
	.word	93                      # 0x5d
	.word	66                      # 0x42
	.word	18                      # 0x12
	.word	0                       # 0x0
	.word	75                      # 0x4b
	.word	47                      # 0x2f
	.word	63                      # 0x3f
	.word	26                      # 0x1a
	.word	76                      # 0x4c
	.word	94                      # 0x5e
	.word	3                       # 0x3
	.word	59                      # 0x3b
	.word	21                      # 0x15
	.word	66                      # 0x42
	.word	75                      # 0x4b
	.word	17                      # 0x11
	.word	64                      # 0x40
	.word	0                       # 0x0
	.word	41                      # 0x29
	.word	25                      # 0x19
	.word	63                      # 0x3f
	.word	68                      # 0x44
	.word	11                      # 0xb
	.word	97                      # 0x61
	.word	85                      # 0x55
	.word	70                      # 0x46
	.word	61                      # 0x3d
	.word	49                      # 0x31
	.word	60                      # 0x3c
	.word	8                       # 0x8
	.word	88                      # 0x58
	.word	18                      # 0x12
	.word	41                      # 0x29
	.word	6                       # 0x6
	.word	19                      # 0x13
	.word	15                      # 0xf
	.word	19                      # 0x13
	.word	48                      # 0x30
	.word	41                      # 0x29
	.word	61                      # 0x3d
	.word	41                      # 0x29
	.word	10                      # 0xa
	.word	19                      # 0x13
	.word	62                      # 0x3e
	.word	42                      # 0x2a
	.word	95                      # 0x5f
	.word	46                      # 0x2e
	.word	5                       # 0x5
	.word	95                      # 0x5f
	.word	53                      # 0x35
	.word	98                      # 0x62
	.word	58                      # 0x3a
	.word	21                      # 0x15
	.word	8                       # 0x8
	.word	20                      # 0x14
	.word	5                       # 0x5
	.word	79                      # 0x4f
	.word	81                      # 0x51
	.word	21                      # 0x15
	.word	4                       # 0x4
	.word	56                      # 0x38
	.word	8                       # 0x8
	.word	89                      # 0x59
	.word	97                      # 0x61
	.word	81                      # 0x51
	.word	74                      # 0x4a
	.word	11                      # 0xb
	.word	100                     # 0x64
	.word	21                      # 0x15
	.word	18                      # 0x12
	.word	61                      # 0x3d
	.word	29                      # 0x1d
	.word	95                      # 0x5f
	.word	46                      # 0x2e
	.word	57                      # 0x39
	.word	37                      # 0x25
	.word	40                      # 0x28
	.word	2                       # 0x2
	.word	42                      # 0x2a
	.word	1                       # 0x1
	.word	56                      # 0x38
	.word	5                       # 0x5
	.word	59                      # 0x3b
	.word	43                      # 0x2b
	.word	14                      # 0xe
	.word	79                      # 0x4f
	.word	14                      # 0xe
	.word	59                      # 0x3b
	.word	25                      # 0x19
	.word	35                      # 0x23
	.word	29                      # 0x1d
	.word	81                      # 0x51
	.word	44                      # 0x2c
	.word	84                      # 0x54
	.word	43                      # 0x2b
	.word	24                      # 0x18
	.word	58                      # 0x3a
	.word	20                      # 0x14
	.word	91                      # 0x5b
	.word	45                      # 0x2d
	.word	38                      # 0x26
	.word	17                      # 0x11
	.word	74                      # 0x4a
	.word	100                     # 0x64
	.word	63                      # 0x3f
	.word	31                      # 0x1f
	.word	36                      # 0x24
	.word	3                       # 0x3
	.word	33                      # 0x21
	.word	44                      # 0x2c
	.word	71                      # 0x47
	.word	55                      # 0x37
	.word	50                      # 0x32
	.word	96                      # 0x60
	.word	98                      # 0x62
	.word	30                      # 0x1e
	.word	40                      # 0x28
	.word	12                      # 0xc
	.word	55                      # 0x37
	.word	65                      # 0x41
	.word	13                      # 0xd
	.word	50                      # 0x32
	.word	12                      # 0xc
	.word	57                      # 0x39
	.word	33                      # 0x21
	.word	55                      # 0x37
	.word	48                      # 0x30
	.word	91                      # 0x5b
	.word	42                      # 0x2a
	.word	38                      # 0x26
	.word	36                      # 0x24
	.word	46                      # 0x2e
	.word	55                      # 0x37
	.word	76                      # 0x4c
	.word	45                      # 0x2d
	.word	17                      # 0x11
	.word	6                       # 0x6
	.word	81                      # 0x51
	.word	87                      # 0x57
	.word	6                       # 0x6
	.word	25                      # 0x19
	.word	57                      # 0x39
	.word	61                      # 0x3d
	.word	41                      # 0x29
	.word	52                      # 0x34
	.word	25                      # 0x19
	.word	37                      # 0x25
	.word	92                      # 0x5c
	.word	3                       # 0x3
	.word	92                      # 0x5c
	.word	23                      # 0x17
	.word	16                      # 0x10
	.word	7                       # 0x7
	.word	35                      # 0x23
	.word	74                      # 0x4a
	.word	40                      # 0x28
	.word	56                      # 0x38
	.word	21                      # 0x15
	.word	98                      # 0x62
	.word	98                      # 0x62
	.word	59                      # 0x3b
	.word	100                     # 0x64
	.word	44                      # 0x2c
	.word	80                      # 0x50
	.word	75                      # 0x4b
	.word	89                      # 0x59
	.word	97                      # 0x61
	.word	82                      # 0x52
	.word	36                      # 0x24
	.word	50                      # 0x32
	.word	54                      # 0x36
	.word	27                      # 0x1b
	.word	6                       # 0x6
	.word	14                      # 0xe
	.word	68                      # 0x44
	.word	25                      # 0x19
	.word	5                       # 0x5
	.word	4                       # 0x4
	.word	83                      # 0x53
	.word	8                       # 0x8
	.word	62                      # 0x3e
	.word	5                       # 0x5
	.word	25                      # 0x19
	.word	69                      # 0x45
	.word	40                      # 0x28
	.word	65                      # 0x41
	.word	75                      # 0x4b
	.word	63                      # 0x3f
	.word	52                      # 0x34
	.word	72                      # 0x48
	.word	60                      # 0x3c
	.word	10                      # 0xa
	.word	71                      # 0x47
	.word	70                      # 0x46
	.word	56                      # 0x38
	.word	12                      # 0xc
	.word	59                      # 0x3b
	.word	52                      # 0x34
	.word	94                      # 0x5e
	.word	95                      # 0x5f
	.word	68                      # 0x44
	.word	13                      # 0xd
	.word	21                      # 0x15
	.word	41                      # 0x29
	.word	94                      # 0x5e
	.word	55                      # 0x37
	.word	66                      # 0x42
	.word	100                     # 0x64
	.word	25                      # 0x19
	.word	48                      # 0x30
	.word	7                       # 0x7
	.word	53                      # 0x35
	.word	54                      # 0x36
	.word	99                      # 0x63
	.word	88                      # 0x58
	.word	60                      # 0x3c
	.word	63                      # 0x3f
	.word	62                      # 0x3e
	.word	22                      # 0x16
	.word	14                      # 0xe
	.word	34                      # 0x22
	.word	49                      # 0x31
	.word	91                      # 0x5b
	.word	71                      # 0x47
	.word	18                      # 0x12
	.word	46                      # 0x2e
	.word	83                      # 0x53
	.word	77                      # 0x4d
	.word	65                      # 0x41
	.word	42                      # 0x2a
	.word	37                      # 0x25
	.word	32                      # 0x20
	.word	55                      # 0x37
	.word	24                      # 0x18
	.word	39                      # 0x27
	.word	15                      # 0xf
	.word	45                      # 0x2d
	.word	4                       # 0x4
	.word	14                      # 0xe
	.word	36                      # 0x24
	.word	19                      # 0x13
	.word	21                      # 0x15
	.word	89                      # 0x59
	.word	39                      # 0x27
	.word	87                      # 0x57
	.word	76                      # 0x4c
	.word	99                      # 0x63
	.word	49                      # 0x31
	.word	4                       # 0x4
	.word	88                      # 0x58
	.word	64                      # 0x40
	.word	4                       # 0x4
	.word	36                      # 0x24
	.word	54                      # 0x36
	.word	75                      # 0x4b
	.word	20                      # 0x14
	.word	67                      # 0x43
	.word	24                      # 0x18
	.word	64                      # 0x40
	.word	31                      # 0x1f
	.word	32                      # 0x20
	.word	0                       # 0x0
	.word	29                      # 0x1d
	.word	54                      # 0x36
	.word	92                      # 0x5c
	.word	69                      # 0x45
	.word	69                      # 0x45
	.word	36                      # 0x24
	.word	39                      # 0x27
	.word	83                      # 0x53
	.word	39                      # 0x27
	.word	58                      # 0x3a
	.word	70                      # 0x46
	.word	27                      # 0x1b
	.word	63                      # 0x3f
	.word	56                      # 0x38
	.word	70                      # 0x46
	.word	28                      # 0x1c
	.word	5                       # 0x5
	.word	74                      # 0x4a
	.word	15                      # 0xf
	.word	35                      # 0x23
	.word	78                      # 0x4e
	.word	17                      # 0x11
	.word	55                      # 0x37
	.word	18                      # 0x12
	.word	37                      # 0x25
	.word	88                      # 0x58
	.word	8                       # 0x8
	.word	0                       # 0x0
	.word	85                      # 0x55
	.word	41                      # 0x29
	.word	68                      # 0x44
	.word	14                      # 0xe
	.word	95                      # 0x5f
	.word	59                      # 0x3b
	.word	49                      # 0x31
	.word	63                      # 0x3f
	.word	61                      # 0x3d
	.word	54                      # 0x36
	.word	11                      # 0xb
	.word	66                      # 0x42
	.word	79                      # 0x4f
	.word	81                      # 0x51
	.word	94                      # 0x5e
	.word	41                      # 0x29
	.word	3                       # 0x3
	.word	29                      # 0x1d
	.word	69                      # 0x45
	.word	75                      # 0x4b
	.word	69                      # 0x45
	.word	50                      # 0x32
	.word	9                       # 0x9
	.word	46                      # 0x2e
	.word	33                      # 0x21
	.word	30                      # 0x1e
	.word	30                      # 0x1e
	.word	71                      # 0x47
	.word	18                      # 0x12
	.word	39                      # 0x27
	.word	37                      # 0x25
	.word	2                       # 0x2
	.word	80                      # 0x50
	.word	4                       # 0x4
	.word	83                      # 0x53
	.word	40                      # 0x28
	.word	29                      # 0x1d
	.word	98                      # 0x62
	.word	2                       # 0x2
	.word	57                      # 0x39
	.word	52                      # 0x34
	.word	13                      # 0xd
	.word	22                      # 0x16
	.word	30                      # 0x1e
	.word	60                      # 0x3c
	.word	82                      # 0x52
	.word	71                      # 0x47
	.word	29                      # 0x1d
	.word	10                      # 0xa
	.word	6                       # 0x6
	.word	3                       # 0x3
	.word	79                      # 0x4f
	.word	22                      # 0x16
	.word	79                      # 0x4f
	.word	91                      # 0x5b
	.word	56                      # 0x38
	.word	76                      # 0x4c
	.word	21                      # 0x15
	.word	26                      # 0x1a
	.word	94                      # 0x5e
	.word	26                      # 0x1a
	.word	63                      # 0x3f
	.word	62                      # 0x3e
	.word	72                      # 0x48
	.word	34                      # 0x22
	.word	45                      # 0x2d
	.word	11                      # 0xb
	.word	29                      # 0x1d
	.word	42                      # 0x2a
	.word	13                      # 0xd
	.word	86                      # 0x56
	.word	94                      # 0x5e
	.word	93                      # 0x5d
	.word	75                      # 0x4b
	.word	90                      # 0x5a
	.word	18                      # 0x12
	.word	56                      # 0x38
	.word	27                      # 0x1b
	.word	48                      # 0x30
	.word	33                      # 0x21
	.word	33                      # 0x21
	.word	17                      # 0x11
	.word	78                      # 0x4e
	.word	55                      # 0x37
	.word	63                      # 0x3f
	.word	69                      # 0x45
	.word	10                      # 0xa
	.word	38                      # 0x26
	.word	56                      # 0x38
	.word	2                       # 0x2
	.word	31                      # 0x1f
	.word	48                      # 0x30
	.word	32                      # 0x20
	.word	93                      # 0x5d
	.word	19                      # 0x13
	.word	32                      # 0x20
	.word	3                       # 0x3
	.word	30                      # 0x1e
	.word	61                      # 0x3d
	.word	46                      # 0x2e
	.word	43                      # 0x2b
	.word	13                      # 0xd
	.word	5                       # 0x5
	.word	1                       # 0x1
	.word	88                      # 0x58
	.word	96                      # 0x60
	.word	86                      # 0x56
	.word	9                       # 0x9
	.word	89                      # 0x59
	.word	100                     # 0x64
	.word	42                      # 0x2a
	.word	21                      # 0x15
	.word	17                      # 0x11
	.word	20                      # 0x14
	.word	42                      # 0x2a
	.word	80                      # 0x50
	.word	55                      # 0x37
	.word	19                      # 0x13
	.word	17                      # 0x11
	.word	10                      # 0xa
	.word	88                      # 0x58
	.word	14                      # 0xe
	.word	58                      # 0x3a
	.word	19                      # 0x13
	.word	6                       # 0x6
	.word	77                      # 0x4d
	.word	17                      # 0x11
	.word	77                      # 0x4d
	.word	73                      # 0x49
	.word	79                      # 0x4f
	.word	22                      # 0x16
	.word	15                      # 0xf
	.word	58                      # 0x3a
	.word	94                      # 0x5e
	.word	83                      # 0x53
	.word	45                      # 0x2d
	.word	55                      # 0x37
	.word	68                      # 0x44
	.word	20                      # 0x14
	.word	43                      # 0x2b
	.word	68                      # 0x44
	.word	63                      # 0x3f
	.word	30                      # 0x1e
	.word	51                      # 0x33
	.word	49                      # 0x31
	.word	39                      # 0x27
	.word	97                      # 0x61
	.word	3                       # 0x3
	.word	58                      # 0x3a
	.word	13                      # 0xd
	.word	80                      # 0x50
	.word	45                      # 0x2d
	.word	27                      # 0x1b
	.word	3                       # 0x3
	.word	31                      # 0x1f
	.word	100                     # 0x64
	.word	80                      # 0x50
	.word	48                      # 0x30
	.word	76                      # 0x4c
	.word	52                      # 0x34
	.word	93                      # 0x5d
	.word	64                      # 0x40
	.word	33                      # 0x21
	.word	50                      # 0x32
	.word	24                      # 0x18
	.word	82                      # 0x52
	.word	61                      # 0x3d
	.word	45                      # 0x2d
	.word	15                      # 0xf
	.word	82                      # 0x52
	.word	89                      # 0x59
	.word	49                      # 0x31
	.word	10                      # 0xa
	.word	85                      # 0x55
	.word	100                     # 0x64
	.word	59                      # 0x3b
	.word	23                      # 0x17
	.word	96                      # 0x60
	.word	28                      # 0x1c
	.word	81                      # 0x51
	.word	75                      # 0x4b
	.word	7                       # 0x7
	.word	93                      # 0x5d
	.word	68                      # 0x44
	.word	10                      # 0xa
	.word	90                      # 0x5a
	.word	34                      # 0x22
	.word	56                      # 0x38
	.word	3                       # 0x3
	.word	76                      # 0x4c
	.word	74                      # 0x4a
	.word	97                      # 0x61
	.word	6                       # 0x6
	.word	73                      # 0x49
	.word	12                      # 0xc
	.word	30                      # 0x1e
	.word	20                      # 0x14
	.word	40                      # 0x28
	.word	75                      # 0x4b
	.word	35                      # 0x23
	.word	88                      # 0x58
	.word	29                      # 0x1d
	.word	85                      # 0x55
	.word	64                      # 0x40
	.word	14                      # 0xe
	.word	50                      # 0x32
	.word	22                      # 0x16
	.word	37                      # 0x25
	.word	12                      # 0xc
	.word	16                      # 0x10
	.word	85                      # 0x55
	.word	87                      # 0x57
	.word	23                      # 0x17
	.word	77                      # 0x4d
	.word	21                      # 0x15
	.word	100                     # 0x64
	.word	66                      # 0x42
	.word	55                      # 0x37
	.word	21                      # 0x15
	.word	35                      # 0x23
	.word	30                      # 0x1e
	.word	95                      # 0x5f
	.word	31                      # 0x1f
	.word	2                       # 0x2
	.word	33                      # 0x21
	.word	10                      # 0xa
	.word	32                      # 0x20
	.word	53                      # 0x35
	.word	16                      # 0x10
	.word	74                      # 0x4a
	.word	54                      # 0x36
	.word	70                      # 0x46
	.word	69                      # 0x45
	.word	38                      # 0x26
	.word	33                      # 0x21
	.word	83                      # 0x53
	.word	55                      # 0x37
	.word	55                      # 0x37
	.word	87                      # 0x57
	.word	67                      # 0x43
	.word	71                      # 0x47
	.word	71                      # 0x47
	.word	19                      # 0x13
	.word	60                      # 0x3c
	.word	13                      # 0xd
	.word	40                      # 0x28
	.word	25                      # 0x19
	.word	45                      # 0x2d
	.word	61                      # 0x3d
	.word	46                      # 0x2e
	.word	80                      # 0x50
	.word	58                      # 0x3a
	.word	6                       # 0x6
	.word	78                      # 0x4e
	.word	60                      # 0x3c
	.word	39                      # 0x27
	.word	88                      # 0x58
	.word	93                      # 0x5d
	.word	58                      # 0x3a
	.word	70                      # 0x46
	.word	32                      # 0x20
	.word	11                      # 0xb
	.word	39                      # 0x27
	.word	0                       # 0x0
	.word	16                      # 0x10
	.word	72                      # 0x48
	.word	50                      # 0x32
	.word	71                      # 0x47
	.word	93                      # 0x5d
	.word	36                      # 0x24
	.word	37                      # 0x25
	.word	29                      # 0x1d
	.word	6                       # 0x6
	.word	56                      # 0x38
	.word	55                      # 0x37
	.word	19                      # 0x13
	.word	63                      # 0x3f
	.word	80                      # 0x50
	.word	64                      # 0x40
	.word	23                      # 0x17
	.word	25                      # 0x19
	.word	43                      # 0x2b
	.word	81                      # 0x51
	.word	98                      # 0x62
	.word	87                      # 0x57
	.word	41                      # 0x29
	.word	2                       # 0x2
	.word	40                      # 0x28
	.word	100                     # 0x64
	.word	60                      # 0x3c
	.word	9                       # 0x9
	.word	31                      # 0x1f
	.word	37                      # 0x25
	.word	14                      # 0xe
	.word	98                      # 0x62
	.word	53                      # 0x35
	.word	86                      # 0x56
	.word	47                      # 0x2f
	.word	90                      # 0x5a
	.word	44                      # 0x2c
	.word	83                      # 0x53
	.word	26                      # 0x1a
	.word	73                      # 0x49
	.word	55                      # 0x37
	.word	49                      # 0x31
	.word	27                      # 0x1b
	.word	40                      # 0x28
	.word	11                      # 0xb
	.word	73                      # 0x49
	.word	70                      # 0x46
	.word	0                       # 0x0
	.word	64                      # 0x40
	.word	13                      # 0xd
	.word	82                      # 0x52
	.word	61                      # 0x3d
	.word	66                      # 0x42
	.word	89                      # 0x59
	.word	29                      # 0x1d
	.word	6                       # 0x6
	.word	88                      # 0x58
	.word	89                      # 0x59
	.word	15                      # 0xf
	.word	85                      # 0x55
	.word	93                      # 0x5d
	.word	30                      # 0x1e
	.word	82                      # 0x52
	.word	11                      # 0xb
	.word	82                      # 0x52
	.word	96                      # 0x60
	.word	1                       # 0x1
	.word	26                      # 0x1a
	.word	78                      # 0x4e
	.word	27                      # 0x1b
	.word	65                      # 0x41
	.word	100                     # 0x64
	.word	42                      # 0x2a
	.word	93                      # 0x5d
	.word	39                      # 0x27
	.word	53                      # 0x35
	.word	31                      # 0x1f
	.word	9                       # 0x9
	.word	54                      # 0x36
	.word	96                      # 0x60
	.word	89                      # 0x59
	.word	1                       # 0x1
	.word	22                      # 0x16
	.word	54                      # 0x36
	.word	90                      # 0x5a
	.word	52                      # 0x34
	.word	60                      # 0x3c
	.word	43                      # 0x2b
	.word	6                       # 0x6
	.word	42                      # 0x2a
	.word	27                      # 0x1b
	.word	99                      # 0x63
	.word	72                      # 0x48
	.word	75                      # 0x4b
	.word	10                      # 0xa
	.word	19                      # 0x13
	.word	70                      # 0x46
	.word	11                      # 0xb
	.word	45                      # 0x2d
	.word	14                      # 0xe
	.word	4                       # 0x4
	.word	10                      # 0xa
	.word	13                      # 0xd
	.word	47                      # 0x2f
	.word	69                      # 0x45
	.word	52                      # 0x34
	.word	66                      # 0x42
	.word	100                     # 0x64
	.word	27                      # 0x1b
	.word	86                      # 0x56
	.word	61                      # 0x3d
	.word	15                      # 0xf
	.word	53                      # 0x35
	.word	84                      # 0x54
	.word	36                      # 0x24
	.word	42                      # 0x2a
	.word	35                      # 0x23
	.word	96                      # 0x60
	.word	85                      # 0x55
	.word	41                      # 0x29
	.word	37                      # 0x25
	.word	78                      # 0x4e
	.word	40                      # 0x28
	.word	75                      # 0x4b
	.word	53                      # 0x35
	.word	16                      # 0x10
	.word	95                      # 0x5f
	.word	22                      # 0x16
	.word	94                      # 0x5e
	.word	5                       # 0x5
	.word	36                      # 0x24
	.word	98                      # 0x62
	.word	15                      # 0xf
	.word	15                      # 0xf
	.word	80                      # 0x50
	.word	63                      # 0x3f
	.word	13                      # 0xd
	.word	11                      # 0xb
	.word	92                      # 0x5c
	.word	48                      # 0x30
	.word	44                      # 0x2c
	.word	88                      # 0x58
	.word	55                      # 0x37
	.word	99                      # 0x63
	.word	9                       # 0x9
	.word	4                       # 0x4
	.word	48                      # 0x30
	.word	1                       # 0x1
	.word	20                      # 0x14
	.word	2                       # 0x2
	.word	10                      # 0xa
	.word	61                      # 0x3d
	.word	1                       # 0x1
	.word	44                      # 0x2c
	.word	86                      # 0x56
	.word	73                      # 0x49
	.word	74                      # 0x4a
	.word	83                      # 0x53
	.word	23                      # 0x17
	.word	11                      # 0xb
	.word	62                      # 0x3e
	.word	50                      # 0x32
	.word	93                      # 0x5d
	.word	26                      # 0x1a
	.word	22                      # 0x16
	.word	38                      # 0x26
	.word	90                      # 0x5a
	.word	1                       # 0x1
	.word	15                      # 0xf
	.word	47                      # 0x2f
	.word	49                      # 0x31
	.word	59                      # 0x3b
	.word	34                      # 0x22
	.word	71                      # 0x47
	.word	23                      # 0x17
	.word	44                      # 0x2c
	.word	75                      # 0x4b
	.word	38                      # 0x26
	.word	11                      # 0xb
	.word	61                      # 0x3d
	.word	40                      # 0x28
	.word	22                      # 0x16
	.word	21                      # 0x15
	.word	41                      # 0x29
	.word	32                      # 0x20
	.word	7                       # 0x7
	.word	13                      # 0xd
	.word	6                       # 0x6
	.word	56                      # 0x38
	.word	36                      # 0x24
	.word	84                      # 0x54
	.word	17                      # 0x11
	.word	52                      # 0x34
	.word	76                      # 0x4c
	.word	44                      # 0x2c
	.word	74                      # 0x4a
	.word	80                      # 0x50
	.word	100                     # 0x64
	.word	42                      # 0x2a
	.word	96                      # 0x60
	.word	46                      # 0x2e
	.word	91                      # 0x5b
	.word	20                      # 0x14
	.word	81                      # 0x51
	.word	27                      # 0x1b
	.word	10                      # 0xa
	.word	91                      # 0x5b
	.word	2                       # 0x2
	.word	48                      # 0x30
	.word	1                       # 0x1
	.word	29                      # 0x1d
	.word	88                      # 0x58
	.word	90                      # 0x5a
	.word	51                      # 0x33
	.word	95                      # 0x5f
	.word	22                      # 0x16
	.word	58                      # 0x3a
	.word	7                       # 0x7
	.word	95                      # 0x5f
	.word	13                      # 0xd
	.word	9                       # 0x9
	.word	78                      # 0x4e
	.word	31                      # 0x1f
	.word	61                      # 0x3d
	.word	19                      # 0x13
	.word	41                      # 0x29
	.word	1                       # 0x1
	.word	65                      # 0x41
	.word	40                      # 0x28
	.word	43                      # 0x2b
	.word	26                      # 0x1a
	.word	86                      # 0x56
	.word	100                     # 0x64
	.word	47                      # 0x2f
	.word	32                      # 0x20
	.word	94                      # 0x5e
	.word	23                      # 0x17
	.word	22                      # 0x16
	.word	62                      # 0x3e
	.word	71                      # 0x47
	.word	91                      # 0x5b
	.word	91                      # 0x5b
	.word	58                      # 0x3a
	.word	80                      # 0x50
	.word	41                      # 0x29
	.word	18                      # 0x12
	.word	68                      # 0x44
	.word	65                      # 0x41
	.word	25                      # 0x19
	.word	62                      # 0x3e
	.word	79                      # 0x4f
	.word	0                       # 0x0
	.word	5                       # 0x5
	.word	76                      # 0x4c
	.word	27                      # 0x1b
	.word	24                      # 0x18
	.word	83                      # 0x53
	.word	28                      # 0x1c
	.word	56                      # 0x38
	.word	22                      # 0x16
	.word	37                      # 0x25
	.word	82                      # 0x52
	.word	74                      # 0x4a
	.word	3                       # 0x3
	.word	95                      # 0x5f
	.word	6                       # 0x6
	.word	97                      # 0x61
	.word	17                      # 0x11
	.word	95                      # 0x5f
	.word	24                      # 0x18
	.word	54                      # 0x36
	.word	85                      # 0x55
	.word	14                      # 0xe
	.word	78                      # 0x4e
	.word	31                      # 0x1f
	.word	56                      # 0x38
	.word	96                      # 0x60
	.word	99                      # 0x63
	.word	20                      # 0x14
	.word	87                      # 0x57
	.word	27                      # 0x1b
	.word	65                      # 0x41
	.word	87                      # 0x57
	.word	32                      # 0x20
	.word	6                       # 0x6
	.word	14                      # 0xe
	.word	23                      # 0x17
	.word	89                      # 0x59
	.word	8                       # 0x8
	.word	45                      # 0x2d
	.word	77                      # 0x4d
	.word	12                      # 0xc
	.word	26                      # 0x1a
	.word	51                      # 0x33
	.word	82                      # 0x52
	.word	88                      # 0x58
	.word	23                      # 0x17
	.word	44                      # 0x2c
	.word	71                      # 0x47
	.word	17                      # 0x11
	.word	68                      # 0x44
	.word	25                      # 0x19
	.word	69                      # 0x45
	.word	82                      # 0x52
	.word	2                       # 0x2
	.word	100                     # 0x64
	.word	3                       # 0x3
	.word	99                      # 0x63
	.word	64                      # 0x40
	.word	91                      # 0x5b
	.word	85                      # 0x55
	.word	91                      # 0x5b
	.word	21                      # 0x15
	.word	38                      # 0x26
	.word	90                      # 0x5a
	.word	28                      # 0x1c
	.word	52                      # 0x34
	.word	79                      # 0x4f
	.word	83                      # 0x53
	.word	26                      # 0x1a
	.word	23                      # 0x17
	.word	60                      # 0x3c
	.word	38                      # 0x26
	.word	49                      # 0x31
	.word	10                      # 0xa
	.word	86                      # 0x56
	.word	2                       # 0x2
	.word	33                      # 0x21
	.word	29                      # 0x1d
	.word	74                      # 0x4a
	.word	16                      # 0x10
	.word	97                      # 0x61
	.word	65                      # 0x41
	.word	51                      # 0x33
	.word	45                      # 0x2d
	.word	67                      # 0x43
	.word	16                      # 0x10
	.word	48                      # 0x30
	.word	31                      # 0x1f
	.word	81                      # 0x51
	.word	4                       # 0x4
	.word	16                      # 0x10
	.word	37                      # 0x25
	.word	26                      # 0x1a
	.word	20                      # 0x14
	.word	93                      # 0x5d
	.word	20                      # 0x14
	.word	38                      # 0x26
	.word	71                      # 0x47
	.word	2                       # 0x2
	.word	64                      # 0x40
	.word	94                      # 0x5e
	.word	62                      # 0x3e
	.word	69                      # 0x45
	.word	9                       # 0x9
	.word	72                      # 0x48
	.word	54                      # 0x36
	.word	11                      # 0xb
	.word	71                      # 0x47
	.word	84                      # 0x54
	.word	51                      # 0x33
	.word	54                      # 0x36
	.word	80                      # 0x50
	.word	15                      # 0xf
	.word	4                       # 0x4
	.word	24                      # 0x18
	.word	83                      # 0x53
	.word	88                      # 0x58
	.word	39                      # 0x27
	.word	80                      # 0x50
	.word	68                      # 0x44
	.word	43                      # 0x2b
	.word	62                      # 0x3e
	.word	71                      # 0x47
	.word	35                      # 0x23
	.word	82                      # 0x52
	.word	64                      # 0x40
	.word	55                      # 0x37
	.word	19                      # 0x13
	.word	0                       # 0x0
	.word	58                      # 0x3a
	.word	84                      # 0x54
	.word	95                      # 0x5f
	.word	19                      # 0x13
	.word	18                      # 0x12
	.word	3                       # 0x3
	.word	58                      # 0x3a
	.word	72                      # 0x48
	.word	81                      # 0x51
	.word	95                      # 0x5f
	.word	55                      # 0x37
	.word	32                      # 0x20
	.word	14                      # 0xe
	.word	1                       # 0x1
	.word	47                      # 0x2f
	.word	19                      # 0x13
	.word	92                      # 0x5c
	.word	96                      # 0x60
	.word	6                       # 0x6
	.word	30                      # 0x1e
	.word	76                      # 0x4c
	.word	40                      # 0x28
	.word	40                      # 0x28
	.word	37                      # 0x25
	.word	77                      # 0x4d
	.word	75                      # 0x4b
	.word	19                      # 0x13
	.word	6                       # 0x6
	.word	30                      # 0x1e
	.word	38                      # 0x26
	.word	7                       # 0x7
	.word	54                      # 0x36
	.word	88                      # 0x58
	.word	68                      # 0x44
	.word	73                      # 0x49
	.word	5                       # 0x5
	.word	71                      # 0x47
	.word	97                      # 0x61
	.word	78                      # 0x4e
	.word	51                      # 0x33
	.word	58                      # 0x3a
	.word	99                      # 0x63
	.word	49                      # 0x31
	.word	72                      # 0x48
	.word	66                      # 0x42
	.word	97                      # 0x61
	.word	57                      # 0x39
	.word	58                      # 0x3a
	.word	58                      # 0x3a
	.word	63                      # 0x3f
	.word	54                      # 0x36
	.word	33                      # 0x21
	.word	69                      # 0x45
	.word	60                      # 0x3c
	.word	37                      # 0x25
	.word	12                      # 0xc
	.word	1                       # 0x1
	.word	56                      # 0x38
	.word	18                      # 0x12
	.word	31                      # 0x1f
	.word	60                      # 0x3c
	.word	92                      # 0x5c
	.word	51                      # 0x33
	.word	14                      # 0xe
	.word	59                      # 0x3b
	.word	90                      # 0x5a
	.word	19                      # 0x13
	.word	29                      # 0x1d
	.word	87                      # 0x57
	.word	63                      # 0x3f
	.word	47                      # 0x2f
	.word	10                      # 0xa
	.word	28                      # 0x1c
	.word	96                      # 0x60
	.word	82                      # 0x52
	.word	94                      # 0x5e
	.word	58                      # 0x3a
	.word	39                      # 0x27
	.word	17                      # 0x11
	.word	16                      # 0x10
	.word	68                      # 0x44
	.word	38                      # 0x26
	.word	15                      # 0xf
	.word	3                       # 0x3
	.word	64                      # 0x40
	.word	52                      # 0x34
	.word	15                      # 0xf
	.word	65                      # 0x41
	.word	74                      # 0x4a
	.word	100                     # 0x64
	.word	62                      # 0x3e
	.word	0                       # 0x0
	.word	92                      # 0x5c
	.word	12                      # 0xc
	.word	14                      # 0xe
	.word	50                      # 0x32
	.word	2                       # 0x2
	.word	33                      # 0x21
	.word	46                      # 0x2e
	.word	55                      # 0x37
	.word	63                      # 0x3f
	.word	59                      # 0x3b
	.word	65                      # 0x41
	.word	91                      # 0x5b
	.word	20                      # 0x14
	.word	46                      # 0x2e
	.word	50                      # 0x32
	.word	79                      # 0x4f
	.word	51                      # 0x33
	.word	34                      # 0x22
	.word	61                      # 0x3d
	.word	19                      # 0x13
	.word	72                      # 0x48
	.word	76                      # 0x4c
	.word	89                      # 0x59
	.word	35                      # 0x23
	.word	95                      # 0x5f
	.word	3                       # 0x3
	.word	67                      # 0x43
	.word	68                      # 0x44
	.word	69                      # 0x45
	.word	28                      # 0x1c
	.word	68                      # 0x44
	.word	60                      # 0x3c
	.word	41                      # 0x29
	.word	82                      # 0x52
	.word	77                      # 0x4d
	.word	43                      # 0x2b
	.word	82                      # 0x52
	.word	22                      # 0x16
	.word	98                      # 0x62
	.word	44                      # 0x2c
	.word	47                      # 0x2f
	.word	28                      # 0x1c
	.word	0                       # 0x0
	.word	67                      # 0x43
	.word	74                      # 0x4a
	.word	50                      # 0x32
	.word	11                      # 0xb
	.word	92                      # 0x5c
	.word	84                      # 0x54
	.word	72                      # 0x48
	.word	77                      # 0x4d
	.word	21                      # 0x15
	.word	14                      # 0xe
	.word	65                      # 0x41
	.word	23                      # 0x17
	.word	8                       # 0x8
	.word	34                      # 0x22
	.word	90                      # 0x5a
	.word	42                      # 0x2a
	.word	2                       # 0x2
	.word	84                      # 0x54
	.word	10                      # 0xa
	.word	63                      # 0x3f
	.word	24                      # 0x18
	.word	58                      # 0x3a
	.word	5                       # 0x5
	.word	33                      # 0x21
	.word	5                       # 0x5
	.word	94                      # 0x5e
	.word	97                      # 0x61
	.word	15                      # 0xf
	.word	40                      # 0x28
	.word	24                      # 0x18
	.word	15                      # 0xf
	.word	6                       # 0x6
	.word	65                      # 0x41
	.word	32                      # 0x20
	.word	18                      # 0x12
	.word	56                      # 0x38
	.word	82                      # 0x52
	.word	56                      # 0x38
	.word	32                      # 0x20
	.word	70                      # 0x46
	.word	70                      # 0x46
	.word	97                      # 0x61
	.word	93                      # 0x5d
	.word	78                      # 0x4e
	.word	30                      # 0x1e
	.word	48                      # 0x30
	.word	87                      # 0x57
	.word	99                      # 0x63
	.word	31                      # 0x1f
	.word	97                      # 0x61
	.word	27                      # 0x1b
	.word	22                      # 0x16
	.word	20                      # 0x14
	.word	32                      # 0x20
	.word	55                      # 0x37
	.word	93                      # 0x5d
	.word	25                      # 0x19
	.word	52                      # 0x34
	.word	7                       # 0x7
	.word	31                      # 0x1f
	.word	42                      # 0x2a
	.word	90                      # 0x5a
	.word	4                       # 0x4
	.word	6                       # 0x6
	.word	88                      # 0x58
	.word	89                      # 0x59
	.word	62                      # 0x3e
	.word	35                      # 0x23
	.word	44                      # 0x2c
	.word	60                      # 0x3c
	.word	4                       # 0x4
	.word	81                      # 0x51
	.word	56                      # 0x38
	.word	63                      # 0x3f
	.word	24                      # 0x18
	.word	52                      # 0x34
	.word	10                      # 0xa
	.word	10                      # 0xa
	.word	17                      # 0x11
	.word	8                       # 0x8
	.word	73                      # 0x49
	.word	44                      # 0x2c
	.word	30                      # 0x1e
	.word	94                      # 0x5e
	.word	77                      # 0x4d
	.word	51                      # 0x33
	.word	86                      # 0x56
	.word	68                      # 0x44
	.word	69                      # 0x45
	.word	59                      # 0x3b
	.word	66                      # 0x42
	.word	11                      # 0xb
	.word	48                      # 0x30
	.word	70                      # 0x46
	.word	84                      # 0x54
	.word	1                       # 0x1
	.word	58                      # 0x3a
	.word	12                      # 0xc
	.word	37                      # 0x25
	.word	68                      # 0x44
	.word	72                      # 0x48
	.word	41                      # 0x29
	.word	48                      # 0x30
	.word	95                      # 0x5f
	.word	71                      # 0x47
	.word	73                      # 0x49
	.word	12                      # 0xc
	.word	47                      # 0x2f
	.word	83                      # 0x53
	.word	29                      # 0x1d
	.word	55                      # 0x37
	.word	56                      # 0x38
	.word	74                      # 0x4a
	.word	51                      # 0x33
	.word	15                      # 0xf
	.word	16                      # 0x10
	.word	2                       # 0x2
	.word	67                      # 0x43
	.word	50                      # 0x32
	.word	71                      # 0x47
	.word	92                      # 0x5c
	.word	15                      # 0xf
	.word	82                      # 0x52
	.word	6                       # 0x6
	.word	51                      # 0x33
	.word	66                      # 0x42
	.word	7                       # 0x7
	.word	75                      # 0x4b
	.word	44                      # 0x2c
	.word	44                      # 0x2c
	.word	43                      # 0x2b
	.word	15                      # 0xf
	.word	52                      # 0x34
	.word	57                      # 0x39
	.word	9                       # 0x9
	.word	22                      # 0x16
	.word	96                      # 0x60
	.word	89                      # 0x59
	.word	35                      # 0x23
	.word	79                      # 0x4f
	.word	17                      # 0x11
	.word	91                      # 0x5b
	.word	0                       # 0x0
	.word	57                      # 0x39
	.word	7                       # 0x7
	.word	82                      # 0x52
	.word	73                      # 0x49
	.word	9                       # 0x9
	.word	14                      # 0xe
	.word	90                      # 0x5a
	.word	81                      # 0x51
	.word	5                       # 0x5
	.word	4                       # 0x4
	.word	28                      # 0x1c
	.word	11                      # 0xb
	.word	22                      # 0x16
	.word	60                      # 0x3c
	.word	19                      # 0x13
	.word	97                      # 0x61
	.word	3                       # 0x3
	.word	29                      # 0x1d
	.word	5                       # 0x5
	.word	86                      # 0x56
	.word	81                      # 0x51
	.word	63                      # 0x3f
	.word	61                      # 0x3d
	.word	69                      # 0x45
	.word	58                      # 0x3a
	.word	49                      # 0x31
	.word	71                      # 0x47
	.word	2                       # 0x2
	.word	67                      # 0x43
	.word	27                      # 0x1b
	.word	69                      # 0x45
	.word	90                      # 0x5a
	.word	34                      # 0x22
	.word	50                      # 0x32
	.word	29                      # 0x1d
	.word	44                      # 0x2c
	.word	64                      # 0x40
	.word	18                      # 0x12
	.word	91                      # 0x5b
	.word	36                      # 0x24
	.word	89                      # 0x59
	.word	85                      # 0x55
	.word	47                      # 0x2f
	.word	10                      # 0xa
	.word	45                      # 0x2d
	.word	32                      # 0x20
	.word	7                       # 0x7
	.word	14                      # 0xe
	.word	62                      # 0x3e
	.word	12                      # 0xc
	.word	100                     # 0x64
	.word	8                       # 0x8
	.word	41                      # 0x29
	.word	61                      # 0x3d
	.word	44                      # 0x2c
	.word	100                     # 0x64
	.word	9                       # 0x9
	.word	14                      # 0xe
	.word	68                      # 0x44
	.word	42                      # 0x2a
	.word	41                      # 0x29
	.word	37                      # 0x25
	.word	99                      # 0x63
	.word	75                      # 0x4b
	.word	87                      # 0x57
	.word	27                      # 0x1b
	.word	85                      # 0x55
	.word	17                      # 0x11
	.word	45                      # 0x2d
	.word	75                      # 0x4b
	.word	53                      # 0x35
	.word	33                      # 0x21
	.word	26                      # 0x1a
	.word	66                      # 0x42
	.word	10                      # 0xa
	.word	71                      # 0x47
	.word	99                      # 0x63
	.word	84                      # 0x54
	.word	85                      # 0x55
	.word	60                      # 0x3c
	.word	62                      # 0x3e
	.word	51                      # 0x33
	.word	68                      # 0x44
	.word	3                       # 0x3
	.word	11                      # 0xb
	.word	11                      # 0xb
	.word	69                      # 0x45
	.word	87                      # 0x57
	.word	92                      # 0x5c
	.word	36                      # 0x24
	.word	96                      # 0x60
	.word	32                      # 0x20
	.word	39                      # 0x27
	.word	94                      # 0x5e
	.word	74                      # 0x4a
	.word	93                      # 0x5d
	.word	87                      # 0x57
	.word	58                      # 0x3a
	.word	9                       # 0x9
	.word	31                      # 0x1f
	.word	100                     # 0x64
	.word	28                      # 0x1c
	.word	30                      # 0x1e
	.word	25                      # 0x19
	.word	94                      # 0x5e
	.word	6                       # 0x6
	.word	62                      # 0x3e
	.word	92                      # 0x5c
	.word	90                      # 0x5a
	.word	12                      # 0xc
	.word	17                      # 0x11
	.word	52                      # 0x34
	.word	29                      # 0x1d
	.word	86                      # 0x56
	.word	55                      # 0x37
	.word	40                      # 0x28
	.word	63                      # 0x3f
	.word	90                      # 0x5a
	.word	94                      # 0x5e
	.word	21                      # 0x15
	.word	92                      # 0x5c
	.word	55                      # 0x37
	.word	53                      # 0x35
	.word	31                      # 0x1f
	.word	14                      # 0xe
	.word	93                      # 0x5d
	.word	23                      # 0x17
	.word	0                       # 0x0
	.word	17                      # 0x11
	.word	99                      # 0x63
	.word	98                      # 0x62
	.word	16                      # 0x10
	.word	26                      # 0x1a
	.word	27                      # 0x1b
	.word	7                       # 0x7
	.word	86                      # 0x56
	.word	34                      # 0x22
	.word	35                      # 0x23
	.word	78                      # 0x4e
	.word	90                      # 0x5a
	.word	13                      # 0xd
	.word	95                      # 0x5f
	.word	41                      # 0x29
	.word	43                      # 0x2b
	.word	46                      # 0x2e
	.word	62                      # 0x3e
	.word	49                      # 0x31
	.word	76                      # 0x4c
	.word	51                      # 0x33
	.word	42                      # 0x2a
	.word	97                      # 0x61
	.word	9                       # 0x9
	.word	63                      # 0x3f
	.word	15                      # 0xf
	.word	40                      # 0x28
	.word	77                      # 0x4d
	.word	8                       # 0x8
	.word	63                      # 0x3f
	.word	43                      # 0x2b
	.word	25                      # 0x19
	.word	61                      # 0x3d
	.word	40                      # 0x28
	.word	7                       # 0x7
	.word	53                      # 0x35
	.word	68                      # 0x44
	.word	81                      # 0x51
	.word	38                      # 0x26
	.word	68                      # 0x44
	.word	82                      # 0x52
	.word	82                      # 0x52
	.word	57                      # 0x39
	.word	95                      # 0x5f
	.word	43                      # 0x2b
	.word	65                      # 0x41
	.word	37                      # 0x25
	.word	55                      # 0x37
	.word	55                      # 0x37
	.word	15                      # 0xf
	.word	15                      # 0xf
	.word	53                      # 0x35
	.word	30                      # 0x1e
	.word	28                      # 0x1c
	.word	99                      # 0x63
	.word	8                       # 0x8
	.word	71                      # 0x47
	.word	88                      # 0x58
	.word	75                      # 0x4b
	.word	59                      # 0x3b
	.word	77                      # 0x4d
	.word	88                      # 0x58
	.word	4                       # 0x4
	.word	44                      # 0x2c
	.word	93                      # 0x5d
	.word	29                      # 0x1d
	.word	66                      # 0x42
	.word	51                      # 0x33
	.word	17                      # 0x11
	.word	85                      # 0x55
	.word	10                      # 0xa
	.word	96                      # 0x60
	.word	17                      # 0x11
	.word	54                      # 0x36
	.word	100                     # 0x64
	.word	8                       # 0x8
	.word	77                      # 0x4d
	.word	73                      # 0x49
	.word	2                       # 0x2
	.word	31                      # 0x1f
	.word	89                      # 0x59
	.word	17                      # 0x11
	.word	50                      # 0x32
	.word	85                      # 0x55
	.word	46                      # 0x2e
	.word	48                      # 0x30
	.word	93                      # 0x5d
	.word	83                      # 0x53
	.word	35                      # 0x23
	.word	67                      # 0x43
	.word	7                       # 0x7
	.word	11                      # 0xb
	.word	54                      # 0x36
	.word	78                      # 0x4e
	.word	21                      # 0x15
	.word	13                      # 0xd
	.word	7                       # 0x7
	.word	88                      # 0x58
	.word	64                      # 0x40
	.word	91                      # 0x5b
	.word	38                      # 0x26
	.word	74                      # 0x4a
	.word	87                      # 0x57
	.word	56                      # 0x38
	.word	94                      # 0x5e
	.word	86                      # 0x56
	.word	64                      # 0x40
	.word	70                      # 0x46
	.word	25                      # 0x19
	.word	32                      # 0x20
	.word	67                      # 0x43
	.word	80                      # 0x50
	.word	50                      # 0x32
	.word	16                      # 0x10
	.word	64                      # 0x40
	.word	62                      # 0x3e
	.word	30                      # 0x1e
	.word	56                      # 0x38
	.word	10                      # 0xa
	.word	32                      # 0x20
	.word	89                      # 0x59
	.word	17                      # 0x11
	.word	9                       # 0x9
	.word	8                       # 0x8
	.word	95                      # 0x5f
	.word	31                      # 0x1f
	.word	21                      # 0x15
	.word	68                      # 0x44
	.word	18                      # 0x12
	.word	85                      # 0x55
	.word	59                      # 0x3b
	.word	22                      # 0x16
	.word	24                      # 0x18
	.word	11                      # 0xb
	.word	78                      # 0x4e
	.word	84                      # 0x54
	.word	97                      # 0x61
	.word	42                      # 0x2a
	.word	19                      # 0x13
	.word	88                      # 0x58
	.word	40                      # 0x28
	.word	86                      # 0x56
	.word	67                      # 0x43
	.word	90                      # 0x5a
	.word	68                      # 0x44
	.word	30                      # 0x1e
	.word	17                      # 0x11
	.word	99                      # 0x63
	.word	52                      # 0x34
	.word	27                      # 0x1b
	.word	30                      # 0x1e
	.word	40                      # 0x28
	.word	44                      # 0x2c
	.word	5                       # 0x5
	.word	49                      # 0x31
	.word	5                       # 0x5
	.word	36                      # 0x24
	.word	70                      # 0x46
	.word	73                      # 0x49
	.word	20                      # 0x14
	.word	21                      # 0x15
	.word	31                      # 0x1f
	.word	43                      # 0x2b
	.word	11                      # 0xb
	.word	42                      # 0x2a
	.word	20                      # 0x14
	.word	96                      # 0x60
	.word	5                       # 0x5
	.word	28                      # 0x1c
	.word	14                      # 0xe
	.word	93                      # 0x5d
	.word	69                      # 0x45
	.word	67                      # 0x43
	.word	26                      # 0x1a
	.word	24                      # 0x18
	.word	34                      # 0x22
	.word	56                      # 0x38
	.word	8                       # 0x8
	.word	99                      # 0x63
	.word	75                      # 0x4b
	.word	35                      # 0x23
	.word	95                      # 0x5f
	.word	14                      # 0xe
	.word	46                      # 0x2e
	.word	0                       # 0x0
	.word	29                      # 0x1d
	.word	51                      # 0x33
	.word	36                      # 0x24
	.word	66                      # 0x42
	.word	23                      # 0x17
	.word	57                      # 0x39
	.word	87                      # 0x57
	.word	21                      # 0x15
	.word	100                     # 0x64
	.word	98                      # 0x62
	.word	29                      # 0x1d
	.word	86                      # 0x56
	.word	59                      # 0x3b
	.word	0                       # 0x0
	.word	81                      # 0x51
	.word	74                      # 0x4a
	.word	60                      # 0x3c
	.word	15                      # 0xf
	.word	40                      # 0x28
	.word	86                      # 0x56
	.word	39                      # 0x27
	.word	40                      # 0x28
	.word	7                       # 0x7
	.word	47                      # 0x2f
	.word	5                       # 0x5
	.word	82                      # 0x52
	.word	49                      # 0x31
	.word	100                     # 0x64
	.word	63                      # 0x3f
	.word	95                      # 0x5f
	.word	66                      # 0x42
	.word	92                      # 0x5c
	.word	11                      # 0xb
	.word	2                       # 0x2
	.word	57                      # 0x39
	.word	0                       # 0x0
	.word	25                      # 0x19
	.word	9                       # 0x9
	.word	21                      # 0x15
	.word	91                      # 0x5b
	.word	74                      # 0x4a
	.word	17                      # 0x11
	.word	76                      # 0x4c
	.word	32                      # 0x20
	.word	17                      # 0x11
	.word	22                      # 0x16
	.word	72                      # 0x48
	.word	43                      # 0x2b
	.word	37                      # 0x25
	.word	78                      # 0x4e
	.word	28                      # 0x1c
	.word	77                      # 0x4d
	.word	18                      # 0x12
	.word	36                      # 0x24
	.word	90                      # 0x5a
	.word	90                      # 0x5a
	.word	84                      # 0x54
	.word	38                      # 0x26
	.word	89                      # 0x59
	.word	46                      # 0x2e
	.word	99                      # 0x63
	.word	21                      # 0x15
	.word	4                       # 0x4
	.word	9                       # 0x9
	.word	90                      # 0x5a
	.word	27                      # 0x1b
	.word	10                      # 0xa
	.word	14                      # 0xe
	.word	3                       # 0x3
	.word	98                      # 0x62
	.word	4                       # 0x4
	.word	77                      # 0x4d
	.word	14                      # 0xe
	.word	46                      # 0x2e
	.word	75                      # 0x4b
	.word	99                      # 0x63
	.word	35                      # 0x23
	.word	47                      # 0x2f
	.word	41                      # 0x29
	.word	72                      # 0x48
	.word	24                      # 0x18
	.word	70                      # 0x46
	.word	48                      # 0x30
	.word	8                       # 0x8
	.word	72                      # 0x48
	.word	4                       # 0x4
	.word	98                      # 0x62
	.word	55                      # 0x37
	.word	42                      # 0x2a
	.word	53                      # 0x35
	.word	68                      # 0x44
	.word	7                       # 0x7
	.word	74                      # 0x4a
	.word	72                      # 0x48
	.word	16                      # 0x10
	.word	63                      # 0x3f
	.word	99                      # 0x63
	.word	26                      # 0x1a
	.word	43                      # 0x2b
	.word	1                       # 0x1
	.word	24                      # 0x18
	.word	13                      # 0xd
	.word	44                      # 0x2c
	.word	4                       # 0x4
	.word	25                      # 0x19
	.word	19                      # 0x13
	.word	2                       # 0x2
	.word	60                      # 0x3c
	.word	32                      # 0x20
	.word	10                      # 0xa
	.word	32                      # 0x20
	.word	22                      # 0x16
	.word	80                      # 0x50
	.word	46                      # 0x2e
	.word	98                      # 0x62
	.word	17                      # 0x11
	.word	50                      # 0x32
	.word	95                      # 0x5f
	.word	38                      # 0x26
	.word	59                      # 0x3b
	.word	13                      # 0xd
	.word	5                       # 0x5
	.word	66                      # 0x42
	.word	87                      # 0x57
	.word	77                      # 0x4d
	.word	48                      # 0x30
	.word	15                      # 0xf
	.word	42                      # 0x2a
	.word	41                      # 0x29
	.word	58                      # 0x3a
	.word	9                       # 0x9
	.word	31                      # 0x1f
	.word	71                      # 0x47
	.word	54                      # 0x36
	.word	35                      # 0x23
	.word	97                      # 0x61
	.word	39                      # 0x27
	.word	4                       # 0x4
	.word	56                      # 0x38
	.word	37                      # 0x25
	.word	14                      # 0xe
	.word	88                      # 0x58
	.word	59                      # 0x3b
	.word	60                      # 0x3c
	.word	0                       # 0x0
	.word	56                      # 0x38
	.word	77                      # 0x4d
	.word	50                      # 0x32
	.word	17                      # 0x11
	.word	81                      # 0x51
	.word	75                      # 0x4b
	.word	30                      # 0x1e
	.word	87                      # 0x57
	.word	6                       # 0x6
	.word	84                      # 0x54
	.word	29                      # 0x1d
	.word	55                      # 0x37
	.word	99                      # 0x63
	.word	37                      # 0x25
	.word	96                      # 0x60
	.word	57                      # 0x39
	.word	47                      # 0x2f
	.word	26                      # 0x1a
	.word	94                      # 0x5e
	.word	67                      # 0x43
	.word	27                      # 0x1b
	.word	56                      # 0x38
	.word	5                       # 0x5
	.word	98                      # 0x62
	.word	12                      # 0xc
	.word	8                       # 0x8
	.word	11                      # 0xb
	.word	66                      # 0x42
	.word	67                      # 0x43
	.word	37                      # 0x25
	.word	66                      # 0x42
	.word	90                      # 0x5a
	.word	80                      # 0x50
	.word	83                      # 0x53
	.word	6                       # 0x6
	.word	61                      # 0x3d
	.word	23                      # 0x17
	.word	2                       # 0x2
	.word	47                      # 0x2f
	.word	30                      # 0x1e
	.word	86                      # 0x56
	.word	42                      # 0x2a
	.word	51                      # 0x33
	.word	51                      # 0x33
	.word	80                      # 0x50
	.word	46                      # 0x2e
	.word	74                      # 0x4a
	.word	26                      # 0x1a
	.word	38                      # 0x26
	.word	67                      # 0x43
	.word	59                      # 0x3b
	.word	31                      # 0x1f
	.word	23                      # 0x17
	.word	64                      # 0x40
	.word	29                      # 0x1d
	.word	1                       # 0x1
	.word	38                      # 0x26
	.word	6                       # 0x6
	.word	33                      # 0x21
	.word	4                       # 0x4
	.word	44                      # 0x2c
	.word	100                     # 0x64
	.word	60                      # 0x3c
	.word	90                      # 0x5a
	.word	48                      # 0x30
	.word	32                      # 0x20
	.word	50                      # 0x32
	.word	71                      # 0x47
	.word	1                       # 0x1
	.word	63                      # 0x3f
	.word	67                      # 0x43
	.word	87                      # 0x57
	.word	5                       # 0x5
	.word	17                      # 0x11
	.word	3                       # 0x3
	.word	51                      # 0x33
	.word	29                      # 0x1d
	.word	77                      # 0x4d
	.word	77                      # 0x4d
	.word	33                      # 0x21
	.word	10                      # 0xa
	.word	35                      # 0x23
	.word	65                      # 0x41
	.word	100                     # 0x64
	.word	65                      # 0x41
	.word	60                      # 0x3c
	.word	0                       # 0x0
	.word	2                       # 0x2
	.word	32                      # 0x20
	.word	33                      # 0x21
	.word	73                      # 0x49
	.word	42                      # 0x2a
	.word	99                      # 0x63
	.word	100                     # 0x64
	.word	32                      # 0x20
	.word	12                      # 0xc
	.word	31                      # 0x1f
	.word	48                      # 0x30
	.word	84                      # 0x54
	.word	99                      # 0x63
	.word	11                      # 0xb
	.word	50                      # 0x32
	.word	86                      # 0x56
	.word	83                      # 0x53
	.word	34                      # 0x22
	.word	55                      # 0x37
	.word	33                      # 0x21
	.word	63                      # 0x3f
	.word	32                      # 0x20
	.word	76                      # 0x4c
	.word	97                      # 0x61
	.word	8                       # 0x8
	.word	77                      # 0x4d
	.word	27                      # 0x1b
	.word	7                       # 0x7
	.word	7                       # 0x7
	.word	53                      # 0x35
	.word	74                      # 0x4a
	.word	76                      # 0x4c
	.word	85                      # 0x55
	.word	73                      # 0x49
	.word	14                      # 0xe
	.word	27                      # 0x1b
	.word	72                      # 0x48
	.word	13                      # 0xd
	.word	59                      # 0x3b
	.word	50                      # 0x32
	.word	11                      # 0xb
	.word	73                      # 0x49
	.word	33                      # 0x21
	.word	9                       # 0x9
	.word	84                      # 0x54
	.word	50                      # 0x32
	.word	61                      # 0x3d
	.word	32                      # 0x20
	.word	84                      # 0x54
	.word	16                      # 0x10
	.word	31                      # 0x1f
	.word	12                      # 0xc
	.word	14                      # 0xe
	.word	6                       # 0x6
	.word	8                       # 0x8
	.word	89                      # 0x59
	.word	49                      # 0x31
	.word	1                       # 0x1
	.word	96                      # 0x60
	.word	56                      # 0x38
	.word	54                      # 0x36
	.word	35                      # 0x23
	.word	31                      # 0x1f
	.word	39                      # 0x27
	.word	7                       # 0x7
	.word	46                      # 0x2e
	.word	32                      # 0x20
	.word	45                      # 0x2d
	.word	59                      # 0x3b
	.word	57                      # 0x39
	.word	96                      # 0x60
	.word	36                      # 0x24
	.word	29                      # 0x1d
	.word	95                      # 0x5f
	.word	46                      # 0x2e
	.word	80                      # 0x50
	.word	10                      # 0xa
	.word	73                      # 0x49
	.word	11                      # 0xb
	.word	94                      # 0x5e
	.word	89                      # 0x59
	.word	9                       # 0x9
	.word	73                      # 0x49
	.word	69                      # 0x45
	.word	15                      # 0xf
	.word	47                      # 0x2f
	.word	57                      # 0x39
	.word	31                      # 0x1f
	.word	49                      # 0x31
	.word	18                      # 0x12
	.word	87                      # 0x57
	.word	69                      # 0x45
	.word	53                      # 0x35
	.word	18                      # 0x12
	.word	74                      # 0x4a
	.word	27                      # 0x1b
	.word	30                      # 0x1e
	.word	5                       # 0x5
	.word	38                      # 0x26
	.word	55                      # 0x37
	.word	28                      # 0x1c
	.word	33                      # 0x21
	.word	92                      # 0x5c
	.word	58                      # 0x3a
	.word	95                      # 0x5f
	.word	3                       # 0x3
	.word	37                      # 0x25
	.word	4                       # 0x4
	.word	76                      # 0x4c
	.word	14                      # 0xe
	.word	65                      # 0x41
	.word	31                      # 0x1f
	.word	23                      # 0x17
	.word	37                      # 0x25
	.word	66                      # 0x42
	.word	5                       # 0x5
	.word	50                      # 0x32
	.word	23                      # 0x17
	.word	36                      # 0x24
	.word	99                      # 0x63
	.word	41                      # 0x29
	.word	22                      # 0x16
	.word	68                      # 0x44
	.word	61                      # 0x3d
	.word	6                       # 0x6
	.word	7                       # 0x7
	.word	88                      # 0x58
	.word	2                       # 0x2
	.word	13                      # 0xd
	.word	92                      # 0x5c
	.word	58                      # 0x3a
	.word	41                      # 0x29
	.word	92                      # 0x5c
	.word	15                      # 0xf
	.word	65                      # 0x41
	.word	86                      # 0x56
	.word	18                      # 0x12
	.word	1                       # 0x1
	.word	56                      # 0x38
	.word	60                      # 0x3c
	.word	83                      # 0x53
	.word	87                      # 0x57
	.word	57                      # 0x39
	.word	5                       # 0x5
	.word	90                      # 0x5a
	.word	23                      # 0x17
	.word	10                      # 0xa
	.word	40                      # 0x28
	.word	12                      # 0xc
	.word	12                      # 0xc
	.word	38                      # 0x26
	.word	19                      # 0x13
	.word	35                      # 0x23
	.word	72                      # 0x48
	.word	80                      # 0x50
	.word	7                       # 0x7
	.word	80                      # 0x50
	.word	33                      # 0x21
	.word	10                      # 0xa
	.word	59                      # 0x3b
	.word	25                      # 0x19
	.word	34                      # 0x22
	.word	66                      # 0x42
	.word	16                      # 0x10
	.word	49                      # 0x31
	.word	31                      # 0x1f
	.word	68                      # 0x44
	.word	33                      # 0x21
	.word	99                      # 0x63
	.word	23                      # 0x17
	.word	59                      # 0x3b
	.word	47                      # 0x2f
	.word	10                      # 0xa
	.word	16                      # 0x10
	.word	53                      # 0x35
	.word	100                     # 0x64
	.word	5                       # 0x5
	.word	29                      # 0x1d
	.word	39                      # 0x27
	.word	17                      # 0x11
	.word	42                      # 0x2a
	.word	44                      # 0x2c
	.word	2                       # 0x2
	.word	43                      # 0x2b
	.word	82                      # 0x52
	.word	49                      # 0x31
	.word	16                      # 0x10
	.word	27                      # 0x1b
	.word	82                      # 0x52
	.word	93                      # 0x5d
	.word	86                      # 0x56
	.word	73                      # 0x49
	.word	26                      # 0x1a
	.word	18                      # 0x12
	.word	55                      # 0x37
	.word	75                      # 0x4b
	.word	49                      # 0x31
	.word	89                      # 0x59
	.word	7                       # 0x7
	.word	13                      # 0xd
	.word	79                      # 0x4f
	.word	33                      # 0x21
	.word	61                      # 0x3d
	.word	55                      # 0x37
	.word	15                      # 0xf
	.word	80                      # 0x50
	.word	20                      # 0x14
	.word	20                      # 0x14
	.word	75                      # 0x4b
	.word	60                      # 0x3c
	.word	3                       # 0x3
	.word	83                      # 0x53
	.word	70                      # 0x46
	.word	5                       # 0x5
	.word	92                      # 0x5c
	.word	17                      # 0x11
	.word	54                      # 0x36
	.word	8                       # 0x8
	.word	45                      # 0x2d
	.word	2                       # 0x2
	.word	0                       # 0x0
	.word	30                      # 0x1e
	.word	41                      # 0x29
	.word	27                      # 0x1b
	.word	14                      # 0xe
	.word	63                      # 0x3f
	.word	68                      # 0x44
	.word	29                      # 0x1d
	.word	51                      # 0x33
	.word	42                      # 0x2a
	.word	43                      # 0x2b
	.word	96                      # 0x60
	.word	75                      # 0x4b
	.word	70                      # 0x46
	.word	50                      # 0x32
	.word	90                      # 0x5a
	.word	49                      # 0x31
	.word	71                      # 0x47
	.word	9                       # 0x9
	.word	90                      # 0x5a
	.word	97                      # 0x61
	.word	79                      # 0x4f
	.word	73                      # 0x49
	.word	66                      # 0x42
	.word	50                      # 0x32
	.word	64                      # 0x40
	.word	83                      # 0x53
	.word	4                       # 0x4
	.word	72                      # 0x48
	.word	27                      # 0x1b
	.word	73                      # 0x49
	.word	39                      # 0x27
	.word	24                      # 0x18
	.word	80                      # 0x50
	.word	32                      # 0x20
	.word	4                       # 0x4
	.word	42                      # 0x2a
	.word	100                     # 0x64
	.word	34                      # 0x22
	.word	60                      # 0x3c
	.word	41                      # 0x29
	.word	43                      # 0x2b
	.word	55                      # 0x37
	.word	82                      # 0x52
	.word	12                      # 0xc
	.word	5                       # 0x5
	.word	71                      # 0x47
	.word	27                      # 0x1b
	.word	42                      # 0x2a
	.word	46                      # 0x2e
	.word	16                      # 0x10
	.word	38                      # 0x26
	.word	24                      # 0x18
	.word	89                      # 0x59
	.word	3                       # 0x3
	.word	41                      # 0x29
	.word	19                      # 0x13
	.word	52                      # 0x34
	.word	11                      # 0xb
	.word	57                      # 0x39
	.word	46                      # 0x2e
	.word	84                      # 0x54
	.word	96                      # 0x60
	.word	36                      # 0x24
	.word	29                      # 0x1d
	.word	27                      # 0x1b
	.word	40                      # 0x28
	.word	72                      # 0x48
	.word	94                      # 0x5e
	.word	40                      # 0x28
	.word	98                      # 0x62
	.word	0                       # 0x0
	.word	83                      # 0x53
	.word	18                      # 0x12
	.word	83                      # 0x53
	.word	95                      # 0x5f
	.word	90                      # 0x5a
	.word	53                      # 0x35
	.word	88                      # 0x58
	.word	31                      # 0x1f
	.word	66                      # 0x42
	.word	71                      # 0x47
	.word	69                      # 0x45
	.word	56                      # 0x38
	.word	59                      # 0x3b
	.word	38                      # 0x26
	.word	97                      # 0x61
	.word	44                      # 0x2c
	.word	57                      # 0x39
	.word	7                       # 0x7
	.word	1                       # 0x1
	.word	2                       # 0x2
	.word	57                      # 0x39
	.word	97                      # 0x61
	.word	4                       # 0x4
	.word	87                      # 0x57
	.word	91                      # 0x5b
	.word	10                      # 0xa
	.word	24                      # 0x18
	.word	84                      # 0x54
	.word	51                      # 0x33
	.word	21                      # 0x15
	.word	84                      # 0x54
	.word	33                      # 0x21
	.word	39                      # 0x27
	.word	66                      # 0x42
	.word	95                      # 0x5f
	.word	96                      # 0x60
	.word	86                      # 0x56
	.word	82                      # 0x52
	.word	26                      # 0x1a
	.word	51                      # 0x33
	.word	52                      # 0x34
	.word	96                      # 0x60
	.word	73                      # 0x49
	.word	78                      # 0x4e
	.word	33                      # 0x21
	.word	70                      # 0x46
	.word	21                      # 0x15
	.word	90                      # 0x5a
	.word	77                      # 0x4d
	.word	89                      # 0x59
	.word	58                      # 0x3a
	.word	0                       # 0x0
	.word	86                      # 0x56
	.word	28                      # 0x1c
	.word	87                      # 0x57
	.word	42                      # 0x2a
	.word	39                      # 0x27
	.word	10                      # 0xa
	.word	25                      # 0x19
	.word	56                      # 0x38
	.word	98                      # 0x62
	.word	75                      # 0x4b
	.word	89                      # 0x59
	.word	2                       # 0x2
	.word	7                       # 0x7
	.word	49                      # 0x31
	.word	98                      # 0x62
	.word	59                      # 0x3b
	.word	98                      # 0x62
	.word	24                      # 0x18
	.word	76                      # 0x4c
	.word	15                      # 0xf
	.word	86                      # 0x56
	.word	48                      # 0x30
	.word	59                      # 0x3b
	.word	18                      # 0x12
	.word	17                      # 0x11
	.word	81                      # 0x51
	.word	75                      # 0x4b
	.word	61                      # 0x3d
	.word	69                      # 0x45
	.word	99                      # 0x63
	.word	61                      # 0x3d
	.word	20                      # 0x14
	.word	27                      # 0x1b
	.word	13                      # 0xd
	.word	62                      # 0x3e
	.word	32                      # 0x20
	.word	90                      # 0x5a
	.word	53                      # 0x35
	.word	88                      # 0x58
	.word	87                      # 0x57
	.word	95                      # 0x5f
	.word	42                      # 0x2a
	.word	89                      # 0x59
	.word	1                       # 0x1
	.word	58                      # 0x3a
	.word	53                      # 0x35
	.word	60                      # 0x3c
	.word	55                      # 0x37
	.word	43                      # 0x2b
	.word	1                       # 0x1
	.word	70                      # 0x46
	.word	28                      # 0x1c
	.word	49                      # 0x31
	.word	29                      # 0x1d
	.word	12                      # 0xc
	.word	33                      # 0x21
	.word	76                      # 0x4c
	.word	53                      # 0x35
	.word	60                      # 0x3c
	.word	10                      # 0xa
	.word	52                      # 0x34
	.word	87                      # 0x57
	.word	98                      # 0x62
	.word	45                      # 0x2d
	.word	100                     # 0x64
	.word	25                      # 0x19
	.word	43                      # 0x2b
	.word	89                      # 0x59
	.word	79                      # 0x4f
	.word	97                      # 0x61
	.word	41                      # 0x29
	.word	73                      # 0x49
	.word	4                       # 0x4
	.word	96                      # 0x60
	.word	40                      # 0x28
	.word	62                      # 0x3e
	.word	48                      # 0x30
	.word	66                      # 0x42
	.word	16                      # 0x10
	.word	91                      # 0x5b
	.word	67                      # 0x43
	.word	53                      # 0x35
	.word	85                      # 0x55
	.word	82                      # 0x52
	.word	48                      # 0x30
	.word	98                      # 0x62
	.word	14                      # 0xe
	.word	90                      # 0x5a
	.word	50                      # 0x32
	.word	74                      # 0x4a
	.word	66                      # 0x42
	.word	68                      # 0x44
	.word	26                      # 0x1a
	.word	63                      # 0x3f
	.word	12                      # 0xc
	.word	25                      # 0x19
	.word	89                      # 0x59
	.word	55                      # 0x37
	.word	80                      # 0x50
	.word	33                      # 0x21
	.word	17                      # 0x11
	.word	20                      # 0x14
	.word	72                      # 0x48
	.word	22                      # 0x16
	.word	83                      # 0x53
	.word	11                      # 0xb
	.word	84                      # 0x54
	.word	30                      # 0x1e
	.word	77                      # 0x4d
	.word	67                      # 0x43
	.word	88                      # 0x58
	.word	9                       # 0x9
	.word	86                      # 0x56
	.word	72                      # 0x48
	.word	91                      # 0x5b
	.word	33                      # 0x21
	.word	35                      # 0x23
	.word	72                      # 0x48
	.word	89                      # 0x59
	.word	86                      # 0x56
	.word	11                      # 0xb
	.word	54                      # 0x36
	.word	53                      # 0x35
	.word	38                      # 0x26
	.word	17                      # 0x11
	.word	32                      # 0x20
	.word	29                      # 0x1d
	.word	72                      # 0x48
	.word	53                      # 0x35
	.word	76                      # 0x4c
	.word	71                      # 0x47
	.word	71                      # 0x47
	.word	62                      # 0x3e
	.word	42                      # 0x2a
	.word	93                      # 0x5d
	.word	44                      # 0x2c
	.word	19                      # 0x13
	.word	76                      # 0x4c
	.word	41                      # 0x29
	.word	62                      # 0x3e
	.word	42                      # 0x2a
	.word	28                      # 0x1c
	.word	71                      # 0x47
	.word	27                      # 0x1b
	.word	66                      # 0x42
	.word	27                      # 0x1b
	.word	26                      # 0x1a
	.word	1                       # 0x1
	.word	99                      # 0x63
	.word	14                      # 0xe
	.word	87                      # 0x57
	.word	10                      # 0xa
	.word	35                      # 0x23
	.word	5                       # 0x5
	.word	14                      # 0xe
	.word	52                      # 0x34
	.word	37                      # 0x25
	.word	43                      # 0x2b
	.word	90                      # 0x5a
	.word	91                      # 0x5b
	.word	18                      # 0x12
	.word	60                      # 0x3c
	.word	27                      # 0x1b
	.word	81                      # 0x51
	.word	68                      # 0x44
	.word	19                      # 0x13
	.word	24                      # 0x18
	.word	87                      # 0x57
	.word	95                      # 0x5f
	.word	31                      # 0x1f
	.word	48                      # 0x30
	.word	3                       # 0x3
	.word	59                      # 0x3b
	.word	18                      # 0x12
	.word	97                      # 0x61
	.word	92                      # 0x5c
	.word	11                      # 0xb
	.word	90                      # 0x5a
	.word	93                      # 0x5d
	.word	10                      # 0xa
	.word	70                      # 0x46
	.word	45                      # 0x2d
	.word	20                      # 0x14
	.word	4                       # 0x4
	.word	16                      # 0x10
	.word	34                      # 0x22
	.word	22                      # 0x16
	.word	54                      # 0x36
	.word	43                      # 0x2b
	.word	11                      # 0xb
	.word	10                      # 0xa
	.word	62                      # 0x3e
	.word	37                      # 0x25
	.word	37                      # 0x25
	.word	8                       # 0x8
	.word	4                       # 0x4
	.word	22                      # 0x16
	.word	99                      # 0x63
	.word	57                      # 0x39
	.word	83                      # 0x53
	.word	30                      # 0x1e
	.word	4                       # 0x4
	.word	86                      # 0x56
	.word	55                      # 0x37
	.word	89                      # 0x59
	.word	49                      # 0x31
	.word	46                      # 0x2e
	.word	0                       # 0x0
	.word	38                      # 0x26
	.word	38                      # 0x26
	.word	77                      # 0x4d
	.word	74                      # 0x4a
	.word	49                      # 0x31
	.word	97                      # 0x61
	.word	79                      # 0x4f
	.word	66                      # 0x42
	.word	97                      # 0x61
	.word	0                       # 0x0
	.word	86                      # 0x56
	.word	5                       # 0x5
	.word	79                      # 0x4f
	.word	62                      # 0x3e
	.word	33                      # 0x21
	.word	15                      # 0xf
	.word	65                      # 0x41
	.word	41                      # 0x29
	.word	87                      # 0x57
	.word	87                      # 0x57
	.word	6                       # 0x6
	.word	9                       # 0x9
	.word	35                      # 0x23
	.word	2                       # 0x2
	.word	14                      # 0xe
	.word	21                      # 0x15
	.word	57                      # 0x39
	.word	69                      # 0x45
	.word	36                      # 0x24
	.word	3                       # 0x3
	.word	35                      # 0x23
	.word	40                      # 0x28
	.word	7                       # 0x7
	.word	11                      # 0xb
	.word	13                      # 0xd
	.word	23                      # 0x17
	.word	74                      # 0x4a
	.word	92                      # 0x5c
	.word	55                      # 0x37
	.word	36                      # 0x24
	.word	93                      # 0x5d
	.word	40                      # 0x28
	.word	42                      # 0x2a
	.word	37                      # 0x25
	.word	68                      # 0x44
	.word	75                      # 0x4b
	.word	18                      # 0x12
	.word	32                      # 0x20
	.word	83                      # 0x53
	.word	71                      # 0x47
	.word	85                      # 0x55
	.word	89                      # 0x59
	.word	81                      # 0x51
	.word	19                      # 0x13
	.word	91                      # 0x5b
	.word	61                      # 0x3d
	.word	6                       # 0x6
	.word	13                      # 0xd
	.word	29                      # 0x1d
	.word	8                       # 0x8
	.word	16                      # 0x10
	.word	65                      # 0x41
	.word	48                      # 0x30
	.word	91                      # 0x5b
	.word	76                      # 0x4c
	.word	62                      # 0x3e
	.word	80                      # 0x50
	.word	16                      # 0x10
	.word	19                      # 0x13
	.word	34                      # 0x22
	.word	52                      # 0x34
	.word	78                      # 0x4e
	.word	74                      # 0x4a
	.word	94                      # 0x5e
	.word	14                      # 0xe
	.word	7                       # 0x7
	.word	69                      # 0x45
	.word	33                      # 0x21
	.word	5                       # 0x5
	.word	17                      # 0x11
	.word	3                       # 0x3
	.word	56                      # 0x38
	.word	5                       # 0x5
	.word	84                      # 0x54
	.word	41                      # 0x29
	.word	62                      # 0x3e
	.word	44                      # 0x2c
	.word	48                      # 0x30
	.word	75                      # 0x4b
	.word	40                      # 0x28
	.word	56                      # 0x38
	.word	58                      # 0x3a
	.word	71                      # 0x47
	.word	71                      # 0x47
	.word	14                      # 0xe
	.word	12                      # 0xc
	.word	99                      # 0x63
	.word	94                      # 0x5e
	.word	28                      # 0x1c
	.word	17                      # 0x11
	.word	27                      # 0x1b
	.word	81                      # 0x51
	.word	96                      # 0x60
	.word	67                      # 0x43
	.word	74                      # 0x4a
	.word	76                      # 0x4c
	.word	74                      # 0x4a
	.word	8                       # 0x8
	.word	75                      # 0x4b
	.word	45                      # 0x2d
	.word	25                      # 0x19
	.word	79                      # 0x4f
	.word	0                       # 0x0
	.word	97                      # 0x61
	.word	28                      # 0x1c
	.word	41                      # 0x29
	.word	58                      # 0x3a
	.word	39                      # 0x27
	.word	55                      # 0x37
	.word	100                     # 0x64
	.word	45                      # 0x2d
	.word	11                      # 0xb
	.word	23                      # 0x17
	.word	15                      # 0xf
	.word	48                      # 0x30
	.word	37                      # 0x25
	.word	27                      # 0x1b
	.word	46                      # 0x2e
	.word	97                      # 0x61
	.word	56                      # 0x38
	.word	63                      # 0x3f
	.word	90                      # 0x5a
	.word	36                      # 0x24
	.word	24                      # 0x18
	.word	56                      # 0x38
	.word	76                      # 0x4c
	.word	0                       # 0x0
	.word	96                      # 0x60
	.word	85                      # 0x55
	.word	41                      # 0x29
	.word	40                      # 0x28
	.word	9                       # 0x9
	.word	19                      # 0x13
	.word	6                       # 0x6
	.word	6                       # 0x6
	.word	14                      # 0xe
	.word	47                      # 0x2f
	.word	30                      # 0x1e
	.word	19                      # 0x13
	.word	2                       # 0x2
	.word	96                      # 0x60
	.word	64                      # 0x40
	.word	80                      # 0x50
	.word	18                      # 0x12
	.word	45                      # 0x2d
	.word	27                      # 0x1b
	.word	21                      # 0x15
	.word	72                      # 0x48
	.word	39                      # 0x27
	.word	17                      # 0x11
	.word	94                      # 0x5e
	.word	1                       # 0x1
	.word	6                       # 0x6
	.word	96                      # 0x60
	.word	93                      # 0x5d
	.word	28                      # 0x1c
	.word	72                      # 0x48
	.word	59                      # 0x3b
	.word	90                      # 0x5a
	.word	56                      # 0x38
	.word	100                     # 0x64
	.word	96                      # 0x60
	.word	31                      # 0x1f
	.word	86                      # 0x56
	.word	1                       # 0x1
	.word	3                       # 0x3
	.word	66                      # 0x42
	.word	15                      # 0xf
	.word	0                       # 0x0
	.word	85                      # 0x55
	.word	17                      # 0x11
	.word	96                      # 0x60
	.word	14                      # 0xe
	.word	63                      # 0x3f
	.word	81                      # 0x51
	.word	59                      # 0x3b
	.word	90                      # 0x5a
	.word	1                       # 0x1
	.word	97                      # 0x61
	.word	28                      # 0x1c
	.word	19                      # 0x13
	.word	57                      # 0x39
	.word	96                      # 0x60
	.word	92                      # 0x5c
	.word	52                      # 0x34
	.word	54                      # 0x36
	.word	87                      # 0x57
	.word	23                      # 0x17
	.word	12                      # 0xc
	.word	76                      # 0x4c
	.word	45                      # 0x2d
	.word	79                      # 0x4f
	.word	72                      # 0x48
	.word	43                      # 0x2b
	.word	64                      # 0x40
	.word	39                      # 0x27
	.word	46                      # 0x2e
	.word	29                      # 0x1d
	.word	54                      # 0x36
	.word	12                      # 0xc
	.word	80                      # 0x50
	.word	37                      # 0x25
	.word	8                       # 0x8
	.word	60                      # 0x3c
	.word	100                     # 0x64
	.word	89                      # 0x59
	.word	85                      # 0x55
	.word	55                      # 0x37
	.word	56                      # 0x38
	.word	47                      # 0x2f
	.word	49                      # 0x31
	.word	75                      # 0x4b
	.word	3                       # 0x3
	.word	45                      # 0x2d
	.word	33                      # 0x21
	.word	56                      # 0x38
	.word	99                      # 0x63
	.word	19                      # 0x13
	.word	45                      # 0x2d
	.word	78                      # 0x4e
	.word	61                      # 0x3d
	.word	91                      # 0x5b
	.word	56                      # 0x38
	.word	99                      # 0x63
	.word	33                      # 0x21
	.word	86                      # 0x56
	.word	4                       # 0x4
	.word	45                      # 0x2d
	.word	81                      # 0x51
	.word	58                      # 0x3a
	.word	58                      # 0x3a
	.word	60                      # 0x3c
	.word	96                      # 0x60
	.word	32                      # 0x20
	.word	19                      # 0x13
	.word	61                      # 0x3d
	.word	87                      # 0x57
	.word	70                      # 0x46
	.word	16                      # 0x10
	.word	42                      # 0x2a
	.word	16                      # 0x10
	.word	65                      # 0x41
	.word	84                      # 0x54
	.word	20                      # 0x14
	.word	76                      # 0x4c
	.word	83                      # 0x53
	.word	42                      # 0x2a
	.word	41                      # 0x29
	.word	68                      # 0x44
	.word	87                      # 0x57
	.word	18                      # 0x12
	.word	28                      # 0x1c
	.word	77                      # 0x4d
	.word	40                      # 0x28
	.word	94                      # 0x5e
	.word	76                      # 0x4c
	.word	25                      # 0x19
	.word	98                      # 0x62
	.word	88                      # 0x58
	.word	5                       # 0x5
	.word	21                      # 0x15
	.word	11                      # 0xb
	.word	31                      # 0x1f
	.word	16                      # 0x10
	.word	43                      # 0x2b
	.word	16                      # 0x10
	.word	44                      # 0x2c
	.word	29                      # 0x1d
	.word	86                      # 0x56
	.word	96                      # 0x60
	.word	75                      # 0x4b
	.word	70                      # 0x46
	.word	50                      # 0x32
	.word	90                      # 0x5a
	.word	49                      # 0x31
	.word	71                      # 0x47
	.word	9                       # 0x9
	.word	90                      # 0x5a
	.word	97                      # 0x61
	.word	79                      # 0x4f
	.word	73                      # 0x49
	.word	66                      # 0x42
	.word	50                      # 0x32
	.word	64                      # 0x40
	.word	83                      # 0x53
	.word	4                       # 0x4
	.word	72                      # 0x48
	.word	27                      # 0x1b
	.word	73                      # 0x49
	.word	39                      # 0x27
	.word	24                      # 0x18
	.word	80                      # 0x50
	.word	32                      # 0x20
	.word	4                       # 0x4
	.word	42                      # 0x2a
	.word	100                     # 0x64
	.word	34                      # 0x22
	.word	60                      # 0x3c
	.word	41                      # 0x29
	.word	43                      # 0x2b
	.word	55                      # 0x37
	.word	82                      # 0x52
	.word	12                      # 0xc
	.word	5                       # 0x5
	.word	71                      # 0x47
	.word	27                      # 0x1b
	.word	42                      # 0x2a
	.word	46                      # 0x2e
	.word	16                      # 0x10
	.word	38                      # 0x26
	.word	24                      # 0x18
	.word	89                      # 0x59
	.word	3                       # 0x3
	.word	41                      # 0x29
	.word	19                      # 0x13
	.word	52                      # 0x34
	.word	11                      # 0xb
	.word	57                      # 0x39
	.word	46                      # 0x2e
	.word	84                      # 0x54
	.word	96                      # 0x60
	.word	36                      # 0x24
	.word	29                      # 0x1d
	.word	27                      # 0x1b
	.word	40                      # 0x28
	.word	72                      # 0x48
	.word	94                      # 0x5e
	.word	40                      # 0x28
	.word	98                      # 0x62
	.word	0                       # 0x0
	.word	83                      # 0x53
	.word	18                      # 0x12
	.word	83                      # 0x53
	.word	95                      # 0x5f
	.word	90                      # 0x5a
	.word	53                      # 0x35
	.word	88                      # 0x58
	.word	31                      # 0x1f
	.word	66                      # 0x42
	.word	71                      # 0x47
	.word	69                      # 0x45
	.word	56                      # 0x38
	.word	59                      # 0x3b
	.word	38                      # 0x26
	.word	97                      # 0x61
	.word	44                      # 0x2c
	.word	57                      # 0x39
	.word	7                       # 0x7
	.word	1                       # 0x1
	.word	2                       # 0x2
	.word	57                      # 0x39
	.word	97                      # 0x61
	.word	4                       # 0x4
	.word	87                      # 0x57
	.word	91                      # 0x5b
	.word	10                      # 0xa
	.word	24                      # 0x18
	.word	84                      # 0x54
	.word	51                      # 0x33
	.word	21                      # 0x15
	.word	84                      # 0x54
	.word	33                      # 0x21
	.word	39                      # 0x27
	.word	66                      # 0x42
	.word	95                      # 0x5f
	.word	96                      # 0x60
	.word	86                      # 0x56
	.word	82                      # 0x52
	.word	26                      # 0x1a
	.word	51                      # 0x33
	.word	52                      # 0x34
	.word	96                      # 0x60
	.word	73                      # 0x49
	.word	78                      # 0x4e
	.word	33                      # 0x21
	.word	70                      # 0x46
	.word	21                      # 0x15
	.word	90                      # 0x5a
	.word	77                      # 0x4d
	.word	89                      # 0x59
	.word	58                      # 0x3a
	.word	0                       # 0x0
	.word	86                      # 0x56
	.word	28                      # 0x1c
	.word	87                      # 0x57
	.word	42                      # 0x2a
	.word	39                      # 0x27
	.word	10                      # 0xa
	.word	25                      # 0x19
	.word	56                      # 0x38
	.word	98                      # 0x62
	.word	75                      # 0x4b
	.word	89                      # 0x59
	.word	2                       # 0x2
	.word	7                       # 0x7
	.word	49                      # 0x31
	.word	98                      # 0x62
	.word	59                      # 0x3b
	.word	98                      # 0x62
	.word	24                      # 0x18
	.word	76                      # 0x4c
	.word	15                      # 0xf
	.word	86                      # 0x56
	.word	48                      # 0x30
	.word	59                      # 0x3b
	.word	18                      # 0x12
	.word	17                      # 0x11
	.word	81                      # 0x51
	.word	75                      # 0x4b
	.word	61                      # 0x3d
	.word	69                      # 0x45
	.word	99                      # 0x63
	.word	61                      # 0x3d
	.word	20                      # 0x14
	.word	27                      # 0x1b
	.word	13                      # 0xd
	.word	62                      # 0x3e
	.word	32                      # 0x20
	.word	90                      # 0x5a
	.word	53                      # 0x35
	.word	88                      # 0x58
	.word	87                      # 0x57
	.word	95                      # 0x5f
	.word	42                      # 0x2a
	.word	89                      # 0x59
	.word	1                       # 0x1
	.word	58                      # 0x3a
	.word	53                      # 0x35
	.word	60                      # 0x3c
	.word	55                      # 0x37
	.word	43                      # 0x2b
	.word	1                       # 0x1
	.word	70                      # 0x46
	.word	28                      # 0x1c
	.word	49                      # 0x31
	.word	29                      # 0x1d
	.word	12                      # 0xc
	.word	33                      # 0x21
	.word	76                      # 0x4c
	.word	53                      # 0x35
	.word	60                      # 0x3c
	.word	10                      # 0xa
	.word	52                      # 0x34
	.word	87                      # 0x57
	.word	98                      # 0x62
	.word	45                      # 0x2d
	.word	100                     # 0x64
	.word	25                      # 0x19
	.word	43                      # 0x2b
	.word	89                      # 0x59
	.word	79                      # 0x4f
	.word	97                      # 0x61
	.word	41                      # 0x29
	.word	73                      # 0x49
	.word	4                       # 0x4
	.word	96                      # 0x60
	.word	40                      # 0x28
	.word	62                      # 0x3e
	.word	48                      # 0x30
	.word	66                      # 0x42
	.word	16                      # 0x10
	.word	91                      # 0x5b
	.word	67                      # 0x43
	.word	53                      # 0x35
	.word	85                      # 0x55
	.word	82                      # 0x52
	.word	48                      # 0x30
	.word	98                      # 0x62
	.word	14                      # 0xe
	.word	90                      # 0x5a
	.word	50                      # 0x32
	.word	74                      # 0x4a
	.word	66                      # 0x42
	.word	68                      # 0x44
	.word	26                      # 0x1a
	.word	63                      # 0x3f
	.word	12                      # 0xc
	.word	25                      # 0x19
	.word	89                      # 0x59
	.word	55                      # 0x37
	.word	80                      # 0x50
	.word	33                      # 0x21
	.word	17                      # 0x11
	.word	20                      # 0x14
	.word	72                      # 0x48
	.word	22                      # 0x16
	.word	83                      # 0x53
	.word	11                      # 0xb
	.word	84                      # 0x54
	.word	30                      # 0x1e
	.word	77                      # 0x4d
	.word	67                      # 0x43
	.word	88                      # 0x58
	.word	9                       # 0x9
	.word	86                      # 0x56
	.word	72                      # 0x48
	.word	91                      # 0x5b
	.word	33                      # 0x21
	.word	35                      # 0x23
	.word	72                      # 0x48
	.word	89                      # 0x59
	.word	86                      # 0x56
	.word	11                      # 0xb
	.word	54                      # 0x36
	.word	53                      # 0x35
	.word	38                      # 0x26
	.word	17                      # 0x11
	.word	32                      # 0x20
	.word	29                      # 0x1d
	.word	72                      # 0x48
	.word	53                      # 0x35
	.word	76                      # 0x4c
	.word	71                      # 0x47
	.word	71                      # 0x47
	.word	62                      # 0x3e
	.word	42                      # 0x2a
	.word	93                      # 0x5d
	.word	44                      # 0x2c
	.word	19                      # 0x13
	.word	76                      # 0x4c
	.word	41                      # 0x29
	.word	62                      # 0x3e
	.word	42                      # 0x2a
	.word	28                      # 0x1c
	.word	71                      # 0x47
	.word	27                      # 0x1b
	.word	66                      # 0x42
	.word	27                      # 0x1b
	.word	26                      # 0x1a
	.word	1                       # 0x1
	.word	99                      # 0x63
	.word	14                      # 0xe
	.word	87                      # 0x57
	.word	10                      # 0xa
	.word	35                      # 0x23
	.word	5                       # 0x5
	.word	14                      # 0xe
	.word	52                      # 0x34
	.word	37                      # 0x25
	.word	43                      # 0x2b
	.word	90                      # 0x5a
	.word	91                      # 0x5b
	.word	18                      # 0x12
	.word	60                      # 0x3c
	.word	27                      # 0x1b
	.word	81                      # 0x51
	.word	68                      # 0x44
	.word	19                      # 0x13
	.word	24                      # 0x18
	.word	87                      # 0x57
	.word	95                      # 0x5f
	.word	31                      # 0x1f
	.word	48                      # 0x30
	.word	3                       # 0x3
	.word	59                      # 0x3b
	.word	18                      # 0x12
	.word	97                      # 0x61
	.word	92                      # 0x5c
	.word	11                      # 0xb
	.word	90                      # 0x5a
	.word	93                      # 0x5d
	.word	10                      # 0xa
	.word	70                      # 0x46
	.word	45                      # 0x2d
	.word	20                      # 0x14
	.word	4                       # 0x4
	.word	16                      # 0x10
	.word	34                      # 0x22
	.word	22                      # 0x16
	.word	17                      # 0x11
	.word	3                       # 0x3
	.word	56                      # 0x38
	.word	5                       # 0x5
	.word	84                      # 0x54
	.word	41                      # 0x29
	.word	62                      # 0x3e
	.word	44                      # 0x2c
	.word	48                      # 0x30
	.word	75                      # 0x4b
	.word	40                      # 0x28
	.word	56                      # 0x38
	.word	58                      # 0x3a
	.word	71                      # 0x47
	.word	71                      # 0x47
	.word	14                      # 0xe
	.word	12                      # 0xc
	.word	99                      # 0x63
	.word	94                      # 0x5e
	.word	28                      # 0x1c
	.word	17                      # 0x11
	.word	27                      # 0x1b
	.word	81                      # 0x51
	.word	96                      # 0x60
	.word	67                      # 0x43
	.word	74                      # 0x4a
	.word	76                      # 0x4c
	.word	74                      # 0x4a
	.word	8                       # 0x8
	.word	75                      # 0x4b
	.word	45                      # 0x2d
	.word	25                      # 0x19
	.word	79                      # 0x4f
	.word	0                       # 0x0
	.word	97                      # 0x61
	.word	28                      # 0x1c
	.word	41                      # 0x29
	.word	58                      # 0x3a
	.word	39                      # 0x27
	.word	55                      # 0x37
	.word	100                     # 0x64
	.word	45                      # 0x2d
	.word	11                      # 0xb
	.word	23                      # 0x17
	.word	15                      # 0xf
	.word	48                      # 0x30
	.word	37                      # 0x25
	.word	27                      # 0x1b
	.word	46                      # 0x2e
	.word	97                      # 0x61
	.word	56                      # 0x38
	.word	63                      # 0x3f
	.word	90                      # 0x5a
	.word	36                      # 0x24
	.word	24                      # 0x18
	.word	56                      # 0x38
	.word	76                      # 0x4c
	.word	0                       # 0x0
	.word	96                      # 0x60
	.word	85                      # 0x55
	.word	41                      # 0x29
	.word	40                      # 0x28
	.word	9                       # 0x9
	.word	19                      # 0x13
	.word	6                       # 0x6
	.word	6                       # 0x6
	.word	14                      # 0xe
	.word	47                      # 0x2f
	.word	30                      # 0x1e
	.word	19                      # 0x13
	.word	2                       # 0x2
	.word	96                      # 0x60
	.word	64                      # 0x40
	.word	80                      # 0x50
	.word	18                      # 0x12
	.word	45                      # 0x2d
	.word	27                      # 0x1b
	.word	21                      # 0x15
	.word	72                      # 0x48
	.word	39                      # 0x27
	.word	17                      # 0x11
	.word	94                      # 0x5e
	.word	1                       # 0x1
	.word	6                       # 0x6
	.word	96                      # 0x60
	.word	93                      # 0x5d
	.word	28                      # 0x1c
	.word	72                      # 0x48
	.word	59                      # 0x3b
	.word	90                      # 0x5a
	.word	56                      # 0x38
	.word	100                     # 0x64
	.word	96                      # 0x60
	.word	31                      # 0x1f
	.word	86                      # 0x56
	.word	1                       # 0x1
	.word	3                       # 0x3
	.word	66                      # 0x42
	.word	15                      # 0xf
	.word	0                       # 0x0
	.size	.Lmain.graph, 40000

	.type	time_begin,@object      # @time_begin
	.section	.sbss,"aw",@nobits
	.p2align	3
time_begin:
	.quad	0                       # double 0
	.size	time_begin, 8

	.type	.L.str3,@object         # @.str3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str3:
	.asciz	"accept_time.txt"
	.size	.L.str3, 16

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	"w"
	.size	.L.str14, 2

	.type	.L.str25,@object        # @.str25
.L.str25:
	.asciz	"%f\n"
	.size	.L.str25, 4

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"Vertex \t\t Distance from Source"
	.size	.Lstr, 31

	.section	".note.GNU-stack","",@progbits
