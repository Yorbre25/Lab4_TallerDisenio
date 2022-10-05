module TestTurnos();
	logic clk, rst, timeOut, jugador;
	logic [3:0] pos;
	logic [8:0][1:0] matrizAux;
	logic colocar;
	logic colocado;
	
	Turnos turn(clk, rst, colocado, timeOut, jugador);
	Matriz matrizJuego(clk, rst, pos, jugador, colocar, colocado, matrizAux);
	
	initial begin
		rst = 1;#5;
		rst = 0;
		pos = 1;
		colocar = 0;
		jugador = 0;
		clk = 0;
		end
	
	always begin
		
		#5;
		pos = 3;
		colocar = 1;
		#10;
		colocar = 0;
		#10;
		pos = 5;
		colocar = 1;
		#5;
		colocar = 0;
		#5;
		rst=1;
		end
		
	always begin
		clk = ~clk; #5;
	end
endmodule 