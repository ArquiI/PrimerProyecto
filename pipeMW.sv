module pipeMW(input logic clk,input logic [31:0] RDM, ALUOutM,resultW, output logic [31:0] ReadDataW, ALUOutW,resultM);

	always_ff @(posedge clk)
	begin
	ReadDataW <= RDM;
	ALUOutW <= ALUOutM;
	end

endmodule
