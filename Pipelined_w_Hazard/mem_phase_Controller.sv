module mem_phase_Controller (
    input logic        clk,
    input logic        RegWrite_E,
    input logic [1:0]  ResultSrc_E,
    input logic        MemWrite_E,
    output logic       RegWrite_M,
    output logic[1:0]  ResultSrc_M,
    output logic       MemWrite_M
);
   always_ff @(posedge clk)
      begin
        RegWrite_M  <= RegWrite_E;
        ResultSrc_M <= ResultSrc_E;
        MemWrite_M  <= MemWrite_E;
      end
endmodule
