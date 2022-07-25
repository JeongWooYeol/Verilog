//-----------------------------------------------------------------------------
//
// Title       : FA1_tb
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\FA1_tb.v
// Generated   : Mon Jun  6 14:22:27 2022
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
//{module {FA1_tb}}
module FA1_tb ();
reg A, B, ci, co, s;

//}} End of automatically maintained section
FA1 U0(.A(A), .B(B), .ci(ci), .co(co), .s(s));
initial begin
	A = 1; B = 1; ci = 1;
	#10 A = 1; B = 1; ci = 0;
	#10 A = 1; B = 0; ci = 1;
	#10 A = 1; B = 0; ci = 0;
	#10 A = 0; B = 1; ci = 1;
	#10 A = 0; B = 1; ci = 0;
	#10 A = 0; B = 0; ci = 1;
	#10 A = 0; B = 0; ci = 0;
end	
// -- Enter your statements here -- //

endmodule
