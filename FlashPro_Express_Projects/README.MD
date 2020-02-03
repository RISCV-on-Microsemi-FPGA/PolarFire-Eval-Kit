## PolarFire Evaluation Kit RISC-V FlashPro Express Programming Files (Libero v12.1)

Sample Mi-V FlashPro Express files for the PolarFire (MPF300T and MPF300T_ES) Evaluation Kit.

### FlashPro Express
The programming files contained here are exported from Libero projects and their configurations found in this repository. Select the desired programming .job file and program your device using the standalone installer for FlashPro Express which can be found [here](https://www.microsemi.com/product-directory/programming/4977-flashpro#software).

**Note:**
Please note that you only need to install this standalone version of FlashPro Express for Libero v12.1 if you do not have Libero tools installed. The programming procedure is as follows:

### Programming the Device using FPExpress
---------------------------------------------
1. Download or Clone this repository to get the contents of FlashPro_Express_Projects.
2. Power-up your board and connect it to your computer.
3. Launch FlashPro Express v12.1 and wait for it to load.
4. Click into Project from the top left bar and select "New Job Project from FlashPro Express Job"
5. For "Programming job file:" navigate to your FlashPro_Express_Project/Programming_Files directory and select the (.job) programming file you want to program your board with.
6. For "FlashPro Express job project location:" select the FlashPro_Express_Projects folder you have downloaded with this project.
8. Click OK, wait for the new window to pop-up.
7. From the bottom left drop-down menu select the PROGRAM option if it's not selected by default and click RUN. Wait for device to be programmed.

### Target Hardware
The PolarFire Evaluation Kit includes MPF300T FPGA or MPF300T_ES FPGA. Details of the features of PolarFire Evaluation kit:
* MPF300-EVAL-KIT (MPF300T) [here](https://www.microsemi.com/existing-parts/parts/150789)
* MPF300-EVAL-KIT-ES (MPF300T_ES) [here](https://www.microsemi.com/existing-parts/parts/138273).

### Target Mi-V CPU
Details of the features of Mi-V CPUs are available [here](https://github.com/RISCV-on-Microsemi-FPGA/CPUs).
