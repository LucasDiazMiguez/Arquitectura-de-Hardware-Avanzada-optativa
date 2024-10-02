module write_phase_Controller (
    input logic        clk,
    input logic        reset,
    input logic        RegWrite_M,
    input logic [1:0]  ResultSrc_M,
    output logic       RegWrite_W,
    output logic[1:0]  ResultSrc_W
);
   always_ff @(posedge clk,posedge reset)
      begin
          if (reset) begin
            RegWrite_W  <= '0 ;
            ResultSrc_W <= '0 ;
          end else begin
            RegWrite_W  <= RegWrite_M;
            ResultSrc_W <= ResultSrc_M;
          end
      end
endmodule
