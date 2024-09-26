vlib work
catch {file delete -force ./transcript}

vlib work
vlog   -sv adder.sv mux2.sv mux3.sv controller.sv datapath.sv dmem.sv extend.sv flopenr.sv flopr.sv imem.sv maindec.sv riscv_single_cycle.sv top.sv testbench.sv aludec.sv regfile.sv alu.sv 
vsim -voptargs=+acc -t 1ps  work.testbench
# Wait for initialization
do wave.do
run 10ps

# Find and log signals related to 'datapath'

run 100ns
