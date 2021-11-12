
module MUXParamType #( parameter SEL =2, parameter type IN = busin , OUT = widthData )(select, Din, Dout);
typedef logic [2**2-1:0][1:0] busin;
typedef logic [1:0] widthData;
input logic [SEL-1:0] select;
input IN 	Din;
output OUT	Dout;

assign Dout = Din[select];

endmodule		
