module condlogic (input		logic			clk, reset,BranchE,
						input		logic	[3:0]	CondE,
						input		logic [3:0]	ALUFlags,
						input		logic [1:0]	FlagWriteE,
						input		logic			PCSrcE, RegWriteE, MemWriteE,
						output	logic			PCSrc, RegWrite,
													MemWrite);
																										
	logic	[1:0]	FlagWrite;
	logic	[3:0]	Flags;
	logic			CondEx;
	
	flopenr #(2)	flagreg1(clk, reset, FlagWrite[1],
									ALUFlags[3:2], Flags[3:2]);
									
	flopenr #(2)	flagreg0(clk, reset, FlagWrite[0],
									ALUFlags[1:0], Flags[1:0]);
									
									 
	//write controls are conditional
	condcheck	cc(CondE, Flags, CondEx);
	assign	FlagWrite	= 	FlagWriteE & 	{2{CondEx}};
	assign	RegWrite		=	RegWriteE	&	CondEx;
	assign	MemWrite		=	MemWriteE	&	CondEx;
	assign	PCSrc			=	(PCSrcE	&	CondEx) | (BranchE & CondEx);
	
	
endmodule

									
		