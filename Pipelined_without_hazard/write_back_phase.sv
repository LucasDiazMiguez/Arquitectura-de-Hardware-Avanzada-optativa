module write_back_phase (
    input clk,
    input logic  [31:0] ALUResult_M,
    input logic  [31:0] ReadDataM,
    input logic  [4:0]  RdM,
    input logic  [31:0] PC_Plus4M,
    output logic  [31:0] ALUResult_W,
    output logic  [31:0] ReadDataW,
    output logic  [4:0]  RdW,
    output logic  [31:0] PC_Plus4W
);
   always_ff @(posedge clk)
      begin
            ALUResult_W <= ALUResult_M;
            ReadDataW   <= ReadDataM;
            RdW         <= RdM;
            PC_Plus4W   <= PC_Plus4M;
      end
endmodule
