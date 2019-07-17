`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/13 13:46:13
// Design Name: 
// Module Name: selector_tb
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


module selector_tb;
         reg signal_a;
         reg signal_b;
         reg signal_c;
         
         wire dout;
         
         selector selector_tb(
         .a(signal_a),
         .b(signal_b),
         .key(signal_c),
         .led(dout)
         );
        initial
                begin
                        signal_a=0;signal_b=0;signal_c=0;
                        
                        #100;
                        signal_a=0;signal_b=0;signal_c=0; 
                        #100;
                        signal_a=0;signal_b=0;signal_c=1;
                        #100;
                        signal_a=0;signal_b=1;signal_c=0;                       
                         #100;
                        signal_a=0;signal_b=1;signal_c=1;
                         #100;
                        signal_a=1;signal_b=0;signal_c=0;
                         #100;
                        signal_a=1;signal_b=0;signal_c=1;
                         #100;
                        signal_a=1;signal_b=1;signal_c=0;
                         #100;
                        signal_a=1;signal_b=1;signal_c=1;
                        #200;
                        $stop;
                        end
  
endmodule
