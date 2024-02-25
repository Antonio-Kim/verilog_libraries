module sevensegdecoder(
	input logic[3:0] SW,
	output logic[6:0] HEX0,
	output logic[6:0] HEX1
);
	/**
	 * 8-bit Binary to Decimal Decoder
	 *
	 * This is a simple look up table decoding
	 * binary numbers which are the inputs from
	 * switches on DE2 board, and the conversion
	 * is displayed on seven segment display 
	 * on the board. 
	 *
	 * The mapping of seven segment display is used
	 * as follow:
	 *
	 *                  0
	 *                 ---
	 *               5| 6 | 1
	 *                |---|
	 *               4|   | 2
	 *                 ---
	 *                  3 
	 *
	 * Note that the number corresponds to each line
	 * of the seven segment display, and is active low
	 * input. Thus, to turn off specific line of the 
	 * display, you will need to mask with 1 of the 
	 * corresponding bit. For example, to display 0,
	 * you will need to turn 6th bit to 1, which is
	 * 0b100_0000
	 */
	always_comb begin
		case(SW)
			4'b0000:	begin
							HEX0=7'b100_0000;  // 0
							HEX1=7'b100_0000;
						end
			4'b0001:	begin
							HEX0=7'b111_1001; // 1
							HEX1=7'b100_0000;
						end
			4'b0010:	begin
							HEX0=7'b010_0100; // 2
							HEX1=7'b100_0000;
						end
			4'b0011:	begin
							HEX0=7'b011_0000; // 3
							HEX1=7'b100_0000;
						end
			4'b0100:	begin
							HEX0=7'b001_1001; // 4
							HEX1=7'b100_0000;
						end
			4'b0101: begin
							HEX0=7'b001_0010; // 5
							HEX1=7'b100_0000;
						end
			4'b0110:	begin
							HEX0=7'b000_0011; // 6
							HEX1=7'b100_0000;
						end
			4'b0111:	begin
							HEX0=7'b111_1000; // 7
							HEX1=7'b100_0000;
						end
			4'b1000:	begin
							HEX0=7'b000_0000; // 8
							HEX1=7'b100_0000;
						end
			4'b1001:	begin
							HEX0=7'b001_1000; // 9
							HEX1=7'b100_0000;
						end
			4'b1010:	begin
							HEX0=7'b100_0000; // 10
							HEX1=7'b111_1001;
						end
			4'b1011:	begin
							HEX0=7'b111_1001; // 11
							HEX1=7'b111_1001;
						end
			4'b1100:	begin
							HEX0=7'b010_0100; // 12
							HEX1=7'b111_1001;
						end
			4'b1101:	begin
							HEX0=7'b011_0000; // 13
							HEX1=7'b111_1001;
						end
			4'b1110:	begin
							HEX0=7'b001_1001; // 14
							HEX1=7'b111_1001;
						end
			4'b1111:	begin
							HEX0=7'b001_0010; // 15
							HEX1=7'b111_1001;
						end
			default: begin
							HEX0=7'b100_0000;
							HEX1=7'b100_0000;
						end
		endcase
	end
endmodule
