module sprite_Rick(input clk,
                   input [9:0] posx,posy,pixelx, pixely,
						 output [23:0] RGB,
						 output visible);
		
		logic [2:0] rom_addr, rom_col;
		reg [7:0] rom_data;
		logic rom_bit, sq_circle_on;
		logic [9:0] circle_x_l, circle_x_r, circle_y_t, circle_y_b;
		always @*
			case (rom_addr)
				3'h0: rom_data = 8'b00111100;
				3'h1: rom_data = 8'b01111110;
				3'h2: rom_data = 8'b11111111;
				3'h3: rom_data = 8'b11111111;
				3'h4: rom_data = 8'b11111111;
				3'h5: rom_data = 8'b11111111;
				3'h6: rom_data = 8'b01111110;
				3'h7: rom_data = 8'b00111100;
			endcase
		assign circle_x_l = pixelx-3;
		assign circle_x_r = pixelx+4;
		assign circle_y_t = pixely-3;
		assign circle_y_b = pixely+4;
		assign sq_circle_on =
			(circle_x_l<=posx) && (posx<=circle_x_r) &&
			(circle_y_t<=posy) && (posy<=circle_y_b);
		assign rom_addr = posy[2:0]-circle_y_t[2:0];
		assign rom_col = posx[2:0]-circle_x_l[2:0];
		assign rom_bit = rom_data[rom_col];
		assign visible = sq_circle_on & rom_bit;
		assign RGB =24'h00FFFF;
endmodule
