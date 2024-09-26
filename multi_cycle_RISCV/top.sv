module top(input   logic              clk, reset,
                  output logic [31:0] WriteData, DataAdr,
                  output logic             MemWrite);
    logic [31:0] PC, Instr, ReadData;
    // instantiate processor and memories
     riscv_multi_cycle riscv_multi_cycle(clk, reset, PC, MemWrite,
DataAdr,  WriteData, ReadData);
    data_instr_mem data_instr_mem(clk, MemWrite, PC, WriteData, ReadData);
endmodule