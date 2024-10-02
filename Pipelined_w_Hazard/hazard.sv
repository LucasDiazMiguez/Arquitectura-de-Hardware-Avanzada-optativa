module hazard (
    input logic clk,
    input logic reset,
    input logic [4:0] RSD1_E,
    input logic [4:0] RSD2_E,
    input logic [4:0] RdE,
    input logic [4:0] RdM,
    input logic [4:0] RdW,
    input logic RegWrite_M,
    input logic RegWrite_W,
    output logic[1:0] ForwardAE,
    output logic[1:0] ForwardBE,
    input logic ResultSrc_E0,
    input logic [4:0] Rs1D,
    input logic [4:0] Rs2D,
    output logic StallF,
    output logic StallD,
    output logic FlushE,
    output logic FlushD,
    input logic PCSrcE
);
logic lwStall = 1;

always_comb begin
        
        if (((RSD1_E == RdM) && RegWrite_M) && (RSD1_E != 0))  
        begin
                ForwardAE = 2'b10;
        end
        else if (((RSD1_E == RdW) && RegWrite_W) && (RSD1_E != 0))   
            ForwardAE = 2'b01;
        else
        ForwardAE = 2'b00;  // Default case  
        
        if (((RSD2_E == RdM) && RegWrite_M) && (RSD2_E != 0))  
            ForwardBE = 2'b10;
        else if (((RSD2_E == RdW) && RegWrite_W) && (RSD2_E != 0))   
            ForwardBE = 2'b01;
        else 
            ForwardBE = 2'b00;  // Default case

        lwStall = (ResultSrc_E0 && ((Rs1D == RdE) || (Rs2D == RdE)));
        StallF = lwStall;
        StallD = lwStall;
        FlushD = PCSrcE;
        FlushE = lwStall | PCSrcE;
        end
endmodule