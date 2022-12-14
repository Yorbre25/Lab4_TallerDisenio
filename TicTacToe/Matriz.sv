//Matriz de juego
//Entradas:
//		jugador:
//			1: X
//			0: O
//		pos: Posición en el tablero
// 00: Espacio vacío
// 01: Espacio con X
// 10: Espacio con O
module Matriz(input clk, input rst, input[3:0] pos, input jugador, input boton, output colocado, output [8:0][1:0] matriz);
//	reg [8:0][1:0] matriz;
	logic [8:0][1:0] matrizAux;
	logic colocadoAux;
	logic [1:0] elemento;
	
	always_ff @(posedge clk, posedge boton or posedge rst)
		if(rst) begin
			matrizAux[8:0] = 0; //00
			colocadoAux = 0;
			end
		else if(boton) begin
			if (matrizAux[pos] == 0) begin
				matrizAux[pos] = elemento;
				colocadoAux = 1;
				end
			end
		else
			colocadoAux = 0;
			
		
	always_comb
		begin
		case(jugador)
			0: elemento = 2; //10
			1: elemento = 1; //01
			default: elemento = 3; //11
		endcase
		end
		
	assign matriz = matrizAux;
	assign colocado = colocadoAux;
endmodule 