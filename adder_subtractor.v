//-----------------------------------------------------------------------------
//
// Title       : adder_subtractor
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\adder_subtractor.v
// Generated   : Mon Jun  6 15:23:43 2022
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
//{module {adder_subtractor}}
module adder_subtractor ( a ,b ,mode ,s ,overflow);

input signed [3:0]a ;
input signed [3:0]b ;
input mode ;
output signed [3:0]s ;
output overflow ;
wire [3:0] co;

wire w1, w2, w3, w4;
//}} End of automatically maintained section
assign w1 = b[0] ^ mode;
assign w2 = b[1] ^ mode;
assign w3 = b[2] ^ mode;
assign w4 = b[3] ^ mode;

FA2 U0(.A(a[0]), .B(b[0] ^ mode), .ci(mode), .s(s[0]), .co(co[0]));
FA2 U1(.A(a[1]), .B(b[1] ^ mode), .ci(co[0]), .s(s[1]), .co(co[1]));
FA2 U2(.A(a[2]), .B(b[2] ^ mode), .ci(co[1]), .s(s[2]), .co(co[2]));
FA2 U3(.A(a[3]), .B(b[3] ^ mode), .ci(co[2]), .s(s[3]), .co(co[3]));

assign overflow = co[3] ^ co[2];
// -- Enter your statements here -- //

endmodule
