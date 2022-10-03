module deco_Rick(input logic[2:0] color,	
                 output logic [23:0] RGB);
				 
				 
//0x00000000 -> 0 -> fondo
//0xff040403 -> 1 -> negro
//0xffecd4a6 -> 2 -> celeste
//0xffb2dcff -> 3 -> color piel
//0xff485967 -> 4 -> cafe
//0xff53fe2d -> 5 -> verde
//0xfff3f3f3 -> 6 blanco



	always_comb
	case (color)
		3'd0: RGB = 24'hAAAAAA; //fondo
		3'd1: RGB = 24'h000000; //negro
		3'd2: RGB = 24'h00FFFF; //celeste
		3'd3: RGB = 24'hFFE4B5; //color crema
		3'd4: RGB = 24'hD2B48C; //cafe
		3'd5: RGB = 24'h00FF00; //verde
		3'd6: RGB = 24'hFFFFFF; //blanco
		3'd7: RGB = 24'hAAAAAA; //fondo
	
	endcase

endmodule

