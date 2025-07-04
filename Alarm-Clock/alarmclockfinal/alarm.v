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
// CREATED		"Tue Dec  6 19:10:47 2022"

module alarm(
	Clock0,
	Reg0,
	Clock1,
	Reg1,
	Clock2,
	Reg2,
	Clock3,
	Reg3,
	Clock4,
	Reg4,
	Alarm
);


input wire	Clock0;
input wire	Reg0;
input wire	Clock1;
input wire	Reg1;
input wire	Clock2;
input wire	Reg2;
input wire	Clock3;
input wire	Reg3;
input wire	Clock4;
input wire	Reg4;
output wire	Alarm;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;




assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_0 = Clock0 ~^ Reg0;

assign	SYNTHESIZED_WIRE_1 = Clock1 ~^ Reg1;

assign	SYNTHESIZED_WIRE_5 = Clock2 ~^ Reg2;

assign	SYNTHESIZED_WIRE_2 = Clock3 ~^ Reg3;

assign	SYNTHESIZED_WIRE_3 = Clock4 ~^ Reg4;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3;

assign	Alarm = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_6;


endmodule
