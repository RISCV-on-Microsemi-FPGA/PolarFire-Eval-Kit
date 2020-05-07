set project_folder_name_CFG1 MiV_CFG1_BD
set project_dir_CFG1 "./$project_folder_name_CFG1"
set Libero_project_name_CFG1 PF_Eval_Kit_MiV_RV32IMAF_CFG1_BaseDesign

set config [string toupper [lindex $argv 0]]
set design_flow_stage [string toupper [lindex $argv 1]]


proc create_new_project_label {Libero_project_name}\
{
	puts "\n ---------------------------------------------------------------------------------------------------------"
	puts "Creating New Project"
	puts "Project name is: '${Libero_project_name}'"
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc project_exists {Libero_project_name}\
{
	puts "\n ---------------------------------------------------------------------------------------------------------"
	puts "Error: Project '${Libero_project_name}' already exists."
	puts "Please rename or remove the project, then re-run the script."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc no_first_argument_entered { }\
{
	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "No 1st Argument has been entered."
	puts "Enter the 1st Argument responsible for type of design configuration -'CFG1..CFGn' " 
	puts "Default 'CFG1' design has been selected."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc invalid_first_argument { }\
{
	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "Wrong 1st Argument has been entered."
    puts "Make sure you enter a valid first argument -'CFG1..CFGn'."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc no_second_argument_entered { }\
{
	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "No 2nd Argument has been entered."
	puts "Enter the 2nd Argument after the 1st to be taken further in the Design Flow." 
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc invalid_second_argument { }\
{
	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "Wrong 2nd Argument has been entered."
    puts "Make sure you enter a valid first argument -'Synthesize...Export_Programming_File'."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc  base_design_built { }\
{
	puts "\n ---------------------------------------------------------------------------------------------------------"
	puts "BaseDesign built."
	puts "--------------------------------------------------------------------------------------------------------- \n"
}

proc pre_configure_place_and_route { }\
{
	# Configuring Place_and_Route tool for a timing pass.
	configure_tool -name {PLACEROUTE} -params {EFFORT_LEVEL:true} -params {REPAIR_MIN_DELAY:true} -params {TDPR:true}
}

proc run_verify_timing { }\
{
	run_tool -name {VERIFYTIMING}	
}

if {"$config" == "CFG1"} then {
	if {[file exists $project_dir_CFG1] == 1} then {
		project_exists $Libero_project_name_CFG1
	} else {
		create_new_project_label $Libero_project_name_CFG1
		new_project -location $project_dir_CFG1 -name $Libero_project_name_CFG1 -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -hdl {VERILOG} -family {PolarFire} -die {MPF300T} -package {FCG1152} -speed {-1} -die_voltage {1.0} -part_range {IND} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} -adv_options {TEMPR:IND} -adv_options {VCCI_1.2_VOLTR:EXT} -adv_options {VCCI_1.5_VOLTR:EXT} -adv_options {VCCI_1.8_VOLTR:EXT} -adv_options {VCCI_2.5_VOLTR:EXT} -adv_options {VCCI_3.3_VOLTR:EXT} -adv_options {VOLTR:IND}
		source ./import/components/IMAF_CFG1/import_component_and_constraints_pf_eval_kits_rv32imaf_cfg1.tcl
		save_project
        base_design_built
	}
} elseif {"$config" != ""} then {
		invalid_first_argument
} else {
	if {[file exists $project_dir_CFG1] == 1} then {
		project_exists $Libero_project_name_CFG1
	} else {
		no_first_argument_entered
		create_new_project_label $Libero_project_name_CFG1
		new_project -location $project_dir_CFG1 -name $Libero_project_name_CFG1 -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -hdl {VERILOG} -family {PolarFire} -die {MPF300T} -package {FCG1152} -speed {-1} -die_voltage {1.0} -part_range {IND} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} -adv_options {TEMPR:IND} -adv_options {VCCI_1.2_VOLTR:EXT} -adv_options {VCCI_1.5_VOLTR:EXT} -adv_options {VCCI_1.8_VOLTR:EXT} -adv_options {VCCI_2.5_VOLTR:EXT} -adv_options {VCCI_3.3_VOLTR:EXT} -adv_options {VOLTR:IND}
		source ./import/components/IMAF_CFG1/import_component_and_constraints_pf_eval_kits_rv32imaf_cfg1.tcl
		save_project
        base_design_built
	}
}


if {"$design_flow_stage" == "SYNTHESIZE"} then {
	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "Begin Synthesis..."
	puts "--------------------------------------------------------------------------------------------------------- \n"

	pre_configure_place_and_route
    run_tool -name {SYNTHESIZE}
    save_project

	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "Synthesis Complete."
	puts "--------------------------------------------------------------------------------------------------------- \n"


} elseif {"$design_flow_stage" == "PLACE_AND_ROUTE"} then {

	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "Begin Place and Route..."
	puts "--------------------------------------------------------------------------------------------------------- \n"

	pre_configure_place_and_route
	run_verify_timing
	save_project

	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "Place and Route Complete."
	puts "--------------------------------------------------------------------------------------------------------- \n"



} elseif {"$design_flow_stage" == "GENERATE_BITSTREAM"} then {

	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "Generating Bitstream..."
	puts "--------------------------------------------------------------------------------------------------------- \n"


	pre_configure_place_and_route
	run_verify_timing
    run_tool -name {GENERATEPROGRAMMINGDATA}
    run_tool -name {GENERATEPROGRAMMINGFILE}
    save_project

	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "Bitstream Generated."
	puts "--------------------------------------------------------------------------------------------------------- \n"



} elseif {"$design_flow_stage" == "EXPORT_PROGRAMMING_FILE"} then {

	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "Exporting Programming Files..."
	puts "--------------------------------------------------------------------------------------------------------- \n"


	pre_configure_place_and_route
	run_verify_timing
	run_tool -name {GENERATEPROGRAMMINGDATA}
	run_tool -name {GENERATEPROGRAMMINGFILE}

		export_prog_job \
			-job_file_name {PF_Eval_Kit_MiV_RV32IMAF_CFG1_BaseDesign} \
			-export_dir {./MiV_CFG1_BD/designer/BaseDesign/export} \
			-bitstream_file_type {TRUSTED_FACILITY} \
			-bitstream_file_components {}
		save_project

	puts "\n ---------------------------------------------------------------------------------------------------------"
    puts "Programming Files Exported."
	puts "--------------------------------------------------------------------------------------------------------- \n"

} elseif {"$design_flow_stage" != ""} then {
	invalid_second_argument
} else {
	no_second_argument_entered
}