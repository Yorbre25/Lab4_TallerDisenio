module videoGenerador(input logic boton,boton2,boton3,
							 input logic clk,
							 input logic [9:0]cuentaX,cuentaY,
							 output logic [7:0] r,g,b);
							 
		controlTOP control (boton,boton2,boton3,clk,cuentaX,cuentaY,r,g,b);
		
endmodule
