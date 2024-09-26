module datapath (
    input  logic        clk,
    reset,
    input  logic [ 1:0] ResultSrc,
    input  logic        PCSrc,
    ALUSrc,
    input  logic        RegWrite,
    input  logic [ 1:0] ImmSrc,
    input  logic [ 3:0] ALUControl,
    output logic        Zero,
    output logic [31:0] PC,
    input  logic [31:0] Instr,
    output logic [31:0] ALUResult,
    output logic [31:0] WriteData,
    input  logic [31:0] ReadData,
    input  logic [1:0] mux_rd1_E,mux_rd2_E,
    output logic [ 4:0] Rs1D, Rs2D,Instr_RdD,Instr_RdD_middle_s,
    input logic en_fetch
);
  logic [31:0] PCNext, PCPlus4,PCPlus4_delay, PCTarget,PC_delay,PC_delayed;
  logic [31:0] ImmExt_s,ImmExt;
  logic [4:0] Instr_RdD,Instr_RdD_middle_s;
  logic [31:0] RD1_s,RD2_s,RD2,RD1, SrcB,write_data_s,ALUResult,ALUResult_f2_mux,ReadData_delayed,ALU_src_A,ALU_src_B;
  logic [31:0] Result;
  // next PC logic
  flopr #(32) pcreg (
      clk,
      reset,
      PCNext,
      PC
  );
  adder pcadd4 (
      PC,
      32'd4,
      PCPlus4_delay
  );    
  mux2 #(32) pcmux (
      PCPlus4_delay,
      PCTarget,
      PCSrc,
      PCNext
  );
   //retardo pcPLUS4f 4 clocks
  signal_history #(  
      .WIDTH(1),
      .DEPTH(4)
      ) mem_write_reg(
      clk,
      reset,
      PCPlus4_delay,
      PCPlus4
   );

  signal_history #(  
      .WIDTH(1),
      .DEPTH(2)
      ) mem_write_reg(
      clk,
      reset,
      PC_delay,
      PC_delayed
   );
  adder pcaddbranch (
      PC_delayed,
      ImmExt,
      PCTarget
  );
  // register file logic
  regfile rf (
      clk,
      RegWrite,
      Instr[19:15],
      Instr[24:20],
      Instr_RdD,
      Result,
      RD1_s,
      RD2_s
  );
  flopr #(4) Rs1D_flop (
      clk,
      reset,
      Instr[19:15],
      Rs1D
  );
  flopr #(4) Rs2D_flop (
      clk,
      reset,
      Instr[24:20],
      Rs2D
  );
   signal_history #(  
      .WIDTH(5),
      .DEPTH(2)
      ) mem_write_reg(
      clk,
      reset,
       Instr[11:7],
      Instr_RdD_middle_s
   );
    flopr #(32) Instr_RdD_middle (
      clk,
      reset,
      Instr_RdD_middle_s,
      Instr_RdD
  );
    flopr #(32) pcreg (
      clk,
      reset,
      RD1_s,
      RD1
  );
    flopr #(32) pcreg (
      clk,
      reset,
      RD2_s,
      RD2
  );
    flopr #(32) pcreg (
      clk,
      reset,
      ALU_SrcBE,
      WriteData
  );
    extend ext (
      Instr[31:7],
      ImmSrc,
      ImmExt_s
  );
//retraso un clk el immExt_s
    flopr #(32) pcreg (
      clk,
      reset,
      ImmExt_s,
      ImmExt
  );
  mux3 #(32) ALU_SrcAE (
      RD1,
      Result, //ver este
      ALUResult,
      mux_rd1_E,
      ALU_src_A
  );
  mux3 #(32) ALU_SrcBE (
      RD2,
      Result, //ver este
      ALUResult,
      mux_rd2_E,
      ALU_src_B
  );
  // ALU logic
  mux2 #(32) srcbmux (
      ALU_src_B,
      ImmExt,
      ALUSrc,
      SrcB
  );
  alu alu (
      ALU_src_A,
      SrcB,
      ALUControl,
      ALUResult_s,
      Zero
  );
   flopr #(32) pcreg (
      clk,
      reset,
      ALUResult_s,
      ALUresult
  );
   flopr #(32) pcreg (
      clk,
      reset,
      ALUResult,
      ALUResult_f2_mux
  );
   flopr #(32) pcreg (
      clk,
      reset,
      ReadData,
      ReadData_delayed //deberia ser delayed o no? hay un clock, para mi si
  );
  mux3 #(32) resultmux (
      ALUResult_f2_mux,
      ReadData_delayed,
      PCPlus4,
      ResultSrc,
      Result
  );
endmodule
