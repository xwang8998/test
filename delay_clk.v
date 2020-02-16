//v12
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/26 11:26:03
// Design Name: 
// Module Name: delay_clk
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//v2
module delay_clk(
       output bick_out
        );
reg clk_1,clk_2,clk_3,clk_4,clk_5,clk_6,clk_7;
reg clkr;
always @(posedge clk_300m) begin
    clk_1 <= bick_in;
    clk_2 <= clk_1;
    clk_3 <= clk_2;
    clk_4 <= clk_3;
    clk_5 <= clk_4;
    clk_6 <= clk_5;
    clk_7 <= clk_6;
  
    clkr <=  (delay_setting == 1) ? bick_in :
             (delay_setting == 2) ? clk_1 : 
             (delay_setting == 3) ? clk_2 :
             (delay_setting == 4) ? clk_3 :
             (delay_setting == 5) ? clk_4 :  
             (delay_setting == 6) ? clk_5 :  
             (delay_setting == 7) ? clk_6 : bick_in; 
                         
    end        

assign bick_out =  (delay_setting == 0) ? bick_in : clkr;

/*    
assign bick_out =  (delay_setting == 0) ? bick_in :
                   (delay_setting == 1) ? clk_1 : 
                   (delay_setting == 2) ? clk_2 :
                   (delay_setting == 3) ? clk_3 :
                   (delay_setting == 4) ? clk_4 :  
                   (delay_setting == 5) ? clk_5 :  
                   (delay_setting == 6) ? clk_6 :  
                   (delay_setting == 7) ? clk_7 : bick_in;          
*/    
    
        
        
endmodule
