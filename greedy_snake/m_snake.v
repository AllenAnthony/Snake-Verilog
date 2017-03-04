`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:07:50 01/05/2016 
// Design Name: 
// Module Name:    m_snake 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module moving_snake
	(
	clk,rst_n,up,down,right,left,
	start,x0,y0,x1,y1,x2,y2,x3,y3,
	x4,y4,x5,y5,x6,y6,x7,y7,x8,y8,
	x9,y9,x10,y10,x11,y11,x12,y12,x13,y13,
	x14,y14,x15,y15,o_over,o_win	
	);
	
	input clk;
	input rst_n;
	input up;
	input down;
	input left;
	input right;	
	input start;
	output [5:0]x0;
	output [5:0]y0;	
	output [5:0]x1;
	output [5:0]y1;
	output [5:0]x2;
	output [5:0]y2;
	output [5:0]x3;
	output [5:0]y3;	
	output [5:0]x4;
	output [5:0]y4;
	output [5:0]x5;
	output [5:0]y5;
	output [5:0]x6;
	output [5:0]y6;
	output [5:0]x7;
	output [5:0]y7;
	output [5:0]x8;
	output [5:0]y8;
	output [5:0]x9;
	output [5:0]y9;	
	output [5:0]x10;
	output [5:0]y10;	
	output [5:0]x11;
	output [5:0]y11;	
	output [5:0]x12;
	output [5:0]y12;	
	output [5:0]x13;
	output [5:0]y13;	
	output [5:0]x14;
	output [5:0]y14;
	output [5:0]x15;
	output [5:0]y15;
	output o_over;
	output o_win;					

	parameter T1S=39_999_999,T2S=19_999_999;	
	parameter idle = 5'b00001,snake_up = 5'b00010,
	snake_down = 5'b00100,snake_left = 5'b01000,snake_right = 5'b10000;
	reg [4:0]moving_cstate,moving_nstate;
	reg [5:0]reg_x1;
	reg [5:0]reg_x2;
	reg [5:0]reg_x3;	
	reg [5:0]reg_x4;	
	reg [5:0]reg_x5;
	reg [5:0]reg_x6;
	reg [5:0]reg_x7;
	reg [5:0]reg_x8;
	reg [5:0]reg_x9;
	reg [5:0]reg_x10;
	reg [5:0]reg_x11;
	reg [5:0]reg_x12;
	reg [5:0]reg_x13;
	reg [5:0]reg_x14;
	reg [5:0]reg_x15;										
	reg [5:0]reg_x0;					
	reg [5:0]reg_y1;
	reg [5:0]reg_y2;
	reg [5:0]reg_y3;
	reg [5:0]reg_y4;
	reg [5:0]reg_y5;
	reg [5:0]reg_y6;
	reg [5:0]reg_y7;
	reg [5:0]reg_y8;
	reg [5:0]reg_y9;
	reg [5:0]reg_y10;
	reg [5:0]reg_y11;
	reg [5:0]reg_y12;
	reg [5:0]reg_y13;
	reg [5:0]reg_y14;
	reg [5:0]reg_y15;				
	reg [5:0]reg_y0;		 
	reg [25:0]count;
	reg [10:0]count0;
	reg [10:0]count1;
	reg [25:0]count2;
	reg [3:0]i;
	reg over;
	reg win;
	
	always @(posedge clk or negedge rst_n)//等级1的周期
	begin
		if(!rst_n)
			count<=26'd0;
		else if(count==T1S)
			count<=26'd0;
		else
			count<=count+26'd1;
	end 
	
	always @(posedge clk or negedge rst_n)//等级2的周期
	begin
		if(!rst_n)
			count2<=26'd0;
		else if(count2==T2S)
			count2<=26'd0;
		else
			count2<=count2+26'd1;
	end 
	
	always @(posedge clk or negedge rst_n)//随机数1
	begin
		if(!rst_n)
			count0<=11'd1;
		else if(count0==11'd15)	
			count0<=11'd1;		
		else if(count==T1S)
			count0<=count0+11'd1;
	end 
	
	always @(posedge clk or negedge rst_n)//随机数2
	begin
		if(!rst_n)
			count1<=11'd1;
		else if(count1==11'd15)	
			count1<=11'd1;		
		else if(count2==T2S)
			count1<=count1+11'd1;
	end 	
		
	always @(posedge clk or negedge rst_n)
	begin
		if(!rst_n)
			moving_cstate <= idle;
		else
			moving_cstate <= moving_nstate;
	end
	
	always @(moving_cstate or up or down or left or  right or start)
	begin 
		case(moving_cstate)	
			idle:
			begin
				if(start)
					moving_nstate <= snake_down;
				else
					moving_nstate <= idle;
			end		
			snake_up:
			begin
				if(!left)
					moving_nstate <= snake_left;
				else if(!right)
					moving_nstate <= snake_right;
				else
					moving_nstate <= snake_up;
			end		
			snake_down:
			begin			
				if(!left)
					moving_nstate <= snake_left;
				else if(!right)
					moving_nstate <= snake_right;								
				else
					moving_nstate <= snake_down;
			end		
			snake_left:
			begin			
				if(!up)
					moving_nstate <= snake_up;
				else if(!down)
					moving_nstate <= snake_down;									
				else
					moving_nstate <= snake_left;
			end		
			snake_right:
			begin		
				if(!up)
					moving_nstate <= snake_up;
				else if(!down)
					moving_nstate <= snake_down;									
				else
					moving_nstate <= snake_right;
			end
			default:
			begin
				moving_nstate <= idle;
			end
		endcase
	end
	
	always @(posedge clk or negedge rst_n)
	begin
		if(!rst_n)
			begin
			reg_x1<=5'd6;
			reg_x2<=5'd7;
			reg_x3<=5'd8;
			reg_y1<=5'd7;
			reg_y2<=5'd7;
			reg_y3<=5'd7;
			reg_x4<=5'd0;
			reg_y4<=5'd0;
			reg_x5<=5'd0;
			reg_y5<=5'd0;	
			reg_x6<=5'd0;
			reg_y6<=5'd0;	
			reg_x7<=5'd0;
			reg_y7<=5'd0;	
			reg_x8<=5'd0;
			reg_y8<=5'd0;	
			reg_x9<=5'd0;
			reg_y9<=5'd0;
			reg_x10<=5'd0;
			reg_y10<=5'd0;
			reg_x11<=5'd0;
			reg_y11<=5'd0;
			reg_x12<=5'd0;
			reg_y12<=5'd0;
			reg_x13<=5'd0;
			reg_y13<=5'd0;
			reg_x14<=5'd0;
			reg_y14<=5'd0;
			reg_x15<=5'd0;
			reg_y15<=5'd0;														
			reg_x0<=5'd12;
			reg_y0<=5'd7;	
			i<=4'd0;	
			over <= 1'b0;
			win <= 1'b0;				
			end
		else
		case(moving_nstate)
			idle:
				begin
			reg_x1<=5'd6;
			reg_x2<=5'd7;
			reg_x3<=5'd8;
			reg_y1<=5'd7;
			reg_y2<=5'd7;
			reg_y3<=5'd7;
			reg_x4<=5'd0;
			reg_y4<=5'd0;
			reg_x5<=5'd0;
			reg_y5<=5'd0;	
			reg_x6<=5'd0;
			reg_y6<=5'd0;	
			reg_x7<=5'd0;
			reg_y7<=5'd0;	
			reg_x8<=5'd0;
			reg_y8<=5'd0;	
			reg_x9<=5'd0;
			reg_y9<=5'd0;
			reg_x10<=5'd0;
			reg_y10<=5'd0;
			reg_x11<=5'd0;
			reg_y11<=5'd0;
			reg_x12<=5'd0;
			reg_y12<=5'd0;
			reg_x13<=5'd0;
			reg_y13<=5'd0;
			reg_x14<=5'd0;
			reg_y14<=5'd0;
			reg_x15<=5'd0;
			reg_y15<=5'd0;														
			reg_x0<=5'd12;
			reg_y0<=5'd7;								
				end
			snake_up:
				begin
				if((count==T1S)&&(i==4'd0))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else
					begin							
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-11'd1;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end	
				else if((reg_x1==5'd0)||(reg_x1==5'd15)||(reg_y1==5'd0)||(reg_y1==5'd15)||((reg_y1==reg_y4)&&(reg_x1==reg_x4))||((reg_y1==reg_y5)&&(reg_x1==reg_x5))||
					((reg_y1==reg_y6)&&(reg_x1==reg_x6))||((reg_y1==reg_y7)&&(reg_x1==reg_x7))||((reg_y1==reg_y8)&&(reg_x1==reg_x8))||((reg_y1==reg_y9)&&(reg_x1==reg_x9))||((reg_y1==reg_y10)&&(reg_x1==reg_x10))||
					((reg_y1==reg_y11)&&(reg_x1==reg_x11))||((reg_y1==reg_y12)&&(reg_x1==reg_x12))||((reg_y1==reg_y13)&&(reg_x1==reg_x13))||((reg_y1==reg_y14)&&(reg_x1==reg_x14))||((reg_y1==reg_y15)&&(reg_x1==reg_x15))) 	
					over <= 1'b1;															
				else if((count==T1S)&&(i==4'd1))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end												
					else				
					begin
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end	
					end			
				else if((count==T1S)&&(i==4'd2))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end
				else if((count==T1S)&&(i==4'd3))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end	
				else if((count==T1S)&&(i==4'd4))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end					
					else				
					begin
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end				
				else if((count==T1S)&&(i==4'd5))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end					
					else				
					begin
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end			
				else if((count==T1S)&&(i==4'd6))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count==T1S)&&(i==4'd7))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count==T1S)&&(i==4'd8))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end					
					else				
					begin
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count2==T2S)&&(i==4'd9))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end					
					else				
					begin
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count2==T2S)&&(i==4'd10))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count2==T2S)&&(i==4'd11))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y14<=reg_y13;
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x14<=reg_x13;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count2==T2S)&&(i==4'd12))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end					
					else				
					begin
					reg_y15<=reg_y14;
					reg_y14<=reg_y13;
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1-5'd1;
					reg_x15<=reg_x14;
					reg_x14<=reg_x13;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if(i==4'd13)
					win <= 1'b1;																																							
				end						
			snake_down:
				begin
				if((count==T1S)&&(i==4'd0))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end																				
					else
					begin
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end	
					end	
				else if((reg_x1==5'd0)||(reg_x1==5'd15)||(reg_y1==5'd0)||(reg_y1==5'd15)||((reg_y1==reg_y4)&&(reg_x1==reg_x4))||((reg_y1==reg_y5)&&(reg_x1==reg_x5))||
					((reg_y1==reg_y6)&&(reg_x1==reg_x6))||((reg_y1==reg_y7)&&(reg_x1==reg_x7))||((reg_y1==reg_y8)&&(reg_x1==reg_x8))||((reg_y1==reg_y9)&&(reg_x1==reg_x9))||((reg_y1==reg_y10)&&(reg_x1==reg_x10))||
					((reg_y1==reg_y11)&&(reg_x1==reg_x11))||((reg_y1==reg_y12)&&(reg_x1==reg_x12))||((reg_y1==reg_y13)&&(reg_x1==reg_x13))||((reg_y1==reg_y14)&&(reg_x1==reg_x14))||((reg_y1==reg_y15)&&(reg_x1==reg_x15))) 	
					over <= 1'b1;																					
				else if((count==T1S)&&(i==4'd1))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else
					begin
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end	
					end			
				else if((count==T1S)&&(i==4'd2))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;							
						end									
					else					
					begin
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end	
					end
				else if((count==T1S)&&(i==4'd3))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end			
				else if((count==T1S)&&(i==4'd4))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end				
				else if((count==T1S)&&(i==4'd5))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count==T1S)&&(i==4'd6))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count==T1S)&&(i==4'd7))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end									
					else				
					begin
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count==T1S)&&(i==4'd8))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end												
					else				
					begin
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count2==T2S)&&(i==4'd9))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count2==T2S)&&(i==4'd10))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end												
					else				
					begin
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count2==T2S)&&(i==4'd11))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end												
					else				
					begin
					reg_y14<=reg_y13;
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x14<=reg_x13;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end		
				else if((count2==T2S)&&(i==4'd12))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end												
					else				
					begin
					reg_y15<=reg_y14;
					reg_y14<=reg_y13;
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1+5'd1;
					reg_x15<=reg_x14;
					reg_x14<=reg_x13;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1;
					end
					end	
				else if(i==4'd13)		
					win <= 1'b1;												
				end					
			snake_left:
				begin
				if((count==T1S)&&(i==4'd0))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end												
					else
					begin
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end	
					end	
				else if((reg_x1==5'd0)||(reg_x1==5'd15)||(reg_y1==5'd0)||(reg_y1==5'd15)||((reg_y1==reg_y4)&&(reg_x1==reg_x4))||((reg_y1==reg_y5)&&(reg_x1==reg_x5))||
					((reg_y1==reg_y6)&&(reg_x1==reg_x6))||((reg_y1==reg_y7)&&(reg_x1==reg_x7))||((reg_y1==reg_y8)&&(reg_x1==reg_x8))||((reg_y1==reg_y9)&&(reg_x1==reg_x9))||((reg_y1==reg_y10)&&(reg_x1==reg_x10))||
					((reg_y1==reg_y11)&&(reg_x1==reg_x11))||((reg_y1==reg_y12)&&(reg_x1==reg_x12))||((reg_y1==reg_y13)&&(reg_x1==reg_x13))||((reg_y1==reg_y14)&&(reg_x1==reg_x14))||((reg_y1==reg_y15)&&(reg_x1==reg_x15))) 	
					over <= 1'b1;												
				else if((count==T1S)&&(i==4'd1))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else					
					begin
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end				
				else if((count==T1S)&&(i==4'd2))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else					
					begin
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end	
				else if((count==T1S)&&(i==4'd3))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end					
					else				
					begin
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end	
				else if((count==T1S)&&(i==4'd4))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end				
				else if((count==T1S)&&(i==4'd5))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end					
					else				
					begin
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end		
				else if((count==T1S)&&(i==4'd6))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end		
				else if((count==T1S)&&(i==4'd7))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end		
				else if((count==T1S)&&(i==4'd8))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end		
				else if((count2==T2S)&&(i==4'd9))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end		
				else if((count2==T2S)&&(i==4'd10))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end		
				else if((count2==T2S)&&(i==4'd11))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end						
					else				
					begin
					reg_y14<=reg_y13;
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x14<=reg_x13;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end		
				else if((count2==T2S)&&(i==4'd12))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end					
					else				
					begin
					reg_y15<=reg_y14;
					reg_y14<=reg_y13;
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x15<=reg_x14;
					reg_x14<=reg_x13;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1-5'd1;
					end
					end	
				else if(i==4'd13)
					win <= 1'b1;												
				end									
			snake_right:	
				begin	
				if((count==T1S)&&(i==4'd0))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end															
					else
					begin
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end	
					end		
				else if((reg_x1==5'd0)||(reg_x1==5'd15)||(reg_y1==5'd0)||(reg_y1==5'd15)||((reg_y1==reg_y4)&&(reg_x1==reg_x4))||((reg_y1==reg_y5)&&(reg_x1==reg_x5))||
					((reg_y1==reg_y6)&&(reg_x1==reg_x6))||((reg_y1==reg_y7)&&(reg_x1==reg_x7))||((reg_y1==reg_y8)&&(reg_x1==reg_x8))||((reg_y1==reg_y9)&&(reg_x1==reg_x9))||((reg_y1==reg_y10)&&(reg_x1==reg_x10))||
					((reg_y1==reg_y11)&&(reg_x1==reg_x11))||((reg_y1==reg_y12)&&(reg_x1==reg_x12))||((reg_y1==reg_y13)&&(reg_x1==reg_x13))||((reg_y1==reg_y14)&&(reg_x1==reg_x14))||((reg_y1==reg_y15)&&(reg_x1==reg_x15))) 	
					over <= 1'b1;																			
				else if((count==T1S)&&(i==4'd1))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else					
					begin
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end				
				else if((count==T1S)&&(i==4'd2))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;							
						end											
					else					
					begin
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end
				else if((count==T1S)&&(i==4'd3))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end												
					else				
					begin
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end				
				else if((count==T1S)&&(i==4'd4))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end
				else if((count==T1S)&&(i==4'd5))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end	
				else if((count==T1S)&&(i==4'd6))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end		
				else if((count==T1S)&&(i==4'd7))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end		
				else if((count==T1S)&&(i==4'd8))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end		
				else if((count2==T2S)&&(i==4'd9))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end		
				else if((count2==T2S)&&(i==4'd10))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end		
				else if((count2==T2S)&&(i==4'd11))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end										
					else				
					begin
					reg_y14<=reg_y13;
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x14<=reg_x13;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end		
				else if((count2==T2S)&&(i==4'd12))
					begin
					if((reg_y1==reg_y0)&&(reg_x1==reg_x0))
						begin
						i<=i+4'd1;
						reg_x0<=count0;
						reg_y0<=count1;						
						end											
					else				
					begin
					reg_y15<=reg_y14;
					reg_y14<=reg_y13;
					reg_y13<=reg_y12;
					reg_y12<=reg_y11;
					reg_y11<=reg_y10;
					reg_y10<=reg_y9;
					reg_y9<=reg_y8;
					reg_y8<=reg_y7;
					reg_y7<=reg_y6;
					reg_y6<=reg_y5;
					reg_y5<=reg_y4;
					reg_y4<=reg_y3;
					reg_y3<=reg_y2;
					reg_y2<=reg_y1;
					reg_y1<=reg_y1;
					reg_x15<=reg_x14;
					reg_x14<=reg_x13;
					reg_x13<=reg_x12;
					reg_x12<=reg_x11;
					reg_x11<=reg_x10;
					reg_x10<=reg_x9;
					reg_x9<=reg_x8;
					reg_x8<=reg_x7;
					reg_x7<=reg_x6;
					reg_x6<=reg_x5;
					reg_x5<=reg_x4;
					reg_x4<=reg_x3;			
					reg_x3<=reg_x2;
					reg_x2<=reg_x1;
					reg_x1<=reg_x1+5'd1;
					end
					end	
				else if(i==4'd13)
					win <= 1'b1;											
				end				
			endcase														
	end
				
	assign x0=reg_x0;
	assign y0=reg_y0;	
	assign x1=reg_x1;
	assign x2=reg_x2;
	assign x3=reg_x3;	
	assign x4=reg_x4;
	assign x5=reg_x5;	
	assign y1=reg_y1;
	assign y2=reg_y2;	
	assign y3=reg_y3;
	assign y4=reg_y4;
	assign y5=reg_y5;
	assign x6=reg_x6;	
	assign y6=reg_y6;
	assign x7=reg_x7;	
	assign y7=reg_y7;
	assign x8=reg_x8;	
	assign y8=reg_y8;
	assign x9=reg_x9;	
	assign y9=reg_y9;
	assign x10=reg_x10;	
	assign y10=reg_y10;
	assign x11=reg_x11;	
	assign y11=reg_y11;
	assign x12=reg_x12;	
	assign y12=reg_y12;
	assign x13=reg_x13;	
	assign y13=reg_y13;
	assign x14=reg_x14;	
	assign y14=reg_y14;	
	assign x15=reg_x15;	
	assign y15=reg_y15;	
	assign o_win=win;
	assign o_over=over;
			
		
endmodule	
