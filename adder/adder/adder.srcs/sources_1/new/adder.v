`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/13 10:57:25
// Design Name: 
// Module Name: adder
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

`timescale 1ns/1ps
module adder(
     a,
     b,
     cin,
     sum
    );
    input [3:0] a;
    input [3:0] b;
    input cin;
    output sum;
    wire [3:0]a;
    wire [3:0]b;
    wire cin;
    reg [4:0] sum;
    
    always @ (a or b or cin)
    begin
    sum = a + b + cin;
    end
endmodule
