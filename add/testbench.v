`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/11 22:06:53
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
    reg [3:0] A,B;
    reg CI;
    wire [3:0] S;
    wire CO;
    add_4 A1(A,B,CI,S,CO);
    initial
              begin
                   A=4'd0;B=4'd0;CI=1'b0;
                   #5 A=4'd3;B=4'd4;CI=1'B0;
                   #5 A=4'd2;B=4'd5;CI=1'b1;
                   #5 A=4'd9;B=4'd9;CI=1'b1;
                   #5 A=4'd0;B=4'd0;CI=1'b0;
              end
endmodule
