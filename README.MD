## PolarFire Evaluation Kit RISC-V Designs for Libero v12.1

Sample Mi-V Libero projects for the PolarFire (MPF300T) Evaluation Kit.

To get your design download or clone this repository. The files consist of .tcl script files that are to be executed in Libero to build the design, the import folder contatining supporting files for building and the programming file which can be used to directly program hardware. Follow the instructions below to build your design, alternatively use the programming file provided.

**Note**: 
* Unpack repository files to a file path not longer than 50 characters, as the project requires
a lengthy file path and some OS systems have limits. **Not providing
a sufficient file path for the project will result in errors**.
* When a script is executed it **Downloads the Latest Available Cores** for Libero to ensure it has an accessible library of components
to build from. If you're Libero's vault hasn't been updated in a while it could take some time.


#### Build the Hardware Platform by following these step
-------------

- Launch Libero v12.1 on your computer. Wait for Libero to start.
- Make sure you have the latest Libero Cores as the design will failt to build otherwise. Select Catalog tab from the left hand side toolbar and click "Download Latest Cores" option by a yellow marked area, this option will only be visible if you don't have the latest Cores.
- Examine the part on your hardware board, and try to match it with the right .tcl file.
- In Libero Press "CTRL+U" to display the "Execute Script" menu. Alternatively, click Project from the top left hand corner of Libero Suite and select "Execute Script" from there.
- Examine the image below, the purpose of the marked fields is listed.


#### Simple Build

![Execute_Script](https://github.com/MiV-Libero-Designs/Hardware-Platforms/blob/Libero-v12.1/board_images/execute_script_1.jpg)

1. Click the "..." button and enter the directory in which the main .tcl file is that you have downloaded with your sample project. This file
is what Libero executes to build your design it should match the part id of the device on your hardware.
2. Click Run to execute the script and build the design. Wait for Libero to finish building, a window should appear once the script execution is finished. By default the design will have a MiV_RV32IMA_L1_AHB Core. There are other options, if you're interested read below.

#### Additional Builds

The design can also be built using a MiV_RV32IMA_L1_AXI Core by passing an argument and it's also possible to be taken further in the design flow by passing an argument after that. Please refer to the image below and text underneath to learn how to build an AXI based design

![Script's_Arguments](https://github.com/MiV-Libero-Designs/Hardware-Platforms/blob/master/board_images/execute_script_2.jpg)

1. Select the .tcl file that matches the part on your hardware.
2. Type in an argument as shown in the image to build an 'AXI' based design. The arguments are not case sensitive, you can also type in 'AHB' to build a standard AHB based design.
3. Click Run to execute the script and build the design.

#### (Optional) Further in the Design Flow

There is also an optional 2nd argument that can be entered after the first one to be taken further in the design flow and have the design built to a certain stage. Examine the image below and refer to the text undeneath.

![Design_Flow](https://github.com/MiV-Libero-Designs/Hardware-Platforms/blob/master/board_images/execute_script_3.jpg)

1. Select the .tcl file that matches the part on your hardware.
2. Type in an argument "AXI" or "AHB" depending on which MiV Core you want to use. This argument is required.
3. Follow the first argument with a space and type in one of the four arguments, depending on how far you want your design built.
     - Synthesize
      - Place_and_Route
      - Generate_Bitstream
      - Generate_Programming_File
   It is important that the two arguments are separated by a space or the script will fail to execute or will execute partially.


#### Programming the Device using FPExpress
------
This section will contain information on how to debug the device using the job files included within this repository.

#### Additional Notes
----------

- The project is built in the same folder as the script.
- If you stop the execution of a the script halfway the project can get corrupted. If this happens, delete the project folder created by Libero and execute the script again, otherwise just try running the script again.
- The arguments serve the purpose to take the user further down the design flow, they use the most optimal settings for design build.
- Use the argument "Place_and_Route" or any argument after; The design will be built using an optimal place and route seed so, that the design's signal data path doesn't cause timing violations.
- If you don't feel like building a design to program the board, you can find the exported bitstream files in the project's folder.
- Only one argument can be entered and no spaces are allowed. The arguments are not case sensitive, if no argument is entered the sample design will be fully built to pre-synthesis stage.
