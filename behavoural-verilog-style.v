// This code shows how to code in Verilog using behavoural style
// In this code a 4x1 MUX is designed using verilog behavoural style
// Created by Usman Aslam
module mux4x1 (out, S, D);
  input [3:0] D;
   input [1:0] S;
   output reg out;
   //In behavoural we store our output using register or "reg"
  always @(S or D) //always @() is used in behvoural style. Think of it as a loop.
  begin // where our always function starts 
    case (S) //A normal case statement that is similarly used in C++ or C
      2'b00 : out = D[0]; //number of bits : output variable = input value [bit number]
      2'b01 : out = D[1];
      2'b10 : out = D[2];
      2'b11 : out = D[3];
  endcase //ending our case
 end //ending our always @()
endmodule //program or module terminates