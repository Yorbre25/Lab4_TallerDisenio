module TestGanador();
	logic clk, rst, win, jugador, colocar, colocado;
	logic [3:0] pos;
	logic [8:0][1:0] matrizAux;
	
	Matriz matrizDeJuego(clk, rst, pos, jugador, colocar, colocado, matrizAux);
	Ganador gan(clk, rst, matrizAux, win);
	
	initial begin
		rst = 1; #5;
		rst = 0;
		jugador = 0;
		colocar = 0;
		clk = 0;
		end
		
	always begin
		jugador = 0;
		#5;
		pos = 3;
		colocar = 1;
		#5;
		colocar = 0;
		#5;
		pos = 4;
		colocar = 1;
		#5;
		colocar = 0;
		#5;
		pos = 5;
		colocar = 1;
		
//		matrizAux[1] = 1;
//		#5;
//		matrizAux[4] = 1;
//		#10;
//		matrizAux[7] = 1;
//		#5;
		end
		
		always begin
			clk = ~clk;
			#5;
			end
endmodule 