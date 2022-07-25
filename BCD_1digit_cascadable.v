//-----------------------------------------------------------------------------
//
// Title       : BCD_1digit_cacadable
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\BCD_1digit_cacadable.v
// Generated   : Mon Jun  6 16:00:12 2022
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
//{module {BCD_1digit_cacadable}}
module BCD_1digit_cascadable ( count ,mode ,rstn ,clk ,Q ,TC );

input count ;
wire count ;
input mode ;
wire mode ;
input rstn ;
wire rstn ;
input clk ;
wire clk ;
output [3:0] Q =  0;
reg [3:0] Q = 0 ;
output TC ;
wire TC ;
//}} End of automatically maintained section

assign TC = ((rstn && count && !mode && Q == 0) || (rstn && count && mode && Q == 9)) ? 1 : 0;
always @(negedge rstn, posedge clk) begin
	if(!rstn) begin
		Q <= 0;
	end
	else begin
		if(count) begin
			if(mode) begin
				if(Q == 9) begin
					Q <= 0;
				end
				else begin
				Q <= Q + 1;
				end
			end
			else begin
				if( Q <= 0) begin
					Q <= 9;
				end
				else begin
					Q <= Q - 1;
				end
			end
		end
	end
end


// -- Enter your statements here -- //

endmodule
