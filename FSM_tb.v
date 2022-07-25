//-----------------------------------------------------------------------------
//
// Title       : FSM_tb
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\FSM_tb.v
// Generated   : Mon Jun  6 17:07:55 2022
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
//{module {FSM_tb}}
module FSM_tb ();
reg x1, x2, rstn, clk, y;
//}} End of automatically maintained section
FSM U0 (.x1(x1), .x2(x2), .rstn(rstn), .clk(clk), .y(y));
initial begin
	clk = 1;
	forever # 5 clk = !clk;
end

initial begin
	x1 = 0; x2 = 0; rstn = 1;
	#10 x1 = 0; x2 = 1;
	#10 x1 = 0; x2 = 0;
	#10 x1 = 1; x2 = 0;
	#10 x1 = 1; x2 = 1;
	#10 x1 = 0; x2 = 0;
	#10 x1 = 0; x2 = 1;
	#10 x1 = 1; x2 = 1;
	#5 rstn = 0;	   
	#5 rstn = 1;
	#10 x1 = 0; x2 = 1;
	#10 x1 = 1; x2 = 1;
	#10 x1 = 0; x2 = 0;
end

// -- Enter your statements here -- //

endmodule
