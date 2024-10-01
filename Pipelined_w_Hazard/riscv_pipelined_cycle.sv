module riscv_pipelined_cycle (
    input  logic        clk,
    reset,
    input  logic [31:0] Instr_F,
    input  logic [31:0] ReadData,
    output logic [31:0] PCF,
    output logic        MemWrite,
    output logic [31:0] ALUResult_M,
    WriteData_M
);
  logic ALUSrc,  Zero_E;
  logic RegWrite;
  logic RegWrite_M;
  logic RegWrite_W;
  logic [ 1:0] mux_rd1_E,mux_rd2_E;
  logic [1:0] ResultSrc, ImmSrc,ForwardAE,ForwardBE;
  logic [3:0] ALUControl;
  logic [4:0] Rs2D,Rs1D,Rdm,RSD1_E,RSD2_E,RdM,RdW;
  logic [31:0] Instr_D;
  
  controller c (
      clk,
      reset,
      Instr_D[6:0],
      Instr_D[14:12],
      Instr_D[30],
      Zero_E,
      RegWrite,
      ResultSrc,
      MemWrite,
      ALUControl,
      ALUSrc,
      ImmSrc,
      PCSrc,
      RegWrite_M,
      RegWrite_W
  );
  datapath dp (
      clk,
      reset,
      ResultSrc,
      PCSrc,
      ALUSrc,
      RegWrite,
      ImmSrc,
      ALUControl,
      Instr_F,
      Instr_D,
      WriteData_M,
      ReadData,
      PCF,
      ALUResult_M,
      Zero_E,
      RSD1_E,
      RSD2_E,
      RdM,
      RdW,
      ForwardAE,
      ForwardBE
  );
  hazard hz(
      RSD1_E,
      RSD2_E,
      RdM,
      RdW,
      RegWrite_M,
      RegWrite_W,
      ForwardAE,
      ForwardBE
  );
endmodule
