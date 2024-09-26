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
  logic ALUSrc, RegWrite, Zero_E;
  logic [ 1:0] mux_rd1_E,mux_rd2_E;
  logic [1:0] ResultSrc, ImmSrc;
  logic [3:0] ALUControl;
  logic [4:0] Rs2D,Rs1D,Rdm;
  logic [31:0] Instr_D;
  
  controller c (
      clk,
      reset,
      Instr_D[6:0],
      Instr_D[14:12],
      Instr_D[30],
      Zero,
      RegWrite,
      ResultSrc,
      MemWrite,
      ALUControl,
      ALUSrc,
      ImmSrc,
      PCSrc
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
      Zero_E
  );
//   hazard hz(
//       clk,
//       reset,
//       Rs1D,
//       Rs2D,
//       Instr_RdD,
//       Instr_RdD_middle_s,
//       RegWrite_for_hazardS,
//       RegWrite,
//       mux_rd1_E,mux_rd2_E,
//       en_fetch
//   )
endmodule
