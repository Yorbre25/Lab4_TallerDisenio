module TestTurnos();
	logic clk, rst, jugador, tiempo, salida;
	
	Turnos turnos (clk, rst, jugador, tiempo, salida);

	initial
		begin
		clk = 0;
		jugador = 0;
		tiempo = 0;
		rst = 1;
		#5;
		rst = 0;
		end
	
	always_comb
		begin
		clk = ~clk; #5;
		end
	
	always
		begin
		jugador = 1; #15;
		end
	
endmodule 