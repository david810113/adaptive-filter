module DIV ( rstn, clk, in, out );

input clk;
input rstn;
input [27:0]in;

output [13:0] out;
//reg [14:0]out1,out2,out3;


	assign out = {1'b0, in[27:15]};


/*
	always@(posedge clk or negedge rstn)
	begin
		if(rstn== 1'b0)
			[12:0] out1 = 13'd0;
		else
			2'd0 +[10:0]out1 = in>>2;  
	end
always@(posedge clk or negedge rstn)
		if(rstn== 1'b0)
			[12:0] out2 = 13'd0;
		else
			3'd0+[9:0]out2 = in>>3;  
always@(posedge clk or negedge rstn)
	begin
		if(rstn== 1'b0)
			[12:0] out3 = 13'd0;
		else
			5'd0+[7:0]out3 = in>>5;  
	end		
always@(posedge clk or negedge rstn)
	begin
		if(rstn== 1'b0)
			[12:0] out = 13'd0;
		else
		[12:0]	out= {2'd0 +[10:0]out1}+{3'd0+[9:0]out2}+5'd0+[7:0]out3;
	end

*/		
endmodule
