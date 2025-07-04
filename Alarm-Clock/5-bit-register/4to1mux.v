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
// CREATED		"Thu Dec  1 15:45:22 2022"

module \4to1mux (
	w0,
	w1,
	w2,
	w3,
	s1,
	s0,
	out
);


input wire	w0;
input wire	w1;
input wire	w2;
input wire	w3;
input wire	s1;
input wire	s0;
output wire	out;

wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;




assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_9 & w0;

assign	SYNTHESIZED_WIRE_9 =  ~s1;

assign	SYNTHESIZED_WIRE_7 = s0 & SYNTHESIZED_WIRE_9 & w1;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_8 & s1 & w2;

assign	SYNTHESIZED_WIRE_6 = s0 & s1 & w3;

assign	out = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_8 =  ~s0;


endmodule
