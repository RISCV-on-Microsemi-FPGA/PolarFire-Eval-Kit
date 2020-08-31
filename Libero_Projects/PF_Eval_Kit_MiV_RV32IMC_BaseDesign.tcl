set project_folder_name_CFG1 MiV_CFG1_BD
set project_dir_CFG1 "./$project_folder_name_CFG1"
set Libero_project_name_CFG1 PF_Eval_Kit_MiV_RV32IMC_CFG1_BaseDesign

set project_folder_name_CFG2 MiV_CFG2_BD
set project_dir_CFG2 "./$project_folder_name_CFG2"
set Libero_project_name_CFG2 PF_Eval_Kit_MiV_RV32IMC_CFG2_BaseDesign

set project_folder_name_CFG3 MiV_CFG3_BD
set project_dir_CFG3 "./$project_folder_name_CFG3"
set Libero_project_name_CFG3 PF_Eval_Kit_MiV_RV32IMC_CFG3_BaseDesign

set config [string toupper [lindex $argv 0]]
set design_flow_stage [string toupper [lindex $argv 1]]


proc create_new_project_label { }\
{
	puts "\n---------------------------------------------------------------------------------------------------------"
	puts "Creating a new project for the 'PF_Eval_Kit' board."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc project_exists { }\
{
	puts "\n---------------------------------------------------------------------------------------------------------"
	puts "Error: A project exists for the 'PF_Eval_Kit' with this configuration."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc no_first_argument_entered { }\
{
	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "No 1st Argument has been entered."
	puts "Enter the 1st Argument responsible for type of design configuration -'CFG1..CFGn' " 
	puts "Default 'CFG1' design has been selected."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc invalid_first_argument { }\
{
	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "Wrong 1st Argument has been entered."
    puts "Make sure you enter a valid first argument -'CFG1..CFGn'."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc no_second_argument_entered { }\
{
	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "No 2nd Argument has been entered."
	puts "Enter the 2nd Argument after the 1st to be taken further in the Design Flow." 
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc invalid_second_argument { }\
{
	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "Wrong 2nd Argument has been entered."
    puts "Make sure you enter a valid 2nd argument -'Synthesize...Export_Programming_File'."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc  base_design_built { }\
{
	puts "\n---------------------------------------------------------------------------------------------------------"
	puts "BaseDesign built."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc download_cores_all_cfgs  { }\
{
	download_core -vlnv {Actel:DirectCore:CoreUARTapb:5.6.102} -location {www.microchip-ip.com/repositories/DirectCore}
	download_core -vlnv {Actel:DirectCore:CoreTimer:2.0.103} -location {www.microchip-ip.com/repositories/DirectCore}
	download_core -vlnv {Actel:DirectCore:CORERESET_PF:2.2.107} -location {www.microchip-ip.com/repositories/DirectCore}
	download_core -vlnv {Actel:DirectCore:COREJTAGDEBUG:3.1.100} -location {www.microchip-ip.com/repositories/DirectCore}
	download_core -vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -location {www.microchip-ip.com/repositories/DirectCore}
	download_core -vlnv {Actel:DirectCore:COREAXITOAHBL:3.5.100} -location {www.microchip-ip.com/repositories/DirectCore}
	download_core -vlnv {Actel:DirectCore:CoreAPB3:4.1.100} -location {www.microchip-ip.com/repositories/DirectCore}
	download_core -vlnv {Actel:DirectCore:COREAHBTOAPB3:3.1.100} -location {www.microchip-ip.com/repositories/DirectCore}
	download_core -vlnv {Actel:SystemBuilder:PF_SRAM_AHBL_AXI:1.2.108} -location {www.microchip-ip.com/repositories/SgCore} 
	download_core -vlnv {Actel:SgCore:PF_OSC:1.0.102} -location {www.microchip-ip.com/repositories/SgCore}
	download_core -vlnv {Actel:SgCore:PF_INIT_MONITOR:2.0.105} -location {www.microchip-ip.com/repositories/SgCore}
	download_core -vlnv {Microsemi:MiV:MIV_RV32IMC:2.1.100} -location {www.microchip-ip.com/repositories/DirectCore}
	download_core -vlnv {Microsemi:MiV:MIV_RV32IMA_L1_AHB:2.3.100} -location {www.microchip-ip.com/repositories/DirectCore} 
	download_core -vlnv {Microsemi:MiV:MIV_RV32IMA_L1_AXI:2.1.100} -location {www.microchip-ip.com/repositories/DirectCore} 
	download_core -vlnv {Microsemi:MiV:MIV_RV32IMAF_L1_AHB:2.1.100} -location {www.microchip-ip.com/repositories/DirectCore} 
	download_core -vlnv {Actel:SgCore:PF_CCC:2.2.100} -location {www.microchip-ip.com/repositories/SgCore}
	download_core -vlnv {Actel:DirectCore:CoreAHBLite:5.4.102} -location {www.microchip-ip.com/repositories/DirectCore}
}

proc pre_configure_place_and_route { }\
{
	# Configuring Place_and_Route tool for a timing pass.
	configure_tool -name {PLACEROUTE} -params {EFFORT_LEVEL:true} -params {START_SEED_INDEX:7} -params {RANDOM_SEED:5} -params {REPAIR_MIN_DELAY:true} -params {TDPR:true}
}

proc run_verify_timing { }\
{
	run_tool -name {VERIFYTIMING}	
}

if {"$config" == "CFG1"} then {
	if {[file exists $project_dir_CFG1] == 1} then {
		project_exists
	} else {
		create_new_project_label
		new_project -location $project_dir_CFG1 -name $Libero_project_name_CFG1 -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -hdl {VERILOG} -family {PolarFire} -die {MPF300TS} -package {FCG1152} -speed {-1} -die_voltage {1.0} -part_range {IND} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} -adv_options {TEMPR:IND} -adv_options {VCCI_1.2_VOLTR:IND} -adv_options {VCCI_1.5_VOLTR:IND} -adv_options {VCCI_1.8_VOLTR:IND} -adv_options {VCCI_2.5_VOLTR:IND} -adv_options {VCCI_3.3_VOLTR:IND} -adv_options {VOLTR:IND}
		download_cores_all_cfgs
		source ./import/components/IMC_CFG1/import_component_and_constraints_pf_eval_kits_rv32imc_cfg1.tcl
		save_project
        base_design_built
	}
} elseif {"$config" == "CFG2"} then {
	if {[file exists $project_dir_CFG2] == 1} then {
		project_exists
	} else {
		create_new_project_label
		new_project -location $project_dir_CFG2 -name $Libero_project_name_CFG2 -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -hdl {VERILOG} -family {PolarFire} -die {MPF300TS} -package {FCG1152} -speed {-1} -die_voltage {1.0} -part_range {IND} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} -adv_options {TEMPR:IND} -adv_options {VCCI_1.2_VOLTR:IND} -adv_options {VCCI_1.5_VOLTR:IND} -adv_options {VCCI_1.8_VOLTR:IND} -adv_options {VCCI_2.5_VOLTR:IND} -adv_options {VCCI_3.3_VOLTR:IND} -adv_options {VOLTR:IND}
		download_cores_all_cfgs
		source ./import/components/IMC_CFG2/import_component_and_constraints_pf_eval_kits_rv32imc_cfg2.tcl
		save_project
        base_design_built
	}
} elseif {"$config" == "CFG3"} then {
	if {[file exists $project_dir_CFG3] == 1} then {
		project_exists
	} else {
		create_new_project_label
		new_project -location $project_dir_CFG3 -name $Libero_project_name_CFG3 -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -hdl {VERILOG} -family {PolarFire} -die {MPF300TS} -package {FCG1152} -speed {-1} -die_voltage {1.0} -part_range {IND} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} -adv_options {TEMPR:IND} -adv_options {VCCI_1.2_VOLTR:IND} -adv_options {VCCI_1.5_VOLTR:IND} -adv_options {VCCI_1.8_VOLTR:IND} -adv_options {VCCI_2.5_VOLTR:IND} -adv_options {VCCI_3.3_VOLTR:IND} -adv_options {VOLTR:IND}
		download_cores_all_cfgs
		source ./import/components/IMC_CFG3/import_component_and_constraints_pf_eval_kits_rv32imc_cfg3.tcl
		save_project
        base_design_built
	}
} elseif {"$config" != ""} then {
		invalid_first_argument
} else {
	if {[file exists $project_dir_CFG1] == 1} then {
		project_exists
	} else {
		no_first_argument_entered
		create_new_project_label
		new_project -location $project_dir_CFG1 -name $Libero_project_name_CFG1 -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -hdl {VERILOG} -family {PolarFire} -die {MPF300TS} -package {FCG1152} -speed {-1} -die_voltage {1.0} -part_range {IND} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} -adv_options {TEMPR:IND} -adv_options {VCCI_1.2_VOLTR:IND} -adv_options {VCCI_1.5_VOLTR:IND} -adv_options {VCCI_1.8_VOLTR:IND} -adv_options {VCCI_2.5_VOLTR:IND} -adv_options {VCCI_3.3_VOLTR:IND} -adv_options {VOLTR:IND}
		download_cores_all_cfgs
		source ./import/components/IMC_CFG1/import_component_and_constraints_pf_eval_kits_rv32imc_cfg1.tcl
		save_project
        base_design_built
	}
}


if {"$design_flow_stage" == "SYNTHESIZE"} then {
	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "Begin Synthesis..."
	puts "--------------------------------------------------------------------------------------------------------- \n"

	pre_configure_place_and_route
    run_tool -name {SYNTHESIZE}
    save_project

	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "Synthesis Complete."
	puts "--------------------------------------------------------------------------------------------------------- \n"


} elseif {"$design_flow_stage" == "PLACE_AND_ROUTE"} then {

	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "Begin Place and Route..."
	puts "--------------------------------------------------------------------------------------------------------- \n"

	pre_configure_place_and_route
	run_verify_timing
	save_project

	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "Place and Route Complete."
	puts "--------------------------------------------------------------------------------------------------------- \n"



} elseif {"$design_flow_stage" == "GENERATE_BITSTREAM"} then {

	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "Generating Bitstream..."
	puts "--------------------------------------------------------------------------------------------------------- \n"


	pre_configure_place_and_route
	run_verify_timing
    run_tool -name {GENERATEPROGRAMMINGDATA}
    run_tool -name {GENERATEPROGRAMMINGFILE}
    save_project

	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "Bitstream Generated."
	puts "--------------------------------------------------------------------------------------------------------- \n"



} elseif {"$design_flow_stage" == "EXPORT_PROGRAMMING_FILE"} then {

	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "Exporting Programming Files..."
	puts "--------------------------------------------------------------------------------------------------------- \n"


	pre_configure_place_and_route
	run_verify_timing
	run_tool -name {GENERATEPROGRAMMINGDATA}
	run_tool -name {GENERATEPROGRAMMINGFILE}

	if {"$config" == "CFG1"} then {
		export_prog_job \
			-job_file_name {PF_Eval_Kit_MiV_RV32IMC_CFG1_BaseDesign} \
			-export_dir {./MiV_CFG1_BD/designer/BaseDesign/export} \
			-bitstream_file_type {TRUSTED_FACILITY} \
			-bitstream_file_components {}
		save_project
	} elseif {"$config" == "CFG2"} then {
		export_prog_job \
			-job_file_name {PF_Eval_Kit_MiV_RV32IMC_CFG2_BaseDesign} \
			-export_dir {./MiV_CFG2_BD/designer/BaseDesign/export} \
			-bitstream_file_type {TRUSTED_FACILITY} \
			-bitstream_file_components {}
		save_project
	} else {
		export_prog_job \
			-job_file_name {PF_Eval_Kit_MiV_RV32IMC_CFG3_BaseDesign} \
			-export_dir {./MiV_CFG3_BD/designer/BaseDesign/export} \
			-bitstream_file_type {TRUSTED_FACILITY} \
			-bitstream_file_components {}
		save_project
	}

	puts "\n---------------------------------------------------------------------------------------------------------"
    puts "Programming Files Exported."
	puts "--------------------------------------------------------------------------------------------------------- \n"

} elseif {"$design_flow_stage" != ""} then {
	invalid_second_argument
} else {
	no_second_argument_entered
}