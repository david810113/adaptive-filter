`timescale 1ns/1ps
module ram_weight (weight_cal_state, rstn, clk, e, reff_0, reff_1, reff_2, reff_3, reff_4, reff_5, reff_6, reff_7, reff_8, reff_9, reff_10, reff_11, reff_12, reff_13, reff_14, reff_15, weight_in_0, weight_in_1, weight_in_2, weight_in_3, weight_in_4, weight_in_5, weight_in_6, weight_in_7, weight_in_8, weight_in_9, weight_in_10, weight_in_11, weight_in_12, weight_in_13, weight_in_14, weight_in_15);

input rstn, clk, weight_cal_state;
input [13:0] e;

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

output reg [13:0] weight_in_0;
output reg [13:0] weight_in_1;
output reg [13:0] weight_in_2;
output reg [13:0] weight_in_3;
output reg [13:0] weight_in_4;
output reg [13:0] weight_in_5;
output reg [13:0] weight_in_6;
output reg [13:0] weight_in_7;
output reg [13:0] weight_in_8;
output reg [13:0] weight_in_9;
output reg [13:0] weight_in_10;
output reg [13:0] weight_in_11;
output reg [13:0] weight_in_12;
output reg [13:0] weight_in_13;
output reg [13:0] weight_in_14;
output reg [13:0] weight_in_15;

wire [13:0] div_out_0;
wire [13:0] div_out_1;
wire [13:0] div_out_2;
wire [13:0] div_out_3;
wire [13:0] div_out_4;
wire [13:0] div_out_5;
wire [13:0] div_out_6;
wire [13:0] div_out_7;
wire [13:0] div_out_8;
wire [13:0] div_out_9;
wire [13:0] div_out_10;
wire [13:0] div_out_11;
wire [13:0] div_out_12;
wire [13:0] div_out_13;
wire [13:0] div_out_14;
wire [13:0] div_out_15;
 always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_0 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_0 <= #2  weight_in_0 + div_out_0;//not yet
    else
        weight_in_0 <= #2  weight_in_0;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_1 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_1 <= #2  weight_in_1 + div_out_1;//not yet
    else
        weight_in_1 <= #2  weight_in_1;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_2 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_2 <= #2  weight_in_2 + div_out_2;//not yet
    else
        weight_in_2 <= #2  weight_in_2;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_3 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_3 <= #2  weight_in_3 + div_out_3;//not yet
    else
        weight_in_3 <= #2  weight_in_3;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_4 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_4 <= #2  weight_in_4 + div_out_4;//not yet
    else
        weight_in_4 <= #2  weight_in_4;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_5 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_5 <= #2  weight_in_5 + div_out_5;//not yet
    else
        weight_in_5 <= #2  weight_in_5;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_6 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_6 <= #2  weight_in_6 + div_out_6;//not yet
    else
        weight_in_6 <= #2  weight_in_6;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_7 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_7 <= #2  weight_in_7 + div_out_7;//not yet
    else
        weight_in_7 <= #2  weight_in_7;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_8 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_8 <= #2  weight_in_8 + div_out_8;//not yet
    else
        weight_in_8 <= #2  weight_in_8;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_9 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_9 <= #2  weight_in_9 + div_out_9;//not yet
    else
        weight_in_9 <= #2  weight_in_9;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_10 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_10 <= #2  weight_in_10 + div_out_10;//not yet
    else
        weight_in_10 <= #2  weight_in_10;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_11 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_11 <= #2  weight_in_11 + div_out_11;//not yet
    else
        weight_in_11 <= #2  weight_in_11;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_12 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_12 <= #2  weight_in_12 + div_out_12;//not yet
    else
        weight_in_12 <= #2  weight_in_12;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_13 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_13 <= #2  weight_in_13 + div_out_13;//not yet
    else
        weight_in_13 <= #2  weight_in_13;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_14 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_14 <= #2  weight_in_14 + div_out_14;//not yet
    else
        weight_in_14 <= #2  weight_in_14;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_15 <= #2  14'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_15 <= #2  weight_in_15 + div_out_15;//not yet
    else
        weight_in_15 <= #2  weight_in_15;
    end
DIV DIV_0(.rstn(rstn), .clk(clk), .in(e * reff_0), .out(div_out_0));
DIV DIV_1(.rstn(rstn), .clk(clk), .in(e * reff_1), .out(div_out_1));
DIV DIV_2(.rstn(rstn), .clk(clk), .in(e * reff_2), .out(div_out_2));
DIV DIV_3(.rstn(rstn), .clk(clk), .in(e * reff_3), .out(div_out_3));
DIV DIV_4(.rstn(rstn), .clk(clk), .in(e * reff_4), .out(div_out_4));
DIV DIV_5(.rstn(rstn), .clk(clk), .in(e * reff_5), .out(div_out_5));
DIV DIV_6(.rstn(rstn), .clk(clk), .in(e * reff_6), .out(div_out_6));
DIV DIV_7(.rstn(rstn), .clk(clk), .in(e * reff_7), .out(div_out_7));
DIV DIV_8(.rstn(rstn), .clk(clk), .in(e * reff_8), .out(div_out_8));
DIV DIV_9(.rstn(rstn), .clk(clk), .in(e * reff_9), .out(div_out_9));
DIV DIV_10(.rstn(rstn), .clk(clk), .in(e * reff_10), .out(div_out_10));
DIV DIV_11(.rstn(rstn), .clk(clk), .in(e * reff_11), .out(div_out_11));
DIV DIV_12(.rstn(rstn), .clk(clk), .in(e * reff_12), .out(div_out_12));
DIV DIV_13(.rstn(rstn), .clk(clk), .in(e * reff_13), .out(div_out_13));
DIV DIV_14(.rstn(rstn), .clk(clk), .in(e * reff_14), .out(div_out_14));
DIV DIV_15(.rstn(rstn), .clk(clk), .in(e * reff_15), .out(div_out_15));


endmodule
