//-----------------------------------------------------------------------------
//
// Title       : FA2_tb
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\lab2\lab2\src\FA2_tb.v
// Generated   : Mon Jun  6 14:10:43 2022
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
//{module {FA2_tb}}
module FA2_tb ();

reg A;
reg B;
reg ci;
reg co;
reg s;
	
	
//}} End of automatically maintained section
FA2 U0(.A(A), .B(B), .ci(ci), .co(co), .s(s));

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
