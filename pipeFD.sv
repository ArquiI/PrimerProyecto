module pipeFD(input logic clk,input logic [31:0] InstrF, pcF,resultD, output logic [31:0] InstrD, pcD, resultF);

	always_ff @(posedge clk)
	begin
	InstrD <= InstrF;
	pcD <= pcF;
	resultF <= resultD;
	end

endmodule
