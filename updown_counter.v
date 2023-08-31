`timescale 1ns / 1ps


module updown_counter(q,rst,s,clc);
output reg [3:0]q;
input rst,s,clc;
always@(posedge clc)
begin 
  if(rst)
  q<=0;
  else
  case(s)
    1'b0:q<=q+1;
    1'b1:q<=q-1;
    endcase
    end
endmodule
