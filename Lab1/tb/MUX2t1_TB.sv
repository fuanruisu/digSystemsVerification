`timescale 1ns /1 ps
module MUX2t1_TB ();
logic [3:0] in1, in2, out;
logic sel;

MUX2t1 #(.DW(4)) uut (.in1(in1),.in2(in2),.sel(sel),.out(out));

task numgen;
input logic [3:0] in1, in2, out;
input logic sel; 

logic [3:0] res_gold;

begin 
	res_gold = sel ? in2 : in1;
  	if(res_gold != out) begin 
		$display($time,"Error: in1=%d, in2=%d, esperado %d (%8b), obtenido %d (%8b), sel=%1b", 
		in1, in2, res_gold, res_gold, out, out, sel); ; 	
	end	 
 	
end
endtask 

initial begin : TB
integer i, j, select;

for (i = 0 ; i <=15;  i = i +1)
	for ( j = 0; j <= 15; j = j+1)
		for( select = 0; select <=1; select = select +1)
			begin 
				in1 = i; in2 = j; sel = select;
				#10
				numgen(in1, in2, out, sel);
				end
end
endmodule 