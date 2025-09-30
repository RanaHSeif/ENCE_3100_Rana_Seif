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
  <figcaption><em>Figure 2: Gated SR Latch Submodule Code </em></figcaption>
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
  <figcaption><em>Video 2: Video of Part 1 on Development Board</em></figcaption>
</div>
<br><br>

## Part II: Gated D Latch

In this part, we are making a gated D Latch which has 2 inputs (D, and clock) with outputs Qa and Qb where Qb is the inverse of Qa.

The circuit was then simulated using Logisim. A video of the working circuit can be seen below in Video 3.

<div align="center">
  
  ![Part2_D_Latch_Logisim_Simulation](https://github.com/user-attachments/assets/080fb3e0-d7b3-49ce-b824-96c13ae9d93f)
  <figcaption><em>Video 3: Video of Logisim Simulation for D Latch</em></figcaption>
</div>
<br><br>

The Verilog code was then written using the Quartus software. The written code can be seen below in Figure 5.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Part2_gated_D_Latch_Submodule_Code.png" alt="Gated D Latch Submodule Code" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 5: Gated D Latch Submodule Code </em></figcaption>
</div>
<br><br>

The synthesized circuit as seen in the RTL viewer can be seen below in Figure 6.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Gated_D_Latch_RTL_Viewer.png" alt="Gated D Latch RTL Viewer" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 6: Gated D Latch RTL Viewer </em></figcaption>
</div>
<br><br>

The main code can be seen below in Figure 7.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Part2_main_Code.png" alt="Gated D Latch main Code" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 7: Gated D Latch main Code </em></figcaption>
</div>
<br><br>

The code was uploaded to the DE10-Lite Development board and the results can be seen below in Video 4.
<div align="center">
  
  https://github.com/user-attachments/assets/732604c6-ba43-45ab-8ca1-76af4f9fce80
  <figcaption><em>Video 4: Video of Part 2 on Development Board</em></figcaption>
</div>
<br><br>

## Part III: D Flip-Flop

In this part, we are making a D Flip-Flop which has 2 inputs (D, and clock) with output Q and uses two D latches with opposite clocks.

The circuit was then simulated using Logisim. A video of the working circuit can be seen below in Video 5.

<div align="center">
  
  ![Part3_D_Flip_Flop_Logisim_Simulation](https://github.com/user-attachments/assets/9731ae26-1843-4f2e-b25e-d85b21d7eb2c)
  <figcaption><em>Video 5: Video of Logisim Simulation for D Flip-Flop</em></figcaption>
</div>
<br><br>

The Verilog code was then written using the Quartus software. The written code can be seen below in Figure 8.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Part3_D_Flip_Flop_Submodule_Code.png" alt="D Flip-Flop Submodule Code" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 8: D Flip-Flop Submodule Code </em></figcaption>
</div>
<br><br>

The main code can be seen below in Figure 9.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Part3_main_Code.png" alt="D Flip-Flop main Code" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 9: D Flip-Flop main Code </em></figcaption>
</div>
<br><br>

The code was uploaded to the DE10-Lite Development board and the results can be seen below in Video 6.
<div align="center">

  https://github.com/user-attachments/assets/09cebaa5-f5f8-427f-a07d-9882ee0eea37
  <figcaption><em>Video 5: Video of Part 3 on Development Board</em></figcaption>
</div>
<br><br>

## Part IV

In this part, we are using a gated D Latch a negative edge trigger D Flip-Flop and a positive edge trigger D Flip-Flop to make a logic circuit
The following circuit in Figure 10 shows how the latch and flip-flops are used in this part.
<br><br>

<figure>
  <div align="center">
    <img src="imgs_and_videos/Part4_Circuit_Diagram.png" alt="Circuit Diagram for Part 4" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 10: Circuit Diagram for Part 4</em></figcaption>
</div>
<br><br>

The circuit was then simulated using Logisim. A video of the working circuit can be seen below in Video 6.

<div align="center">
  
  ![Part4_Logisim_Simulation](https://github.com/user-attachments/assets/24b7c041-5282-45ed-b2d3-bb5ef33ff180)
  <figcaption><em>Video 6: Video of Logisim Simulation for Part 4</em></figcaption>
</div>
<br><br>

The Verilog code was then written using the Quartus software. The written code can be seen below in Figure 11.
<figure>
  <div align="center">
    <img src="imgs_and_videos/Part4_main_Code.png" alt="Code for Part 4" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 11: Code for Part 4 main</em></figcaption>
</div>
<br><br>

The code was uploaded to the DE10-Lite Development board and the results can be seen below in Video 7.
<div align="center">
  
  https://github.com/user-attachments/assets/fa36eb43-782b-4285-8205-a570d5ee8b0e
  <figcaption><em>Video 7: Video of Part 4 on Development Board</em></figcaption>
</div>
<br><br>
