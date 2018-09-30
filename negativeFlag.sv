module negativeFlag
#(parameter bits=32)
(input logic [1:0]s, input logic [bits-1:0] data, output logic N);
	always @(*)
		begin
		if(s[1]==0 & s[0]==1)
			N<=data[bits-1];
		else
			N<=0;
		end
endmodule
