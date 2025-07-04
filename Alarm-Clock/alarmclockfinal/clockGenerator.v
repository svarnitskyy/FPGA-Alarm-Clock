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
// CREATED		"Thu Dec  8 15:39:41 2022"

module clockGenerator(
	CLRN,
	clock_in,
	clock_out
);


input wire	CLRN;
input wire	clock_in;
output wire	clock_out;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;





divide_by_5	b2v_inst(
	.clock(clock_in),
	.CLRN(CLRN),
	.divide_by_5(SYNTHESIZED_WIRE_0));


divide_by_10	b2v_inst1(
	.clock(SYNTHESIZED_WIRE_0),
	.CLRN(CLRN),
	.divide_by_10(SYNTHESIZED_WIRE_3));


divide_by_2	b2v_inst12(
	.clock(SYNTHESIZED_WIRE_1),
	.CLRN(CLRN),
	.divide_by_2(SYNTHESIZED_WIRE_11));


divide_by_2	b2v_inst13(
	.clock(SYNTHESIZED_WIRE_11),
	.CLRN(CLRN),
	.divide_by_2(SYNTHESIZED_WIRE_9));


divide_by_10	b2v_inst2(
	.clock(SYNTHESIZED_WIRE_3),
	.CLRN(CLRN),
	.divide_by_10(SYNTHESIZED_WIRE_4));


divide_by_10	b2v_inst3(
	.clock(SYNTHESIZED_WIRE_4),
	.CLRN(CLRN),
	.divide_by_10(SYNTHESIZED_WIRE_5));


divide_by_10	b2v_inst4(
	.clock(SYNTHESIZED_WIRE_5),
	.CLRN(CLRN),
	.divide_by_10(SYNTHESIZED_WIRE_6));


divide_by_10	b2v_inst5(
	.clock(SYNTHESIZED_WIRE_6),
	.CLRN(CLRN),
	.divide_by_10(SYNTHESIZED_WIRE_10));


divide_by_10	b2v_inst7(
	.clock(SYNTHESIZED_WIRE_7),
	.CLRN(CLRN),
	.divide_by_10(SYNTHESIZED_WIRE_1));

assign	clock_out = SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_9;


divide_by_10	b2v_int6(
	.clock(SYNTHESIZED_WIRE_10),
	.CLRN(CLRN),
	.divide_by_10(SYNTHESIZED_WIRE_7));


endmodule
