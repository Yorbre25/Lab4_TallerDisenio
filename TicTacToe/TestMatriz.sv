module TestMatriz();
	logic clk, rst, jugador;
	logic [3:0] pos;
	logic [8:0][1:0] matriz;
	logic boton;
	
	Matriz matrizDeJuego(clk, rst, pos, jugador, boton, matriz);
	
	initial begin
		rst = 1; #5;
		rst = 0;
		jugador = 0;
		boton = 0;
		clk = 0;
	end
	
	always begin
		boton = 0; 
		jugador = 0;
		#5;
		pos = 3;
		boton = 1;
		#5;
		boton= 0;
		#5;
		pos = 5;
		jugador = 1;
		boton = 1;
		#5;
		boton = 0;
		#5;
		rst=1;
	end
	
//	always begin
//	jugador = ~Jugador;
//	
	always begin
		clk = ~clk; #5;
	end
		
endmodule 