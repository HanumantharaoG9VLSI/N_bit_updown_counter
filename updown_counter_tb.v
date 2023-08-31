`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2023 14:43:37
// Design Name: 
// Module Name: updown_counter_tb
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


module updown_counter_tb;
reg s,clc,rst;
wire [3:0]q;
updown_counter  uut(q,rst,s,clc);
always 
#5 clc=~clc;
initial begin
rst=1; clc=1; s=0;
#100 rst=0; s=0;
#100 rst=0; s=1;

end
endmodule
