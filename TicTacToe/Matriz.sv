//Matriz de juego
//Entradas:
//		jugador:
//			1: X
//			0: O
//		pos: Posición en el tablero
// 00: Espacio vacío
// 01: Espacio con X
// 10: Espacio con O
module Matriz(input clk, input rst, input[3:0] pos, input jugador, output [8:0][1:0] matriz);
//	reg [8:0][1:0] matriz;
	logic [1:0] elemento;
	
	always_ff @(posedge jugador or posedge rst)
		if(rst)
			matriz[8:0] = 0; //00
		else
			if (matriz[pos] == 0) matriz[pos] = elemento;
		
		
	always_comb
		begin
		case(jugador)
			0: elemento = 2; //10
			1: elemento = 1; //01
			default: elemento = 3; //11
		endcase
		end
endmodule 