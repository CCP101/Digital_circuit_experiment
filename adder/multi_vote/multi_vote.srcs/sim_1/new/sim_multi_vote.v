`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/13 10:35:12
// Design Name: 
// Module Name: sim_multi_vote
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

`timescale 1ns / 1ps
module sim_multi_vote;
reg a,b,c;
wire f;
multi_vote u1(
a,
b,
c,
f
);
initial
begin a=0;b=0;c=0;
end
always #10 {a,b,c}={a,b,c}+1;
endmodule
