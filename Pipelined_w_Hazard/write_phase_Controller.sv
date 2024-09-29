module write_phase_Controller (
    input logic        clk,
    input logic        RegWrite_M,
    input logic [1:0]  ResultSrc_M,
    output logic       RegWrite_W,
    output logic[1:0]  ResultSrc_W
);
   always_ff @(posedge clk)
      begin
        RegWrite_W  <= RegWrite_M;
        ResultSrc_W <= ResultSrc_M;
      end
endmodule
