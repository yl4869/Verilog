`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/13 10:32:21
// Design Name: 
// Module Name: six_ten
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


module six_ten(
    input wire clk,
    input wire rst
    );
    wire s;
    six_ u_six_(
    	.clk (clk ),
        .rst (rst ),
        .s   (s   )
    );
    ten_ u_ten_(
    	.s   (s   ),
        .rst (rst )
    );
endmodule