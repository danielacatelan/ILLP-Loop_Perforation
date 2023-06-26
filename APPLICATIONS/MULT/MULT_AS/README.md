###########################################################
MULTIPLICAÇÃO DE MATRIZES 100X100
 GRAU DE PERFURAÇÃO = 1,2,4,8
 PERFURAÇÃO NO LOOP = 124
###########################################################
export PATH=$PATH:/opt/riscv/bin

cd accept/APPS_Loop/MULT_AS

========================
PASSO A PASSO - GCC
========================
gcc -c mult.c -o mult_gcc.o

gcc mult_gcc.o -o mult_gcc

./mult_gcc

========================
PASSO A PASSO - SPIKE EXATO
========================
riscv32-unknown-elf-gcc mult.c -O1 -march=rv32im -o /home/dennard/accept/APPS_Loop/MULT_AS/OBJ/mult_S_EX -lm

time spike --isa=RV32I /opt/riscv/riscv32-unknown-elf/bin/pk /home/dennard/accept/APPS_Loop/MULT_AS/OBJ/mult_S_EX

========================
PASSO A PASSO - ACCEPT-SPIKE
========================
make build_orig OPTARGS="-all-lpe"

make build_opt

/usr/lib/llvm-10/bin/llc  -O2  -march=riscv32 -filetype=asm app.opt.bc -o /home/dennard/accept/APPS_Loop/MULT_AS/RISCV/mult_AS_8.s

riscv32-unknown-elf-gcc /home/dennard/accept/APPS_Loop/MULT_AS/RISCV/mult_AS_8.s -O1 -march=rv32im -o /home/dennard/accept/APPS_Loop/MULT_AS/OBJ/mult_AS_8 -lm

time spike --isa=RV32I /opt/riscv/riscv32-unknown-elf/bin/pk /home/dennard/accept/APPS_Loop/MULT_AS/OBJ/mult_AS_8

========================
PASSO A PASSO - ACCEPT
========================
export PATH=$PATH:/opt/riscv/bin

cd accept/APPS_Loop/Loop_A_S

make build_orig OPTARGS="-all-lpe"

make build_opt

time ./app.opt
========================
PASSO A PASSO - SPIKE ADDX
=====================
cd accept/APPS_Loop/MULT_ADDX

riscv32-unknown-elf-gcc mult.c -O1 -march=rv32im -o mult_addx_8 -lm

time spike --isa=RV32I /opt/riscv/riscv32-unknown-elf/bin/pk mult_addx_8


#######################################################
#######################################################
Contar Numero de Instruções -> wl -l
#######################################################

spike -l --isa=rv32i /opt/riscv/riscv32-unknown-elf/bin/pk /home/dani/accept/APPS_LOOP/MULT_ADDX/mult_addx_1 2>&1 | less > /home/dani/accept/APPS_LOOP/MULT_ADDX/mult_addx_1.txt
  
wc -l mult_addx_1

