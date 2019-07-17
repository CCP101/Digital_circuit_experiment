
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/13 11:06:31
// Design Name: 
// Module Name: testbench
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
module testbench;
reg [3:0] a,b;
reg cin;
wire [4:0] sum;

initial
$monitor ("a = %b,b = %b,cin = %b,sum =%b",a,b,cin,sum);


initial
begin
    #0    a = 4'b1100;
          b = 4'b0100;
          cin = 1'b0;
    #10   a = 4'b1100;
          b = 4'b0110;
          cin = 1'b1;
    #10   a = 4'b0010;
          b = 4'b0101;
          cin = 1'b1;
    #10   a = 4'b1000;
          b = 4'b1010;
          cin = 1'b0; 
    #10   $stop;
    end
    
 adder inst(
      .a(a),
      .b(b),
      .cin(cin),
      .sum(sum)
 );
endmodule
