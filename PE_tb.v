//-----------------------------------------------------------------------------
//
// Title       : PE_tb
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\PE_tb.v
// Generated   : Mon Jun  6 14:54:27 2022
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
//{module {PE_tb}}
module PE_tb ();
reg [1:0] y1;
reg [1:0] y2;
reg [1:0]y3;
reg valid1, valid2, valid3;
reg [3:0] a; 
reg enable;
//}} End of automatically maintained section
PE1 U0(.a(a), .enable(enable), .y1(y1), .y2(y2), .y3(y3), .valid1(valid1), .valid2(valid2), .valid3(valid3));

initial begin
	// a = 4'bz; enable = 0;
	a = 4'b0000; enable = 1;
	#10 a = 4'b0001; enable = 1;
	#10 a = 4'b0010; enable = 1;
	#10 a = 4'b0100; enable = 1;
	#10 a = 4'b1100; enable = 1; 
	#10 a = 4'b1000; enable = 1;
	#10 enable = 0;
	#10 a = 4'b1100;
end



// -- Enter your statements here -- //

endmodule
