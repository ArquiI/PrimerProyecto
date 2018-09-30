module mux4x1
		#(parameter bits=32)
		(input logic  [bits-1:0] d0,d1,d2,d3, input logic  [1:0] s, output logic  [bits-1:0] y);

		//do:AND, d1:OR, d2:ADD, d3:Subtract
		logic [bits-1:0] t0;
		logic [bits-1:0] t1;
		logic [bits-1:0] t2;

		assign t0= s[0] ? d3:d2;// 1:sub, 0:add
		assign t1= s[0] ? d1:d0;// 1:or, 0:and
		
		
		assign t2= s[1] ? t1:t0;// 1:t1, 0:t0
		assign y=t2;
endmodule
