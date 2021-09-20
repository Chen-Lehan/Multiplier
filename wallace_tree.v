`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/19 12:20:46
// Design Name: 
// Module Name: wallace_tree
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


module wallace_tree(
    input   [15: 0]     N_0,
    input   [15: 0]     N_1,
    input   [15: 0]     N_2,
    input   [15: 0]     N_3,
    input   [15: 0]     N_4,
    input   [15: 0]     N_5,
    input   [15: 0]     N_6,
    input   [15: 0]     N_7,
    input   [15: 0]     N_8,
    input   [15: 0]     N_9,
    input   [15: 0]     N_10,
    input   [15: 0]     N_11,
    input   [15: 0]     N_12,
    input   [15: 0]     N_13,
    input   [15: 0]     N_14,
    input   [15: 0]     N_15,
    input   [15: 0]     N_16,
    input   [15: 0]     N_17,
    input   [15: 0]     N_18,
    input   [15: 0]     N_19,
    input   [15: 0]     N_20,
    input   [15: 0]     N_21,
    input   [15: 0]     N_22,
    input   [15: 0]     N_23,
    input   [15: 0]     N_24,
    input   [15: 0]     N_25,
    input   [15: 0]     N_26,
    input   [15: 0]     N_27,
    input   [15: 0]     N_28,
    input   [15: 0]     N_29,
    input   [15: 0]     N_30,
    input   [15: 0]     N_31,
    input   [15: 0]     N_32,
    input   [15: 0]     N_33,
    input   [15: 0]     N_34,
    input   [15: 0]     N_35,
    input   [15: 0]     N_36,
    input   [15: 0]     N_37,
    input   [15: 0]     N_38,
    input   [15: 0]     N_39,
    input   [15: 0]     N_40,
    input   [15: 0]     N_41,
    input   [15: 0]     N_42,
    input   [15: 0]     N_43,
    input   [15: 0]     N_44,
    input   [15: 0]     N_45,
    input   [15: 0]     N_46,
    input   [15: 0]     N_47,
    input   [15: 0]     N_48,
    input   [15: 0]     N_49,
    input   [15: 0]     N_50,
    input   [15: 0]     N_51,
    input   [15: 0]     N_52,
    input   [15: 0]     N_53,
    input   [15: 0]     N_54,
    input   [15: 0]     N_55,
    input   [15: 0]     N_56,
    input   [15: 0]     N_57,
    input   [15: 0]     N_58,
    input   [15: 0]     N_59,
    input   [15: 0]     N_60,
    input   [15: 0]     N_61,
    input   [15: 0]     N_62,
    input   [15: 0]     N_63,
    input   [13: 0]     Cin,
    output  [63: 0]     C,
    output  [63: 0]     S
    );
    
    wire    [15: 0]     N       [63: 0];
    wire    [13: 0]     Cout    [63: 0];
    
    assign  N[0] = N_0;
    assign  N[1] = N_1;
    assign  N[2] = N_2;
    assign  N[3] = N_3;
    assign  N[4] = N_4;
    assign  N[5] = N_5;
    assign  N[6] = N_6;
    assign  N[7] = N_7;
    assign  N[8] = N_8;
    assign  N[9] = N_9;
    assign  N[10] = N_10;
    assign  N[11] = N_11;
    assign  N[12] = N_12;
    assign  N[13] = N_13;
    assign  N[14] = N_14;
    assign  N[15] = N_15;
    assign  N[16] = N_16;
    assign  N[17] = N_17;
    assign  N[18] = N_18;
    assign  N[19] = N_19;
    assign  N[20] = N_20;
    assign  N[21] = N_21;
    assign  N[22] = N_22;
    assign  N[23] = N_23;
    assign  N[24] = N_24;
    assign  N[25] = N_25;
    assign  N[26] = N_26;
    assign  N[27] = N_27;
    assign  N[28] = N_28;
    assign  N[29] = N_29;
    assign  N[30] = N_30;
    assign  N[31] = N_31;
    assign  N[32] = N_32;
    assign  N[33] = N_33;
    assign  N[34] = N_34;
    assign  N[35] = N_35;
    assign  N[36] = N_36;
    assign  N[37] = N_37;
    assign  N[38] = N_38;
    assign  N[39] = N_39;
    assign  N[40] = N_40;
    assign  N[41] = N_41;
    assign  N[42] = N_42;
    assign  N[43] = N_43;
    assign  N[44] = N_44;
    assign  N[45] = N_45;
    assign  N[46] = N_46;
    assign  N[47] = N_47;
    assign  N[48] = N_48;
    assign  N[49] = N_49;
    assign  N[50] = N_50;
    assign  N[51] = N_51;
    assign  N[52] = N_52;
    assign  N[53] = N_53;
    assign  N[54] = N_54;
    assign  N[55] = N_55;
    assign  N[56] = N_56;
    assign  N[57] = N_57;
    assign  N[58] = N_58;
    assign  N[59] = N_59;
    assign  N[60] = N_60;
    assign  N[61] = N_61;
    assign  N[62] = N_62;
    assign  N[63] = N_63;    
        
    genvar  i;
    generate
        for (i = 0; i < 64; i = i + 1) begin: wallace_tree_unit
            case(i)
                0: begin
                wallace_tree_unit wallace_tree_unit(
                    .N   (   N[0]),
                    .Cin (    Cin),
                    .C   (   C[0]),
                    .S   (   S[0]),
                    .Cout(Cout[0])
                );
                end
    
                default: begin
                wallace_tree_unit wallace_tree_unit(
                    .N   (       N[i]),
                    .Cin (Cout[i - 1]),
                    .C   (       C[i]),
                    .S   (       S[i]),
                    .Cout(    Cout[i])
                );
                end
            endcase
        end
    endgenerate 
    
endmodule
