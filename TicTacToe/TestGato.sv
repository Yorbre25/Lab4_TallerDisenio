module TestGato();
	logic clk, rst, mover, colocar, win;
	logic [8:0][1:0] matrizDeJuego;
	
	GatoTop juego(clk, rst, mover, colocar, matrizDeJuego, win);
	
	initial begin
		rst = 0;
		#5;
		rst = 1;
		end
		
	always begin
		mover = 0;
		colocar = 1;
		
		end
		
	always begin
		clk = ~clk;
		#5;
		end
endmodule 