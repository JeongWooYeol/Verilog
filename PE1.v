//-----------------------------------------------------------------------------
//
// Title       : PE1
// Design      : lab2
// Author      : user
// Company     : catholic university
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\lab2\lab2\src\PE1.v
// Generated   : Mon Jun  6 14:38:56 2022
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
//{module {PE1}}
module PE1 ( a ,enable ,y1 ,valid1, y2, valid2, y3, valid3 );

input [3:0] a ;
reg [3:0] a ;
input enable ;
wire enable ;

output [1:0] y1 ;
reg [1:0] y1 ;
output valid1 ;
reg valid1 ;

output [1:0] y2 ;
reg [1:0] y2 ;
output valid2 ;
reg valid2 ;

output [1:0] y3 ;
reg [1:0] y3 ;
output valid3 ;
reg valid3 ;

integer i;

//}} End of automatically maintained section
// use case
always @(a or enable) begin
	if (!enable) begin
		y1 <= 2'b00;
		valid1 <= 0;
	end
	else begin
		casex(a)
			4'b0000 : begin
				y1 <= 2'bzz;
				valid1 <= 0;
			end
			4'bxxx1 : begin
				y1 <= 2'b00;
				valid1 <= 1;
			end
			4'bxx10 : begin
				y1 <= 2'b01;
				valid1 <= 1;
			end
			4'bx100 : begin
				y1 <= 2'b10;
				valid1 <= 1;
			end
			4'b1000 : begin
				y1 <= 2'b11;
				valid1 <= 1;
			end
		endcase
	end
end						
	

// use if
always @(a or enable) begin
	if(!enable) begin
		y2 <= 2'b00;
		valid2 <= 0;
	end
	
	else begin
		if(a[0])begin 
			y2 <= 2'b00;
			valid2 <= 1;
		end
		else if(a[1]) begin
			y2 <= 2'b01;
			valid2 <= 1;
		end
		else if(a[2]) begin
			y2 <= 2'b10;
			valid2 <= 1;
		end
		else if(a[3]) begin
			y2 <= 2'b11;
			valid2 <= 1;
		end
		else begin
			y2 <= 2'bzz;
			valid2 <= 0;
		end
	end
end	

// use for
always @(a or enable) begin :Loop
	if(!enable) begin
		y3 <= 2'b00;
		valid3 <= 0;
	end
	
	else begin
		y3 <= 2'bzz;
		valid3 <= 0;
		for(i = 0; i<4; i += 1) begin
			if(a[i]) begin
				y3 <= i;
				valid3 <= 1;
				disable Loop;
			end
		end
	end
end
	

// -- Enter your statements here -- //

endmodule
