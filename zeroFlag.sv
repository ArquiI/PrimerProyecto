module zeroFlag
#(parameter bits=32)
(input logic [bits-1:0] data, output logic Z);
	always @(*)
		begin
		if(data==0)
			Z<=1;
		else
			Z<=0;	
		end
endmodule
