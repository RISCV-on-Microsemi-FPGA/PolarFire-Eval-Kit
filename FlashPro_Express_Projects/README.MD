## PolarFire Evaluation Kit RISC-V FlashPro Express Programming Files (Libero v12.1)

Sample Mi-V FlashPro Express files for the PolarFire (MPF300T) and (MPF300T_ES) Evaluation Kits.

**Note**: 
* Unpack repository files to your main Microsemi folder e.g. C:\Microsemi\ to keep the file path short, as the project requires
a lengthy file path and some OS systems have limits. **Not providing
a sufficient file path for the project will result in errors**.
* Make sure you have the latest Libero Cores in your vault. Select Catalog tab from the left hand side toolbar and check if the "Download Latest Cores" option is available by a yellow marked area then click it. This option will only be visible if you don't have the lates cores in the vault. If the vault hasn't been updated in a while this could take some time. Not having the library of cores required for the design to be built will cause errors.


### Programming the Device using FPExpress
---------------------------------------------

The projects contain default build programming files in the **FlashPro_Express_Projects** folder, there is a choice to use an AXI or AHB Core based design. Each (.job) file is capapble of programming your target device using the standalone installer for FlashPro Express which can be found [here](https://www.microsemi.com/product-directory/programming/4977-flashpro#software).
Please note that you only need to install this standalone version of FlashPro Express for Libero v12.1 if you do not have Libero tools installed. The programming procedure is as follows:
1. Power-up your board and connect it to your device running FlashPro Express.
1. Launch FPExpress v12.1 and wait for it to load.
2. Click into Project from the top left bar and select "New Job Project from FlashPro Express Job"
3. Navigate to your Job Programming File located inside your project folder beside your .tcl script.
4. For your directory, select the main project folder in which the .tcl file is located and click OK.
5. On the next screen, from the bottom left drop-down menu select the PROGRAM option and clikc RUN. Wait for device to be programmed.

### Target Hardware
The PolarFire Evaluation Kit includes an MPF300T FPGA or an MPF300T_ES. Details of the features of PolarFire Evaluation kit are available (MPF300T) [here](https://www.microsemi.com/existing-parts/parts/150789)
or (MPF300T_ES) [here](https://github.com/RISCV-on-Microsemi-FPGA/PolarFire-Eval-Kit).

### Target Mi-V CPU
Details of the features of Mi-V CPUs are available [here](https://github.com/RISCV-on-Microsemi-FPGA/CPUs).
