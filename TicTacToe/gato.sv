module gato(input clk, rst, mover, seleccion);
//	logic [3:0] pos;
	logic jugador;
//	
//	Mover movimiento (clk, rst, mover, pos);
//	Turnos turnos(clk, rst, seleccion, 1'b0, jugador);
	TestTurnos test(jugador);

			

endmodule 