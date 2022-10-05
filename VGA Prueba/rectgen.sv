module rectgen (input logic clk,boton_rst,
					 input logic [3:0]contador,
					 input logic [9:0] cuentaX, cuentaY,left,top,right,bot,
					 output logic inrect);
					 
		
		always @ (contador) begin
			//Casilla 0
			if (contador == 4'b0000 )begin
				temp <= ((cuentaX > left) & (cuentaX < right) & (cuentaY > top)  & (cuentaY < bot)) ? 1:0;
			end
			
			//Casilla 1
			if (contador == 4'b0001 )begin
				temp <= ((cuentaX > left + 233) & (cuentaX < right + 233) & (cuentaY > top) & (cuentaY < bot)) ? 1:0;			
			end
			
			//Casilla 2
			if (contador == 4'b0010 )begin
				temp <= ((cuentaX > left + 456) & (cuentaX < right + 456) & (cuentaY > top) & (cuentaY < bot)) ? 1:0;
			end
			//-----------------------------------------------------------------------------------------------------------//
			//Casilla 3
			if (contador == 4'b0011 )begin
				temp <= ((cuentaX > left ) & (cuentaX < right) & (cuentaY > top + 175) & (cuentaY < bot + 175)) ? 1:0;
			end
			
			//Casilla 4
			if (contador == 4'b0100 )begin
				temp <= ((cuentaX > left + 233) & (cuentaX < right + 233) & (cuentaY > top + 175) & (cuentaY < bot + 175)) ? 1:0;
			end
			
			//Casilla 5
			if (contador == 4'b0101 )begin
				temp <= ((cuentaX > left + 456) & (cuentaX < right + 456) & (cuentaY > top + 175) & (cuentaY < bot + 175)) ? 1:0;
			end
			
			//------------------------------------------------------------------------------------------------------------//
			
			//Casilla 6
			if (contador == 4'b0110 )begin
				temp <= ((cuentaX > left) & (cuentaX < right) & (cuentaY > top + 340) & (cuentaY < bot + 340)) ? 1:0;
			end
			
			//Casilla 7
			if (contador == 4'b0111 )begin
				temp <= ((cuentaX > left + 233) & (cuentaX < right + 233) & (cuentaY > top + 340) & (cuentaY < bot + 340)) ? 1:0;
			end
			
			//Casilla 8
			if (contador == 4'b1000 )begin
				temp <= ((cuentaX > left + 456) & (cuentaX < right + 456) & (cuentaY > top + 340) & (cuentaY < bot + 340)) ? 1:0;
			end
			
			
		end
		
		assign inrect = temp;

endmodule
