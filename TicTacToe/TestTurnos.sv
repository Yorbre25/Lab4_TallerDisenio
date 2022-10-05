module TestTurnos();
	logic clk, rst, colocadoAux, timeOut, jugador;
	logic [3:0] pos;
	logic [8:0][1:0] matriz;
	logic colocar;
	logic colocado;
	
	Turnos turn(clk, rst, colocadoAux, timeOut, jugador);
	Matriz matrizJuego(clk, rst, pos, jugador, colocar, colocado, matriz);
	
	initial begin
		rst = 0;
		rst = 1;
		jugador = 0;
		end
	
	always begin
		pos = 0;
		colocar = 1;
		end
		
	always begin
		clk = ~clk; #5;
	end
endmodule 