`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/11 21:47:12
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a,
    input b,
    input c_in,
    output sum,
    output c_out
    );
    wire sum1;
    wire c_out1,c_out2;
    half_adder u1_half_adder(
    	.a     (a     ),
        .b     (b     ),
        .sum   (sum1   ),
        .c_out (c_out1 )
    );
    half_adder u2_half_adder(
    	.a     (c_in     ),
        .b     (sum1     ),
        .sum   (sum   ),
        .c_out (c_out2 )
    );
    assign c_out = c_out1|c_out2;
endmodule
