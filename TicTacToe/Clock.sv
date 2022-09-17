module Clock(output clk);
   reg clkAux = 0;
	
	always
		begin
		clkAux = ~clkAux;
		#5;
		end
	assign clk = clkAux;
	
endmodule 