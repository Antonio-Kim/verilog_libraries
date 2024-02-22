module mux4(input logic [17:0] SW,
				 output logic LEDR[0]);
    /**
     *  mux2 is a module in a lower hierarchy than mux4
     *  and must be so to run this code. You also will need to
     *  modify mux2 in this code from switches and LEDR into different
     *  variables to get it working. 
     *
     *  Setting SW[16] to 0 picks the first parameter of lowmux and high mux,
     *  whereas 1 picks the second parameter (SW[1] or SW[3]).
     *  Setting SW[17] to 0 selects lowmux, whereas 1 selects highmux.
     */
    logic low, high;

    mux2 lowmux(SW[0], SW[1], SW[16], low);
    mux2 highmux(SW[2], SW[3], SW[16], high);
    mux2 finalmux(low, high, SW[17], LEDR[0]);
			
endmodule