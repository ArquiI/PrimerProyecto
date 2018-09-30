module notNBits
#(parameter bits=32)
(input logic [bits-1:0] a, output logic [bits-1:0] y);

genvar i;
generate
	for(i=0; i<bits; i=i+1) begin: forloop
		notOneBit notO(a[i], y[i]);
		end
endgenerate
endmodule
