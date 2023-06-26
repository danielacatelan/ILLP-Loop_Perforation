#!/bin/bash

make build_opt

/usr/lib/llvm-10/bin/llc  -O2  -march=riscv32 -filetype=asm app.opt.bc -o /home/dennard/accept/APPS_Loop/FIB_1/FIB_AS/RISCV/FIB_AS8.s

riscv32-unknown-elf-gcc /home/dennard/accept/APPS_Loop/FIB_1/FIB_AS/RISCV/FIB_AS8.s -O1 -march=rv32im -o /home/dennard/accept/APPS_Loop/FIB_1/FIB_AS/OBJ/FIB_AS8 -lm 

spike --isa=RV32I /opt/riscv/riscv32-unknown-elf/bin/pk /home/dennard/accept/APPS_Loop/FIB_1/FIB_AS/OBJ/FIB_AS8
