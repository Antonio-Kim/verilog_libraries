module mux2(input  logic [17:0]SW,
			  output logic LEDR[0]);
	/**
	* Here Switch 17 is used as Select input,
	* SW[0] and SW[1] used as two data input
	* and LEDR[0] is used as data output
	*/
	assign LEDR[0]= SW[17] ? SW[1] : SW[0];
endmodule