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
// CREATED		"Tue Dec  6 15:59:12 2022"

module \60count (
	reset,
	manual,
	board,
	S0,
	S1,
	S2,
	S3,
	S4,
	S5
);


input wire	reset;
input wire	manual;
input wire	board;
output wire	S0;
output wire	S1;
output wire	S2;
output wire	S3;
output wire	S4;
output wire	S5;

wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_30;
reg	SYNTHESIZED_WIRE_31;
reg	TFF_inst12;
reg	SYNTHESIZED_WIRE_32;
reg	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
reg	TFF_inst;
reg	TFF_inst1;

assign	S0 = TFF_inst;
assign	S1 = TFF_inst1;
assign	S2 = SYNTHESIZED_WIRE_33;
assign	S3 = SYNTHESIZED_WIRE_32;
assign	S4 = SYNTHESIZED_WIRE_31;
assign	S5 = TFF_inst12;
assign	SYNTHESIZED_WIRE_27 = 1;
assign	SYNTHESIZED_WIRE_7 = 1;




always@(posedge SYNTHESIZED_WIRE_28 or negedge SYNTHESIZED_WIRE_26)
begin
if (!SYNTHESIZED_WIRE_26)
	begin
	TFF_inst <= 0;
	end
else
	TFF_inst <= TFF_inst ^ SYNTHESIZED_WIRE_27;
end


always@(posedge SYNTHESIZED_WIRE_28 or negedge SYNTHESIZED_WIRE_26)
begin
if (!SYNTHESIZED_WIRE_26)
	begin
	TFF_inst1 <= 0;
	end
else
	TFF_inst1 <= TFF_inst1 ^ SYNTHESIZED_WIRE_29;
end


\2to1mux 	b2v_inst10(
	.w0(SYNTHESIZED_WIRE_6),
	.S(reset),
	.w1(SYNTHESIZED_WIRE_7),
	.out(SYNTHESIZED_WIRE_8));

assign	SYNTHESIZED_WIRE_26 =  ~SYNTHESIZED_WIRE_8;


always@(posedge SYNTHESIZED_WIRE_28 or negedge SYNTHESIZED_WIRE_26)
begin
if (!SYNTHESIZED_WIRE_26)
	begin
	TFF_inst12 <= 0;
	end
else
	TFF_inst12 <= TFF_inst12 ^ SYNTHESIZED_WIRE_10;
end

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_30 & SYNTHESIZED_WIRE_31;

assign	SYNTHESIZED_WIRE_6 = TFF_inst12 & SYNTHESIZED_WIRE_31 & SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_33;



debouncer	b2v_inst19(
	.Manual(manual),
	.Board(board),
	.Smooth(SYNTHESIZED_WIRE_28));


always@(posedge SYNTHESIZED_WIRE_28 or negedge SYNTHESIZED_WIRE_26)
begin
if (!SYNTHESIZED_WIRE_26)
	begin
	SYNTHESIZED_WIRE_33 <= 0;
	end
else
	SYNTHESIZED_WIRE_33 <= SYNTHESIZED_WIRE_33 ^ SYNTHESIZED_WIRE_34;
end


always@(posedge SYNTHESIZED_WIRE_28 or negedge SYNTHESIZED_WIRE_26)
begin
if (!SYNTHESIZED_WIRE_26)
	begin
	SYNTHESIZED_WIRE_32 <= 0;
	end
else
	SYNTHESIZED_WIRE_32 <= SYNTHESIZED_WIRE_32 ^ SYNTHESIZED_WIRE_35;
end


always@(posedge SYNTHESIZED_WIRE_28 or negedge SYNTHESIZED_WIRE_26)
begin
if (!SYNTHESIZED_WIRE_26)
	begin
	SYNTHESIZED_WIRE_31 <= 0;
	end
else
	SYNTHESIZED_WIRE_31 <= SYNTHESIZED_WIRE_31 ^ SYNTHESIZED_WIRE_30;
end

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_27 & TFF_inst;

assign	SYNTHESIZED_WIRE_34 = SYNTHESIZED_WIRE_29 & TFF_inst1;

assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_34 & SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_35 & SYNTHESIZED_WIRE_32;



endmodule
