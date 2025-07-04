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
// CREATED		"Mon Dec  5 13:46:19 2022"

module fullClock(
	Reset,
	clock,
	S0,
	S1,
	S2,
	S3,
	S4
);


input wire	Reset;
input wire	clock;
output wire	S0;
output wire	S1;
output wire	S2;
output wire	S3;
output wire	S4;

reg	TFF_inst4;
reg	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_10;
reg	TFF_inst;
reg	TFF_inst1;
reg	TFF_inst2;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;

assign	S0 = TFF_inst;
assign	S1 = TFF_inst1;
assign	S2 = TFF_inst2;
assign	S3 = SYNTHESIZED_WIRE_17;
assign	S4 = TFF_inst4;
assign	SYNTHESIZED_WIRE_19 = 1;
assign	SYNTHESIZED_WIRE_16 = 1;



assign	SYNTHESIZED_WIRE_15 = TFF_inst4 & SYNTHESIZED_WIRE_17;


always@(posedge clock or negedge SYNTHESIZED_WIRE_18)
begin
if (!SYNTHESIZED_WIRE_18)
	begin
	TFF_inst <= 0;
	end
else
	TFF_inst <= TFF_inst ^ SYNTHESIZED_WIRE_19;
end


always@(posedge clock or negedge SYNTHESIZED_WIRE_18)
begin
if (!SYNTHESIZED_WIRE_18)
	begin
	TFF_inst1 <= 0;
	end
else
	TFF_inst1 <= TFF_inst1 ^ SYNTHESIZED_WIRE_20;
end


assign	SYNTHESIZED_WIRE_18 =  ~SYNTHESIZED_WIRE_4;


always@(posedge clock or negedge SYNTHESIZED_WIRE_18)
begin
if (!SYNTHESIZED_WIRE_18)
	begin
	TFF_inst2 <= 0;
	end
else
	TFF_inst2 <= TFF_inst2 ^ SYNTHESIZED_WIRE_21;
end


always@(posedge clock or negedge SYNTHESIZED_WIRE_18)
begin
if (!SYNTHESIZED_WIRE_18)
	begin
	SYNTHESIZED_WIRE_17 <= 0;
	end
else
	SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_17 ^ SYNTHESIZED_WIRE_22;
end


always@(posedge clock or negedge SYNTHESIZED_WIRE_18)
begin
if (!SYNTHESIZED_WIRE_18)
	begin
	TFF_inst4 <= 0;
	end
else
	TFF_inst4 <= TFF_inst4 ^ SYNTHESIZED_WIRE_10;
end

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_19 & TFF_inst;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_20 & TFF_inst1;

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_21 & TFF_inst2;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_22 & SYNTHESIZED_WIRE_17;



\2to1mux 	b2v_mux(
	.w0(SYNTHESIZED_WIRE_15),
	.S(Reset),
	.w1(SYNTHESIZED_WIRE_16),
	.out(SYNTHESIZED_WIRE_4));


endmodule
