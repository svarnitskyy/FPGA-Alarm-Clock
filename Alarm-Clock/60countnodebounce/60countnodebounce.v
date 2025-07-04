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
// CREATED		"Tue Dec  6 16:06:48 2022"

module \60countnodebounce (
	reset,
	clock,
	S0,
	S1,
	S2,
	S3,
	S4,
	S5,
	clockout
);


input wire	reset;
input wire	clock;
output wire	S0;
output wire	S1;
output wire	S2;
output wire	S3;
output wire	S4;
output wire	S5;
output wire	clockout;

wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_23;
reg	SYNTHESIZED_WIRE_24;
reg	TFF_inst12;
reg	SYNTHESIZED_WIRE_25;
reg	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
reg	TFF_inst;
reg	TFF_inst1;

assign	S0 = TFF_inst;
assign	S1 = TFF_inst1;
assign	S2 = SYNTHESIZED_WIRE_26;
assign	S3 = SYNTHESIZED_WIRE_25;
assign	S4 = SYNTHESIZED_WIRE_24;
assign	S5 = TFF_inst12;
assign	clockout = SYNTHESIZED_WIRE_4;
assign	SYNTHESIZED_WIRE_21 = 1;
assign	SYNTHESIZED_WIRE_5 = 1;




always@(posedge clock or negedge SYNTHESIZED_WIRE_20)
begin
if (!SYNTHESIZED_WIRE_20)
	begin
	TFF_inst <= 0;
	end
else
	TFF_inst <= TFF_inst ^ SYNTHESIZED_WIRE_21;
end


always@(posedge clock or negedge SYNTHESIZED_WIRE_20)
begin
if (!SYNTHESIZED_WIRE_20)
	begin
	TFF_inst1 <= 0;
	end
else
	TFF_inst1 <= TFF_inst1 ^ SYNTHESIZED_WIRE_22;
end


\2to1mux 	b2v_inst10(
	.w0(SYNTHESIZED_WIRE_4),
	.S(reset),
	.w1(SYNTHESIZED_WIRE_5),
	.out(SYNTHESIZED_WIRE_6));

assign	SYNTHESIZED_WIRE_20 =  ~SYNTHESIZED_WIRE_6;


always@(posedge clock or negedge SYNTHESIZED_WIRE_20)
begin
if (!SYNTHESIZED_WIRE_20)
	begin
	TFF_inst12 <= 0;
	end
else
	TFF_inst12 <= TFF_inst12 ^ SYNTHESIZED_WIRE_8;
end

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_4 = TFF_inst12 & SYNTHESIZED_WIRE_24 & SYNTHESIZED_WIRE_25 & SYNTHESIZED_WIRE_26;



always@(posedge clock or negedge SYNTHESIZED_WIRE_20)
begin
if (!SYNTHESIZED_WIRE_20)
	begin
	SYNTHESIZED_WIRE_26 <= 0;
	end
else
	SYNTHESIZED_WIRE_26 <= SYNTHESIZED_WIRE_26 ^ SYNTHESIZED_WIRE_27;
end


always@(posedge clock or negedge SYNTHESIZED_WIRE_20)
begin
if (!SYNTHESIZED_WIRE_20)
	begin
	SYNTHESIZED_WIRE_25 <= 0;
	end
else
	SYNTHESIZED_WIRE_25 <= SYNTHESIZED_WIRE_25 ^ SYNTHESIZED_WIRE_28;
end


always@(posedge clock or negedge SYNTHESIZED_WIRE_20)
begin
if (!SYNTHESIZED_WIRE_20)
	begin
	SYNTHESIZED_WIRE_24 <= 0;
	end
else
	SYNTHESIZED_WIRE_24 <= SYNTHESIZED_WIRE_24 ^ SYNTHESIZED_WIRE_23;
end

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_21 & TFF_inst;

assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_22 & TFF_inst1;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_27 & SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_28 & SYNTHESIZED_WIRE_25;



endmodule
