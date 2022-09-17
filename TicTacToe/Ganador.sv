// FSM: Determina cuando una fila se llena
// Entrada:
//		1: Casilla ocupada
//		0: Casilla vacía
// Salida:
//		1: La fila está llena
module Ganador (input clk, rst, entrada, output salida);
	logic [1:0]estadoActual, estadoSiguiente;
	
	//Logica estado acutal (secuencial)
	always_ff @(posedge clk or posedge rst)
		if(rst)
			estadoActual = 0;
		else
			estadoActual = estadoSiguiente;
			
	//Logica estado siguiente (combinacional)
	
	always_comb
		case(estadoActual)
			0: if (entrada) estadoSiguiente = 1; else estadoSiguiente = 0;
			1: if (entrada) estadoSiguiente = 2; else estadoSiguiente = 1;
			default: estadoSiguiente = 0;
		endcase
		
	//Logica de las salidas
	assign salida = (estadoActual==2);
endmodule 