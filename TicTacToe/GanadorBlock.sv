module GanadorBlock(input clk, rst, input [3:0]entrada, revisar, output gana);
	logic [] salida
	
	always_comb
		case (entrada)
			0: 
				if(entrada == 0)
					begin
					entrada0 = entrada
					entrada4 = entrada
					entrada6 = entrada
					end
			1:
			2:
			3:
			4:
			5:
			6:
			7:
			8:
		
		endcase
	
	
	always

	Ganador fila0(clk, rst, entrada0, gana);//0-1-2
	Ganador fila1(clk, rst, entrada1, gana);//3-4-5
	Ganador fila2(clk, rst, entrada2, gana);//6-7-8

	Ganador column0(clk, rst, entrada3, gana);//0-3-6
	Ganador column1(clk, rst, entrada4, gana);//1-4-7
	Ganador column2(clk, rst, entrada5, gana);//2-5-8
	
	Ganador diag0(clk, rst, entrada6, gana);//0-4-8
	Ganador diag1(clk, rst, entrada7, gana);//2-4-6
	

endmodule 