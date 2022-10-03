module ROM_Circle(input [5:0] rom_addr, output [63:0] rom_data);
	always @*
		case (rom_addr)
			0: rom_data = 64'b0000000000000000000000000011111111111100000000000000000000000000;
			1: rom_data = 64'b0000000000000000000000111111111111111111110000000000000000000000;
			2: rom_data = 64'b0000000000000000000011111111111111111111111100000000000000000000;
			3: rom_data = 64'b0000000000000000011111111111111111111111111111100000000000000000;
			4: rom_data = 64'b0000000000000000111111111111111111111111111111110000000000000000;
			5: rom_data = 64'b0000000000000011111111111111111111111111111111111100000000000000;
			6: rom_data = 64'b0000000000000111111111111111111111111111111111111110000000000000;
			7: rom_data = 64'b0000000000011111111111111111111111111111111111111111100000000000;
			8: rom_data = 64'b0000000000111111111111111111111111111111111111111111110000000000;
			9: rom_data = 64'b0000000001111111111111111111111111111111111111111111111000000000;
		  10: rom_data = 64'b0000000011111111111111111111111111111111111111111111111100000000;
		  11: rom_data = 64'b0000000111111111111111111111111111111111111111111111111110000000;
		  12: rom_data = 64'b0000001111111111111111111111111111111111111111111111111111000000;
		  13: rom_data = 64'b0000001111111111111111111111111111111111111111111111111111000000;
		  14: rom_data = 64'b0000011111111111111111111111111111111111111111111111111111100000;
		  15: rom_data = 64'b0000111111111111111111111111111111111111111111111111111111110000;
		  16: rom_data = 64'b0000111111111111111111111111111111111111111111111111111111110000;
		  17: rom_data = 64'b0000111111111111111111111111111111111111111111111111111111110000;
		  18: rom_data = 64'b0001111111111111111111111111111111111111111111111111111111111000;
		  19: rom_data = 64'b0001111111111111111111111111111111111111111111111111111111111000;
		  20: rom_data = 64'b0001111111111111111111111111111111111111111111111111111111111000;
		  21: rom_data = 64'b0011111111111111111111111111111111111111111111111111111111111100;
		  22: rom_data = 64'b0011111111111111111111111111111111111111111111111111111111111100;
		  23: rom_data = 64'b0111111111111111111111111111111111111111111111111111111111111110;
		  24: rom_data = 64'b0111111111111111111111111111111111111111111111111111111111111110;
		  25: rom_data = 64'b0111111111111111111111111111111111111111111111111111111111111110;
		  26: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  27: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  28: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  29: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  30: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  31: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  32: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  33: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  34: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  35: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  36: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  37: rom_data = 64'b1111111111111111111111111111111111111111111111111111111111111111;
		  38: rom_data = 64'b0111111111111111111111111111111111111111111111111111111111111110;
		  39: rom_data = 64'b0111111111111111111111111111111111111111111111111111111111111110;
		  40: rom_data = 64'b0111111111111111111111111111111111111111111111111111111111111110;
		  41: rom_data = 64'b0011111111111111111111111111111111111111111111111111111111111100;
		  42: rom_data = 64'b0011111111111111111111111111111111111111111111111111111111111100;
		  43: rom_data = 64'b0001111111111111111111111111111111111111111111111111111111111000;
		  44: rom_data = 64'b0001111111111111111111111111111111111111111111111111111111111000;
		  45: rom_data = 64'b0001111111111111111111111111111111111111111111111111111111111000;
		  46: rom_data = 64'b0000111111111111111111111111111111111111111111111111111111110000;
		  47: rom_data = 64'b0000111111111111111111111111111111111111111111111111111111110000;
		  48: rom_data = 64'b0000111111111111111111111111111111111111111111111111111111110000;
		  49: rom_data = 64'b0000011111111111111111111111111111111111111111111111111111100000;
		  50: rom_data = 64'b0000001111111111111111111111111111111111111111111111111111000000;
		  51: rom_data = 64'b0000001111111111111111111111111111111111111111111111111111000000;
		  52: rom_data = 64'b0000000111111111111111111111111111111111111111111111111110000000;
		  53: rom_data = 64'b0000000011111111111111111111111111111111111111111111111100000000;
		  54: rom_data = 64'b0000000001111111111111111111111111111111111111111111111000000000;
		  55: rom_data = 64'b0000000000111111111111111111111111111111111111111111110000000000;
		  56: rom_data = 64'b0000000000011111111111111111111111111111111111111111100000000000;
		  57: rom_data = 64'b0000000000000111111111111111111111111111111111111110000000000000;
		  58: rom_data = 64'b0000000000000011111111111111111111111111111111111100000000000000;
		  59: rom_data = 64'b0000000000000000111111111111111111111111111111110000000000000000;
		  60: rom_data = 64'b0000000000000000011111111111111111111111111111100000000000000000;
		  61: rom_data = 64'b0000000000000000000011111111111111111111111100000000000000000000;
		  62: rom_data = 64'b0000000000000000000000111111111111111111110000000000000000000000;
		  63: rom_data = 64'b0000000000000000000000000011111111111100000000000000000000000000;
		  
		  
		endcase

endmodule 