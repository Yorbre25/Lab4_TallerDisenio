module PosicionesOcupadas(input clk, rst, input [2:0] posicion, output ocupado);
	reg[8:0][1:0] matriz = 8'b00000000;
	logic ocupadoAux;
	always_ff@(posedge clk, posedge rst)
		if(rst)
			matriz = 8'b00000000;
		else
			begin
				if (matriz[posicion] == 1)
					ocupadoAux = 0;
				else
					begin
					ocupadoAux = 1;
					matriz[posicion] = 1;
					end
			end
	assign ocupado = ocupadoAux;
endmodule 