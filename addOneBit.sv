module addOneBit(input logic cin, a, b, output logic sum, cout);

logic p;
logic g;
logic c;

xorOneBit xorp (a,b,p);
andOneBit andg (a,b,g);
andOneBit andc (p,cin,c);
xorOneBit xors (p,cin,sum);
orOneBit orCo (g,c,cout);

endmodule			