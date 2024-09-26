module execute_phase (
    input logic clk,
    input logic [31:0] RD1,RD2,PCD,ImmExt_D,PC_Plus4D,
    input logic [4:0] RdD,
    output  logic [4:0] RdE,
    output  logic [31:0] RD1E,RD2E,PCE,ImmExt_E,PC_Plus4E
);
   always_ff @(posedge clk)
      begin
            RD1E<=RD1;
            RD2E<=RD2;
            PCE<=PCD;
            RdE<=RdD;
            ImmExt_E<=ImmExt_D;
            PC_Plus4E<=PC_Plus4D;
      end                       
endmodule
