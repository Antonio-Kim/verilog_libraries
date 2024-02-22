module resettable_register( input  logic[3:0] a,
                            input  clk,
                            input  reset,
                            output logic [3:0] y);
			
    always_ff@(posedge clk)
    begin
        if (reset) y <= 4'b0;
        else y <= a;
    end
endmodule
