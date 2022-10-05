module Contador (input clk, rst, output s);
	logic [4:0] cont;
	logic sAux = 0;

	always_ff @(posedge clk, posedge rst)
		if(rst)
			cont = 30;
		else
			cont = cont-1;
			
	always
		if(cont == 0) begin
			sAux = 1;
			end

		
	assign s = sAux;
endmodule 
