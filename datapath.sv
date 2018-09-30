module datapath (input		logic				clk,reset,
						input		logic	[1:0]		RegSrc,
						input		logic				RegWrite,
						input		logic	[1:0]		ImmSrc,
						input		logic				ALUSrc,
						input		logic	[1:0]		ALUControl,
						input		logic				MemtoReg,
						input		logic				PCSrc,
						output	logic	[3:0]		ALUFlags,
						output	logic	[31:0]	PCF,
						output		logic	[31:0]	InstrF,
						output	logic	[31:0]	ALUResultE, WriteDataE,
						input logic MemWrite);
						
	logic	[31:0]	PCNext, PCPlus4F, PCPlus8,PCPlus4D;
	logic	[31:0]	resultF, resultD, resultE, resultW, InstrD, RD1, RD2, ExtImm, SrcAE, SrcBE, WriteDataM,ReadDataW, ALUOutM,ALUOutW, RD;
	logic	[3:0]		RA1D, RA2D;
	
	//FETCH
	imem imem(PCF, InstrF);	
	adder	#(32)	pcadd1(PCF, 32'b100, PCPlus4F);
	pipeFD pipelineFD (clk, InstrF, PCPlus4F,resultD, InstrD, PCPlus4D,resultF);
	mux2	#(32)	pcmux(PCPlus4F, resultF, PCSrc, PC);
	pipePC pipelinePC (clk, PC, PCF);
	
	//DECODE
	adder	#(32)	pcadd2(PCPlus4D, 32'b100, PCPlus8);
	mux2	#(4)	ra1mux(InstrD[19:16], 4'b1111, RegSrc[0], RA1D);
	mux2	#(4)	ra2mux(InstrD[3:0], InstrD[15:12], RegSrc[1], RA2D);	
	extend ext(InstrD[23:0], ImmSrc, ExtImm);	
	regfile rf(clk, RegWrite, RA1D, RA2D, InstrD[15:12], resultD, PCPlus8,RD1, RD2);
	pipeDE pipelineDE(clk,RD1,RD2,ExtImm,resultE,SrcAE,WriteDataE,ExtImmE,resultD);
	
	//EXECUTE	
	mux2 #(32) srcbmux(WriteDataE, ExtImmE, ALUSrc, SrcBE);
	alu alu(SrcAE, SrcBE, ALUControl, ALUResultE, ALUFlags);	
	pipeEM pipelineEM(clk,ALUResultE,WriteDataE,resultM,ALUOutM,WriteDataM,resultE);
	
	//MEMORY	
	dmem dmem(clk, MemWrite, ALUOutM, WriteDataM, RD);	
	pipeMW pipelineMW(clk, RD, ALUOutM,resultW, ReadDataW, ALUOutW,resultM);
	
	//WRITEBACK
	mux2	#(32)	resmux(ALUOutW, ReadDataW, MemtoReg, resultW);	
	
	
endmodule
