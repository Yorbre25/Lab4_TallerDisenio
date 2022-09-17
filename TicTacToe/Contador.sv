module Contador (input reset, output s);
	logic [4:0] cont = 30;
	logic sAux = 0;
	reg clk = 0;
	
	always
		begin
		clk = ~clk; #5;
		end

	always_ff @(posedge clk, posedge reset)
		begin
		if(reset)
			cont = 30;
		else
			cont = cont-1;
		end
	assign s = sAux;
endmodule 
