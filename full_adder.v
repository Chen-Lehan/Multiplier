`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/19 12:03:54
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
    input               A,
    input               B,
    input               Cin,
    
    output              S,
    output              Cout
    );
    
    assign S = ~A & ~B &  Cin |
                A & ~B & ~Cin |
               ~A &  B & ~Cin |
                A &  B &  Cin;
                
    assign Cout = A & B | A & Cin | B & Cin;
    
endmodule
