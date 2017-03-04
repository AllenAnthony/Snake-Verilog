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
  reg [9:0] x_cnt;//������
  reg [9:0] y_cnt;//������
  
  initial begin
   clk2 = 0;
  end
  always @(posedge clk)
   clk2 <= ~clk2; //2��Ƶ,����ʱ��25M
	
  always @(posedge clk2 or negedge rst) //��ɨ��
   if(!rst)
    x_cnt <= 10'd0;
   else if(x_cnt == 10'd799)
    x_cnt <= 10'd0;
   else
    x_cnt <= x_cnt+1'b1;
	 
  always @(posedge clk2 or negedge rst) //��ɨ��
   if(!rst)
    y_cnt <= 10'd0;
   else if(y_cnt == 10'd524) //ɨ�赽524��
    y_cnt <= 10'd0;
   else if(x_cnt == 10'd799)
    y_cnt <= y_cnt+1'b1;
  reg hsync_r,vsync_r;//�У���ͬ���ź�
  
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
  
  reg valid_yr;//��Ч��־λ
  always @(posedge clk2 or negedge rst)
   if(!rst)
    valid_yr <=1'b0;
   else if(y_cnt == 10'd32)
    valid_yr <= 1'b1; //32-512֮����ʾ
   else if(y_cnt == 10'd512)
    valid_yr <= 1'b0;
  wire valid_y = valid_yr;
  
  reg valid_r;//��Ч��ʾ��־��
  always @(posedge clk2 or negedge rst)
   if(!rst)
    valid_r <= 1'b0;
   else if((x_cnt == 10'd141) && valid_y)
    valid_r <= 1'b1;
   else if((x_cnt == 10'd781) && valid_y)
    valid_r <= 1'b0;
  wire valid = valid_r;
  
  wire [9:0] x_dis;//��������ʾ��Ч�����������0-639
  wire [9:0] y_dis;//��������ʾ��Ч�����������0-479
  assign x_dis = x_cnt - 10'd142;
  assign y_dis = y_cnt - 10'd33;
  //VGAɫ���ź�
  assign  vga_r = nvga_r;
  assign  vga_g = nvga_g;
  assign  vga_b = nvga_b;  

endmodule
