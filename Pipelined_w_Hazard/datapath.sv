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
    output logic        Zero_E,
    output logic [4:0]  RSD1_E,
    output logic [4:0] RSD2_E,
    output logic [4:0] RdE,
    output logic [4:0] RdM,
    output logic [4:0] RdW,
    input logic [1:0] ForwardAE,
    input logic [1:0] ForwardBE,
    input logic StallF,
    input logic StallD,
    input logic FlushE,
    input logic FlushD
);
  logic [31:0] PCFNext, PCPlus4, PCTarget,PCTargetE,PCD,PCE;
  logic [31:0] PCPlus4_F,PCPlus4_D, PCPlus4_E,PCPlus4_M,PCPlus4_W;
  logic [31:0] RD1,RD1E,RD2,RD2E,SRAE_MUX_RESULT,SRBE_MUX_RESULT;
  logic [31:0] ImmExt_D,ImmExt_E;
  logic [31:0] SrcA_E, SrcB,SrcB_E;
  logic [31:0] ALUResult_E,ALUResult_W;
  logic [31:0] ResultW;
  logic [31:0] ReadDataW;

  // *------------------next PC logic FETCH Stage----------------
  flopenr #(32) pcreg (
      clk,
      reset,
      (!StallF),
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
        (!StallD),
        FlushD,
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
      Instr_D[31:7],  // Connect Instr_D[31:7] to instr port
      Instr_D,  // Connect Instr_D[31:7] to instr port
      ImmSrc,        // Connect ImmSrc to immsrc port
      ImmExt_D 
  );
// *------------------Execute phase----------------------------
execute_phase exe_phase(
        clk,
        FlushE,
        RD1,
        RD2,
        PCD,
        ImmExt_D,
        PCPlus4_D,
        Instr_D[11:7],//RdD
        Instr_D[19:15],//RsD1
        Instr_D[24:20],//RsD2
        RdE,
        RSD1_E,
        RSD2_E,
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
  mux3 #(32) SrcA_E_MUX(
    RD1E,
    ResultW,
    ALUResult_M,
    ForwardAE,
    SRAE_MUX_RESULT
  );
  mux3 #(32)SrcB_E_MUX(
    RD2E,
    ResultW,
    ALUResult_M,
    ForwardBE,
    SRBE_MUX_RESULT
  );

  mux2 #(32) srcbmux (
      SRBE_MUX_RESULT,
      ImmExt_E,
      ALUSrc,
      SrcB_E
  );
  alu alu (
      SRAE_MUX_RESULT,
      SrcB_E,
      ALUControl,
      ALUResult_E,
      Zero_E
  );
// *------------------Memory phase----------------------------
    memory_phase mem_phase(
            clk,
            ALUResult_E,
            SRBE_MUX_RESULT,
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
