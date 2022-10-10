module TestMover();
	logic clk, rst, mov;
	logic [3:0] salida;
	
	Mover mover (clk, rst, mov, salida);

	initial
		begin
		clk = 0;
		mov = 0;
		rst = 1;
		#5;
		rst = 0;
		end
	
	always
		begin
		clk = ~clk; #5;
		end
	always
		begin
		mov = ~mov; #10;
		end
	always begin
		#20; rst = ~rst;
		end
	
endmodule 