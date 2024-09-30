#delete waste from previous sims
foreach file [glob -nocomplain ./wlft*] {
  set objectFile [file tail [file rootname $file]]
  catch {file delete $objectFile}
}
        
catch {file delete -force ./work}
vlib work
catch {file delete -force ./transcript}

vlog   -sv adder.sv mux2.sv mux3.sv controller.sv datapath.sv \
        dmem.sv extend.sv flopenr.sv flopr.sv imem.sv maindec.sv \
        riscv_pipelined_cycle.sv top.sv testbench.sv aludec.sv regfile.sv \
        alu.sv history_flop.sv decode_phase.sv execute_phase.sv memory_phase.sv \
        write_back_phase.sv mem_phase_Controller.sv execute_phase_Controller.sv write_phase_Controller.sv\
        hazard.sv

vsim -voptargs=+acc -t 1ps  work.testbench
# Wait for initialization
do wave.do
run 10ps

# Find and log signals related to 'datapath'

run 100ns
