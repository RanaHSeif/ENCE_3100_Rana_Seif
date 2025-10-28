# Lab 7 Report (UART Word Detector)

## Introduction
In this lab, we are creating a word detector that uses UART protocol to input any letter or number in ascii and if the word "hello" is detected, the full word 
along with rotating lights flash for 3 seconds. during the undetected states, the system should display the letters and numbers that the user inputs.

## State Machine
Below, image 1 shows the state diagram of the finite state machine.
<br><br>
<figure>
  <div align="center">
    <img src="imgs_and_videos/FSM_WordDetector_State_Diagram.png" alt="Finite State Machine State Diagram" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 1: Finite State Machine State Diagram </em></figcaption>
</div>
<br><br>

## Main and other submodules
In order to achieve that, we have 2 newly created submodules (the FSM and the 3 second counter). The codes for the Finite state Machine can be seen in Figure 2.
<br><br>
<figure>
  <div align="center">
    <img src="imgs_and_videos/FSM_Code_Pt1.png" alt="Finite State Machine Code Pt1" width="500">
  </div>
</figure>
<figure>
  <div align="center">
    <img src="imgs_and_videos/FSM_Code_Pt2.png" alt="Finite State Machine Code Pt2" width="500">
  </div>
</figure>
<figure>
  <div align="center">
    <img src="imgs_and_videos/FSM_Code_Pt3.png" alt="Finite State Machine Code Pt3" width="500">
  </div>
</figure>
<figure>
  <div align="center">
    <img src="imgs_and_videos/FSM_Code_Pt4.png" alt="Finite State Machine Code Pt4" width="500">
  </div>
</figure>
<div align="center">
  <figcaption><em>Figure 2: Finite State Machine Code </em></figcaption>
</div>
<br><br>

The code for the 3s Counter can be seen below in Figure 3.
<br><br>
<figure>
  <div align="center">
    <img src="imgs_and_videos/3s_Counter_Code.png" alt="3 Second Counter Code" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 3: 3 Second Counter Code </em></figcaption>
</div>
<br><br>

Finally, the main (Top Module) that incorporates both of thiose submodules and the UART transmitter and receiver submodules as well as the ascii conversion 
submodule can be seen below in Figure 4. 

<br><br>
<figure>
  <div align="center">
    <img src="imgs_and_videos/main_Code_Pt1.png" alt="Main Code Pt1" width="500">
  </div>
</figure>

<figure>
  <div align="center">
    <img src="imgs_and_videos/main_Code_Pt2.png" alt="Main Code Pt2" width="500">
  </div>
</figure>

<div align="center">
  <figcaption><em>Figure 3: Top Module Code </em></figcaption>
</div>
<br><br>

## Final Results
The final results can be seen below in Video 1.

