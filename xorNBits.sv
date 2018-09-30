module xorNBits
#(parameter bits=8)
(input logic [bits-1:0] a, b, output logic [bits-1:0] y);

genvar i;
generate
    for(i=0; i<bits; i=i+1) begin: forloop
        xorOneBit orO(a[i], b[i], y[i]);
        end
endgenerate
endmodule