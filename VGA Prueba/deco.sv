module deco (input logic [3:0] posicion_input,
				input logic boton,
				 output logic cero,uno,dos,tres,cuatro,cinco, seis,siete,ocho);
		
		always @(boton) begin			
				case(posicion_input)
					4'b0000 : cero <= 1'b1;		  
					4'b0001 : uno <= 1'b1;
					4'b0010 : dos <= 1'b1;
					4'b0011 : tres <= 1'b1;
					4'b0100 : cuatro <= 1'b1;
					4'b0101 : cinco <= 1'b1;
					4'b0110 : seis <= 1'b1;
					4'b0111 : siete <= 1'b1;
					4'b1000 : ocho <= 1'b1;
					default: begin
						cero <= 1'b0;
						uno <= 1'b0;
						dos <= 1'b0;
						tres <= 1'b0;
						cuatro <= 1'b0;
						cinco <= 1'b0;
						seis <= 1'b0;
						siete <= 1'b0;
						ocho <= 1'b0;	
					end
				endcase			
		end
		
		
endmodule
