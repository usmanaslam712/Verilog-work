// Code for half adder
module halfadder (sum, carry, A, B);
  input A,B;
  output sum, carry;
  xor (sum, A, B);
  and (carry, A, B);
endmodule
