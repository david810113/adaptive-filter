module Shift ( rstn, clk, in, out );

input clk;
input rstn;
input [31:0]in;

output [31:0] out;


//assign out =  in;
assign out = {25'd0 + in[31:25]};

endmodule