module TestTurnos(output equis);
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
	
endmodule 