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
// CREATED		"Thu Dec  1 16:05:12 2022"

module divide_by_2(
	clock,
	CLRN,
	divide_by_2
);


input wire	clock;
input wire	CLRN;
output reg	divide_by_2;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_1 = 1;




always@(posedge clock or negedge SYNTHESIZED_WIRE_0)
begin
if (!SYNTHESIZED_WIRE_0)
	begin
	divide_by_2 <= 0;
	end
else
	divide_by_2 <= divide_by_2 ^ SYNTHESIZED_WIRE_1;
end


assign	SYNTHESIZED_WIRE_0 =  ~CLRN;


endmodule
