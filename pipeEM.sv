module pipeEM(input logic clk,input logic [31:0] ALUResultE,WriteDataE, input logic [3:0] WA3E, input logic MemtoRegE,PCSrc,RegWrite,MemWrite,
 output logic [31:0] ALUOutM,WriteDataM, output logic [3:0] WA3M, output logic MemtoRegM,PCSrcM,RegWriteM,MemWriteM);

	always_ff @(posedge clk)
	begin
	ALUOutM <= ALUResultE;
	WriteDataM <= WriteDataE;
	WA3M <= WA3E;
	MemtoRegM <= MemtoRegE;
	MemWriteM <= MemWrite;
	RegWriteM<=RegWrite;
	PCSrcM<=PCSrc;
	
	end
	
endmodule
