module controller (
    input  logic clk,
    input  logic rst,
    input  logic [6:0] op,
    input  logic [2:0] funct3,
    input  logic       funct7b5,
    input  logic       Zero,
    output logic [1:0] ResultSrc,
    output logic       MemWrite,
    output logic       PCSrc,
    ALUSrc,
    output logic       RegWrite,
    output logic [1:0] ImmSrc,
    output logic [1:0] ALUSrcA,ALUSrcB,
    output logic [3:0] ALUControl,
    output logic  AdrSrc,
    output logic  IRWrite

);
  logic [1:0] ALUOp;
  logic       Branch;

  maindec md (
      clk,
      rst,
      op,
      Branch,
      PCUpdate,
      RegWrite,
      MemWrite,
      IRWrite,
      ResultSrc,
      ALUSrcB,
      ALUSrcA,
      AdrSrc,
      ALUOp
  );
  aludec ad (
      op[5],
      funct3,
      funct7b5,
      ALUOp,
      ALUControl
  );
  intr_decoder immSrc_deco(
         op,
         ImmSrc
  );
  
  assign PCSrc = Branch & Zero | PCUpdate;

endmodule
