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
// CREATED		"Thu Dec  1 16:29:01 2022"

module divide_by_5(
	clock,
	CLRN,
	divide_by_5
);


input wire	clock;
input wire	CLRN;
output wire	divide_by_5;

wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_1;
reg	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
reg	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
reg	SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_1 = 1;




always@(posedge clock or negedge SYNTHESIZED_WIRE_9)
begin
if (!SYNTHESIZED_WIRE_9)
	begin
	SYNTHESIZED_WIRE_10 <= 0;
	end
else
	SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_10 ^ SYNTHESIZED_WIRE_1;
end


always@(posedge clock or negedge SYNTHESIZED_WIRE_9)
begin
if (!SYNTHESIZED_WIRE_9)
	begin
	SYNTHESIZED_WIRE_11 <= 0;
	end
else
	SYNTHESIZED_WIRE_11 <= SYNTHESIZED_WIRE_11 ^ SYNTHESIZED_WIRE_10;
end

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_3 | CLRN;

assign	SYNTHESIZED_WIRE_9 =  ~SYNTHESIZED_WIRE_4;


always@(posedge clock or negedge SYNTHESIZED_WIRE_9)
begin
if (!SYNTHESIZED_WIRE_9)
	begin
	SYNTHESIZED_WIRE_12 <= 0;
	end
else
	SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_12 ^ SYNTHESIZED_WIRE_6;
end


assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_11;

assign	divide_by_5 = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_7 =  ~SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_8 =  ~SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_10;


endmodule
