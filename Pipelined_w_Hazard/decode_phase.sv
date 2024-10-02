module decode_phase (
    input clk,
    input en,
    input  logic [31:0] InstrF,PCF,PCPlus4F,
    output  logic [31:0] InstrD,PCD,PCPlus4D
);
   always_ff @(posedge clk)
    begin
        if(en) begin
            InstrD <= InstrF;
            PCD<=PCF;
            PCPlus4D <= PCPlus4F;
        end 
    end
endmodule
