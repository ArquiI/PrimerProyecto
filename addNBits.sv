module addNBits
#(parameter bits=32)
(input logic cin,input logic [bits-1:0] a, b, output logic [bits-1:0] sum, cout);			
	genvar i;
	generate
	   addOneBit addO (cin,a[0],b[0],sum[0],cout[0]);
		for(i=1;i<bits;i=i+1)begin:loop
		
		addOneBit addO (cout[i-1],a[i],b[i],sum[i],cout[i]);
		end
	endgenerate
	
endmodule
