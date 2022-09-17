module Test();
	logic reset;
	logic salida;
	Contador contador1 (reset,salida);
	
	initial begin
		reset = 1; #10;
		reset = 0; #10;
	end
	
endmodule 