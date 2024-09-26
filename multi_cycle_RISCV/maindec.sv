module maindec(            input logic         clk,
                           input logic         reset,
                           input logic  [6:0]   op,
                           output logic         branch,
                           output logic         PCupdate,
                           output logic         RegWrite,
                           output logic         MemWrite,
                           output logic         IRWrite,
                           output logic [1:0]   ResultSrc,
                           output logic [1:0]   ALUSrcB, 
                           output logic [1:0]   ALUSrcA, 
                           output logic         AdrSrc, 
                           output logic [1:0]   ALUop);

    typedef enum logic [3:0] {S0, S1, S2,S3,S4,S5,S6,S7,S8,S9,S01} statetype; //states for decoding instructions
    statetype state,nextstate; 
    assign {
         branch,
         PCupdate,
         RegWrite,
         MemWrite,
         IRWrite,
         ResultSrc,
         ALUSrcB,
         ALUSrcA,
         AdrSrc,
         ALUop
    } = controls; 

    always_ff @(posedge clk, posedge reset)
        if (reset) state <= S0;
        else           state <= nextstate;
     // next state logic
      // branch_PCupdate_RegWrite_MemWrite_IRWrite_ResultSrc[1:0]_ALUSSrcB[1:0]_AluSRcA[1:0]_AdrSrc_ALUop[1:0]

     always_comb
        case (state)
          S0: //Fetch
            begin
               nextstate = S1;
               controls  = 14'b0_1_0_0_1_10_10_00_0_00;
            end
          S1: //decode
            begin
               controls  = 14'b0_0_0_0_0_00_01_01_0_00;
               casez(op)
                  7'b0?00011: begin // lw sw
                     nextstate = S2;
                  end
                  7'b1100011: begin  //beq
                     nextstate = S01;
                  end
                  7'b0110011: begin 
                     nextstate = S6; //r_type
                  end
                  7'b0010011: begin 
                     nextstate = S8; //i_type
                  end
                  7'b1101111: begin 
                     nextstate = S9; //j_type
                  end
                  default:      nextstate = S0; 
               endcase
            end
          S2:  
            begin
               controls  =14'b0_0_0_0_0_xx_01_10_0_00;
               nextstate = op[5] ? S5:S3 ;
            end
          S3: 
            begin
               controls  =14'b0_0_0_0_0_00_xx_xx_1_00;
               nextstate = S4;
            end
          S4: 
            begin
               controls  =14'b0_0_1_0_0_01_xx_xx_0_00;
               nextstate =S0;
            end
          S5: 
            begin
               controls  =14'b0_0_0_1_0_00_xx_xx_1_xx;
               nextstate =S0;
            end
          S6: 
            begin
               controls  =14'b0_0_0_0_0_xx_00_10_0_10;
               nextstate =S7;
            end
          S7: 
            begin
               controls  =14'b0_0_1_0_0_00_xx_10_0_10;
               nextstate =S0;
            end
          S8: 
            begin
               controls  = 14'b0_0_0_0_0_00_01_10_0_10;
               nextstate =S7;
            end
          S9: 
            begin      // branch_PCupdate_RegWrite_MemWrite_IRWrite_ResultSrc[1:0]_ALUSSrcB[1:0]_AluSRcA[1:0]_AdrSrc_ALUop[1:0]
               controls  =14'b0_1_0_0_0_00_10_01_0_00;
               nextstate =S7;
            end
          S01: 
            begin
               controls  =14'b1_0_0_0_1_00_00_10_0_01;
               nextstate =S0;
            end
          default: nextstate = S0;
        endcase   
     // output logic
     assign y = (state == S0);
      
   //  always_comb
   //     case(op)
   //     // branch_PCupdate_RegWrite_MemWrite_IRWrite_ResultSrc[1:0]_ALUSSrcB[1:0]_AluSRcA[1:0]_AdrSrc_ALUop[1:0]
   //          7'b0000011: controls = 11'b1_00_1_0_01_0_00_0; // lw
   //        7'b0100011: controls = 11'b0_01_1_1_00_0_00_0; // sw
   //        7'b0110011: controls = 11'b1_xx_0_0_00_0_10_0; // R-type
   //        7'b1100011: controls = 11'b0_10_0_0_00_1_01_0; // beq
   //        7'b0010011: controls = 11'b1_00_1_0_00_0_10_0; // I-type ALU
   //        7'b1101111: controls = 11'b1_11_0_0_10_0_00_1; // jal
   //         default:      controls = 11'bx_xx_x_x_xx_x_xx_x; // ??? 
   //      endcase
 endmodule