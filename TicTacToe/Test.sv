module Test();
	logic reset;
	logic salida;
	Contador contador1 (reset,salida);
	
	initial begin
		reset = 1; #5;
		reset = 0; #5;
	end
	
endmodule 