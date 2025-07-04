// Copyright (C) 2022  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 21.1.1 Build 850 06/23/2022 SJ Standard Edition"
// CREATED		"Thu Nov 17 15:23:08 2022"

module debouncer(
	Manual,
	Board,
	Smooth
);


input wire	Manual;
input wire	Board;
output reg	Smooth;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_4 = 1;




clock_divider_1024	b2v_inst(
	.CLK_IN(Board),
	.CLK_OUT(SYNTHESIZED_WIRE_0));


clock_divider_1024	b2v_inst1(
	.CLK_IN(SYNTHESIZED_WIRE_0),
	.CLK_OUT(SYNTHESIZED_WIRE_2));


always@(posedge SYNTHESIZED_WIRE_2 or negedge SYNTHESIZED_WIRE_4 or negedge SYNTHESIZED_WIRE_4)
begin
if (!SYNTHESIZED_WIRE_4)
	begin
	Smooth <= 0;
	end
else
if (!SYNTHESIZED_WIRE_4)
	begin
	Smooth <= 1;
	end
else
	begin
	Smooth <= Manual;
	end
end



endmodule
