module top(input   logic              clk, reset,
                  output logic [31:0] WriteData, DataAdr,
                  output logic             MemWrite);
    logic [31:0] PCF, Instr, ReadData;
    // instantiate processor and memories
     riscv_pipelined_cycle riscv_pipelined_cycle( 
            clk, 
            reset, 
            Instr, 
            ReadData,
            PCF, 
            MemWrite,
            DataAdr,  
            WriteData
            );
    
    imem imem(PCF, Instr);
    
    dmem dmem(
        clk, 
        MemWrite, 
        DataAdr, 
        WriteData, 
        ReadData);
 endmodule