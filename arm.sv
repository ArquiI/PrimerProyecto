module arm(input logic clk, reset,
				output logic [31:0] PCF,
				output logic [31:0] InstrF,
				output logic MemWriteD,
				output logic [31:0] ALUResultE, WriteData);
	
	logic [3:0]	ALUFlags, condE;
	logic PCSrcE,RegWriteE,MemWriteE,BranchE;
	logic [1:0]	RegSrcD,FlagWriteE;
	
	logic RegWriteD, ALUSrcD,MentoRegD,PCSrcD,BranchD,PCSrc,RegWrite,MemWrite;
	logic [1:0]ImmSrcD, ALUControlD,FlagWriteD;
	
	
	
	controller c(clk, reset,PCSrcE,RegWriteE,MemWriteE, BranchE, InstrF[27:12],condE, ALUFlags,
						RegSrcD, RegWriteD, ImmSrcD, ALUSrcD, ALUControlD, MemWriteD, MentoRegD, PCSrcD, FlagWriteD,BranchD,PCSrc,RegWrite,MemWrite, FlagWriteE);
						
	datapath dp(clk, reset, RegSrcD, RegWriteD, ImmSrcD, ALUSrcD, ALUControlD, MentoRegD, PCSrcD,
						ALUFlags, condE, PCF, InstrF, ALUResultE, WriteData,
						FlagWriteE,PCSrcE,RegWriteE,MemWriteE,BranchE, MemWriteD,BranchD,PCSrc,RegWrite,MemWrite,FlagWriteD);
						
endmodule
