module shiftLeftNBits
#(parameter bits=32)
(input logic [bits-1:0] a, b, output logic [bits-1:0] y);
int temp;
always @( b )
    temp = b;
assign y = a<<temp;
endmodule
