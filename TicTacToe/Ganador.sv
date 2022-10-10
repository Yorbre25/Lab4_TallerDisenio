module Ganador(input clk, rst, input[8:0][1:0] matrizDeJuego, output win);
	logic [0:0]estadoActual, estadoSiguiente;
	
	always_ff@(posedge clk, posedge rst)
		if(rst)
			estadoActual = 0;
		else
			estadoActual = estadoSiguiente;
	logic juego;
	always_ganador(matrizDeJuego, juego);
	always_comb
		case(estadoActual)
		0: if(juego) estadoSiguiente = 1; else estadoSiguiente = 0;
		1: estadoSiguiente = 1;
		default: estadoSiguiente  = 0;
		endcase
	
	assign win = (estadoActual==1);
	
endmodule 