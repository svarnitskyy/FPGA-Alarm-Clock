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
// CREATED		"Thu Dec  1 15:27:13 2022"

module divide_by_10(
	clock,
	CLRN,
	divide_by_10
);


input wire	clock;
input wire	CLRN;
output wire	divide_by_10;

wire	SYNTHESIZED_WIRE_0;





divide_by_2	b2v_div2(
	.clock(clock),
	.CLRN(CLRN),
	.divide_by_2(SYNTHESIZED_WIRE_0));


divide_by_5	b2v_div5(
	.clock(SYNTHESIZED_WIRE_0),
	.CLRN(CLRN),
	.divide_by_5(divide_by_10));


endmodule
