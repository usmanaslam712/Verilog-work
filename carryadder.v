`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    N/A
// Design Name: 
// Module Name:    carryadder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//This code instructs how to build a ripple carry adder using full adders
// 4 full adders are being used which are made in another file
// This program is calling that "fulladder"
// Use fulladder.v in Xilinx and then create carryadder
//Created by Usman Aslam
module carryadder(Co, S, A, B); //A and B are the respective 4 bit inputs
input [3:0] A;
input [3:0] B;
output [3:0] S; //S is the sum
output Co; //Co is the carry output

wire w1,w2,w3; //These wires are used to transport the carry to Co
fulladder G1 (S[0], w1, A[0], B[0], 1'b0); //1'b0 is being used because initially the carry is 0 so hence we are providing 0 as initial carry
fulladder G2 (S[1], w2, A[1], B[1], w1);
fulladder G3 (S[2], w3, A[2], B[2], w2);
fulladder G4 (S[3], Co, A[3], B[3], w3);

endmodule
