module TestMatriz();
	logic clk, rst, jugador;
	logic [3:0] pos;
	Matriz matrizDeJuego(clk, rst, pos, jugador);
	
	initial begin
		rst = 1; #5;
		rst = 0; #5;
		jugador = 1;
	end
	
	always begin
		pos = 3;
		#5;
		jugador = 0;
		pos = 5;
		#5;
	end
		
endmodule 