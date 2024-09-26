onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TB /testbench/clk
add wave -noupdate -group TB /testbench/reset
add wave -noupdate -group TB /testbench/WriteData
add wave -noupdate -group TB /testbench/DataAdr
add wave -noupdate -group TB /testbench/MemWrite
add wave -noupdate -group DUT /testbench/dut/clk
add wave -noupdate -group DUT /testbench/dut/reset
add wave -noupdate -group DUT /testbench/dut/WriteData
add wave -noupdate -group DUT /testbench/dut/DataAdr
add wave -noupdate -group DUT /testbench/dut/MemWrite
add wave -noupdate -group DUT /testbench/dut/PC
add wave -noupdate -group DUT /testbench/dut/Instr
add wave -noupdate -group DUT /testbench/dut/ReadData
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/clk
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/rst
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/PC
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/MemWrite
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/ALUResult
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/WriteData
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/ReadData
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/ALUSrc
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/RegWrite
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/Zero
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/AdrSrc
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/IRWrite
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/ResultSrc
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/ImmSrc
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/ALUControl
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/ALUSrcA
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/ALUSrcB
add wave -noupdate -group risc_mult_cycle /testbench/dut/riscv_multi_cycle/PCSrc
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/clk
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/rst
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/op
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/funct3
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/funct7b5
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/Zero
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/ResultSrc
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/MemWrite
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/PCSrc
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/ALUSrc
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/RegWrite
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/ImmSrc
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/ALUSrcA
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/ALUSrcB
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/ALUControl
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/AdrSrc
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/IRWrite
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/ALUOp
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/Branch
add wave -noupdate -group C /testbench/dut/riscv_multi_cycle/c/PCUpdate
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/clk
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/reset
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/op
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/branch
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/PCupdate
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/RegWrite
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/MemWrite
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/IRWrite
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/ResultSrc
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/ALUSrcB
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/ALUSrcA
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/AdrSrc
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/ALUop
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/controls
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/IRWrite
add wave -noupdate -expand -group main_dec -color Yellow /testbench/dut/riscv_multi_cycle/c/md/state
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/nextstate
add wave -noupdate -expand -group main_dec /testbench/dut/riscv_multi_cycle/c/md/y
add wave -noupdate -expand -group {memoria de inst y dato} /testbench/dut/data_instr_mem/clk
add wave -noupdate -expand -group {memoria de inst y dato} /testbench/dut/data_instr_mem/we
add wave -noupdate -expand -group {memoria de inst y dato} /testbench/dut/data_instr_mem/a
add wave -noupdate -expand -group {memoria de inst y dato} /testbench/dut/data_instr_mem/wd
add wave -noupdate -expand -group {memoria de inst y dato} /testbench/dut/data_instr_mem/rd
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/clk
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/reset
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ResultSrc
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/PCSrc
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ALUSrc
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/RegWrite
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ImmSrc
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ALUControl
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/Zero
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/PC
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ALUout
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/WriteData
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ReadData
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ALUSrcA1
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ALUSrcB1
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/AdrSrc
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/IRWrite
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/PCOLD
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ImmExt
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/SrcA
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/SrcB
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/SrcA_from_rf_before
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/SrcA_from_rf_after
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/SrcB_from_extend
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ReadData_instr_after
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ReadData_for_result_mux
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/SrcA_from_rf_prev
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/Result
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/PC_middle
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/WriteData_prev
add wave -noupdate -expand -group DP /testbench/dut/riscv_multi_cycle/dp/ALUResult
add wave -noupdate -expand -group {PC_REG (to Pcmiddle)} /testbench/dut/riscv_multi_cycle/dp/pcreg/clk
add wave -noupdate -expand -group {PC_REG (to Pcmiddle)} /testbench/dut/riscv_multi_cycle/dp/pcreg/reset
add wave -noupdate -expand -group {PC_REG (to Pcmiddle)} /testbench/dut/riscv_multi_cycle/dp/pcreg/en
add wave -noupdate -expand -group {PC_REG (to Pcmiddle)} /testbench/dut/riscv_multi_cycle/dp/pcreg/d
add wave -noupdate -expand -group {PC_REG (to Pcmiddle)} /testbench/dut/riscv_multi_cycle/dp/pcreg/q
add wave -noupdate -group mul_pc_middle /testbench/dut/riscv_multi_cycle/dp/src_data_memory/d0
add wave -noupdate -group mul_pc_middle /testbench/dut/riscv_multi_cycle/dp/src_data_memory/d1
add wave -noupdate -group mul_pc_middle /testbench/dut/riscv_multi_cycle/dp/src_data_memory/s
add wave -noupdate -group mul_pc_middle /testbench/dut/riscv_multi_cycle/dp/src_data_memory/y
add wave -noupdate -group flop_OLD_PC /testbench/dut/riscv_multi_cycle/dp/flop_OLD_PC/clk
add wave -noupdate -group flop_OLD_PC /testbench/dut/riscv_multi_cycle/dp/flop_OLD_PC/reset
add wave -noupdate -group flop_OLD_PC /testbench/dut/riscv_multi_cycle/dp/flop_OLD_PC/en
add wave -noupdate -group flop_OLD_PC /testbench/dut/riscv_multi_cycle/dp/flop_OLD_PC/d
add wave -noupdate -group flop_OLD_PC /testbench/dut/riscv_multi_cycle/dp/flop_OLD_PC/q
add wave -noupdate -expand -group FLOP_inst_PC /testbench/dut/riscv_multi_cycle/dp/flop_instr_PC/clk
add wave -noupdate -expand -group FLOP_inst_PC /testbench/dut/riscv_multi_cycle/dp/flop_instr_PC/reset
add wave -noupdate -expand -group FLOP_inst_PC /testbench/dut/riscv_multi_cycle/dp/flop_instr_PC/en
add wave -noupdate -expand -group FLOP_inst_PC /testbench/dut/riscv_multi_cycle/dp/flop_instr_PC/d
add wave -noupdate -expand -group FLOP_inst_PC /testbench/dut/riscv_multi_cycle/dp/flop_instr_PC/q
add wave -noupdate -color Yellow /testbench/dut/riscv_multi_cycle/c/md/state
add wave -noupdate -expand -group mux_a_choose /testbench/dut/riscv_multi_cycle/dp/mux3_choose_SRA/d0
add wave -noupdate -expand -group mux_a_choose /testbench/dut/riscv_multi_cycle/dp/mux3_choose_SRA/d1
add wave -noupdate -expand -group mux_a_choose /testbench/dut/riscv_multi_cycle/dp/mux3_choose_SRA/d2
add wave -noupdate -expand -group mux_a_choose /testbench/dut/riscv_multi_cycle/dp/mux3_choose_SRA/s
add wave -noupdate -expand -group mux_a_choose /testbench/dut/riscv_multi_cycle/dp/mux3_choose_SRA/y
add wave -noupdate -expand -group FloP_inst_pc /testbench/dut/riscv_multi_cycle/dp/flop_instr_PC/clk
add wave -noupdate -expand -group FloP_inst_pc /testbench/dut/riscv_multi_cycle/dp/flop_instr_PC/reset
add wave -noupdate -expand -group FloP_inst_pc /testbench/dut/riscv_multi_cycle/dp/flop_instr_PC/en
add wave -noupdate -expand -group FloP_inst_pc /testbench/dut/riscv_multi_cycle/dp/flop_instr_PC/d
add wave -noupdate -expand -group FloP_inst_pc /testbench/dut/riscv_multi_cycle/dp/flop_instr_PC/q
add wave -noupdate -expand -group extend /testbench/dut/riscv_multi_cycle/dp/ext/instr
add wave -noupdate -expand -group extend /testbench/dut/riscv_multi_cycle/dp/ext/immsrc
add wave -noupdate -expand -group extend /testbench/dut/riscv_multi_cycle/dp/ext/immext
add wave -noupdate -expand -group mux_b_choose /testbench/dut/riscv_multi_cycle/dp/mux3_choose_SRB/d0
add wave -noupdate -expand -group mux_b_choose /testbench/dut/riscv_multi_cycle/dp/mux3_choose_SRB/d1
add wave -noupdate -expand -group mux_b_choose /testbench/dut/riscv_multi_cycle/dp/mux3_choose_SRB/d2
add wave -noupdate -expand -group mux_b_choose /testbench/dut/riscv_multi_cycle/dp/mux3_choose_SRB/s
add wave -noupdate -expand -group mux_b_choose /testbench/dut/riscv_multi_cycle/dp/mux3_choose_SRB/y
add wave -noupdate -expand -group ALU /testbench/dut/riscv_multi_cycle/dp/alu/SrcA
add wave -noupdate -expand -group ALU /testbench/dut/riscv_multi_cycle/dp/alu/SrcB
add wave -noupdate -expand -group ALU /testbench/dut/riscv_multi_cycle/dp/alu/ALUControl
add wave -noupdate -expand -group ALU /testbench/dut/riscv_multi_cycle/dp/alu/ALUResult
add wave -noupdate -expand -group ALU /testbench/dut/riscv_multi_cycle/dp/alu/Zero
add wave -noupdate -expand -group result_SRC /testbench/dut/riscv_multi_cycle/dp/result_src/d0
add wave -noupdate -expand -group result_SRC /testbench/dut/riscv_multi_cycle/dp/result_src/d1
add wave -noupdate -expand -group result_SRC /testbench/dut/riscv_multi_cycle/dp/result_src/d2
add wave -noupdate -expand -group result_SRC /testbench/dut/riscv_multi_cycle/dp/result_src/s
add wave -noupdate -expand -group result_SRC /testbench/dut/riscv_multi_cycle/dp/result_src/y
add wave -noupdate -expand -group flop_ALU_result /testbench/dut/riscv_multi_cycle/dp/flopr_ALU_result/clk
add wave -noupdate -expand -group flop_ALU_result /testbench/dut/riscv_multi_cycle/dp/flopr_ALU_result/reset
add wave -noupdate -expand -group flop_ALU_result /testbench/dut/riscv_multi_cycle/dp/flopr_ALU_result/d
add wave -noupdate -expand -group flop_ALU_result /testbench/dut/riscv_multi_cycle/dp/flopr_ALU_result/q
add wave -noupdate -expand -group RF /testbench/dut/riscv_multi_cycle/dp/rf/clk
add wave -noupdate -expand -group RF /testbench/dut/riscv_multi_cycle/dp/rf/rf
add wave -noupdate -expand -group RF /testbench/dut/riscv_multi_cycle/dp/rf/wd3
add wave -noupdate -expand -group RF /testbench/dut/riscv_multi_cycle/dp/rf/we3
add wave -noupdate -expand -group RF /testbench/dut/riscv_multi_cycle/dp/rf/a1
add wave -noupdate -expand -group RF /testbench/dut/riscv_multi_cycle/dp/rf/a2
add wave -noupdate -expand -group RF /testbench/dut/riscv_multi_cycle/dp/rf/a3
add wave -noupdate -expand -group RF /testbench/dut/riscv_multi_cycle/dp/rf/rd1
add wave -noupdate -expand -group RF /testbench/dut/riscv_multi_cycle/dp/rf/rd2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{addi x2, x0, 5} {60 ps} 1} {{addi x3, x0, 12} {100 ps} 1}
quietly wave cursor active 2
configure wave -namecolwidth 238
configure wave -valuecolwidth 125
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {205 ps}
