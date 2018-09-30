module alu
#(parameter bits=32)
(input logic  [bits-1:0] a, b, input logic [1:0] s, output logic  [bits-1:0] y, output logic [3:0] Flags);
	
	//Flags = N,Z,C,V
	//Variables Temporales
	logic	V,C,Z,N;

	logic [bits-1:0]  D0;
	logic [bits-1:0]  D1;
	logic [bits-1:0]  D2;
	logic [bits-1:0]  D3;

	logic [bits-1:0]  TempCoutSum;
	logic [bits-1:0]  TempCoutSub;
	logic TempCout;
	logic [bits-1:0] cond;
	logic [bits-1:0] tempB;
	logic [bits-1:0] tempA;
	logic	cinSum,cinSub;
	
	assign cinSum=0;
	assign cinSub=1;
	

	assign tempA[bits-1:0]=a;
	assign tempB[bits-1:0]=b;
	//------------------------
	
	
	//Operación AND
	andNBits #(bits) AND (a, b, D0);
	//Operación OR
	orNBits #(bits) OR (a, b, D1);
	//Operación ADD
	addNBits #(bits) ADD (cinSum, a, b, D2, TempCoutSum);
	//Operación SUBTRACT
	subtractNBits #(bits) SUB (cinSub, tempA, tempB, D3, TempCoutSub);
	//MUX 4x1
	mux4x1 #(bits) MUX (D0,D1,D2,D3, s, y);
	
	//Bandera de Zero
	zeroFlag #(bits) zf(y, Z);
	negativeFlag #(bits) nf (s, D3, N);
	carryFlag #(bits) cf (s, TempCoutSum, TempCoutSub, C);
	

	
	always @(*)
	begin
	if(s[1]==0 & s[0]==0)
	cond<=D2;
	else
	cond<=D3;
	end
	overflowFlag #(bits) vf (a[bits-1],b[bits-1], cond[bits-1], s, V);
	
	
	assign Flags = {N,Z,C,V};

	
endmodule
