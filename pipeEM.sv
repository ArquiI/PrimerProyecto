module pipeEM(input logic clk,input logic [31:0] ALUResultE,WriteDataE,resultM, output logic [31:0] ALUOutM,WriteDataM,resultE);

	always_ff @(posedge clk)
	begin
	ALUOutM <= ALUResultE;
	WriteDataM <= WriteDataE;
	resultE <= resultM;
	end
	
endmodule
