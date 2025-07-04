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
// CREATED		"Thu Dec  1 14:47:20 2022"

module \2to4decoder (
	Write_address_0,
	Write_address_1,
	Enable,
	y0,
	y1,
	y2,
	y3
);


input wire	Write_address_0;
input wire	Write_address_1;
input wire	Enable;
output wire	y0;
output wire	y1;
output wire	y2;
output wire	y3;

wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;




assign	y0 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5 & Enable;

assign	SYNTHESIZED_WIRE_5 =  ~Write_address_0;

assign	y1 = Write_address_0 & SYNTHESIZED_WIRE_4 & Enable;

assign	y2 = SYNTHESIZED_WIRE_5 & Write_address_1 & Enable;

assign	y3 = Write_address_0 & Write_address_1 & Enable;

assign	SYNTHESIZED_WIRE_4 =  ~Write_address_1;


endmodule
