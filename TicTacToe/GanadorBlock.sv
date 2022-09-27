module GanadorBlock(input clk, rst, input [3:0]posicion, revisar, output gana);
	logic [7:0] entrada;
	logic [7:0] ganaAux;
	
	
	Ganador fila0(clk, rst, entrada[0], ganaAux[0]);//0-1-2
	Ganador fila1(clk, rst, entrada[1], ganaAux[1]);//3-4-5
	Ganador fila2(clk, rst, entrada[2], ganaAux[2]);//6-7-8

	Ganador column0(clk, rst, entrada[3], ganaAux[3]);//0-3-6
	Ganador column1(clk, rst, entrada[4], ganaAux[4]);//1-4-7
	Ganador column2(clk, rst, entrada[5], ganaAux[5]);//2-5-8
	
	Ganador diag0(clk, rst, entrada[6], ganaAux[6]);//0-4-8
	Ganador diag1(clk, rst, entrada[7], ganaAux[7]);//2-4-6
	
	always_comb
		case (posicion)
			0: entrada = 8'b01001001;
			1: entrada = 8'b00010001;
			2:	entrada = 8'b10100001;
			3: entrada = 8'b00001010;
			4: entrada = 8'b11010010;
			5: entrada = 8'b00100010;
			6: entrada = 8'b10001100;
			7: entrada = 8'b00010100;
			8: entrada = 8'b01100100;
			default: entrada = 0;
		
		endcase
		
	always_comb
		begin
		if(ganaAux[0] | ganaAux[1] | ganaAux[2] | ganaAux[3] | ganaAux[4] | ganaAux[5] | ganaAux[6] | ganaAux[7])
			gana = 1;
		else
			gana = 0;
		end

endmodule 