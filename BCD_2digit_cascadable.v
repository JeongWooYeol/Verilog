//-----------------------------------------------------------------------------
//
// Title       : BCD_2digit_cascadable
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\BCD_2digit_cascadable.v
// Generated   : Mon Jun  6 16:41:48 2022
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {BCD_2digit_cascadable}}
module BCD_2digit_cascadable ( mode ,count ,clk ,rstn ,Q0 ,Q1 ,tc2 );

input mode ;
wire mode ;
input count ;
wire count ;
input clk ;
wire clk ;
input rstn ;
wire rstn ;
output [3:0] Q0 = 0;
output [3:0] Q1 = 0;
output tc2 ;
wire tc2 ;
wire tc1;
//}} End of automatically maintained section
BCD_1digit_cascadable U0(.mode(mode), .count(count), .clk(clk), .rstn(rstn), .Q(Q0), .TC(tc1));
BCD_1digit_cascadable U1(.mode(mode), .count(tc1), .clk(clk), .rstn(rstn), .Q(Q1), .TC(tc2));
// -- Enter your statements here -- //

endmodule
