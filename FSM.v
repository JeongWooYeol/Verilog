//-----------------------------------------------------------------------------
//
// Title       : FSM
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\FSM.v
// Generated   : Mon Jun  6 16:58:43 2022
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
//{module {FSM}}
module FSM ( x1 ,x2 ,rstn ,clk ,y );

input x1 ;
wire x1 ;
input x2 ;
wire x2 ;
input rstn ;
wire rstn ;
input clk ;
wire clk ;
output y ;
wire y ;
reg [1:0] ps;
reg [1:0] ns;
//}} End of automatically maintained section

assign y = (((ps == 2'b01) && ({x1,x2} == 2'b11)) || ((ps == 2'b10) && ({x1,x2} == 2'b11)))? 1 : 0;

always@(posedge clk or negedge rstn) begin
	if(!rstn) begin
		ps <= 2'b00;
	end
	else begin
		ps <= ns;
	end
end	


always @(ps or x1 or x2) begin
	ns <= {x1,x2};
end

// -- Enter your statements here -- //

endmodule
