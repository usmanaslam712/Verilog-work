module Mux_4to1_gate(
input [3:0] i,
input [1:0] s,
output o
);
 
wire NS0, NS1;
wire Y0, Y1, Y2, Y3;
not N1(NS0, s[0]);
not N2(NS1, s[1]);
and A1(Y0, i[0], NS1, NS0);
and A2(Y1, i[1], NS1, s[0]);
and A3(Y2, i[2], s[1], NS0);
and A4(Y3, i[3], s[1], s[0]);
or O1(o, Y0, Y1, Y2, Y3);
endmodule