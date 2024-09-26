 module testbench();
    logic              clk;
    logic              reset;
    logic [31:0] WriteData, DataAdr;
    logic              MemWrite;
    // instantiate device to be tested
    top dut(clk, reset, WriteData, DataAdr, MemWrite);
    // initialize test
    initial
     begin
         reset <= 1; # 22; reset <= 0;
         $display("[LDM Debug] Tiempo: %t salgo del reset mi king",$realtime);
         $display("[LDM Debug] Tiempo: %t salgo del reset mi king",$time);
     end
    // generate clock to sequence tests
    always
    begin
        clk <= 1; # 5; clk <= 0; # 5;
    end
    always @(negedge clk)
    begin
        if ($realtime > 1ns) begin
            $stop;
        end
    end
    // check results
    always @(negedge clk)
     begin
        if(MemWrite) begin
            $display("[LDM Debug] Tiempo: %t WriteData %d ",$realtime,WriteData);
            $display("[LDM Debug] Tiempo: %t DataAdr %d ",$realtime,DataAdr);
              if(DataAdr === 100 & WriteData === 25) begin
              $display("Simulation succeeded");
              $stop;
           end else if (DataAdr !== 96) begin
              $display("Simulation failed");
              $stop;
           end
         end
    end
 endmodule