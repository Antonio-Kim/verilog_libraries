module decoder2_4(input  logic [1:0]SW,
			  output logic [3:0] LEDR);
/**
 * Decoder from two inputs to four ouputs.
 * Here, the two inputs are Switch 1 and Switch 2
 * and the output are the four LEDs on the board
 */
	assign LEDR[0] = ~SW[0] & ~SW[1];
	assign LEDR[1] = SW[0] & ~SW[1];
	assign LEDR[2] = ~SW[0] & SW[1];
	assign LEDR[3] = SW[0] & SW[1];
endmodule