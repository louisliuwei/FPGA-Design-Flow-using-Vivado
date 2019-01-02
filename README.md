# Vivado FPGA Design Flow on Zynq
This workshop provides participants the necessary skills to develop digital design in Xilinx FPGA fabric and become familiar with synthesis, implementation, I/O planning, simulation, static timing analysis and debug features of Vivado.

The labs have been developed on a PC running Microsoft Windows 10 professional edition and using **Vivado 2018.2** version tools.These labs can also be run using WebPack edition.

## Source Files Setup

To use the source files for each of the labs in this workshop, you have to clone this repository from XUP Github. For that, do the following:

#### To be completed

---
#### In the instructions for the labs;

**{sources}** refers to *C:\xup\fpga_flow\2018_2_zynq_sources*. You can download the source files for the labs from the cloned sources directory

**{labs}** refers to *C:\xup\fpga_flow\2018_2_zynq_labs*. It assumes that you will create the mentioned directory structure to carry out the labs of this workshop

---
**NOTE**

Board support for the PYNQ-Z1 and PYNQ-Z2 are not included in Vivado 2018.2 by default. The relevant files need to be extracted and saved to:

 {Vivado installation}\data\boards\board_files\

These files can be downloaded from

PYNQ-Z1:[/board_files](https://www.xilinx.com/support/documentation/university/vivado/workshops/vivado-adv-embedded-design-zynq/materials/2018x/PYNQZ1/pynq-z1.zip). 

PYNQ-Z2:[/board_files](https://www.xilinx.com/support/documentation/university/vivado/workshops/vivado-adv-embedded-design-zynq/materials/2018x/PYNQZ2/pynq-z2.zip).

---

## Hardware Setup

**PYNQ-Z2**:  Connect the board to the PC using a micro USB cable. Make sure that a jumper is connected to JTAG (between JP1_1 and JP1_2) to use the board in the development mode.  Also, make sure that another jumper is placed between J9_2 and J9_3 to select USB as a power source.

**PYNQ-Z1**:  Connect the board to the PC using a micro USB cable. Make sure that a jumper is connected to JTAG (between JP4_1 and JP4_2) to use the board in the development mode.  Also, make sure that another jumper is placed between JP5_2 and JP5_3 to select USB as a power source.

## Labs Overview:

### Lab 1
This lab guides you through the process of using Vivado IDE to create a simple HDL design targeting the PYNQ-Z1 or PYNQ-Z2.  You will simulate, synthesize, and implement the design with default settings.  Finally, you will generate the bitstream and download it into the hardware to verify the design functionality.

<p align="center">
<img src ="./images/lab1/Fig1.png"/>
</p>

### Lab 2
This lab shows you the synthesis process and effect of changing of synthesis settings targeting the PYNQ-Z1 or PYNQ-Z2.  You will analyze the design and the generated reports.

<p align="center">
<img src ="./images/lab2/Fig1.png"/>
</p>

### Lab 3
This lab continues with the previous lab. You will perform static timing analysis. You will implement the design with the default settings and generate a bitstream.  Then you will open a hardware session and program the FPGA. Finally the design will be validated by programming the hardware in SDK using the software application running on A9 that is provided to you.

### Lab 4
In this lab you will use the IP Catalog to generate a clock resource. You will instantiate the generated clock core in the provided waveform generator design. You will also use IP Integrator to generate a FIFO core and then use it in the HDL design.

<p align="center">
<img src ="./images/lab4/Fig1.png"/>
</p>

### Lab 5
In this lab you will use the uart_led design that was introduced in the previous labs. You will start the project with I/O Planning type, enter pin locations, and export it to the rtl. You will then create the timing constraints and perform the timing analysis.

### Lab 6
In this lab you will use the uart_led design that was introduced in the previous labs. You will use Mark Debug feature and also the available Integrated Logic Analyzer (ILA) core (in IP Catalog) to debug the hardware.
