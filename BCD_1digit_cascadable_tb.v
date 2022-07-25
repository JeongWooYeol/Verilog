//-----------------------------------------------------------------------------
//
// Title       : BCD_1digit_cascadable_tb
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\BCD_1digit_cascadable_tb.v
// Generated   : Mon Jun  6 16:10:13 2022
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
//{module {BCD_1digit_cascadable_tb}}
module BCD_1digit_cascadable_tb ();
reg count;
reg mode;
reg rstn;
reg clk;
reg TC;
reg [3:0] Q;
//}} End of automatically maintained section
BCD_1digit_cascadable U0(.count(count), .mode(mode), .rstn(rstn), .clk(clk), .TC(TC), .Q(Q));

initial begin
	clk = 0;
	forever #5 clk = !clk;
end

			 	
initial begin
	count = 1; mode = 0; rstn = 1; 
	# 50 mode = 1;
end



// -- Enter your statements here -- //

endmodule
