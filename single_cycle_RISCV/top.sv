module top(input   logic              clk, reset,
                  output logic [31:0] WriteData, DataAdr,
                  output logic             MemWrite);
    logic [31:0] PC, Instr, ReadData;
    // instantiate processor and memories
     riscv_single_cycle riscv_single_cycle( clk, reset, PC, Instr, MemWrite,
DataAdr,  WriteData, ReadData);
    imem imem(PC, Instr);
    dmem dmem(clk, MemWrite, DataAdr, WriteData, ReadData);
 endmodule