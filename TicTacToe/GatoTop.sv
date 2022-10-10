module GatoTop(input clk, rst, mover, colocar, output[8:0][1:0] matrizDeJuego, output win);
	logic timeOut; //Si el timepo se acabó
	logic colocadoAux; //boton colocar luego de verificar que el espacio está vacío
	logic jugador; // De que jugador es el turno (1: X, 0: O)
	logic winAux; // Si se ganó
	logic colocado; // si se logró colocar el simbolo
	logic [3:0] posActual;
//	logic [8:0][1:0] matrizDeJuego;
	
	Contador temporizador(rst, timeOut);
	Mover movimiento(clk, rst, mover, posActual);
	Matriz instMatriz(clk, rst, posActual, jugador, colocar, colocadoAux, matrizDeJuego);
	Turnos turno(clk, rst, colocadoAux, timeOut, jugador);
	Ganador(clk, rst, matrizDeJuego, win);
	

	

endmodule 