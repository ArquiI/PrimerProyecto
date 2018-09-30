module overflowFlag
#(parameter bits=32)
(input logic a, b, sum, input logic [1:0] s, output logic y);

logic condALU_A_B,condA_SUM,condNOT_ALUControl;
logic condALU_A_B2,condALU_A_B3;
logic S0_32,s1_32;
logic condAND1,condAND2;
logic tempCond1;
logic tempCond2;


logic tempA;
logic tempB;

assign tempA=a;
assign tempB=b;

//XNor de A, B y ALUControl[0]
xorOneBit xorC1(tempA, tempB, condALU_A_B);
xorOneBit xorC2(condALU_A_B, s[0], condALU_A_B2);
//Negar el XOR
notOneBit notXor (condALU_A_B2, condALU_A_B3);

//xor de A y sum

xorOneBit xorSum (tempA, sum, condA_SUM);

//Negar ALUControl[1]
notOneBit notALUControl (s[1], condNOT_ALUControl);

//Aplicar un AND a las condicioens anteriores
andOneBit AND1 (condALU_A_B3, condA_SUM, condAND1);
andOneBit AND2 (condAND1, condNOT_ALUControl, condAND2);

assign y=condAND2;

		
		


endmodule 