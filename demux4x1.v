`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name:    demux4x1 
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
//This verilog code focuses on the designing a 1x4 demultiplexer
//Designed by Usman Aslam 
module demux4x1(Y, E, S);
input [1:0] S; //Select lines
input E; //Enable line
output [3:0] Y; //Output (4 bits)

wire w1, w2;
not N1 (w1, S[0]);
not N2 (w2, S[1]);
and A1 (Y[0], w2, w1, E);
and A2 (Y[1], w2, S[0], E);
and A3 (Y[2], S[1], w1, E);
and A4 (Y[3], S[1], S[0], E);


endmodule
