module datapath (
    input  logic        clk,
    reset,
    input  logic [ 1:0] ResultSrc,
    input  logic        PCSrc,
    ALUSrc,
    input  logic        RegWrite,
    input  logic [ 1:0] ImmSrc,
    input  logic [ 3:0] ALUControl,
    input  logic [31:0] Instr_F,
    output logic [31:0] Instr_D,
    output logic [31:0] WriteDataM,
    input  logic [31:0] ReadData,
    output logic [31:0] PCF,
    output logic [31:0] ALUResult_M,
    output logic        Zero_E
);
  logic [31:0] PCFNext, PCPlus4, PCTarget,PCTargetE,PCD,PCE;
  logic [31:0] PCPlus4_F,PCPlus4_D, PCPlus4_E,PCPlus4_M,PCPlus4_W;
  logic [4:0] RdW,RdM,RdE;
  logic [31:0] RD1,RD1E,RD2,RD2E;
  logic [31:0] ImmExt_D,ImmExt_E;
  logic [31:0] SrcA_E, SrcB,SrcB_E;
  logic [31:0] ALUResult_E,ALUResult_W;
  logic [31:0] ResultW;
  logic [31:0] ReadDataW;

  // *------------------next PC logic FETCH Stage----------------
  flopr #(32) pcreg (
      clk,
      reset,
      PCFNext,
      PCF
  );
  adder pcadd4 (
      PCF,
      32'd4,
      PCPlus4_F
  );
  mux2 #(32) pcmux (
      PCPlus4_F,
      PCTargetE,
      PCSrc,
      PCFNext
  );
  // *------------------Decode phase----------------------------
  decode_phase dec_phase(
        clk,
        Instr_F,PCF,PCPlus4_F,
        Instr_D,PCD,PCPlus4_D
  );
  // register file logic
  regfile rf (
      clk,
      RegWrite,
      Instr_D[19:15],
      Instr_D[24:20],
      RdW,
      ResultW,
      RD1,
      RD2
  );
extend ext (
      Instr_D[31:7],
      ImmSrc,
      ImmExt_D
  );
// *------------------Execute phase----------------------------
execute_phase exe_phase(
        clk,
        RD1,
        RD2,
        PCD,
        ImmExt_D,
        PCPlus4_D,
        Instr_D[11:7],//RdD
        RdE,
        RD1E,
        RD2E,
        PCE,
        ImmExt_E,
        PCPlus4_E
);
  //  PC target logic for PCTargetE
  adder pcaddbranch (
      PCE,
      ImmExt_E,
      PCTargetE
  );
  mux2 #(32) srcbmux (
      RD2E,
      ImmExt_E,
      ALUSrc,
      SrcB_E
  );
  alu alu (
      RD1E,
      SrcB_E,
      ALUControl,
      ALUResult_E,
      Zero_E
  );
// *------------------Memory phase----------------------------
    memory_phase mem_phase(
            clk,
            ALUResult_E,
            RD2E,
            RdE,
            PCPlus4_E,
            ALUResult_M,
            WriteDataM,//RD2E
            RdM,
            PCPlus4_M
    );
// *------------------Write back phase----------------------------
  write_back_phase wri_phase(
            clk,
            ALUResult_M,
            ReadData,
            RdM,
            PCPlus4_M,
            ALUResult_W,
            ReadDataW,
            RdW,
            PCPlus4_W
  );
  mux3 #(32) resultmux (
      ALUResult_W,
      ReadDataW,
      PCPlus4_W,
      ResultSrc,
      ResultW
  );
endmodule
