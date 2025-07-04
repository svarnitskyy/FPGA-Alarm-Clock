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
// CREATED		"Sun Dec  4 15:30:49 2022"

module single6bitregister(
	Load,
	Clock,
	Reset,
	IN0,
	IN1,
	IN2,
	IN3,
	IN4,
	IN5,
	OUT0,
	OUT1,
	OUT2,
	OUT3,
	OUT4,
	OUT5
);


input wire	Load;
input wire	Clock;
input wire	Reset;
input wire	IN0;
input wire	IN1;
input wire	IN2;
input wire	IN3;
input wire	IN4;
input wire	IN5;
output wire	OUT5;
output wire	OUT4;
output wire	OUT3;
output wire	OUT2;
output wire	OUT1;
output wire	OUT0;

wire	r;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_2;
reg	DFF_inst9;
wire	SYNTHESIZED_WIRE_4;
reg	DFF_inst11;
reg	DFF_inst1;
reg	DFF_inst;
wire	SYNTHESIZED_WIRE_6;
reg	DFF_inst5;
wire	SYNTHESIZED_WIRE_8;
reg	DFF_inst7;
wire	SYNTHESIZED_WIRE_10;

assign	OUT5 = DFF_inst;
assign	OUT4 = DFF_inst5;
assign	OUT3 = DFF_inst7;
assign	OUT2 = DFF_inst9;
assign	OUT1 = DFF_inst11;
assign	OUT0 = DFF_inst1;
assign	SYNTHESIZED_WIRE_12 = 1;




always@(posedge Clock or negedge r or negedge SYNTHESIZED_WIRE_12)
begin
if (!r)
	begin
	DFF_inst <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst <= 1;
	end
else
	begin
	DFF_inst <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge Clock or negedge r or negedge SYNTHESIZED_WIRE_12)
begin
if (!r)
	begin
	DFF_inst1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst1 <= 1;
	end
else
	begin
	DFF_inst1 <= SYNTHESIZED_WIRE_2;
	end
end


\2to1mux 	b2v_inst10(
	.w0(DFF_inst9),
	.S(Load),
	.w1(IN2),
	.out(SYNTHESIZED_WIRE_10));


always@(posedge Clock or negedge r or negedge SYNTHESIZED_WIRE_12)
begin
if (!r)
	begin
	DFF_inst11 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst11 <= 1;
	end
else
	begin
	DFF_inst11 <= SYNTHESIZED_WIRE_4;
	end
end


\2to1mux 	b2v_inst12(
	.w0(DFF_inst11),
	.S(Load),
	.w1(IN1),
	.out(SYNTHESIZED_WIRE_4));



\2to1mux 	b2v_inst14(
	.w0(DFF_inst1),
	.S(Load),
	.w1(IN0),
	.out(SYNTHESIZED_WIRE_2));


\2to1mux 	b2v_inst4(
	.w0(DFF_inst),
	.S(Load),
	.w1(IN5),
	.out(SYNTHESIZED_WIRE_0));


always@(posedge Clock or negedge r or negedge SYNTHESIZED_WIRE_12)
begin
if (!r)
	begin
	DFF_inst5 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst5 <= 1;
	end
else
	begin
	DFF_inst5 <= SYNTHESIZED_WIRE_6;
	end
end


\2to1mux 	b2v_inst6(
	.w0(DFF_inst5),
	.S(Load),
	.w1(IN4),
	.out(SYNTHESIZED_WIRE_6));


always@(posedge Clock or negedge r or negedge SYNTHESIZED_WIRE_12)
begin
if (!r)
	begin
	DFF_inst7 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst7 <= 1;
	end
else
	begin
	DFF_inst7 <= SYNTHESIZED_WIRE_8;
	end
end


\2to1mux 	b2v_inst8(
	.w0(DFF_inst7),
	.S(Load),
	.w1(IN3),
	.out(SYNTHESIZED_WIRE_8));


always@(posedge Clock or negedge r or negedge SYNTHESIZED_WIRE_12)
begin
if (!r)
	begin
	DFF_inst9 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst9 <= 1;
	end
else
	begin
	DFF_inst9 <= SYNTHESIZED_WIRE_10;
	end
end

assign	r = Reset;

endmodule
