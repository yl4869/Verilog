`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 21:55:12
// Design Name: 
// Module Name: six_
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


module six_(
    input wire clk,
    input wire rst,
    output reg s
    );
    reg[3:0] count;
    always @ (posedge clk) begin
        if(rst==1'b1) begin
            count <= 4'b0000;
            s <= 1'b0;
        end else begin
            count <= count+1'b1;
        end
        if(count == 4'd5) begin
            s <= 1'b1;
            count <= 4'b0000;
        end else begin
            s <= 1'b0;
        end
    end
endmodule
