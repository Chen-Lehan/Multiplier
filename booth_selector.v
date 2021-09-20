`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/19 18:03:27
// Design Name: 
// Module Name: booth_selector
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


module booth_selector(
    input               y0,
    input               y1,
    input               y2,
    input   [31: 0]     X,
    
    output  [31: 0]     P,
    output              C
    );
    
    wire    [32: 0]     negX;
    wire    [32: 0]     neg2X;
    wire    [32: 0]     pos2X;
    wire    [32: 0]     posX;
    
    assign negX  = {1'b1, ~X};
    assign posX  = {1'b0,  X};
    assign neg2X = {1'b1, ~X[30: 0], 1'b1};
    assign pos2X = {1'b0,  X[30: 0], 1'b0};
    
    assign {C, P} = {33{~y2 & ~y1 &  y0 | ~y2 &  y1 & ~y0}} & posX  |
                    {33{~y2 &  y1 &  y0}}                   & pos2X |
                    {33{ y2 & ~y1 &  y0 |  y2 &  y1 & ~y0}} & negX  |
                    {33{ y2 & ~y1 & ~y0}}                   & neg2X;
    
endmodule
