module MUX2t1 #(parameter DW = 4)(in1,in2,sel,out);
input logic [DW-1:0] in1, in2;
input logic sel;
output logic [DW-1:0] out;

always @(sel)
begin
out = {(DW){1'b0}};
case (sel)
	1'b0:	out = in1;

	1'b1:	out = in2;
	
	default: out = {(DW){1'b0}};

endcase
end
endmodule
