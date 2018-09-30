module carryFlag
#(parameter bits=32)
(input logic [1:0]s, input logic [bits-1:0] TempCoutSum, TempCoutSub, output logic C);
	always @(*)
		begin
		if(s[1]==0 & s[0]==0)
		C<=TempCoutSum[bits-1];		
		else if(s[1]==0 & s[0]==1)
		C<=~TempCoutSub[bits-1];
		else
		C<=0;
		end
endmodule
