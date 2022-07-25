//-----------------------------------------------------------------------------
//
// Title       : FA
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\lab2\lab2\src\FA.v
// Generated   : Mon Jun  6 14:07:30 2022
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
//{module {FA}}
module FA2 ( A ,B ,ci ,co ,s );

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

//}} End of automatically maintained section
assign co = ((A & B) | ((A ^ B) & ci));
assign s = ((A ^ B) ^ ci);

// -- Enter your statements here -- //

endmodule
