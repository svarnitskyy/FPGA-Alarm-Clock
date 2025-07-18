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
- Clock Generator
  - Reduces 50 MHz board clock to ~1 Hz using a chain of divide-by-5, divide-by-10, and divide-by-2 modules
- Hour and Minute Counters
  - Counts up to 24 for hours and 60 for minutes
  - Built using T flip-flops and reset logic
- Display Logic
  - BCD Converters translate 5- and 6-bit binary counts to two-digit decimal output
  - 7-segment decoders light up segments appropriately
- Alarm Comparison
  - Registers store alarm time (set via switches and debounced buttons)
  - XNOR-based comparators output HIGH when alarm and clock match
  - AND gate combines hour and minute matches to trigger LEDs
- Clock/Alarm Setting Interface
  - Switches toggle between normal and setting modes
  - Debouncers prevent unintended multiple button presses
  - Muxes choose between real-time and set values for display
 
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
