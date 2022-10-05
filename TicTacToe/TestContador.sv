module TestContador();
	logic clk, rst, timeOut;
	Contador cont(clk, rst, timeOUt);
	
	initial begin
		rst = 1; #5;
		rst = 1; #5;
		clk = 0; #5;
		end
	
	
	always begin
		clk = ~clk; #5;
		end
endmodule 