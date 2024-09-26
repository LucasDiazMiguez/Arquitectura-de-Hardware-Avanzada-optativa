 module flopr_Adata_MEM_OUT #(parameter WIDTH = 8)
                        (input    logic                     clk, reset,
                         input    logic [WIDTH-1:0] d,
                         output logic [WIDTH-1:0] q);
    always_ff @(posedge clk, posedge reset)
                       if (reset) q <= 0;
                       else           q <= d;
endmodule