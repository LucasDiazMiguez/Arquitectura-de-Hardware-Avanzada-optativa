onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group DUT /testbench/dut/clk
add wave -noupdate -expand -group DUT /testbench/dut/reset
add wave -noupdate -expand -group DUT /testbench/dut/WriteData
add wave -noupdate -expand -group DUT /testbench/dut/DataAdr
add wave -noupdate -expand -group DUT /testbench/dut/MemWrite
add wave -noupdate -expand -group DUT /testbench/dut/PC
add wave -noupdate -expand -group DUT /testbench/dut/Instr
add wave -noupdate -expand -group DUT /testbench/dut/ReadData
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/clk
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/reset
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/PC
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/Instr
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/MemWrite
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/ALUResult
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/WriteData
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/ReadData
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/ALUSrc
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/RegWrite
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/Jump
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/Zero
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/ResultSrc
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/ImmSrc
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/ALUControl
add wave -noupdate -group Risc /testbench/dut/riscv_single_cycle/PCSrc
add wave -noupdate -group Main_deco /testbench/dut/riscv_single_cycle/c/md/op
add wave -noupdate -group Main_deco /testbench/dut/riscv_single_cycle/c/md/ResultSrc
add wave -noupdate -group Main_deco /testbench/dut/riscv_single_cycle/c/md/MemWrite
add wave -noupdate -group Main_deco /testbench/dut/riscv_single_cycle/c/md/Branch
add wave -noupdate -group Main_deco /testbench/dut/riscv_single_cycle/c/md/ALUSrc
add wave -noupdate -group Main_deco /testbench/dut/riscv_single_cycle/c/md/RegWrite
add wave -noupdate -group Main_deco /testbench/dut/riscv_single_cycle/c/md/Jump
add wave -noupdate -group Main_deco /testbench/dut/riscv_single_cycle/c/md/ImmSrc
add wave -noupdate -group Main_deco /testbench/dut/riscv_single_cycle/c/md/ALUOp
add wave -noupdate -group Main_deco /testbench/dut/riscv_single_cycle/c/md/controls
add wave -noupdate -group ALU_DEC /testbench/dut/riscv_single_cycle/c/ad/opb5
add wave -noupdate -group ALU_DEC /testbench/dut/riscv_single_cycle/c/ad/funct3
add wave -noupdate -group ALU_DEC /testbench/dut/riscv_single_cycle/c/ad/funct7b5
add wave -noupdate -group ALU_DEC /testbench/dut/riscv_single_cycle/c/ad/ALUOp
add wave -noupdate -group ALU_DEC /testbench/dut/riscv_single_cycle/c/ad/ALUControl
add wave -noupdate -group ALU_DEC /testbench/dut/riscv_single_cycle/c/ad/RtypeSub
add wave -noupdate -group pc_reg_ /testbench/dut/riscv_single_cycle/dp/pcreg/clk
add wave -noupdate -group pc_reg_ /testbench/dut/riscv_single_cycle/dp/pcreg/reset
add wave -noupdate -group pc_reg_ /testbench/dut/riscv_single_cycle/dp/pcreg/d
add wave -noupdate -group pc_reg_ /testbench/dut/riscv_single_cycle/dp/pcreg/q
add wave -noupdate -group pcadd4 /testbench/dut/riscv_single_cycle/dp/pcadd4/a
add wave -noupdate -group pcadd4 /testbench/dut/riscv_single_cycle/dp/pcadd4/b
add wave -noupdate -group pcadd4 /testbench/dut/riscv_single_cycle/dp/pcadd4/y
add wave -noupdate -group ALU /testbench/dut/riscv_single_cycle/dp/alu/SrcA
add wave -noupdate -group ALU /testbench/dut/riscv_single_cycle/dp/alu/SrcB
add wave -noupdate -group ALU /testbench/dut/riscv_single_cycle/dp/alu/ALUControl
add wave -noupdate -group ALU /testbench/dut/riscv_single_cycle/dp/alu/ALUResult
add wave -noupdate -group ALU /testbench/dut/riscv_single_cycle/dp/alu/Zero
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/op
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/funct3
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/funct7b5
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/Zero
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/ResultSrc
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/MemWrite
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/PCSrc
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/ALUSrc
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/RegWrite
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/Jump
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/ImmSrc
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/ALUControl
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/ALUOp
add wave -noupdate -group Controller /testbench/dut/riscv_single_cycle/c/Branch
add wave -noupdate -expand -group {extend } /testbench/dut/riscv_single_cycle/dp/ext/instr
add wave -noupdate -expand -group {extend } /testbench/dut/riscv_single_cycle/dp/ext/immsrc
add wave -noupdate -expand -group {extend } /testbench/dut/riscv_single_cycle/dp/ext/immext
add wave -noupdate -expand -group register_file /testbench/dut/riscv_single_cycle/dp/rf/clk
add wave -noupdate -expand -group register_file /testbench/dut/riscv_single_cycle/dp/rf/a1
add wave -noupdate -expand -group register_file /testbench/dut/riscv_single_cycle/dp/rf/a2
add wave -noupdate -expand -group register_file /testbench/dut/riscv_single_cycle/dp/rf/a3
add wave -noupdate -expand -group register_file /testbench/dut/riscv_single_cycle/dp/rf/wd3
add wave -noupdate -expand -group register_file /testbench/dut/riscv_single_cycle/dp/rf/rd1
add wave -noupdate -expand -group register_file /testbench/dut/riscv_single_cycle/dp/rf/rf
add wave -noupdate -expand -group register_file -color Orchid /testbench/dut/riscv_single_cycle/dp/rf/we3
add wave -noupdate -expand -group register_file /testbench/dut/riscv_single_cycle/dp/rf/rd2
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/clk
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/reset
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/ResultSrc
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/PCSrc
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/ALUSrc
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/RegWrite
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/ImmSrc
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/ALUControl
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/Zero
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/PC
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/Instr
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/ALUResult
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/WriteData
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/ReadData
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/PCNext
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/PCPlus4
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/PCTarget
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/ImmExt
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/SrcA
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/SrcB
add wave -noupdate -expand -group datapath /testbench/dut/riscv_single_cycle/dp/Result
add wave -noupdate -expand -group Data_mem /testbench/dut/dmem/clk
add wave -noupdate -expand -group Data_mem /testbench/dut/dmem/we
add wave -noupdate -expand -group Data_mem /testbench/dut/dmem/a
add wave -noupdate -expand -group Data_mem /testbench/dut/dmem/wd
add wave -noupdate -expand -group Data_mem /testbench/dut/dmem/rd
add wave -noupdate -expand -group imem /testbench/dut/imem/a
add wave -noupdate -expand -group imem /testbench/dut/imem/rd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0} {{lee instruction} {150 ps} 1}
quietly wave cursor active 2
configure wave -namecolwidth 150
configure wave -valuecolwidth 73
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
WaveRestoreZoom {32 ps} {247 ps}
