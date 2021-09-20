`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/20 15:46:05
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
    reg                 clk;
    reg     [31: 0]     X;
    reg     [31: 0]     Y;
    wire    [63: 0]     result;
    wire    [63: 0]     ref;
    
    multiplier multiplier(
        .X(X),
        .Y(Y),
        .result(result)    
    );
    
    assign ref = X * Y;
    
    initial begin
        clk = 0;
        X = 0;
        Y = 1;
    end
    
    always begin
        #10
        clk = ~clk;
        X = X + 1;
    end
    
    always begin
        #500
        Y = Y + 1;
    end
    
    always @ (posedge clk) begin
        #5
        if (ref !== result) begin
            $finish;
        end
    end
    
    
endmodule
