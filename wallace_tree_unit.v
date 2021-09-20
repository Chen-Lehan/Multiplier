`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/19 12:21:54
// Design Name: 
// Module Name: wallace_tree_unit
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


module wallace_tree_unit(
    input   [15: 0]     N,
    input   [13: 0]     Cin,
    
    output              C,
    output              S,
    output  [13: 0]     Cout
    );
    
    wire S_0;
    wire S_1;
    wire S_2;
    wire S_3;
    wire S_4;
    wire S_5;
    wire S_6;
    wire S_7;
    wire S_8;
    wire S_9;
    wire S_10;
    wire S_11;
    wire S_12;
    wire S_13;
    
    //THE FIRST LAYER
    full_adder full_adder_0(
        .A   (   N[0]),
        .B   (   N[1]),
        .Cin (   N[2]),
        .Cout(Cout[0]),
        .S   (    S_0)
    );
    
    full_adder full_adder_1(
        .A   (   N[3]),
        .B   (   N[4]),
        .Cin (   N[5]),
        .Cout(Cout[1]),
        .S   (    S_1)
    );
    
    full_adder full_adder_2(
        .A   (   N[6]),
        .B   (   N[7]),
        .Cin (   N[8]),
        .Cout(Cout[2]),
        .S   (    S_2)
    );
    
    full_adder full_adder_3(
        .A   (  N[ 9]),
        .B   (  N[10]),
        .Cin (  N[11]),
        .Cout(Cout[3]),
        .S   (    S_3)
    );
    
    full_adder full_adder_4(
        .A   (  N[12]),
        .B   (  N[13]),
        .Cin (  N[14]),
        .Cout(Cout[4]),
        .S   (    S_4)
    );
    
    //THE SECOND LAYER
    full_adder full_adder_5(
        .A   (    S_0),
        .B   (    S_1),
        .Cin (    S_2),
        .Cout(Cout[5]),
        .S   (    S_5)
    );
    
    full_adder full_adder_6(
        .A   ( Cin[0]),
        .B   ( Cin[1]),
        .Cin ( Cin[2]),
        .Cout(Cout[6]),
        .S   (    S_6)
    );
    
    half_adder half_adder_7(
        .A   ( Cin[3]),
        .B   ( Cin[4]),
        .C   (Cout[7]),
        .S   (    S_7)
    );
    
    full_adder full_adder_8(
        .A   (    S_3),
        .B   (    S_4),
        .Cin (  N[15]),
        .Cout(Cout[8]),
        .S   (    S_8)
    );
    
    //THE THIRD LAYER
    full_adder full_adder_9(
        .A   (    S_5),
        .B   (    S_6),
        .Cin (    S_7),
        .Cout(Cout[9]),
        .S   (    S_9)
    );
    
    full_adder full_adder_10(
        .A   ( Cin[ 5]),
        .B   ( Cin[ 6]),
        .Cin (    S_8 ),
        .Cout(Cout[10]),
        .S   (    S_10)
    );
    
    //THE FORTH LAYER
    full_adder full_adder_11(
        .A   ( Cin[ 7]),
        .B   ( Cin[ 8]),
        .Cin (    S_9 ),
        .Cout(Cout[11]),
        .S   (    S_11)
    );
    
    full_adder full_adder_12(
        .A   ( Cin[ 9]),
        .B   ( Cin[10]),
        .Cin (    S_10),
        .Cout(Cout[12]),
        .S   (    S_12)
    );
    
    //THE FIFTH LAYER
    full_adder full_adder_13(
        .A   ( Cin[11]),
        .B   (    S_11),
        .Cin (    S_12),
        .Cout(Cout[13]),
        .S   (    S_13)
    );
    
    //THE SIXTH LAYER
    full_adder full_adder_14(
        .A   (Cin[12]),
        .B   (Cin[13]),
        .Cin (   S_13),
        .Cout(      C),
        .S   (      S)
    );
    
endmodule
