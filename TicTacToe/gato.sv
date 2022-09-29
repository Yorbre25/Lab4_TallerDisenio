module gato(input clk, rst, movimiento, seleccion);
	logic [3:0] salidaMov;
	logic gana;
	logic movimientoAux;
		always_ff@(posedge movimiento, posedge rst, negedge movimiento)
		if(rst)
			movimientoAux = 0;
		else if(movimiento)
			movimientoAux = 1;
		else
			movimientoAux = 0; 
			
	Mover mover(clk, rst, movimientoAux, salidaMov);
	PosicionesOcupadas ocupadas(seleccion, rst, salidaMov, ocupado);
	Turnos turnos(clk, rst, ocupado, 0, jugador);
	always
		begin
			if(jugador && ocupado)begin
				salidaMovX = salidaMov;
				salidaMovO = 9;
				end
			else if(jguador && ocupado)
			else
		end
	
	
	GanadorBlock ganadorB(clk, rst, salidaMovX, gana);
	GanadorBlock ganadorB(clk, rst, salidaMovO, gana);


endmodule 