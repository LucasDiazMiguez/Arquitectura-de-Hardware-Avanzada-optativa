module execute_phase (
    input logic clk,
    input logic [31:0] RD1,
    input logic [31:0] RD2,
    input logic [31:0] PCD,
    input logic [31:0] ImmExt_D,
    input logic [31:0] PC_Plus4D,
    input logic [4:0] RdD,
    input logic [4:0] Rs1D,
    input logic [4:0] Rs2D,
    output  logic [4:0] RdE,
    output  logic [4:0] RSD1_E,
    output  logic [4:0] RSD2_E,
    output  logic [31:0] RD1E,
    output  logic [31:0] RD2E,
    output  logic [31:0] PCE,
    output  logic [31:0] ImmExt_E,
    output  logic [31:0] PC_Plus4E
);
always_ff @(posedge clk)
    begin
            RD1E<=RD1;
            RD2E<=RD2;
            RSD1_E<=Rs1D;
            RSD2_E<=Rs2D;
            PCE<=PCD;
            RdE<=RdD;
            ImmExt_E<=ImmExt_D;
            PC_Plus4E<=PC_Plus4D;
        end                     
endmodule
