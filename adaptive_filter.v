`timescale 1ns/1ps
module adaptive_filter(adap_filter_state, rstn, clk, reff_0, reff_1, reff_2, reff_3, reff_4, reff_5, reff_6, reff_7, reff_8, reff_9, reff_10, reff_11, reff_12, reff_13, reff_14, reff_15, buffer_in_0, buffer_in_1, buffer_in_2, buffer_in_3, buffer_in_4, buffer_in_5, buffer_in_6, buffer_in_7, buffer_in_8, buffer_in_9, buffer_in_10, buffer_in_11, buffer_in_12, buffer_in_13, buffer_in_14, buffer_in_15, weight_in_0, weight_in_1, weight_in_2, weight_in_3, weight_in_4, weight_in_5, weight_in_6, weight_in_7, weight_in_8, weight_in_9, weight_in_10, weight_in_11, weight_in_12, weight_in_13, weight_in_14, weight_in_15, d, e);
input rstn, clk, adap_filter_state;
//input [13:0] reff, buffer_in;

input [13:0] reff_0;
input [13:0] reff_1;
input [13:0] reff_2;
input [13:0] reff_3;
input [13:0] reff_4;
input [13:0] reff_5;
input [13:0] reff_6;
input [13:0] reff_7;
input [13:0] reff_8;
input [13:0] reff_9;
input [13:0] reff_10;
input [13:0] reff_11;
input [13:0] reff_12;
input [13:0] reff_13;
input [13:0] reff_14;
input [13:0] reff_15;

input [13:0] buffer_in_0;
input [13:0] buffer_in_1;
input [13:0] buffer_in_2;
input [13:0] buffer_in_3;
input [13:0] buffer_in_4;
input [13:0] buffer_in_5;
input [13:0] buffer_in_6;
input [13:0] buffer_in_7;
input [13:0] buffer_in_8;
input [13:0] buffer_in_9;
input [13:0] buffer_in_10;
input [13:0] buffer_in_11;
input [13:0] buffer_in_12;
input [13:0] buffer_in_13;
input [13:0] buffer_in_14;
input [13:0] buffer_in_15;

input [31:0] weight_in_0;
input [31:0] weight_in_1;
input [31:0] weight_in_2;
input [31:0] weight_in_3;
input [31:0] weight_in_4;
input [31:0] weight_in_5;
input [31:0] weight_in_6;
input [31:0] weight_in_7;
input [31:0] weight_in_8;
input [31:0] weight_in_9;
input [31:0] weight_in_10;
input [31:0] weight_in_11;
input [31:0] weight_in_12;
input [31:0] weight_in_13;
input [31:0] weight_in_14;
input [31:0] weight_in_15;



output reg [31:0] d, e;   
parameter usize = 25;
reg [31:0] dreg;
reg [4:0]counter;
always@(negedge clk or negedge rstn)
begin
if (rstn == 0)
	counter <= #2   5'd0;
else if (adap_filter_state == 1'b0 | counter == 5'd15)
	counter <= #2   5'd0;	
else
	counter <= #2  counter + 1'd1;
end

//wire flag_15;
//assign flag_15 = (counter == 5'd15) ? 1'd1 : 1'd0;

always@(posedge clk or negedge rstn)
begin
if (rstn == 0)
	dreg <= #2  32'd000;
else if (adap_filter_state == 1'b0)
	dreg <= #2  32'd000;
else if (counter == 5'd0)
	dreg <= #2  dreg + (reff_0 * weight_in_0 >> usize);
else if (counter == 5'd1)
	dreg <= #2  dreg + (reff_1 * weight_in_1 >> usize);
else if (counter == 5'd2)
	dreg <= #2  dreg + (reff_2 * weight_in_2 >> usize);
else if (counter == 5'd3)
	dreg <= #2  dreg + (reff_3 * weight_in_3 >> usize);
else if (counter == 5'd4)
	dreg <= #2  dreg + (reff_4 * weight_in_4 >> usize);
else if (counter == 5'd5)
	dreg <= #2  dreg + (reff_5 * weight_in_5 >> usize);
else if (counter == 5'd6)
	dreg <= #2  dreg + (reff_6 * weight_in_6 >> usize);
else if (counter == 5'd7)
	dreg <= #2  dreg + (reff_7 * weight_in_7 >> usize);
else if (counter == 5'd8)
	dreg <= #2  dreg + (reff_8 * weight_in_8 >> usize);
else if (counter == 5'd9)
	dreg <= #2  dreg + (reff_9 * weight_in_9 >> usize);
else if (counter == 5'd10)
	dreg <= #2  dreg + (reff_10 * weight_in_10 >> usize);
else if (counter == 5'd11)
	dreg <= #2  dreg + (reff_11 * weight_in_11 >> usize);
else if (counter == 5'd12)
	dreg <= #2  dreg + (reff_12 * weight_in_12 >> usize);
else if (counter == 5'd13)
	dreg <= #2  dreg + (reff_13 * weight_in_13 >> usize);
else if (counter == 5'd14)
	dreg <= #2  dreg + (reff_14 * weight_in_14 >> usize);

else
	dreg <= #2  dreg;
end    

always@(posedge clk or negedge rstn)
begin
if(rstn==0)
	d <= 16'd000;
	
else if (counter == 5'd15)
	d <= #2  dreg + (reff_15 * weight_in_15 >> usize);
else
	d <= #2 d;
end
always@(posedge clk or negedge rstn)
begin
if (rstn == 0)
	e <= #2  14'd0;
else if (adap_filter_state == 1'b1&&counter==5'd14&&d[15]==0)
	e <= #2  buffer_in_15 - d;	
else if (adap_filter_state == 1'b1&&counter==5'd14&&d[15]==1)
	e <= #2  buffer_in_15 + d;	
else
	e <= #2  e;

end



    
endmodule

