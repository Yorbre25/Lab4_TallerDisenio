module Turnos (input clk, rst, jugado, tiempo, output salida);
	 logic [0:0] estadoActual, estadoSiguiente;
	
	always_ff @(posedge clk or posedge rst)
	if(rst)
		estadoActual = 0;
	else
		estadoActual = estadoSiguiente;
		
	always_comb
	case(estadoActual)
		0: if (jugado||tiempo) estadoSiguiente = 1; else estadoSiguiente = 0;
		1: if (tiempo||jugado) estadoSiguiente = 0; else estadoSiguiente = 1;
		default: estadoSiguiente = 0;
	endcase
	
	assign salida = estadoActual;
endmodule 