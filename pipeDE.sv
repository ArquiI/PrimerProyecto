module pipeDE(input logic clk,input logic [31:0] RD1D,RD2D, ExtendD,resultE, output logic [31:0] RD1E,RD2E, ExtendE, resultD);

	always_ff @(posedge clk)
	begin
	RD1E <= RD1D;
	RD2E <= RD2D;
	ExtendE <= ExtendD;
	resultD<= resultE;
	end

endmodule
