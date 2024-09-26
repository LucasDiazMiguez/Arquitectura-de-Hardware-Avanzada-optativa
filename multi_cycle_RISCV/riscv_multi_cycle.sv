module riscv_multi_cycle (
    input  logic        clk,
    rst,
    output logic [31:0] PC,
    output logic        MemWrite,
    output logic [31:0] ALUResult,
    WriteData,
    input  logic [31:0] ReadData
);
  logic [31:0] ReadData_after_flop;
  logic ALUSrc, RegWrite, Zero,AdrSrc,IRWrite;
  logic [1:0] ResultSrc, ImmSrc;
  logic [3:0] ALUControl;
  logic [1:0] ALUSrcA,ALUSrcB;

  controller c (
      clk,
      rst,
      ReadData_after_flop[6:0],
      ReadData_after_flop[14:12],
      ReadData_after_flop[30],
      Zero,
      ResultSrc,
      MemWrite,
      PCSrc,
      ALUSrc,
      RegWrite,
      ImmSrc,
      ALUSrcA,
      ALUSrcB,
      ALUControl,
      AdrSrc,
      IRWrite
  );
  datapath dp (
      clk,
      rst,
      ResultSrc,
      PCSrc,
      ALUSrc,
      RegWrite,
      ImmSrc,
      ALUControl,
      Zero,
      PC,
      ALUResult,
      WriteData,
      ReadData,
      ReadData_after_flop,
      ALUSrcA,
      ALUSrcB,
      AdrSrc,
      IRWrite
  );
endmodule
