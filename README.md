# ILLP-Loop_Perforation
> Instruction Level Loop Perforation (ILLP)

## Description:
  > The use of approximate computing (AC) has drawn the attention of software and processor designers by offering techniques ranging from the application level to the circuit level. AC techniques offer application acceleration, energy savings, and a reduced memory footprint at the cost of inaccurate results. A widely used AC technique is loop perforation (LP), which aims to reduce computational work by skipping loop iterations. This paper presents an Instruction-Level Loop Perforation (ILLP) approach that relies on approximate hardware instructions. The procedure addresses the trade-off between accuracy and physical efficiency when using the loop perforation technique with a rough increment. We have extended the ACCEPT compiler and SPIKE simulator workflows to generate and simulate applications with ILLP. From a set of thirteen general-purpose applications, we evaluated the technique by comparing the results of accuracy, number of instructions, number of cycles, and energy consumption, with a baseline code (no approximations in the code) and the loop perforation from the ACCEPT compiler. We adopted Prof5, a RISC-V profiler tool, to collect application performance information. Our technique, ILLP, achieves a 74.61% reduction in the number of instructions for the PI application, a 51.40% reduction in the number of cycles for the FFT application, and 74.49% energy savings for the PI application. Compared to the ACCEPT technique, our technique achieved a runtime cycle improvement of up to 46.67%.

## Funcionalidade
> O ILLP é uma instrução aproximada em hardware (addx) utilizada para realização do incremento de um loop. Após a escolha do loop (somente FOR) a ser perfurado e do grau de perfuração desejado, a instrução aproximada addx realizará o incremento, baseando-se no grau de perfuração escolhido e na configuração do somador (que foi projeto na instrução addx). A instrução aproximada addx, utiliza o somador InXA1, cuja saída S é: **S = A xor B xor CIN** e a saída COUT é: **COUT = CIN**.

## Ferramentas
> Para a utilização da instrução aproximada é preciso ter as ferramentas abaixo, devidamente instaladas.

1. **RISC-V Toolchain**
   - Disponível em: [RISC-V Toolchain](https://github.com/riscv-collab/riscv-gnu-toolchain).
   - Nas pasta TOOLS há um passo a passo, *Instalar_RISCV_Toolchain* para auxiliar nesse procedimento.
      - OBS: procedimentos utilizados por mim para a instalação, baseando-me no repositório original.
     
2. **ACCEPT**
   - Disponível em: [ACCEPT](https://github.com/uwsampa/accept).
   - Nas pasta TOOLS há um passo a passo, *Install_ACCEPT* para auxiliar nesse procedimento.
      - OBS: procedimentos utilizados por mim para a instalação, baseando-me no repositório original.
        
3. **SPIKE**
   - Disponível em: [SPIKE](https://github.com/riscv-software-src/riscv-isa-sim).
   - Nas pasta TOOLS há um passo a passo, *Instalar_SPIKE* para auxiliar nesse procedimento.
      - OBS: procedimentos utilizados por mim para a instalação, baseando-me no repositório original.
       
4. **Instrução Aproximada**
   - Após a instalação das ferramentas, é preciso adicionar a instrução aproximada.
   - Na pasta TOOLS, há um passo a passo de como realizar a adição da instrução aproximada.
      - Arquivo: *Instalar_New_Instruction*
         - Será preciso adicionar a instrução aproximada no RISC-V Toolchain e no SPIKE.

## Inicialização

## Implementações Futuras

## Contact
Daniela Luiza Catelan
daniela.catelan@ufms.br
