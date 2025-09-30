# Lab 3 Report
## Introduction
In this lab, we are investigating latches, flip-flops and registers and attempting to create them on an FPGA Board. The lab includes 5 parts
which create and use a gated SR Latch, a gated D Latch and a D Flip-Flop.

## Part I: Gated SR Latch
In this part, we are making a gated SR Latch which has 3 inputs (set, reset, and clock) with outputs Qa and Qb where Qb is the inverse of Qa.
The following circuit in Figure 1 can be implemented using Verilog code to synthesize a gated SR Latch.
<br><br>

<figure>
  <div align="center">
    <img src="imgs_and_videos/Gated_SR_Latch_Circuit_Diagram.png" alt="Circuit Diagram for a Gated SR Latch" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 1: Circuit Diagram for a Gated SR Latch </em></figcaption>
</div>
<br><br>

The circuit was then simulated using Logisim. A video of the working circuit can be seen below in Video 1.

<div align="center">
  
  ![Part1_SR_Latch_Logisim_Simulation](https://github.com/user-attachments/assets/869d1d6b-215a-4f1c-a015-4b9a04dc30d6)
  <figcaption><em>Video 1: Video of Logisim Simulation for SR Latch</em></figcaption>
</div>
<br><br>

The Verilog code was then written using the Quartus software. The written code can be seen below in Figure 2.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Part1_gated_SR_Latch_Submodule_Code.png" alt="Gated SR Latch Submodule Code" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 1: Gated SR Latch Submodule Code </em></figcaption>
</div>
<br><br>

The synthesized circuit as seen in the RTL viewer can be seen below in Figure 3.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Gated_SR_Latch_RTL_Viewer.png" alt="Gated SR Latch RTL Viewer" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 3: Gated SR Latch RTL Viewer </em></figcaption>
</div>
<br><br>

The main code can be seen below in Figure 4.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Part1_main_Code.png" alt="Gated SR Latch main Code" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 4: Gated SR Latch main Code </em></figcaption>
</div>
<br><br>

The code was uploaded to the DE10-Lite Development board and the results can be seen below in Video 2.
<div align="center">
  
  https://github.com/user-attachments/assets/2b66c7fa-5d8c-452c-8561-41122b365de1
  <figcaption><em>Video 1: Video of Part 1 on Development Board</em></figcaption>
</div>
<br><br>

## Part II: Gated D Latch

## Part III: D Flip-Flop

## Part IV
