module riscv_single_cycle (
    input  logic        clk,
    reset,
    output logic [31:0] PC,
    input  logic [31:0] Instr,
    output logic        MemWrite,
    output logic [31:0] ALUResult,
    WriteData,
    input  logic [31:0] ReadData
);
  logic ALUSrc, RegWrite, Jump, Zero,RegWrite_for_hazard,en_fetch;
  logic [ 1:0] mux_rd1_E,mux_rd2_E;
  logic [1:0] ResultSrc, ImmSrc;
  logic [3:0] ALUControl;
  logic [4:0] Rs2D,Rs1D,Rdm;
  controller c (
      Instr[6:0],
      Instr[14:12],
      Instr[30],
      Zero,
      ResultSrc,
      MemWrite,
      PCSrc,
      ALUSrc,
      RegWrite,
      Jump,
      ImmSrc,
      ALUControl,
      RegWrite_for_hazard
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
      Zero,
      PC,
      Instr,
      ALUResult,
      WriteData,
      ReadData,
      mux_rd1_E,
      mux_rd2_E,
      Rs1D,
      Rs2D,
      Instr_RdD,
      Instr_RdD_middle_s,
      en_fetch
  );
  hazard hz(
      clk,
      reset,
      Rs1D,
      Rs2D,
      Instr_RdD,
      Instr_RdD_middle_s,
      RegWrite_for_hazardS,
      RegWrite,
      mux_rd1_E,mux_rd2_E,
      en_fetch
  )
endmodule
