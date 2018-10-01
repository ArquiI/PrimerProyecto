module controller(input logic	clk,reset,PCSrcE,RegWriteE,MemWriteE,BranchE,
						input logic	[27:12] Instr,
						input logic [3:0] condE,
						input	logic [3:0]	ALUFlags,
						output logic [1:0] RegSrcD,
						output logic RegWriteD,
						output logic [1:0] ImmSrcD,
						output logic ALUSrcD,
						output logic [1:0] ALUControlD,
						output logic MemWriteD, MemtoRegD,
						output logic PCSrcD, FlagWriteD, BranchD, PCSrc,RegWrite,MemWrite,
						input logic [1:0] FlagWriteE);
	logic	[1:0]	FlagW;
	logic			PCS, RegW, MemW;

	decoder		dec(Instr[27:26], Instr[25:20], Instr[15:12],
						FlagWriteD, PCSrcD, RegWriteD, MemWriteD,
						MemtoRegD, ALUSrcD, ImmSrcD, RegSrcD, ALUControlD);
					
	condlogic 	cl(clk, reset,BranchE, condE, ALUFlags,
						FlagWriteE, PCSrcE, RegWriteE, MemWriteE,
						PCSrc, RegWrite, MemWrite);
endmodule
