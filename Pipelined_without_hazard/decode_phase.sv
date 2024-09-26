module decode_phase (
    input clk,
    input  logic [31:0] InstrF,PCF,PCPlus4F,
    output  logic [31:0] InstrD,PCD,PCPlus4D
);
   always_ff @(posedge clk)
    begin
        InstrD <= InstrF;
        PCD<=PCF;
        PCPlus4D <= PCPlus4F;
    end
endmodule
