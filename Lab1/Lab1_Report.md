# Lab 1 Report
## Introduction
This lab is the first lab in the Advanced Digital Design Design Course, so it focusses on introducing Verilog as a Hardware Design Language as well as 
getting the student familiar with the FPGA board/Development Kit used (DE10-Lite). This overall goal is accomplished through several parts that build 
towards the final part where a 7-segment display is used to display the word "HELLO".

## Part I
This part of the lab is an introduction to the Quartus software and a test of the LEDs and switches on the board. We are essentially creating a direct 
connection between each of the 10 switches and the corresponding 10 LEDs. The lab report refers to 18 peripherals for each inputs and outputs; however,  we 
will only be using 10 switches and LEDs because out development board is a different version than the one that the lab document was initially designed for.

Quartus prime was used as the software to interface with the development board. To create the deirect connections on Verilog, 'assign' statements were 
used to model a wire connecting the LEDs to the switches output (0 or 1). The image below shows a screenshot of the code and the video shows the board 
functioning after the code was uploaded to it.



## Part II
In this part of the lab, we are creating a simple 2 input, 1 select bit multiplexer. We created the mux_2_1 first on logisim to test and understand how 
it should work. Then, we created the multiplexer using HDL (in this case Verilog) in a way that switches can be used as inputs and LEDs can be used for 
the outputs. The code was finally uploaded to the DE10-Lite board to ensure that it functions correctly.

### LogiSim
