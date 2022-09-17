//FSM: Cambia el turno cuando coloca X/O o cuando
//acaba el tiempo. Cuando la salida es 1, es turno de X.
//Si la salida es 0, es turno de O.
// Entrada:
//		jugado 1: Se colocó un X/O
//		tiempo 1: Se acabó el tiempo
// Salida:
//		salida: El turno actual
module Turno(input clk, rst, jugado, tiempo, output salida);
	logic estadoActual, estadoSiguiente;
//	assign entrada = jugado | tiempo;
	
	//Logica estado acutal (secuencial)
	always_ff @(posedge clk or posedge rst)
		if(rst)
			estadoActual = 0;
		else
			estadoActual = estadoSiguiente;
			
	//Logica estado siguiente (combinacional)
	
	always_comb
		case(estadoActual)
			0: if (jugado | tiempo) estadoSiguiente = 1; else estadoSiguiente = 0;
			1: if (jugado | tiempo) estadoSiguiente = 0; else estadoSiguiente = 1;
			default: estadoSiguiente = 0;
		endcase
		
	//Logica de las salidas
	assign salida = estadoActual;
endmodule 