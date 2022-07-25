//-----------------------------------------------------------------------------
//
// Title       : FA3
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\FA3.v
// Generated   : Mon Jun  6 14:24:55 2022
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
//{module {FA3}}
module FA3 ( A ,B ,ci ,co ,s );

input A ;
wire A ;
input B ;
wire B ;
input ci ;
wire ci ;
output co ;
reg co ;
output s ;
reg s ;
//}} End of automatically maintained section

always @(A or B or ci) begin
	case({A, B, ci})
		3'b000 : {co, s} = 2'b00;
		3'b001 : {co, s} = 2'b01;
		3'b010 : {co, s} = 2'b01;
		3'b100 : {co, s} = 2'b01;
		3'b011 : {co, s} = 2'b10;
		3'b101 : {co, s} = 2'b10;
		3'b110 : {co, s} = 2'b10;
		3'b111 : {co, s} = 2'b11;
	endcase
end
// -- Enter your statements here -- //

endmodule
