module pipeMW(input logic clk,input logic [31:0] RDM, ALUOutM, input logic [3:0] WA3M,input logic MemtoRegM, PCSrcM,RegWriteM,
 output logic [31:0] ReadDataW, ALUOutW, output logic [3:0] WA3W,output logic MemtoRegW,PCSrcW, RegWriteW);

	always_ff @(posedge clk)
	begin
	ReadDataW <= RDM;
	ALUOutW <= ALUOutM;
	WA3W <= WA3M;
	MemtoRegW<=MemtoRegM;
	PCSrcW<=PCSrcM;
	RegWriteW<=RegWriteM;
	end

endmodule
