module pipePC(input logic clk,input logic [31:0] PC, output logic [31:0] PCF);

	always_ff @(posedge clk)
	begin
	PCF <= PC;
	end

endmodule