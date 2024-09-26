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
    output logic [31:0] ALUout,
    WriteData,
    input  logic [31:0] ReadData,
    output  logic [31:0] ReadData_after_flop,
    input logic [1:0] ALUSrcA1,ALUSrcB1,
    input  logic        AdrSrc,
    input  logic        IRWrite
);
  logic [31:0] PCOLD;
  logic [31:0] ImmExt;
  logic [31:0] SrcA,SrcB,SrcA_from_rf_before,SrcA_from_rf_after, SrcB_from_extend,ReadData_for_result_mux,SrcA_from_rf_prev;
  logic [31:0] Result,PC_middle;
  logic [31:0] WriteData_prev;
  logic [31:0] ALUResult;
  // next PC logic
  flopenr #(32) pcreg (
      clk,
      reset,
      PCSrc,
      Result,
      PC_middle
  );
    mux2 #(32) src_data_memory (
      PC_middle,
      Result,
      AdrSrc,
      PC
  );
  //PC Chunk 
   flopenr #(32) flop_OLD_PC (
      clk,
      reset,
      IRWrite,
      PC_middle,
      PCOLD //!TOOD En que orden iria?
  );
   flopenr #(32) flop_instr_PC (
      clk,
      reset,
      IRWrite,
      ReadData, //!TOOD En que orden iria?
      ReadData_after_flop
  );
  // register file logic
  regfile rf (
      clk,
      RegWrite,
      ReadData_after_flop[19:15],
      ReadData_after_flop[24:20],
      ReadData_after_flop[11:7],
      Result,
      SrcA_from_rf_prev,
      WriteData_prev
  );
  extend ext (
      ReadData_after_flop[31:7],
      ImmSrc,
      SrcB_from_extend
  );

  alu alu (
      SrcA,
      SrcB,
      ALUControl,
      ALUResult,
      Zero
  );
  flopr_Adata #(32) RD1 (
      clk,
      reset,
      SrcA_from_rf_prev,
      SrcA_from_rf_after
       //!TOOD En que orden iria?
  );
  flopr_Adata #(32) RD2 (
      clk,
      reset,
      WriteData_prev, //!TOOD En que orden iria?
      WriteData
  );
  flopr_Adata #(32) ReadData_for_Data_reg (
      clk,
      reset,
      ReadData, //!TOOD En que orden iria?
      ReadData_for_result_mux
  );
  flopr_ALU_result #(32) flopr_ALU_result (
      clk,
      reset,
      ALUResult, //!TOOD En que orden iria?
      ALUout
  );
  mux3_choose_SRA #(32) mux3_choose_SRA (
      PC_middle,
      PCOLD,    
      SrcA_from_rf_after,
      ALUSrcA1,
      SrcA
  );    
  mux3_choose_SRB #(32) mux3_choose_SRB (
      WriteData,
      SrcB_from_extend,
      4,
      ALUSrcB1,
      SrcB
  );

  mux3_result_SRC #(32) result_src (
      ALUout,
      ReadData_for_result_mux,//todo
      ALUResult,
      ResultSrc,
      Result
  );

endmodule
