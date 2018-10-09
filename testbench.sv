module testbench();

	logic				clk;
	logic				reset;
	logic	[31:0]	WriteData, PCF, InstrF,ALUResultE;
	logic				MemWriteD;
	
	
				
	//	instantiate device to be teste
	arm dut(clk, reset, PCF, InstrF, MemWriteD,ALUResultE,WriteData);
	
	//	initialize test
	initial
	begin
		reset <=1;	# 22; reset <=0;
	end
	
	//generate clock to secuence tests
	always
	begin
		clk <= 1; # 5; clk <=0; #5;
	end
	
	//check that 7 gets written to address 0x64
	//at end of program
	always@(negedge clk)
	begin
		if(MemWriteD) begin
			if(ALUResultE === 100 & WriteData === 7) begin
				$display("Simulation succeeded");
				
			end else if (ALUResultE !== 96) begin
				$display("Simulation failed");
				
			end
		end
	end
endmodule
