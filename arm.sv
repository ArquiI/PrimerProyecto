module arm(input logic clk, reset,
				output logic [31:0] PCF,
				output logic [31:0] InstrF,
				output logic MemWriteD,
				output logic [31:0] ALUResultE, WriteData);
	logic [3:0]	ALUFlags;
	logic				RegWrite,
						ALUSrc, MentoReg, PCSrc;
	logic [1:0]	RegSrcD, ImmSrc, ALUControl;
	
	
	controller c(clk, reset,PCSrcE,RegWriteE,MemWriteE, BranchE, InstrF[27:12],condE, ALUFlags,
						RegSrcD, RegWriteD, ImmSrcD, ALUSrcD, ALUControlD, MemWriteD, MentoRegD, PCSrcD, FlagWriteD,BranchD,PCSrc,RegWrite,MemWrite, FlagWriteE);
						
	datapath dp(clk, reset, RegSrcD, RegWriteD, ImmSrcD, ALUSrcD, ALUControlD, MentoRegD, PCSrcD,
						ALUFlags, condE, PCF, InstrF, ALUResultE, WriteData,
						FlagWriteE,PCSrcE,RegWriteE,MemWriteE,BranchE, MemWriteD,BranchD,PCSrc,RegWrite,MemWrite,FlagWriteD);
						
endmodule
