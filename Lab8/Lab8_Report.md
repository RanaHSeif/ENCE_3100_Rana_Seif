# Lab 8: Very Simple Microprocessor

In this lab we are creating a very simple microprocessor that uses a Von Neumann architecture. The diagram for the microprocessor architecture can be seen below in Figure 1.

<br><br>
<figure>
  <div align="center">
    <img src="imgs_and_videos/VSM_General_Architecture.png" alt="Diagram for Microprocessor Architecture" width="900">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 1: Diagram for Microprocessor Architecture </em></figcaption>
</div>
<br><br>

Figure 1 shows all the blocks within the microprocessor which are a controller made of: <br>
    1. FSM which controls the flow of data <br>
    2. A program counter which determines what line of code the microprocessor needs to fetch next <br>
    3. A program memory which stores the instruction after it is fetched and separates it into instruction and data <br>
    4. An Input Register <br>
    5. An Output Register <br>
    6. An Arithmetic Logic Unit to carry out arithmetic functions Add and Subtract <br>
    7. Accumulator A and Accumulator B which are registers that store the data being calculated in the ALU <br>

A Logisim project was provided by the instructor showing the circuits and the interactions of the controller blocks. The logisim circuit was then converted to Verilog code 
for each block and then controller is finally tested with all the blocks.




## Final Results

The final results can be seen below. In the video, the button KEY[0] is pressed to simulate a clock and iterate through the instructions.
<div align="center">
  
  https://github.com/user-attachments/assets/4b6a0249-e374-493a-8b8a-3150d0f06908
  <figcaption><em>Video 9: Video of Board with Full Very Simple Microprocessor Uploaded </em></figcaption>
</div>
