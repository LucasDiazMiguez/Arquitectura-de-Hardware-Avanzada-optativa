module execute_phase_Controller (
    input logic        clk,
    input logic        reset,
    input logic        RegWrite_D,
    input logic [1:0]  ResultSrc_D,
    input logic        MemWrite_D,
    input logic        Jump_D,
    input logic        Branch_D,
    input logic [3:0]  ALUControl_D,
    input logic        ALUSrc_D,
    output logic       RegWrite_E,
    output logic[1:0]  ResultSrc_E,
    output logic       MemWrite_E,
    output logic       Jump_E,
    output logic       Branch_E,
    output logic [3:0] ALUControl_E,
    output logic       ALUSrc_E
);
   always_ff @(posedge clk,posedge reset)
      begin
        if (reset) begin
          RegWrite_E <= '0;
          ResultSrc_E <= '0;
          MemWrite_E <= '0;
          Jump_E <= '0;
          Branch_E <= '0;
          ALUControl_E <= '0;
          ALUSrc_E <= '0;
        end else begin
          RegWrite_E <= RegWrite_D;
          ResultSrc_E <= ResultSrc_D;
          MemWrite_E <= MemWrite_D;
          Jump_E <= Jump_D;
          Branch_E <= Branch_D;
          ALUControl_E <= ALUControl_D;
          ALUSrc_E <= ALUSrc_D;
        end
      end
endmodule
