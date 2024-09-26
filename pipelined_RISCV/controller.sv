module controller (
    input  logic [6:0] op,
    input  logic [2:0] funct3,
    input  logic       funct7b5,
    input  logic       Zero,
    output logic [1:0] ResultSrc,
    output logic       MemWrite,
    output logic       PCSrc,
    ALUSrc,
    output logic       RegWrite,
    Jump,
    output logic [1:0] ImmSrc,
    output logic [3:0] ALUControl,
    output logic       RegWrite_for_hazard
);
  logic [1:0] ALUOp;
  logic [3:0] ALUControl_s;
  logic       Branch;
  maindec md (
      op,
      ResultSrc,
      MemWrite,
      Branch,
      ALUSrc,
      RegWrite,
      Jump,
      ImmSrc,
      ALUOp,
      RegWrite_for_hazard
  );

  aludec ad (
      op[5],
      funct3,
      funct7b5,
      ALUOp,
      ALUControl_s
  );
   flopr #(32) pcreg (
      clk,
      reset,
      ALUControl_s,
      ALUControl
  );
  assign PCSrc = Branch & Zero | Jump;
endmodule
