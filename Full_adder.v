module Full_adder(a,b,cin,sum,cout);

input a;
input b;
input cin;
output sum;
output cout;

wire tmp0;
wire tmp1;
wire tmp2;


xor(tmp0,a,b);
xor(sum,tmp0,cin);
and(tmp1,tmp0,cin);
and(tmp2,a,b);
or(cout,tmp1,tmp2);


endmodule




