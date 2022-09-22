module Contador (input reset, output s);
	logic [4:0] cont = 30;
	logic sAux = 0;
	reg clk = 0;
	
	always
		begin
		clk = ~clk; #1;
		end

	always_ff @(posedge clk, posedge reset)
		begin
		if(reset)
			cont = 30;
		else
			begin
			cont = cont-1;
			
			if(cont == 0)
				begin
				sAux  = 1;
				cont = 30;
				end
			end
		end
		
	assign s = sAux;
endmodule 
