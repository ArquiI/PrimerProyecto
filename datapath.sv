module datapath (input		logic				clk,reset,
						input		logic	[1:0]		RegSrcD,
						input		logic				RegWriteD,
						input		logic	[1:0]		ImmSrcD,
						input		logic				ALUSrcD,
						input		logic	[1:0]		ALUControlD,
						input		logic				MemtoRegD,
						input		logic				PCSrcD,
						output	logic	[3:0]		ALUFlags,condE,
						output	logic	[31:0]	PCF,
						output	logic	[31:0]	InstrF,
						output	logic	[31:0]	ALUResultE, WriteDataE,
						output logic [1:0] FlagWriteE,
						output logic PCSrcE, RegWriteE, MemWriteE, BranchE,
						input logic MemWriteD, BranchD,PCSrc,RegWrite,MemWrite,
						input logic [1:0] FlagWriteD);
						
	logic	[31:0]	PCPlus4F, PCPlus4D;
	logic	[31:0]	resultW, InstrD, RD1, RD2, ExtImm, SrcAE, SrcBE, WriteDataM,ReadDataW, ALUOutM,ALUOutW, RD;
	logic	[3:0]		RA1D, RA2D;
	
	//FETCH
	imem imem(PCF, InstrF);	
	adder	#(32)	pcadd1(PCF, 32'b100, PCPlus4F);
	pipeFD pipelineFD (clk, InstrF, InstrD);
	mux2	#(32)	pcmux(PCPlus4F, resultW, PCSrcW, PC);
	pipePC pipelinePC (clk, PC, PCF);
	
	//DECODE
	mux2	#(4)	ra1mux(InstrD[19:16], 4'b1111, RegSrcD[0], RA1D);
	mux2	#(4)	ra2mux(InstrD[3:0], InstrD[15:12], RegSrcD[1], RA2D);	
	extend ext(InstrD[23:0], ImmSrcD, ExtImm);	
	regfile rf(clk, RegWriteW, RA1D, RA2D, WA3W, resultW, PCPlus4F,RD1, RD2);
	pipeDE pipelineDE(clk,RD1,RD2,ExtImm,InstrD[15:12],InstrD[31:28],RegWriteD,ALUSrcD, MemtoRegD,MemWriteD,PCSrcD,BranchD, ALUControlD,FlagWriteD,
							SrcAE,WriteDataE,ExtImmE,WA3E,condE,RegWriteE,ALUSrcE, MemtoRegE,MemWriteE,PCSrcE,BranchE, ALUControlE,FlagWriteE);
	
	//EXECUTE	
	mux2 #(32) srcbmux(WriteDataE, ExtImmE, ALUSrcE, SrcBE);
	alu alu(SrcAE, SrcBE, ALUControlE, ALUResultE, ALUFlags);	
	pipeEM pipelineEM(clk,ALUResultE,WriteDataE,WA3E,MemtoRegE,PCSrc,RegWrite,MemWrite,ALUOutM,WriteDataM,WA3M,MemtoRegM,PCSrcM,RegWriteM,MemWriteM);
	
	//MEMORY	
	dmem dmem(clk, MemWriteM, ALUOutM, WriteDataM, RD);	
	pipeMW pipelineMW(clk, RD, ALUOutM, WA3M,MemtoRegM,PCSrcM,RegWriteM,ReadDataW, ALUOutW,WA3W,MemtoRegW,PCSrcW,RegWriteW);
	
	//WRITEBACK
	mux2	#(32)	resmux(ALUOutW, ReadDataW, MemtoRegW, resultW);	
	
	
endmodule
