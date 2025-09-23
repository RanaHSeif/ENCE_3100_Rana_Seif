# Lab 2 Report
## Introduction
This lab is intended to introduce BCD numbers, adder circuit and end with a 2 digit BCD adder that uses all the learned skills

## Part I
In this section we are testing out the 7 segment displays and making a BCD Decoder. Figure 1 below shows the code for the test
we run to make sure the 7 segment displays are working and confirm that the branches are in the same expected order.

  <br> <br>

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part1a_Code.png" alt="Verilog Code Screenshot for Part 1 (7 Segment Display Test)" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 1: Verilog Code Screenshot for Part 1 (7 Segment Display Test) </em></figcaption>
</div>
<br><br>
The following is the video of the working board once the code is uploaded to it.
<br><br>

<div align="center">
  
  https://github.com/user-attachments/assets/3fbd99eb-574e-421a-b90e-b2b73be113b2
  <figcaption><em>Video 1: Video of Board with 7 Segment Display Test</em></figcaption>
</div>

<br><br>

After that, a decoder is designed to convert a BCD number (0-9) to a 7 Segment Display input. The circuit was first simulated on Logisim.
The simulated circuit can be seen below in Figure 2.

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part1b_Logisim_Image.png" alt="Logisim Screenshot for Part 1 (BCD Decoder)" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 2: Logisim Screenshot for Part 1 (7 Segment Display Decoder) </em></figcaption>
</div>
<br><br>

That is then coded in Verilog and uploaded to the Development Board. The code can be seen in Figure 3 and the working Board can be seen in Video 2.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Part1b_Submodule_Code_Image.png" alt="Code Screenshot for Part 1 (7 Segment Display Decoder)" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 3: Submodule Code Screenshot for Part 1 (7 Segment Display Decoder) </em></figcaption>
</div>
<br><br>
Once this submodule was referenced in the top module and uploaded to the Development Board, Video 2 was taken showing the Decoder Function.
<br><br>

<div align="center">

  https://github.com/user-attachments/assets/01fcaebe-36aa-4da1-ae1c-97a89cae375c
  <figcaption><em>Video 2: Video of Board with 7 Segment Display Decoder</em></figcaption>
</div>

<br><br>

## Part II
Next, in Part II, we design a BCD to Decimal Converter that uses for input bits and converts them to 2 7-Segment Display outputs.

The following image shows the structur of the top-module whose code was already provided. The task was to complete the logic for all submodules.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Part2_TopModule_BlockDiagram.png" alt="Screenshot for Block Diagram of Part 2" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 4: Block Diagram for Top Module of Part 2 </em></figcaption>
</div>
<br><br>

Circuit A, Circuit B and the Comparator were then created on Logisim and connected as in Figure 4. The Logisim images for Circuit A, Circuit B,
and the comparator can be seen below in Figures 5, 6 and 7 as well as the working Top Module in Video 3

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part2_CircuitA_Submodule_Logisim.png" alt="Screenshot of Logisim for Circuit A Submodule" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 5: Logisim for Circuit A Submodule of Part 2 </em></figcaption>
</div>
<br><br>

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part2_CircuitB_Submodule_Logisim.png" alt="Screenshot of Logisim for Circuit B Submodule" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 6: Logisim for Circuit B Submodule of Part 2 </em></figcaption>
</div>
<br><br>

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part2_Comparator_Submodule_Logisim.png" alt="Screenshot of Logisim for Comparator Submodule" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 7: Logisim for Comparator Submodule of Part 2 </em></figcaption>
</div>
<br><br>

<div align="center">
  
  ![Part2_Logisim_TopModule](https://github.com/user-attachments/assets/962c9046-9c26-4a1c-9773-debf3bfddf5f)
  <figcaption><em>Video 2: Video of Logisim Simulation of the Top Module of Part 2</em></figcaption>
</div>

<br><br>

The code was then written for each of these submodules as follows in Figures 8, 9 and 10.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Part2_CircuitA_Submodule_Code.png" alt="Screenshot of Code for CircuitA Submodule" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 8: Code for CircuitA Submodule of Part 2 </em></figcaption>
</div>
<br><br>

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part2_CircuitB_Submodule_Code.png" alt="Screenshot of Code for CircuitB Submodule" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 9: Code for CircuitB Submodule of Part 2 </em></figcaption>
</div>
<br><br>

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part2_Comparator_Submodule_Code.png" alt="Screenshot of Code for Comparator Submodule" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 10: Code for Comparator Submodule of Part 2 </em></figcaption>
</div>
<br><br>

Next the top module was then used in the main and uploaded to the Developmenmt Board. A demonstration on the function can be seen below in Video 3.

<div align="center">
  
  https://github.com/user-attachments/assets/262834f7-c997-4c50-b6dd-74f950347ef3
  <figcaption><em>Video 3: Video of working Development Board for Part 2</em></figcaption>
</div>

<br><br>

## Part III

Part III aims at creating a 4-bit ripple carry adder by first creating a Full adder submodule that is then cascaded 4 times to create the 4-bit adder.

### a) Full Adder
The Full-adder logisim simulation first created can be seen below in Video 4 below.

<div align="center">
  
  ![Part3_Logisim_FullAdder](https://github.com/user-attachments/assets/d1656c74-7636-471d-b88b-c27106528712)
  <figcaption><em>Video 4: Video of Logisim Simulation for Full Adder in Part 3</em></figcaption>
</div>

<br><br>

The following was then coded using Verilog HDL and tested on the development board using switches as inputs. The code can be seen in Figure 11 and 
the uploaded board test can be seen in Video 5.

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part3_FA_Submodule_Code.png" alt="Screenshot of Code for FA Submodule" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 11: Code for FA Submodule of Part 3 </em></figcaption>
</div>
<br><br>

<div align="center">
  
  https://github.com/user-attachments/assets/18a73944-6857-47d9-947c-6ad08d8105d5
  <figcaption><em>Video 5: Video of Working Development Board for Full Adder in Part 3</em></figcaption>
</div>

<br><br>

### b) 4-bit Ripple Carry Adder
The 4-bit ripple carry adder was first created on Logisim by using 4 Full adders from a of this part of the lab. This can be seen in Figure 12.

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part3_4bit_RippleCarryAdder_Logisim.png" alt="Screenshot of Logisim for 4-bit adder" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 12: Logisim for 4-bit Ripple Carry Adder of Part 3 </em></figcaption>
</div>
<br><br>

This was then coded as shown in Figure 13.

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part3_4bit_RippleCarryAdder_Submodule_Code.png" alt="Screenshot of Code for 4-bit adder" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 13: Code for 4-bit Ripple Carry Adder of Part 3 </em></figcaption>
</div>
<br><br>

This code was then uploaded to the Development Board and the results can be seen below in Video 6.

<div align="center">

  https://github.com/user-attachments/assets/31051257-5c58-4cae-8944-d12606865af9
  <figcaption><em>Video 6: Video of Working Development Board for 4-bit Ripple Carry Adder in Part 3</em></figcaption>
</div>

<br><br>
