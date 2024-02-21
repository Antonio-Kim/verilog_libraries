module fulladder2 (input logic [2:0] SW,
					output logic [1:0] LEDR);
/**
 * Here we are creating full adder with internal signal p and q.
 * SW[0] and SW[1] are two inputs, and SW[2] is the carry in of
 * the full adder. LEDR[0] is the output of the adder, and LEDR[1]
 * is the carry out.
 */
		logic p, q;
		assign p = SW[0] ^ SW[1];
		assign q = SW[0] & SW[1];
		assign LEDR[0] = p ^ SW[2];
		assign LEDR[1] = q | (p & SW[2]);
endmodule