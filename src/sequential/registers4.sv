module registers4(input logic [3:0] a,
				  input clk,
				  output logic [3:0] y);

		always_ff@(posedge clk)
		begin
			y <= a;
		end	  
endmodule