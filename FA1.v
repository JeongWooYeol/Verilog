//-----------------------------------------------------------------------------
//
// Title       : FA1
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\FA1.v
// Generated   : Mon Jun  6 14:16:53 2022
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
//{module {FA1}}
module FA1 ( A ,B ,ci ,co ,s );

input A ;
wire A ;
input B ;
wire B ;
input ci ;
wire ci ;
output co ;
wire co ;
output s ;
wire s ;
wire xorresult1;
wire andresult1;
wire andresult2;
//}} End of automatically maintained section
xor(xorresult1, A, B);
and(andresult1, A, B);
xor(s, xorresult1, ci);
and(andresult2, xorresult1, ci);
or(co, andresult1, andresult2);

// -- Enter your statements here -- //

endmodule
