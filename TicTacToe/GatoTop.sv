module GatoTop(input clk, rst, mover, colocar, output[8:0][1:0] matrizDeJuego, output win);
	logic timeOut; //Si el timepo se acabó
	logic colocarAux; //boton colocar luego de verificar que el espacio está vacío
	logic jugador; // De que jugador es el turno (1: X, 0: O)
	logic winAux; // Si se ganó
	logic [3:0] posActual;
//	logic [8:0][1:0] matrizDeJuego;
	
	Contador temporizador(rst, timeOut);
	Mover movimiento(clk, rst, mover, posActual);
	Turnos turno(clk, rst, colocarAux, timeOut, jugador);
	Matriz instMatriz(clk, rst, posActual, jugador, matrizDeJuego);
	
//	always_ff @(posedge clk, posedge rst)
	always begin
		if( (matrizDeJuego[0] == matrizDeJuego[1] == matrizDeJuego[2]) & matrizDeJuego[0] != 0) winAux = 1; 		//0-1-2
		else if( (matrizDeJuego[3] == matrizDeJuego[4] == matrizDeJuego[5]) & matrizDeJuego[3] != 0) winAux = 1; //3-4-5
		else if( (matrizDeJuego[6] == matrizDeJuego[7] == matrizDeJuego[8]) & matrizDeJuego[6] != 0) winAux = 1;	//6-7-8
		else if( (matrizDeJuego[0] == matrizDeJuego[3] == matrizDeJuego[6]) & matrizDeJuego[0] != 0) winAux = 1; //0-3-6
		else if( (matrizDeJuego[1] == matrizDeJuego[4] == matrizDeJuego[7]) & matrizDeJuego[1] != 0) winAux = 1; //1-4-7
		else if( (matrizDeJuego[2] == matrizDeJuego[5] == matrizDeJuego[8]) & matrizDeJuego[2] != 0) winAux = 1; //2-5-8
		else if( (matrizDeJuego[0] == matrizDeJuego[4] == matrizDeJuego[8]) & matrizDeJuego[0] != 0) winAux = 1; //0-4-8
		else if( (matrizDeJuego[2] == matrizDeJuego[4] == matrizDeJuego[6]) & matrizDeJuego[2] != 0) winAux = 1; //2-4-6
	end
	

endmodule 