module signal_history #(
    parameter WIDTH = 8,  // Width of the signal
    parameter DEPTH = 16  // Number of cycles to store
)(
    input wire clk,
    input wire rst,
    input wire [WIDTH-1:0] current_value,
    output logic [WIDTH-1:0] ouput_D_history[0:DEPTH-1]
);

// Registers to store signal history
logic [WIDTH-1:0] values_reg [0:DEPTH-1];

integer i;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        // Reset logic
        for (i = 0; i < DEPTH; i = i + 1) begin
            values_reg[i] <= '0;
        end
    end else begin
        // Shift the stored values forward in the array
        for (i = DEPTH-1; i > 0; i = i - 1) begin
            values_reg[i] <= values_reg[i-1];
        end
        // Capture the current signal value
        values_reg[0] <= current_value;
    end
end

// Assign the registered values to the output port
assign ouput_D_history = signal_D_reg;

endmodule
