module ff_d (

input bit      cclk,
input bit      rst_n, 
// Data to store
input logic    d,
// Stored data
output logic   q,
);

`include "ff_macro.def"

`FF_D(cclk, "negedge", rst_n, d, q);

endmodule