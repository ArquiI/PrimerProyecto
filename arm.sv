module arm(input logic clk, reset,
				output logic [31:0] PCF,
				output logic [31:0] InstrF,
				output logic MemWrite,
				output logic [31:0] ALUResultE, WriteData);
	logic [3:0]	ALUFlags;
	logic				RegWrite,
						ALUSrc, MentoReg, PCSrc;
	logic [1:0]	RegSrc, ImmSrc, ALUControl;
	
	controller c(	clk, reset, InstrF[31:12], ALUFlags,
						RegSrc, RegWrite, ImmSrc,
						ALUSrc, ALUControl,
						MemWrite, MentoReg, PCSrc);
						
	datapath dp(clk, reset, RegSrc, RegWrite, ImmSrc,
						ALUSrc, ALUControl, MentoReg, PCSrc,
						ALUFlags, PCF, InstrF, ALUResultE, WriteData, MemWrite);
						
endmodule
