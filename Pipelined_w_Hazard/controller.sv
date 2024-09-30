module controller (
    input              clk,
    reset,
    input  logic [6:0] op,
    input  logic [2:0] funct3,
    input  logic       funct7b5,
    input  logic       Zero_E,
    output logic       RegWrite,
    output logic [1:0] ResultSrc,
    output logic       MemWrite,
    output logic [3:0] ALUControl,
    output logic       ALUSrc,
    output logic [1:0] ImmSrc_D,
    output logic       PCSrcE,
    output logic       RegWrite_M,
    output logic       RegWrite_W
);
  typedef enum logic [3:0] {
    decode_state,
    execute_state,
    mem_state,
    write_state
  } statetype;  //states for decoding instructions
  statetype state, nextstate;
  logic [1:0] ALUOp;
  logic RegWrite_D, RegWrite_E;
  logic [1:0] ResultSrc_D, ResultSrc_E, ResultSrc_M, ResultSrc_W;
  logic MemWrite_D, MemWrite_E, MemWrite_M;
  logic [3:0] ALUControl_D, ALUControl_E;
  logic Branch, Branch_D, Branch_E;
  logic Jump_D, Jump_E, Jump;
  logic ALUSrc_D, ALUSrc_E;

  // always_ff @(posedge clk, posedge reset) begin
  //   if (reset) state <= decode_state;
  //   else state <= nextstate;
  // end
  always_comb
  begin
    ALUSrc = ALUSrc_E;
    MemWrite = MemWrite_M;
    ALUControl = ALUControl_E;
    Jump = Jump_E;
    Branch = Branch_E;
    MemWrite = MemWrite_M;
    ResultSrc = ResultSrc_W;
    RegWrite = RegWrite_W;
  end

  maindec md (
      op,
      ResultSrc_D,
      MemWrite_D,
      Branch_D,
      ALUSrc_D,
      RegWrite_D,
      Jump_D,
      ImmSrc_D,
      ALUOp
  );
  execute_phase_Controller exe_phase (
      clk,
      RegWrite_D,
      ResultSrc_D,
      MemWrite_D,
      Jump_D,
      Branch_D,
      ALUControl_D,
      ALUSrc_D,
      RegWrite_E,
      ResultSrc_E,
      MemWrite_E,
      Jump_E,
      Branch_E,
      ALUControl_E,
      ALUSrc_E
  );
  mem_phase_Controller mem_phase (
      clk,
      RegWrite_E,
      ResultSrc_E,
      MemWrite_E,
      RegWrite_M,
      ResultSrc_M,
      MemWrite_M
  );

  write_phase_Controller write_phase (
      clk,
      RegWrite_M,
      ResultSrc_M,
      RegWrite_W,
      ResultSrc_W
  );

  aludec ad (
      op[5],
      funct3,
      funct7b5,
      ALUOp,
      ALUControl_D
  );

  assign PCSrcE = Branch & Zero_E | Jump;
endmodule
