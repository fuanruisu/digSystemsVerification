`include "errorMacro.def"

module top();
initial begin
#2 `info ("Info message");
`warning ("Warning");
`error("Error");
`fatal("Fatality");
end
endmodule