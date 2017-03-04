`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:40 01/05/2016 
// Design Name: 
// Module Name:    transform 
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
module transform(
    input clk,
    input [5:0] x0,
    input [5:0] x1,
    input [5:0] x2,
    input [5:0] x3,
    input [5:0] x4,
    input [5:0] x5,
    input [5:0] x6,
    input [5:0] x7,
    input [5:0] x8,
    input [5:0] x9,
    input [5:0] x10,
    input [5:0] x11,
    input [5:0] x12,
    input [5:0] x13,
    input [5:0] x14,
    input [5:0] x15,
    input [5:0] y0,
    input [5:0] y1,
    input [5:0] y2,
    input [5:0] y3,
    input [5:0] y4,
    input [5:0] y5,
    input [5:0] y6,
    input [5:0] y7,
    input [5:0] y8,
    input [5:0] y9,
    input [5:0] y10,
    input [5:0] y11,
    input [5:0] y12,
    input [5:0] y13,
    input [5:0] y14,
    input [5:0] y15,
    input over,
    input win,
    input [9:0] x,
    input [9:0] y,
    output c_red,
    output c_green,
    output c_blue
    );

reg clk2;
always @(posedge clk)
   clk2 <= ~clk2; //2��Ƶ,����ʱ��25M
	
reg red;
reg blue;
reg green;


assign c_red=red;
assign c_green=green;
assign c_blue=blue;


always @(posedge clk2)
  begin
  if(over==0 && win==1)
    begin
     if((x>=0 && x<=39) || (x>=600 && x<=639) || (y>=0 && y<=29) || (y>=450 && y<=479))
      begin
		blue<=0;
		red<=0;
		green<=0;
	   end
	  else if( ((y>=90 && y<=119)&&((x>=160 && x<=199)||(x>=440&&x<=479))) ||
              ((y>=120 && y<=149)&&((x>=160 && x<=199)||(x>=440&&x<=479))) ||
              ((y>=150 && y<=179)&&((x>=160 && x<=239)||(x>=400&&x<=479)))||
              ((y>=180 && y<=209)&&((x>=200 && x<=239)||(x>=400&&x<=439)))||				  
              ((y>=210 && y<=239)&&((x>=200 && x<=239)||(x>=400&&x<=439)))||		
              ((y>=240 && y<=269)&&((x>=200 && x<=279)||(x>=360&&x<=439)))||
              ((y>=270 && y<=299)&&((x>=240 && x<=279)||(x>=360&&x<=399)))||
              ((y>=300 && y<=329)&&((x>=240 && x<=399)))||
              ((y>=330 && y<=359)&&((x>=280 && x<=359)))  )
				 begin
				 blue<=1;
		       red<=1;
		       green<=1;
				 end
		else
         begin
			blue<=1;
		   red<=0;
		   green<=0;
         end			
    end
  else if(over==1 && win==0)
    begin
     if((x>=0 && x<=39 && y>=0 && y<=479) || (x>=600 && x<=639 && y>=0 && y<=479) || (y>=0 && y<=29 && x>=0 && x<=639) || (y>=450 && y<=479 && x>=0 && x<=639))
      begin
		blue<=0;
		red<=0;
		green<=0;
	   end
	  else if( ((y>=60 && y<=89)&&((x>=80 && x<=239)||(x>=320&&x<=359)||(x>=520&&x<=559))) ||
	           ((y>=90 && y<=119)&&((x>=80 && x<=119)||(x>=200&&x<=239)||(x>=320&&x<=359)||(x>=520&&x<=559))) ||
              ((y>=120 && y<=149)&&((x>=80 && x<=119)||(x>=200&&x<=239)||(x>=320&&x<=399)||(x>=480&&x<=559))) ||
              ((y>=150 && y<=179)&&((x>=80 && x<=239)||(x>=360&&x<=519)))||		
              ((y>=210 && y<=239)&&((x>=80 && x<=239)||(x>=320&&x<=519)))||		
              ((y>=240 && y<=269)&&((x>=80 && x<=119)||(x>=320&&x<=359)||(x>=480&&x<=519)))||
              ((y>=270 && y<=299)&&((x>=80 && x<=119)||(x>=320&&x<=359)||(x>=480&&x<=519)))||
              ((y>=300 && y<=329)&&((x>=80 && x<=239)||(x>=320&&x<=519)))||
              ((y>=330 && y<=359)&&((x>=80 && x<=119)||(x>=320&&x<=399)))||
				  ((y>=360 && y<=389)&&((x>=80 && x<=119)||(x>=320&&x<=359)||(x>=400&&x<=439)))||
				  ((y>=390 && y<=419)&&((x>=80 && x<=239)||(x>=320&&x<=359)||(x>=440&&x<=519)))  )
				 begin
			   blue<=1;
		       red<=1;
		       green<=1;
				 end
		else
         begin
			blue<=1;
		   red<=0;
		   green<=0;
         end			
    end

else
    begin
     if((x>=0 && x<=39) || (x>=600 && x<=639) || (y>=0 && y<=29) || (y>=450 && y<=479))
      begin
		blue<=0;
		red<=0;
		green<=0;
	   end
	 else if( (x>=(40*x0) && x<=(40*x0+39) && y>=(30*y0) && y<=(30*y0+29)) ||
	           (x>=(40*x1) && x<=(40*x1+39) && y>=(30*y1) && y<=(30*y1+29)) ||
				  (x>=(40*x2) && x<=(40*x2+39) && y>=(30*y2) && y<=(30*y2+29)) ||
				  (x>=(40*x3) && x<=(40*x3+39) && y>=(30*y3) && y<=(30*y3+29)) ||
				  (x>=(40*x4) && x<=(40*x4+39) && y>=(30*y4) && y<=(30*y4+29)) ||
				  (x>=(40*x5) && x<=(40*x5+39) && y>=(30*y5) && y<=(30*y5+29)) ||
				  (x>=(40*x6) && x<=(40*x6+39) && y>=(30*y6) && y<=(30*y6+29)) ||
				  (x>=(40*x7) && x<=(40*x7+39) && y>=(30*y7) && y<=(30*y7+29)) ||
				  (x>=(40*x8) && x<=(40*x8+39) && y>=(30*y8) && y<=(30*y8+29)) ||
				  (x>=(40*x9) && x<=(40*x9+39) && y>=(30*y9) && y<=(30*y9+29)) ||
				  (x>=(40*x10) && x<=(40*x10+39) && y>=(30*y10) && y<=(30*y10+29)) ||
				  (x>=(40*x11) && x<=(40*x11+39) && y>=(30*y11) && y<=(30*y11+29)) ||
				  (x>=(40*x12) && x<=(40*x12+39) && y>=(30*y12) && y<=(30*y12+29)) ||
				  (x>=(40*x13) && x<=(40*x13+39) && y>=(30*y13) && y<=(30*y13+29)) ||
				  (x>=(40*x14) && x<=(40*x14+39) && y>=(30*y14) && y<=(30*y14+29)) ||
				  (x>=(40*x15) && x<=(40*x15+39) && y>=(30*y15) && y<=(30*y15+29)) )
				 begin
				 blue<=1;
		       red<=1;
		       green<=1;
				 end
		else
         begin
			blue<=1;
		   red<=0;
		   green<=0;
         end			
    end
  end

endmodule