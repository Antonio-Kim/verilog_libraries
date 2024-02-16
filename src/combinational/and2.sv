module and2 (input logic [1:0] SW,
			output logic [0:0] LEDR);
			  
	assign LEDR[0] = SW[0] & SW[1];
endmodule