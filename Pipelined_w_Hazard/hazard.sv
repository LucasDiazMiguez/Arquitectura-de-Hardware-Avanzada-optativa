module hazard (
        input logic [4:0] RSD1_E,
      input logic [4:0] RSD2_E,
      input logic [4:0] RdM,
      input logic [4:0] RdW,
      input logic RegWrite_M,
      input logic RegWrite_W,
      output logic[1:0] ForwardAE,
      output logic[1:0] ForwardBE
);
always_comb begin
        
        $display("[LDM Debug] Tiempo: %t RSD1_E %d ,RDM %0b RegWrite_M %0b ",$realtime,RSD1_E,RdM,RegWrite_M);
        
        if (((RSD1_E == RdM) && RegWrite_M) && (RSD1_E != 0))  
        begin
                $display("[LDM Debug] Tiempo: %t entre zorra",$realtime);
                ForwardAE = 2'b10;
        end
        else if (((RSD1_E == RdW) && RegWrite_W) && (RSD1_E != 0))   
            ForwardAE = 2'b01;
        else
        ForwardAE = 2'b00;  // Default case  
        
        $display("[LDM Debug] Tiempo: %t RSD2_E %d ,RDM %0b RegWrite_M %0b ",$realtime,RSD2_E,RdM,RegWrite_M);
        
        if (((RSD2_E == RdM) && RegWrite_M) && (RSD2_E != 0))  
              begin
                $display("[LDM Debug] Tiempo: %t entre zorra",$realtime);
                ForwardBE = 2'b10;
        end
        else if (((RSD2_E == RdW) && RegWrite_W) && (RSD2_E != 0))   
            ForwardBE = 2'b01;
        else 
            ForwardBE = 2'b00;  // Default case
        end
endmodule