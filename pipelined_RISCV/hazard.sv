module hazard (
    input  logic        clk,
    reset,
    input  logic [ 4:0] Rs1D,
    input  logic [ 4:0] Rs2D,
    input  logic [ 4:0] RdD_M,
    input  logic [ 4:0] RdD_Last,
    input  logic        RegWrite_M,
    input  logic        RegWrite_Last,
    output  logic [ 1:0] mux_rd1_E,mux_rd2_E
    output  logic  en_fetch
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        mux_rd1_E = 00;
    end else begin
    if (((Rs1D == RdD_M) && RegWrite_M) && (Rs1D != 0) ) begin  // Forward from Memory stage
        mux_rd1_E = 10;
    end else if (((Rs1D == RdD_Last) & RegWrite_Last) &(Rs1D != 0)) begin
        mux_rd1_E = 01;
    end else begin
        mux_rd1_E = 00;
    end
end
always @(posedge clk or posedge reset) begin
    if (reset) begin
        mux_rd2_E = 00;
        mux_rd2_E = 00;
    end else begin
    if (((Rs2D == RdD_M) && RegWrite_M) && (Rs2D != 0) ) begin  // Forward from Memory stage
        mux_rd2_E = 10;
    end else if (((Rs2D == RdD_Last) & RegWrite_Last) &(Rs2D != 0)) begin
        mux_rd2_E = 01;
    end else begin
        mux_rd2_E = 00;
    end
end
endmodule
