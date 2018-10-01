module pipeDE(input logic clk,input logic [31:0] RD1D,RD2D, ExtendD, input logic [3:0] WA3D, condD,
input logic regWriteD,ALUSrcD, MemtoRegD,MemWriteD,PCSrcD, BranchD, input logic[1:0] ALUControlD, FlagWriteD,
output logic [31:0] RD1E,RD2E, ExtendE, output logic [3:0] WA3E, condE,
output logic regWriteE,ALUSrcE, MemtoRegE,MemWriteE,PCSrcE, BranchE, output logic[1:0] ALUControlE,FlagWriteE);

	always_ff @(posedge clk)
	begin
	RD1E <= RD1D;
	RD2E <= RD2D;
	ExtendE <= ExtendD;
	WA3E <= WA3D;
	regWriteE <= regWriteD;
	ALUSrcE <= ALUSrcD;
	ALUControlE <= ALUControlD;
	MemtoRegE<= MemtoRegD;
	MemWriteE <= MemWriteD;
	PCSrcE <= PCSrcD;
	FlagWriteE <= FlagWriteD;
	BranchE <= BranchD;
	condE <= condD;
	end

endmodule
