//-----------------------------------------------------------------------------
//
// Title       : adder_subtractor_tb
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\adder_subtractor_tb.v
// Generated   : Mon Jun  6 15:39:33 2022
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
//{module {adder_subtractor_tb}}
module adder_subtractor_tb ();

reg signed [3:0] a ;
reg signed [3:0] b ;
reg mode ;
reg signed [3:0] result;
reg overflow;
//}} End of automatically maintained section
adder_subtractor u0(.a(a), .b(b), .mode(mode), .s(result), .overflow(overflow));
initial begin
         a=0 ; b=0; mode=0; 
      #10 a=5; b=7; mode=0;
      #10 mode=1;
      #10 a=1; b=-8; mode=0;
      #10 mode=1;
      #10 a=-3; b=-6; mode=0;
      #10 mode=1;
      #10 a=-5; b=5; mode=0;
      #10 mode=1;
   end
// -- Enter your statements here -- //

endmodule
