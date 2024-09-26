module memory_phase (
    input clk,
    input logic  [31:0] ALUResult_E,
    input logic  [31:0] RD2E,//writeDataE
    input logic  [4:0]  RdE,
    input logic  [31:0] PC_Plus4E,
    output logic  [31:0] ALUResult_M,
    output logic  [31:0] WriteDataM,
    output logic  [4:0]  RdM,
    output logic  [31:0] PC_Plus4M
);
   always_ff @(posedge clk)
      begin
            ALUResult_M<=ALUResult_E;
            WriteDataM<=RD2E;//writeDataE
            RdM<=RdE;
            PC_Plus4M<=PC_Plus4E;
      end
endmodule
