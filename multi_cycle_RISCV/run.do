vlib work
catch {file delete -force ./transcript}

vlib work
vlog   -sv adder.sv mux2.sv mux3.sv controller.sv datapath.sv data_instr_mem.sv extend.sv flopenr.sv flopr.sv maindec.sv riscv_multi_cycle.sv top.sv testbench.sv aludec.sv regfile.sv alu.sv  intr_decoder.sv flop_instr.sv flopr_Adata.sv flopr_ALU_result.sv mux3_choose_SRA.sv mux3_choose_SRB.sv  mux3_result_SRC.sv 
vsim -voptargs=+acc -t 1ps  work.testbench
# Wait for initialization
do wave.do
run 10ps

# Find and log signals related to 'datapath'
WaveRestoreCursors {{addi x2, x0, 5} {60 ps} 1} {{addi x3, x0, 12} {100 ps} 1} {{addi x7, x3, -9} {140 ps} 1} {{or x4, x7, x3} {180 ps} 1} {{and x5, x3, x4} {220 ps} 1} {{add x5, x5, x4} {260 ps} 1} {{beq x5, x7, end} {300 ps} 1} {{slt x4, x3, x4} {330 ps} 1} {{beq x4, x0, around} {360 ps} 1} {{ slt x4, x3, x2} {400 ps} 1} {{add x7, x4, x5} {441 ps} 1} {{sub x7, x7, x2} {480 ps} 1} {{sw x7, 84(x3)} {520 ps} 1} {{lw x2, 96(x0)} {570 ps} 1} {{add x9, x2, x5} {610 ps} 1} {{jal x3, end} {650 ps} 1}

run 100ns
