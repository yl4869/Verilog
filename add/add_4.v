`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/11 21:56:05
// Design Name: 
// Module Name: add_4
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


module add_4(
    input [3:0] a,
    input [3:0] b,
    input c_in,
    output [3:0] sum,
    output c_out
    );
    wire [3:0] c_tmp;
    full_adder u1_full_adder(
    	.a     (a[0] ),
        .b     (b[0]     ),
        .c_in  (c_in  ),
        .sum   (sum[0]   ),
        .c_out (c_tmp[0] )
    );
    full_adder u2_full_adder(
    	.a     (a[1]     ),
        .b     (b[1]     ),
        .c_in  (c_tmp[0]  ),
        .sum   (sum[1]   ),
        .c_out (c_tmp[1] )
    );
    full_adder u3_full_adder(
    	.a     (a[2]     ),
        .b     (b[2]     ),
        .c_in  (c_tmp[1]  ),
        .sum   (sum[2]   ),
        .c_out (c_tmp[2] )
    );
    full_adder u4_full_adder(
    	.a     (a[3]     ),
        .b     (b[3]     ),
        .c_in  (c_tmp[2]  ),
        .sum   (sum[3]   ),
        .c_out (c_tmp[3] )
    );
endmodule
