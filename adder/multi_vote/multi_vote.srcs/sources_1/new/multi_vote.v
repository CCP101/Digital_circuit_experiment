`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/13 10:29:28
// Design Name: 
// Module Name: multi_vote
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


module multi_vote(
    input a,
    input b,
    input c,
    output f
    
    );
    assign f=a&b|b&c|c&a;//f=ab+bc+ca
endmodule
