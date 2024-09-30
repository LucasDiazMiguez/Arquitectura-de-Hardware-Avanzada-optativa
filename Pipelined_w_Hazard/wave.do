onerror {resume}
quietly virtual function -install /testbench/dut/riscv_pipelined_cycle/dp/rf -env /testbench/dut/riscv_pipelined_cycle/dp/rf { &{/testbench/dut/riscv_pipelined_cycle/dp/rf/clk, /testbench/dut/riscv_pipelined_cycle/dp/rf/we3, /testbench/dut/riscv_pipelined_cycle/dp/rf/a1, /testbench/dut/riscv_pipelined_cycle/dp/rf/a2, /testbench/dut/riscv_pipelined_cycle/dp/rf/a3, /testbench/dut/riscv_pipelined_cycle/dp/rf/wd3, /testbench/dut/riscv_pipelined_cycle/dp/rf/rd1, /testbench/dut/riscv_pipelined_cycle/dp/rf/rd2, /testbench/dut/riscv_pipelined_cycle/dp/rf/rf }} RF_DP
quietly WaveActivateNextPane {} 0
add wave -noupdate -group DUT /testbench/dut/clk
add wave -noupdate -group DUT /testbench/dut/reset
add wave -noupdate -group DUT /testbench/dut/WriteData
add wave -noupdate -group DUT /testbench/dut/DataAdr
add wave -noupdate -group DUT /testbench/dut/MemWrite
add wave -noupdate -group DUT /testbench/dut/PCF
add wave -noupdate -group DUT /testbench/dut/Instr
add wave -noupdate -group DUT /testbench/dut/ReadData
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/clk
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/reset
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/Instr_F
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/ReadData
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/PCF
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/MemWrite
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/ALUResult_M
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/WriteData_M
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/ALUSrc
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/RegWrite
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/Zero_E
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/mux_rd1_E
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/mux_rd2_E
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/ResultSrc
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/ImmSrc
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/ALUControl
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/Rs2D
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/Rs1D
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/Rdm
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/Instr_D
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/Zero
add wave -noupdate -group RISC_V_pipelined /testbench/dut/riscv_pipelined_cycle/PCSrc
add wave -noupdate -expand -group Dmem -label {RAM from DATA MEM} /testbench/dut/dmem/RAM
add wave -noupdate -expand -group Dmem /testbench/dut/dmem/clk
add wave -noupdate -expand -group Dmem /testbench/dut/dmem/we
add wave -noupdate -expand -group Dmem /testbench/dut/dmem/a
add wave -noupdate -expand -group Dmem /testbench/dut/dmem/wd
add wave -noupdate -expand -group Dmem /testbench/dut/dmem/rd
add wave -noupdate -expand -group IMEM /testbench/dut/imem/a
add wave -noupdate -expand -group IMEM /testbench/dut/imem/rd
add wave -noupdate -divider CONTROLLER
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/clk
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/reset
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/op
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/funct3
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/funct7b5
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/Zero_E
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/RegWrite
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ResultSrc
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/MemWrite
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ALUControl
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ALUSrc
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/PCSrcE
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/state
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/nextstate
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ALUOp
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/RegWrite_D
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/RegWrite_E
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/RegWrite_M
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/RegWrite_W
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ImmSrc_D
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ResultSrc_D
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ResultSrc_E
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ResultSrc_M
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ResultSrc_W
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/MemWrite_D
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/MemWrite_E
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/MemWrite_M
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/MemWrite
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ALUControl_D
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ALUControl_E
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/Branch
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/Branch_D
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/Branch_E
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/Jump_D
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/Jump_E
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/Jump
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/state
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/nextstate
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ALUSrc_D
add wave -noupdate -expand -group Controller /testbench/dut/riscv_pipelined_cycle/c/ALUSrc_E
add wave -noupdate -color {Orange Red} /testbench/dut/riscv_pipelined_cycle/c/ALUSrc
add wave -noupdate -expand -group MAIN_DEC -radix binary /testbench/dut/riscv_pipelined_cycle/c/md/op
add wave -noupdate -expand -group MAIN_DEC /testbench/dut/riscv_pipelined_cycle/c/md/ResultSrc
add wave -noupdate -expand -group MAIN_DEC /testbench/dut/riscv_pipelined_cycle/c/md/MemWrite
add wave -noupdate -expand -group MAIN_DEC /testbench/dut/riscv_pipelined_cycle/c/md/Branch
add wave -noupdate -expand -group MAIN_DEC /testbench/dut/riscv_pipelined_cycle/c/md/ALUSrc
add wave -noupdate -expand -group MAIN_DEC /testbench/dut/riscv_pipelined_cycle/c/md/RegWrite
add wave -noupdate -expand -group MAIN_DEC /testbench/dut/riscv_pipelined_cycle/c/md/Jump
add wave -noupdate -expand -group MAIN_DEC /testbench/dut/riscv_pipelined_cycle/c/md/ImmSrc
add wave -noupdate -expand -group MAIN_DEC /testbench/dut/riscv_pipelined_cycle/c/md/ALUOp
add wave -noupdate -expand -group MAIN_DEC /testbench/dut/riscv_pipelined_cycle/c/md/controls
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/clk
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/RegWrite_D
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/ResultSrc_D
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/MemWrite_D
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/Jump_D
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/Branch_D
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/ALUControl_D
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/ALUSrc_D
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/RegWrite_E
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/ResultSrc_E
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/MemWrite_E
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/Jump_E
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/Branch_E
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/ALUControl_E
add wave -noupdate -expand -group Exe_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/exe_phase/ALUSrc_E
add wave -noupdate -color {Orange Red} /testbench/dut/riscv_pipelined_cycle/c/ALUSrc
add wave -noupdate -expand -group mem_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/mem_phase/clk
add wave -noupdate -expand -group mem_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/mem_phase/RegWrite_E
add wave -noupdate -expand -group mem_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/mem_phase/ResultSrc_E
add wave -noupdate -expand -group mem_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/mem_phase/MemWrite_E
add wave -noupdate -expand -group mem_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/mem_phase/RegWrite_M
add wave -noupdate -expand -group mem_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/mem_phase/ResultSrc_M
add wave -noupdate -expand -group mem_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/mem_phase/MemWrite_M
add wave -noupdate -expand -group write_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/write_phase/clk
add wave -noupdate -expand -group write_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/write_phase/RegWrite_M
add wave -noupdate -expand -group write_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/write_phase/ResultSrc_M
add wave -noupdate -expand -group write_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/write_phase/RegWrite_W
add wave -noupdate -expand -group write_phase_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/write_phase/ResultSrc_W
add wave -noupdate -expand -group AD_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/ad/opb5
add wave -noupdate -expand -group AD_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/ad/funct3
add wave -noupdate -expand -group AD_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/ad/funct7b5
add wave -noupdate -expand -group AD_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/ad/ALUOp
add wave -noupdate -expand -group AD_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/ad/ALUControl
add wave -noupdate -expand -group AD_CONTROLLER /testbench/dut/riscv_pipelined_cycle/c/ad/RtypeSub
add wave -noupdate -label {RAM from DATA MEM} /testbench/dut/dmem/RAM
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/clk
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/reset
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ResultSrc
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCSrc
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ALUSrc
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/RegWrite
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ImmSrc
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ALUControl
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/Instr_F
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/Instr_D
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/WriteDataM
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ReadData
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCF
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ALUResult_M
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/Zero_E
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/RSD1_E
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/RSD2_E
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/RdM
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/RdW
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ForwardAE
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ForwardBE
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCFNext
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCPlus4
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCTarget
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCTargetE
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCD
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCE
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCPlus4_F
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCPlus4_D
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCPlus4_E
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCPlus4_M
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/PCPlus4_W
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/RdE
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/RD1
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/RD1E
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/RD2
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/RD2E
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/SRAE_MUX_RESULT
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/SRBE_MUX_RESULT
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ImmExt_D
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ImmExt_E
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/SrcA_E
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/SrcB
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/SrcB_E
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ALUResult_E
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ALUResult_W
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ResultW
add wave -noupdate -group DATAPATH_DP /testbench/dut/riscv_pipelined_cycle/dp/ReadDataW
add wave -noupdate -divider DATA_PATH
add wave -noupdate -expand /testbench/dut/riscv_pipelined_cycle/dp/rf/rf
add wave -noupdate /testbench/dut/riscv_pipelined_cycle/dp/Instr_F
add wave -noupdate /testbench/dut/riscv_pipelined_cycle/dp/Instr_D
add wave -noupdate -group PC_REG /testbench/dut/riscv_pipelined_cycle/dp/pcreg/clk
add wave -noupdate -group PC_REG /testbench/dut/riscv_pipelined_cycle/dp/pcreg/reset
add wave -noupdate -group PC_REG /testbench/dut/riscv_pipelined_cycle/dp/pcreg/d
add wave -noupdate -group PC_REG /testbench/dut/riscv_pipelined_cycle/dp/pcreg/q
add wave -noupdate -group PC_ADD_4 /testbench/dut/riscv_pipelined_cycle/dp/pcadd4/a
add wave -noupdate -group PC_ADD_4 /testbench/dut/riscv_pipelined_cycle/dp/pcadd4/b
add wave -noupdate -group PC_ADD_4 /testbench/dut/riscv_pipelined_cycle/dp/pcadd4/y
add wave -noupdate -group PC_MUX /testbench/dut/riscv_pipelined_cycle/dp/pcmux/d0
add wave -noupdate -group PC_MUX /testbench/dut/riscv_pipelined_cycle/dp/pcmux/d1
add wave -noupdate -group PC_MUX /testbench/dut/riscv_pipelined_cycle/dp/pcmux/s
add wave -noupdate -group PC_MUX /testbench/dut/riscv_pipelined_cycle/dp/pcmux/y
add wave -noupdate -group PC_ADD_BRANCH /testbench/dut/riscv_pipelined_cycle/dp/pcaddbranch/a
add wave -noupdate -group PC_ADD_BRANCH /testbench/dut/riscv_pipelined_cycle/dp/pcaddbranch/b
add wave -noupdate -group PC_ADD_BRANCH /testbench/dut/riscv_pipelined_cycle/dp/pcaddbranch/y
add wave -noupdate -expand -group DEC_Phase_DP /testbench/dut/riscv_pipelined_cycle/dp/dec_phase/clk
add wave -noupdate -expand -group DEC_Phase_DP /testbench/dut/riscv_pipelined_cycle/dp/dec_phase/InstrF
add wave -noupdate -expand -group DEC_Phase_DP /testbench/dut/riscv_pipelined_cycle/dp/dec_phase/PCF
add wave -noupdate -expand -group DEC_Phase_DP /testbench/dut/riscv_pipelined_cycle/dp/dec_phase/PCPlus4F
add wave -noupdate -expand -group DEC_Phase_DP /testbench/dut/riscv_pipelined_cycle/dp/dec_phase/InstrD
add wave -noupdate -expand -group DEC_Phase_DP /testbench/dut/riscv_pipelined_cycle/dp/dec_phase/PCD
add wave -noupdate -expand -group DEC_Phase_DP /testbench/dut/riscv_pipelined_cycle/dp/dec_phase/PCPlus4D
add wave -noupdate -expand -group RF_DP /testbench/dut/riscv_pipelined_cycle/dp/rf/clk
add wave -noupdate -expand -group RF_DP /testbench/dut/riscv_pipelined_cycle/dp/rf/we3
add wave -noupdate -expand -group RF_DP /testbench/dut/riscv_pipelined_cycle/dp/rf/a1
add wave -noupdate -expand -group RF_DP /testbench/dut/riscv_pipelined_cycle/dp/rf/a2
add wave -noupdate -expand -group RF_DP -radix unsigned /testbench/dut/riscv_pipelined_cycle/dp/rf/a3
add wave -noupdate -expand -group RF_DP /testbench/dut/riscv_pipelined_cycle/dp/rf/wd3
add wave -noupdate -expand -group RF_DP /testbench/dut/riscv_pipelined_cycle/dp/rf/rd1
add wave -noupdate -expand -group RF_DP /testbench/dut/riscv_pipelined_cycle/dp/rf/rd2
add wave -noupdate -expand -group {Extend _DEC} /testbench/dut/riscv_pipelined_cycle/dp/Instr_F
add wave -noupdate -expand -group {Extend _DEC} /testbench/dut/dmem/we
add wave -noupdate -expand -group {Extend _DEC} -radix binary /testbench/dut/riscv_pipelined_cycle/dp/Instr_D
add wave -noupdate -expand -group {Extend _DEC} -radix binary /testbench/dut/riscv_pipelined_cycle/dp/ext/instr
add wave -noupdate -expand -group {Extend _DEC} /testbench/dut/riscv_pipelined_cycle/dp/ext/immsrc
add wave -noupdate -expand -group {Extend _DEC} -color Orchid /testbench/dut/riscv_pipelined_cycle/dp/ext/immext
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/clk
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/reset
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/RD1
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/RD2
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/PCD
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/ImmExt_D
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/PC_Plus4D
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/RdD
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/Rs1D
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/Rs2D
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/RdE
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/RSD1_E
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/RSD2_E
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/RD1E
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/RD2E
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/PCE
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/ImmExt_E
add wave -noupdate -expand -group exe_phase_dp /testbench/dut/riscv_pipelined_cycle/dp/exe_phase/PC_Plus4E
add wave -noupdate -group SrcA_E_MUX /testbench/dut/riscv_pipelined_cycle/dp/SrcA_E_MUX/d0
add wave -noupdate -group SrcA_E_MUX /testbench/dut/riscv_pipelined_cycle/dp/SrcA_E_MUX/d1
add wave -noupdate -group SrcA_E_MUX /testbench/dut/riscv_pipelined_cycle/dp/SrcA_E_MUX/d2
add wave -noupdate -group SrcA_E_MUX /testbench/dut/riscv_pipelined_cycle/dp/SrcA_E_MUX/s
add wave -noupdate -group SrcA_E_MUX /testbench/dut/riscv_pipelined_cycle/dp/SrcA_E_MUX/y
add wave -noupdate -expand -group SRCB_E_HAZ_MUX /testbench/dut/riscv_pipelined_cycle/dp/SrcB_E_MUX/d0
add wave -noupdate -expand -group SRCB_E_HAZ_MUX /testbench/dut/riscv_pipelined_cycle/dp/SrcB_E_MUX/d1
add wave -noupdate -expand -group SRCB_E_HAZ_MUX /testbench/dut/riscv_pipelined_cycle/dp/SrcB_E_MUX/d2
add wave -noupdate -expand -group SRCB_E_HAZ_MUX /testbench/dut/riscv_pipelined_cycle/dp/SrcB_E_MUX/s
add wave -noupdate -expand -group SRCB_E_HAZ_MUX /testbench/dut/riscv_pipelined_cycle/dp/SrcB_E_MUX/y
add wave -noupdate -expand -group SRCB_MUX_DP /testbench/dut/riscv_pipelined_cycle/dp/srcbmux/d0
add wave -noupdate -expand -group SRCB_MUX_DP /testbench/dut/riscv_pipelined_cycle/dp/srcbmux/d1
add wave -noupdate -expand -group SRCB_MUX_DP /testbench/dut/riscv_pipelined_cycle/dp/srcbmux/s
add wave -noupdate -expand -group SRCB_MUX_DP /testbench/dut/riscv_pipelined_cycle/dp/srcbmux/y
add wave -noupdate -expand -group ALU_DP /testbench/dut/riscv_pipelined_cycle/dp/alu/SrcA
add wave -noupdate -expand -group ALU_DP /testbench/dut/riscv_pipelined_cycle/dp/alu/SrcB
add wave -noupdate -expand -group ALU_DP /testbench/dut/riscv_pipelined_cycle/dp/alu/ALUControl
add wave -noupdate -expand -group ALU_DP /testbench/dut/riscv_pipelined_cycle/dp/alu/ALUResult
add wave -noupdate -expand -group ALU_DP /testbench/dut/riscv_pipelined_cycle/dp/alu/Zero
add wave -noupdate -group MEM_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/mem_phase/clk
add wave -noupdate -group MEM_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/mem_phase/ALUResult_E
add wave -noupdate -group MEM_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/mem_phase/RD2E
add wave -noupdate -group MEM_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/mem_phase/RdE
add wave -noupdate -group MEM_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/mem_phase/PC_Plus4E
add wave -noupdate -group MEM_PHASE_DP -color {Orange Red} /testbench/dut/riscv_pipelined_cycle/dp/mem_phase/ALUResult_M
add wave -noupdate -group MEM_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/mem_phase/WriteDataM
add wave -noupdate -group MEM_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/mem_phase/RdM
add wave -noupdate -group MEM_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/mem_phase/PC_Plus4M
add wave -noupdate -group WRITE_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/wri_phase/clk
add wave -noupdate -group WRITE_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/wri_phase/ALUResult_M
add wave -noupdate -group WRITE_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/wri_phase/ReadDataM
add wave -noupdate -group WRITE_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/wri_phase/RdM
add wave -noupdate -group WRITE_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/wri_phase/PC_Plus4M
add wave -noupdate -group WRITE_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/wri_phase/ALUResult_W
add wave -noupdate -group WRITE_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/wri_phase/ReadDataW
add wave -noupdate -group WRITE_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/wri_phase/RdW
add wave -noupdate -group WRITE_PHASE_DP /testbench/dut/riscv_pipelined_cycle/dp/wri_phase/PC_Plus4W
add wave -noupdate -group RESULTMUX_DP /testbench/dut/riscv_pipelined_cycle/dp/resultmux/d0
add wave -noupdate -group RESULTMUX_DP /testbench/dut/riscv_pipelined_cycle/dp/resultmux/d1
add wave -noupdate -group RESULTMUX_DP /testbench/dut/riscv_pipelined_cycle/dp/resultmux/d2
add wave -noupdate -group RESULTMUX_DP /testbench/dut/riscv_pipelined_cycle/dp/resultmux/s
add wave -noupdate -group RESULTMUX_DP /testbench/dut/riscv_pipelined_cycle/dp/resultmux/y
add wave -noupdate -expand -group HAZARD /testbench/dut/riscv_pipelined_cycle/dp/Instr_F
add wave -noupdate -expand -group HAZARD /testbench/dut/riscv_pipelined_cycle/dp/Instr_D
add wave -noupdate -expand -group HAZARD /testbench/dut/riscv_pipelined_cycle/hz/RSD1_E
add wave -noupdate -expand -group HAZARD /testbench/dut/riscv_pipelined_cycle/hz/RSD2_E
add wave -noupdate -expand -group HAZARD /testbench/dut/riscv_pipelined_cycle/hz/RdM
add wave -noupdate -expand -group HAZARD /testbench/dut/riscv_pipelined_cycle/hz/RdW
add wave -noupdate -expand -group HAZARD /testbench/dut/riscv_pipelined_cycle/hz/RegWrite_M
add wave -noupdate -expand -group HAZARD /testbench/dut/riscv_pipelined_cycle/hz/RegWrite_W
add wave -noupdate -expand -group HAZARD /testbench/dut/riscv_pipelined_cycle/hz/ForwardAE
add wave -noupdate -expand -group HAZARD /testbench/dut/riscv_pipelined_cycle/hz/ForwardBE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 6} {59 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {2 ps} {174 ps}
