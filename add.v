module add(in_1,in_2,rstn,out_1);
input [13:0] in_1,in_2;
input rstn;
output [13:0] out_1;
  


assign out_1 = in_1 + in_2;
      
/*
always@(negedge clk or negedge rstn) begin
  if (rstn == 0)
    clk_n <= 1;
  else if (cnt_n < (N>>1))
    clk_n = 1;
  else
    clk_n = 0;
end
*/
endmodule
