## FPGA Alarm Clock with 7-Segment Display and Adjustable Alarm Time

An FPGA-based digital alarm clock that tracks time in HH:MM format, supports real-time display via 7-segment displays, and allows setting alarms with comparator-based detection. 

<img alt="Demo Image" src="https://github.com/user-attachments/assets/491ad682-73d7-44c8-94e1-763646feb658" />

## Project Overview 
- Tracks hours and minutes using real-time counter logic
- Allows manual clock setting via toggle switches and pushbuttons
- Alarm setting and comparison using XNOR comparators
- Displays time using dual BCD-to-7-segment converters
- LED indicators flash when alarm time matches current time
- Built using Block Design and Verilog, tested on the DE2-115 board

## Features 
- Set Clock
- Alarm Functionality
- 
 
## Hardware Used 
- Altera DE2-115 FPGA Development Board
- 7-segment displays (on-board)
- On-board pushbuttons (KEY0–KEY3)
- On-board toggle switches (SW0–SW17)
- Internal 50 MHz clock

## How It Works 
- Clock is slowed to 1 Hz via chained frequency dividers
- Every second, a seconds counter updates, rolling over to minutes and hours counters
- Set mode enables manual entry via switches/buttons into the registers
- Alarm is stored in separate registers and compared using XNOR logic
- When time matches, LEDs are turned on as an alarm indicator
- All inputs/outputs are routed through muxes to control display and setting modes
