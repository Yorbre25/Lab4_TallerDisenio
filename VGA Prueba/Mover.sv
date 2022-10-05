//FSM: Atraviesa la matriz de juego para seleccionar donde 
//colocar la X/O
// Entrada:
//		1: Siguiente casilla
//		0: Nada
// Salida: Posicón en la matriz
module Mover (input clk, rst, entrada, output[3:0] salida);
	buttonBouncer bouncer(clk, rst, entrada, level_out); 
	logic [3:0]estadoActual, estadoSiguiente;
	
	//Logica estado acutal (secuencial)
	always_ff @(posedge clk or posedge rst)
		if(rst)
			estadoActual = 0;
		else
			estadoActual = estadoSiguiente;
			
	//Logica estado siguiente (combinacional)
	
	always_comb
		case(estadoActual)
			0: if (level_out) estadoSiguiente = 1; else estadoSiguiente = 0;
			1: if (level_out) estadoSiguiente = 2; else estadoSiguiente = 1;
			2: if (level_out) estadoSiguiente = 3; else estadoSiguiente = 2;
			3: if (level_out) estadoSiguiente = 4; else estadoSiguiente = 3;
			4: if (level_out) estadoSiguiente = 5; else estadoSiguiente = 4;
			5: if (level_out) estadoSiguiente = 6; else estadoSiguiente = 5;
			6: if (level_out) estadoSiguiente = 7; else estadoSiguiente = 6;
			7: if (level_out) estadoSiguiente = 8; else estadoSiguiente = 7;
			8: if (level_out) estadoSiguiente = 0; else estadoSiguiente = 8;
			default: estadoSiguiente = 0;
		endcase
		
	//Logica de las salidas
	assign salida = estadoActual;
endmodule 