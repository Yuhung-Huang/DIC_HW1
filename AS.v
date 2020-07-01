`include "Full_adder.v"


module AS(sel, A, B, S, O);
input [3:0] A, B;
input sel;
output [3:0] S;
output O;


wire tmp1;
wire tmp2;
wire tmp3;
wire tmp4;
wire c1;
wire c2;
wire c3;
wire c4;

xor(tmp1,B[0],sel);
xor(tmp2,B[1],sel);
xor(tmp3,B[2],sel);
xor(tmp4,B[3],sel);

Full_adder FA1(.a(A[0]),
               .b(tmp1),
               .cin(sel),
               .sum(S[0]),
               .cout(c1));

Full_adder FA2(.a(A[1]),
               .b(tmp2),
               .cin(c1),
               .sum(S[1]),
               .cout(c2));
Full_adder FA3(.a(A[2]),
               .b(tmp3),
               .cin(c2),
               .sum(S[2]),
               .cout(c3));
Full_adder FA4(.a(A[3]),
               .b(tmp4),
               .cin(c3),
               .sum(S[3]),
               .cout(c4));

xor(O,c4,c3);



endmodule


