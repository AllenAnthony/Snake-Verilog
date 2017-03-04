`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:06 01/05/2016 
// Design Name: 
// Module Name:    VGA 
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
module vga_256(clk,rst,nvga_r,nvga_g,nvga_b,hsync,vsync,vga_r,vga_g,vga_b,x_dis,y_dis);
  input clk;
  input rst;
  input nvga_r;
  input nvga_g;
  input nvga_b;
  output hsync;
  output vsync;
  output vga_r;
  output vga_g;
  output vga_b;
  output [9:0]x_dis;
  output [9:0]y_dis;
  reg clk2;
  reg [9:0] x_cnt;//行坐标
  reg [9:0] y_cnt;//列坐标
  
  initial begin
   clk2 = 0;
  end
  always @(posedge clk)
   clk2 <= ~clk2; //2分频,输入时钟25M
	
  always @(posedge clk2 or negedge rst) //列扫描
   if(!rst)
    x_cnt <= 10'd0;
   else if(x_cnt == 10'd799)
    x_cnt <= 10'd0;
   else
    x_cnt <= x_cnt+1'b1;
	 
  always @(posedge clk2 or negedge rst) //行扫描
   if(!rst)
    y_cnt <= 10'd0;
   else if(y_cnt == 10'd524) //扫描到524行
    y_cnt <= 10'd0;
   else if(x_cnt == 10'd799)
    y_cnt <= y_cnt+1'b1;
  reg hsync_r,vsync_r;//行，场同步信号
  
  always @(posedge clk2 or negedge rst)
   if(!rst)
    hsync_r <= 1'b1;
   else if(x_cnt == 10'd0)
    hsync_r <= 1'b0;
   else if(x_cnt == 10'd96)
    hsync_r <= 1'b1;
	 
  always @(posedge clk2 or negedge rst)
   if(!rst)
    vsync_r <= 1'b1;
   else if(y_cnt == 10'd0)
    vsync_r <= 1'b0;
   else if(y_cnt == 10'd2)
    vsync_r <= 1'b1;
	 
  assign hsync = hsync_r;
  assign vsync = vsync_r;
  
  reg valid_yr;//有效标志位
  always @(posedge clk2 or negedge rst)
   if(!rst)
    valid_yr <=1'b0;
   else if(y_cnt == 10'd32)
    valid_yr <= 1'b1; //32-512之间显示
   else if(y_cnt == 10'd512)
    valid_yr <= 1'b0;
  wire valid_y = valid_yr;
  
  reg valid_r;//有效显示标志区
  always @(posedge clk2 or negedge rst)
   if(!rst)
    valid_r <= 1'b0;
   else if((x_cnt == 10'd141) && valid_y)
    valid_r <= 1'b1;
   else if((x_cnt == 10'd781) && valid_y)
    valid_r <= 1'b0;
  wire valid = valid_r;
  
  wire [9:0] x_dis;//横坐标显示有效区域相对坐标0-639
  wire [9:0] y_dis;//纵坐标显示有效区域相对坐标0-479
  assign x_dis = x_cnt - 10'd142;
  assign y_dis = y_cnt - 10'd33;
  //VGA色彩信号
  assign  vga_r = nvga_r;
  assign  vga_g = nvga_g;
  assign  vga_b = nvga_b;  

endmodule
