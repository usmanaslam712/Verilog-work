// Full adder verilog code
// Written by Usman Aslam
module fulladder (Cout, S, A, B, Cin);
  output Cout, S;
  input A,B,Cin;
  wire w1,w2,w3;
  xor (S, A, B, Cin);
  and (w1, B, Cin);
  and (w2, A, Cin);
  and (w3, A, B);
  or (Cout, w1, w2, w3);
endmodule