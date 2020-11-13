`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 22:22:29
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


module testbench(
    );
    reg clk;
    reg rst;
    initial begin
        clk<=0;
        rst<=1;
        #2 rst<=0;
    end
    always @ (*) begin
        #1 clk<=~clk;
    end
    six_ten u_six_ten(
    	.clk (clk ),
        .rst (rst )
    );
endmodule
