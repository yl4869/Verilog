`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 22:15:33
// Design Name: 
// Module Name: ten_
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


module ten_(
    input s,
    input rst
    );
    reg sum;
    reg[3:0] ten;
    always @ (*) begin
        if(rst==1'b1) begin
            ten = 4'b0000;
        end else begin
            if(s==1'b1) begin
               ten = ten+1'b1;
            end
            if(ten==4'd10) begin
             sum = 1'b1;
             ten = 4'b0000;
         end else begin
             sum = 1'b0;
         end
        end
    end
endmodule
