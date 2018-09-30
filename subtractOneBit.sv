module subtractOneBit(input logic cin, a, b, output logic sum, cout);

logic notB;
logic p;
logic g;
logic c;

notOneBit notOn (b, notB);
xorOneBit xorp (a,notB,p);
andOneBit andg (a,notB,g);
andOneBit andc (p,cin,c);
xorOneBit xors (p,cin,sum);
orOneBit orCo (g,c,cout);
endmodule
