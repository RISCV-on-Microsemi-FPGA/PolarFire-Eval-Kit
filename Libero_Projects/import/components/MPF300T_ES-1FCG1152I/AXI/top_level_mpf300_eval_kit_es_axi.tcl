#Libero tcl top design script
#MPF300_EVAL_KIT = PolarFire Evaluation Kit
#
# Creating SmartDesign BaseDesign
set sd_name {BaseDesign}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# #################################################################################################################################################################

# CCC
# ########
create_and_configure_core -core_vlnv {Actel:SgCore:PF_CCC:2.2.100} -component_name {CCC_0} -params {\
"DLL_CLK_0_BANKCLK_EN:false"  \
"DLL_CLK_0_DEDICATED_EN:false"  \
"DLL_CLK_0_FABCLK_EN:false"  \
"DLL_CLK_1_BANKCLK_EN:false"  \
"DLL_CLK_1_DEDICATED_EN:false"  \
"DLL_CLK_1_FABCLK_EN:false"  \
"DLL_CLK_P_EN:false"  \
"DLL_CLK_P_OPTIONS_EN:false"  \
"DLL_CLK_REF_OPTION:DIVIDE_BY_1"  \
"DLL_CLK_REF_OPTIONS_EN:false"  \
"DLL_CLK_S_EN:false"  \
"DLL_CLK_S_OPTION:DIVIDE_BY_1"  \
"DLL_CLK_S_OPTIONS_EN:false"  \
"DLL_DELAY4:0"  \
"DLL_DYNAMIC_CODE_EN:false"  \
"DLL_DYNAMIC_RECONFIG_INTERFACE_EN:false"  \
"DLL_EXPORT_PWRDWN:false"  \
"DLL_FB_CLK:Primary"  \
"DLL_FB_EN:false"  \
"DLL_FINE_PHASE_CODE:0"  \
"DLL_IN:1"  \
"DLL_JITTER:0"  \
"DLL_MODE:PHASE_REF_MODE"  \
"DLL_ONLY_EN:false"  \
"DLL_OUT_0:1"  \
"DLL_OUT_1:1"  \
"DLL_PRIM_PHASE:90"  \
"DLL_PRIM_PHASE_CODE:0"  \
"DLL_SEC_PHASE:90"  \
"DLL_SEC_PHASE_CODE:0"  \
"DLL_SELECTED_IN:Output2"  \
"FF_REQUIRES_LOCK_EN_0:0"  \
"GL0_0_BANKCLK_USED:false"  \
"GL0_0_BYPASS:0"  \
"GL0_0_BYPASS_EN:false"  \
"GL0_0_DEDICATED_USED:false"  \
"GL0_0_DIV:25"  \
"GL0_0_DIVSTART:0"  \
"GL0_0_DYNAMIC_PH:false"  \
"GL0_0_EXPOSE_EN:false"  \
"GL0_0_FABCLK_GATED_USED:false"  \
"GL0_0_FABCLK_USED:true"  \
"GL0_0_FREQ_SEL:false"  \
"GL0_0_IS_USED:true"  \
"GL0_0_OUT_FREQ:50"  \
"GL0_0_PHASE_INDEX:0"  \
"GL0_0_PHASE_SEL:false"  \
"GL0_0_PLL_PHASE:0"  \
"GL0_1_BANKCLK_USED:false"  \
"GL0_1_BYPASS:0"  \
"GL0_1_BYPASS_EN:false"  \
"GL0_1_DEDICATED_USED:false"  \
"GL0_1_DIV:1"  \
"GL0_1_DIVSTART:0"  \
"GL0_1_DYNAMIC_PH:false"  \
"GL0_1_EXPOSE_EN:false"  \
"GL0_1_FABCLK_USED:false"  \
"GL0_1_FREQ_SEL:false"  \
"GL0_1_IS_USED:true"  \
"GL0_1_OUT_FREQ:100"  \
"GL0_1_PHASE_INDEX:0"  \
"GL0_1_PHASE_SEL:false"  \
"GL0_1_PLL_PHASE:0"  \
"GL1_0_BANKCLK_USED:false"  \
"GL1_0_BYPASS:0"  \
"GL1_0_BYPASS_EN:false"  \
"GL1_0_DEDICATED_USED:false"  \
"GL1_0_DIV:1"  \
"GL1_0_DIVSTART:0"  \
"GL1_0_DYNAMIC_PH:false"  \
"GL1_0_EXPOSE_EN:false"  \
"GL1_0_FABCLK_GATED_USED:false"  \
"GL1_0_FABCLK_USED:true"  \
"GL1_0_FREQ_SEL:false"  \
"GL1_0_IS_USED:false"  \
"GL1_0_OUT_FREQ:100"  \
"GL1_0_PHASE_INDEX:0"  \
"GL1_0_PHASE_SEL:false"  \
"GL1_0_PLL_PHASE:0"  \
"GL1_1_BANKCLK_USED:false"  \
"GL1_1_BYPASS:0"  \
"GL1_1_BYPASS_EN:false"  \
"GL1_1_DEDICATED_USED:false"  \
"GL1_1_DIV:1"  \
"GL1_1_DIVSTART:0"  \
"GL1_1_DYNAMIC_PH:false"  \
"GL1_1_EXPOSE_EN:false"  \
"GL1_1_FABCLK_USED:false"  \
"GL1_1_FREQ_SEL:false"  \
"GL1_1_IS_USED:false"  \
"GL1_1_OUT_FREQ:0"  \
"GL1_1_PHASE_INDEX:0"  \
"GL1_1_PHASE_SEL:false"  \
"GL1_1_PLL_PHASE:0"  \
"GL2_0_BANKCLK_USED:false"  \
"GL2_0_BYPASS:0"  \
"GL2_0_BYPASS_EN:false"  \
"GL2_0_DEDICATED_USED:false"  \
"GL2_0_DIV:1"  \
"GL2_0_DIVSTART:0"  \
"GL2_0_DYNAMIC_PH:false"  \
"GL2_0_EXPOSE_EN:false"  \
"GL2_0_FABCLK_GATED_USED:false"  \
"GL2_0_FABCLK_USED:true"  \
"GL2_0_FREQ_SEL:false"  \
"GL2_0_IS_USED:false"  \
"GL2_0_OUT_FREQ:100"  \
"GL2_0_PHASE_INDEX:0"  \
"GL2_0_PHASE_SEL:false"  \
"GL2_0_PLL_PHASE:0"  \
"GL2_1_BANKCLK_USED:false"  \
"GL2_1_BYPASS:0"  \
"GL2_1_BYPASS_EN:false"  \
"GL2_1_DEDICATED_USED:false"  \
"GL2_1_DIV:1"  \
"GL2_1_DIVSTART:0"  \
"GL2_1_DYNAMIC_PH:false"  \
"GL2_1_EXPOSE_EN:false"  \
"GL2_1_FABCLK_USED:false"  \
"GL2_1_FREQ_SEL:false"  \
"GL2_1_IS_USED:false"  \
"GL2_1_OUT_FREQ:0"  \
"GL2_1_PHASE_INDEX:0"  \
"GL2_1_PHASE_SEL:false"  \
"GL2_1_PLL_PHASE:0"  \
"GL3_0_BANKCLK_USED:false"  \
"GL3_0_BYPASS:0"  \
"GL3_0_BYPASS_EN:false"  \
"GL3_0_DEDICATED_USED:false"  \
"GL3_0_DIV:1"  \
"GL3_0_DIVSTART:0"  \
"GL3_0_DYNAMIC_PH:false"  \
"GL3_0_EXPOSE_EN:false"  \
"GL3_0_FABCLK_GATED_USED:false"  \
"GL3_0_FABCLK_USED:true"  \
"GL3_0_FREQ_SEL:false"  \
"GL3_0_IS_USED:false"  \
"GL3_0_OUT_FREQ:100"  \
"GL3_0_PHASE_INDEX:0"  \
"GL3_0_PHASE_SEL:false"  \
"GL3_0_PLL_PHASE:0"  \
"GL3_1_BANKCLK_USED:false"  \
"GL3_1_BYPASS:0"  \
"GL3_1_BYPASS_EN:false"  \
"GL3_1_DEDICATED_USED:false"  \
"GL3_1_DIV:1"  \
"GL3_1_DIVSTART:0"  \
"GL3_1_DYNAMIC_PH:false"  \
"GL3_1_EXPOSE_EN:false"  \
"GL3_1_FABCLK_USED:false"  \
"GL3_1_FREQ_SEL:false"  \
"GL3_1_IS_USED:false"  \
"GL3_1_OUT_FREQ:0"  \
"GL3_1_PHASE_INDEX:0"  \
"GL3_1_PHASE_SEL:false"  \
"GL3_1_PLL_PHASE:0"  \
"PLL_BANDWIDTH_0:2"  \
"PLL_BANDWIDTH_1:1"  \
"PLL_BYPASS_GO_B_0:false"  \
"PLL_BYPASS_GO_B_1:false"  \
"PLL_BYPASS_POST_0:0"  \
"PLL_BYPASS_POST_0_0:false"  \
"PLL_BYPASS_POST_0_1:false"  \
"PLL_BYPASS_POST_0_2:false"  \
"PLL_BYPASS_POST_0_3:false"  \
"PLL_BYPASS_POST_1:0"  \
"PLL_BYPASS_POST_1_0:false"  \
"PLL_BYPASS_POST_1_1:false"  \
"PLL_BYPASS_POST_1_2:false"  \
"PLL_BYPASS_POST_1_3:false"  \
"PLL_BYPASS_PRE_0:0"  \
"PLL_BYPASS_PRE_0_0:false"  \
"PLL_BYPASS_PRE_0_1:false"  \
"PLL_BYPASS_PRE_0_2:false"  \
"PLL_BYPASS_PRE_0_3:false"  \
"PLL_BYPASS_PRE_1:0"  \
"PLL_BYPASS_PRE_1_0:false"  \
"PLL_BYPASS_PRE_1_1:false"  \
"PLL_BYPASS_PRE_1_2:false"  \
"PLL_BYPASS_PRE_1_3:false"  \
"PLL_BYPASS_SEL_0:0"  \
"PLL_BYPASS_SEL_0_0:false"  \
"PLL_BYPASS_SEL_0_1:false"  \
"PLL_BYPASS_SEL_0_2:false"  \
"PLL_BYPASS_SEL_0_3:false"  \
"PLL_BYPASS_SEL_1:0"  \
"PLL_BYPASS_SEL_1_0:false"  \
"PLL_BYPASS_SEL_1_1:false"  \
"PLL_BYPASS_SEL_1_2:false"  \
"PLL_BYPASS_SEL_1_3:false"  \
"PLL_DELAY_LINE_REF_FB_0:false"  \
"PLL_DELAY_LINE_REF_FB_1:false"  \
"PLL_DELAY_LINE_USED_0:false"  \
"PLL_DELAY_LINE_USED_1:false"  \
"PLL_DELAY_STEPS_0:1"  \
"PLL_DELAY_STEPS_1:1"  \
"PLL_DLL_CASCADED_EN:false"  \
"PLL_DYNAMIC_CONTROL_EN_0:true"  \
"PLL_DYNAMIC_CONTROL_EN_1:false"  \
"PLL_DYNAMIC_RECONFIG_INTERFACE_EN_0:false"  \
"PLL_DYNAMIC_RECONFIG_INTERFACE_EN_1:false"  \
"PLL_EXPORT_PWRDWN:false"  \
"PLL_EXT_MAX_ADDR_0:128"  \
"PLL_EXT_MAX_ADDR_1:128"  \
"PLL_EXT_WAVE_SEL_0:0"  \
"PLL_EXT_WAVE_SEL_1:0"  \
"PLL_FB_CLK_0:GL0_0"  \
"PLL_FB_CLK_1:GL0_1"  \
"PLL_FEEDBACK_MODE_0:Post-VCO"  \
"PLL_FEEDBACK_MODE_1:Post-VCO"  \
"PLL_IN_FREQ_0:160"  \
"PLL_IN_FREQ_1:100"  \
"PLL_INT_MODE_EN_0:false"  \
"PLL_INT_MODE_EN_1:false"  \
"PLL_LOCK_COUNT_0:0"  \
"PLL_LOCK_COUNT_1:0"  \
"PLL_LP_REQUIRES_LOCK_EN_0:false"  \
"PLL_LP_REQUIRES_LOCK_EN_1:false"  \
"PLL_PLL_CASCADED_EN:false"  \
"PLL_PLL_CASCADED_SELECTED_CLK:Output2"  \
"PLL_REF_CLK_SEL_0:false"  \
"PLL_REF_CLK_SEL_1:false"  \
"PLL_REFDIV_0:1"  \
"PLL_REFDIV_1:1"  \
"PLL_SPREAD_MODE_0:false"  \
"PLL_SPREAD_MODE_1:false"  \
"PLL_SSM_DEPTH_0:5"  \
"PLL_SSM_DEPTH_1:5"  \
"PLL_SSM_DIVVAL_0:1"  \
"PLL_SSM_DIVVAL_1:1"  \
"PLL_SSM_FREQ_0:32"  \
"PLL_SSM_FREQ_1:32"  \
"PLL_SSM_RAND_PATTERN_0:2"  \
"PLL_SSM_RAND_PATTERN_1:2"  \
"PLL_SSMD_EN_0:false"  \
"PLL_SSMD_EN_1:false"  \
"PLL_SYNC_CORNER_PLL:false"  \
"PLL_SYNC_EN:false"  \
"PLL_VCO_MODE_0:MIN_JITTER"  \
"PLL_VCO_MODE_1:MIN_JITTER"   }


# CoreAPB3
# #############
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreAPB3:4.1.100} -component_name {CoreAPB3_0} -params {\
"APB_DWIDTH:32"  \
"APBSLOT0ENABLE:false"  \
"APBSLOT1ENABLE:true"  \
"APBSLOT2ENABLE:true"  \
"APBSLOT3ENABLE:true"  \
"APBSLOT4ENABLE:true"  \
"APBSLOT5ENABLE:true"  \
"APBSLOT6ENABLE:false"  \
"APBSLOT7ENABLE:false"  \
"APBSLOT8ENABLE:false"  \
"APBSLOT9ENABLE:false"  \
"APBSLOT10ENABLE:false"  \
"APBSLOT11ENABLE:false"  \
"APBSLOT12ENABLE:false"  \
"APBSLOT13ENABLE:false"  \
"APBSLOT14ENABLE:false"  \
"APBSLOT15ENABLE:false"  \
"IADDR_OPTION:0"  \
"MADDR_BITS:16"  \
"SC_0:false"  \
"SC_1:false"  \
"SC_2:false"  \
"SC_3:false"  \
"SC_4:false"  \
"SC_5:false"  \
"SC_6:false"  \
"SC_7:false"  \
"SC_8:false"  \
"SC_9:false"  \
"SC_10:false"  \
"SC_11:false"  \
"SC_12:false"  \
"SC_13:false"  \
"SC_14:false"  \
"SC_15:false"  \
"UPR_NIBBLE_POSN:6"   }
# ############################

# COREAHBTOAPB3_0
# #####################
create_and_configure_core -core_vlnv {Actel:DirectCore:COREAHBTOAPB3:3.1.100} -component_name {COREAHBTOAPB3_0} -params { }
# #################


# CoreAHBLite_0
# ##################
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreAHBLite:5.4.102} -component_name {CoreAHBLite_0} -params {\
"HADDR_SHG_CFG:1"  \
"M0_AHBSLOT0ENABLE:false"  \
"M0_AHBSLOT1ENABLE:false"  \
"M0_AHBSLOT2ENABLE:false"  \
"M0_AHBSLOT3ENABLE:false"  \
"M0_AHBSLOT4ENABLE:false"  \
"M0_AHBSLOT5ENABLE:false"  \
"M0_AHBSLOT6ENABLE:false"  \
"M0_AHBSLOT7ENABLE:true"  \
"M0_AHBSLOT8ENABLE:false"  \
"M0_AHBSLOT9ENABLE:false"  \
"M0_AHBSLOT10ENABLE:false"  \
"M0_AHBSLOT11ENABLE:false"  \
"M0_AHBSLOT12ENABLE:false"  \
"M0_AHBSLOT13ENABLE:false"  \
"M0_AHBSLOT14ENABLE:false"  \
"M0_AHBSLOT15ENABLE:false"  \
"M0_AHBSLOT16ENABLE:false"  \
"M1_AHBSLOT0ENABLE:false"  \
"M1_AHBSLOT1ENABLE:false"  \
"M1_AHBSLOT2ENABLE:false"  \
"M1_AHBSLOT3ENABLE:false"  \
"M1_AHBSLOT4ENABLE:false"  \
"M1_AHBSLOT5ENABLE:false"  \
"M1_AHBSLOT6ENABLE:false"  \
"M1_AHBSLOT7ENABLE:false"  \
"M1_AHBSLOT8ENABLE:true"  \
"M1_AHBSLOT9ENABLE:false"  \
"M1_AHBSLOT10ENABLE:false"  \
"M1_AHBSLOT11ENABLE:false"  \
"M1_AHBSLOT12ENABLE:false"  \
"M1_AHBSLOT13ENABLE:false"  \
"M1_AHBSLOT14ENABLE:false"  \
"M1_AHBSLOT15ENABLE:false"  \
"M1_AHBSLOT16ENABLE:false"  \
"M2_AHBSLOT0ENABLE:false"  \
"M2_AHBSLOT1ENABLE:false"  \
"M2_AHBSLOT2ENABLE:false"  \
"M2_AHBSLOT3ENABLE:false"  \
"M2_AHBSLOT4ENABLE:false"  \
"M2_AHBSLOT5ENABLE:false"  \
"M2_AHBSLOT6ENABLE:false"  \
"M2_AHBSLOT7ENABLE:false"  \
"M2_AHBSLOT8ENABLE:false"  \
"M2_AHBSLOT9ENABLE:false"  \
"M2_AHBSLOT10ENABLE:false"  \
"M2_AHBSLOT11ENABLE:false"  \
"M2_AHBSLOT12ENABLE:false"  \
"M2_AHBSLOT13ENABLE:false"  \
"M2_AHBSLOT14ENABLE:false"  \
"M2_AHBSLOT15ENABLE:false"  \
"M2_AHBSLOT16ENABLE:false"  \
"M3_AHBSLOT0ENABLE:false"  \
"M3_AHBSLOT1ENABLE:false"  \
"M3_AHBSLOT2ENABLE:false"  \
"M3_AHBSLOT3ENABLE:false"  \
"M3_AHBSLOT4ENABLE:false"  \
"M3_AHBSLOT5ENABLE:false"  \
"M3_AHBSLOT6ENABLE:false"  \
"M3_AHBSLOT7ENABLE:false"  \
"M3_AHBSLOT8ENABLE:false"  \
"M3_AHBSLOT9ENABLE:false"  \
"M3_AHBSLOT10ENABLE:false"  \
"M3_AHBSLOT11ENABLE:false"  \
"M3_AHBSLOT12ENABLE:false"  \
"M3_AHBSLOT13ENABLE:false"  \
"M3_AHBSLOT14ENABLE:false"  \
"M3_AHBSLOT15ENABLE:false"  \
"M3_AHBSLOT16ENABLE:false"  \
"MASTER0_INTERFACE:1"	\
"MASTER1_INTERFACE:1"	\
"MASTER2_INTERFACE:1"	\
"MASTER3_INTERFACE:1"	\
"MEMSPACE:1"  \
"SC_0:false"  \
"SC_1:false"  \
"SC_2:false"  \
"SC_3:false"  \
"SC_4:false"  \
"SC_5:false"  \
"SC_6:false"  \
"SC_7:false"  \
"SC_8:false"  \
"SC_9:false"  \
"SC_10:false"  \
"SC_11:false"  \
"SC_12:false"  \
"SC_13:false"  \
"SC_14:false"  \
"SC_15:false"   \
"SLAVE0_INTERFACE:1"	\
"SLAVE1_INTERFACE:1"	\
"SLAVE2_INTERFACE:1"	\
"SLAVE3_INTERFACE:1"	\
"SLAVE4_INTERFACE:1"	\
"SLAVE5_INTERFACE:1"	\
"SLAVE6_INTERFACE:1"	\
"SLAVE7_INTERFACE:1"	\
"SLAVE8_INTERFACE:1"	\
"SLAVE9_INTERFACE:1"	\
"SLAVE10_INTERFACE:1"	\
"SLAVE11_INTERFACE:1"	\
"SLAVE12_INTERFACE:1"	\
"SLAVE13_INTERFACE:1"	\
"SLAVE14_INTERFACE:1"	\
"SLAVE15_INTERFACE:1"	\
"SLAVE16_INTERFACE:1"	} 
# ######################


# CoreGPIO_IN
# ######################
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -component_name {GPIO_IN_0} -params {\
"APB_WIDTH:32"  \
"FIXED_CONFIG_0:true"  \
"FIXED_CONFIG_1:true"  \
"FIXED_CONFIG_2:true"  \
"FIXED_CONFIG_3:true"  \
"FIXED_CONFIG_4:true"  \
"FIXED_CONFIG_5:true"  \
"FIXED_CONFIG_6:true"  \
"FIXED_CONFIG_7:true"  \
"FIXED_CONFIG_8:false"  \
"FIXED_CONFIG_9:false"  \
"FIXED_CONFIG_10:false"  \
"FIXED_CONFIG_11:false"  \
"FIXED_CONFIG_12:false"  \
"FIXED_CONFIG_13:false"  \
"FIXED_CONFIG_14:false"  \
"FIXED_CONFIG_15:false"  \
"FIXED_CONFIG_16:false"  \
"FIXED_CONFIG_17:false"  \
"FIXED_CONFIG_18:false"  \
"FIXED_CONFIG_19:false"  \
"FIXED_CONFIG_20:false"  \
"FIXED_CONFIG_21:false"  \
"FIXED_CONFIG_22:false"  \
"FIXED_CONFIG_23:false"  \
"FIXED_CONFIG_24:false"  \
"FIXED_CONFIG_25:false"  \
"FIXED_CONFIG_26:false"  \
"FIXED_CONFIG_27:false"  \
"FIXED_CONFIG_28:false"  \
"FIXED_CONFIG_29:false"  \
"FIXED_CONFIG_30:false"  \
"FIXED_CONFIG_31:false"  \
"INT_BUS:0"  \
"IO_INT_TYPE_0:7"  \
"IO_INT_TYPE_1:7"  \
"IO_INT_TYPE_2:7"  \
"IO_INT_TYPE_3:7"  \
"IO_INT_TYPE_4:7"  \
"IO_INT_TYPE_5:7"  \
"IO_INT_TYPE_6:7"  \
"IO_INT_TYPE_7:7"  \
"IO_INT_TYPE_8:7"  \
"IO_INT_TYPE_9:7"  \
"IO_INT_TYPE_10:7"  \
"IO_INT_TYPE_11:7"  \
"IO_INT_TYPE_12:7"  \
"IO_INT_TYPE_13:7"  \
"IO_INT_TYPE_14:7"  \
"IO_INT_TYPE_15:7"  \
"IO_INT_TYPE_16:7"  \
"IO_INT_TYPE_17:7"  \
"IO_INT_TYPE_18:7"  \
"IO_INT_TYPE_19:7"  \
"IO_INT_TYPE_20:7"  \
"IO_INT_TYPE_21:7"  \
"IO_INT_TYPE_22:7"  \
"IO_INT_TYPE_23:7"  \
"IO_INT_TYPE_24:7"  \
"IO_INT_TYPE_25:7"  \
"IO_INT_TYPE_26:7"  \
"IO_INT_TYPE_27:7"  \
"IO_INT_TYPE_28:7"  \
"IO_INT_TYPE_29:7"  \
"IO_INT_TYPE_30:7"  \
"IO_INT_TYPE_31:7"  \
"IO_NUM:8"  \
"IO_TYPE_0:0"  \
"IO_TYPE_1:0"  \
"IO_TYPE_2:0"  \
"IO_TYPE_3:0"  \
"IO_TYPE_4:0"  \
"IO_TYPE_5:0"  \
"IO_TYPE_6:0"  \
"IO_TYPE_7:0"  \
"IO_TYPE_8:0"  \
"IO_TYPE_9:0"  \
"IO_TYPE_10:0"  \
"IO_TYPE_11:0"  \
"IO_TYPE_12:0"  \
"IO_TYPE_13:0"  \
"IO_TYPE_14:0"  \
"IO_TYPE_15:0"  \
"IO_TYPE_16:0"  \
"IO_TYPE_17:0"  \
"IO_TYPE_18:0"  \
"IO_TYPE_19:0"  \
"IO_TYPE_20:0"  \
"IO_TYPE_21:0"  \
"IO_TYPE_22:0"  \
"IO_TYPE_23:0"  \
"IO_TYPE_24:0"  \
"IO_TYPE_25:0"  \
"IO_TYPE_26:0"  \
"IO_TYPE_27:0"  \
"IO_TYPE_28:0"  \
"IO_TYPE_29:0"  \
"IO_TYPE_30:0"  \
"IO_TYPE_31:0"  \
"IO_VAL_0:0"  \
"IO_VAL_1:0"  \
"IO_VAL_2:0"  \
"IO_VAL_3:0"  \
"IO_VAL_4:0"  \
"IO_VAL_5:0"  \
"IO_VAL_6:0"  \
"IO_VAL_7:0"  \
"IO_VAL_8:0"  \
"IO_VAL_9:0"  \
"IO_VAL_10:0"  \
"IO_VAL_11:0"  \
"IO_VAL_12:0"  \
"IO_VAL_13:0"  \
"IO_VAL_14:0"  \
"IO_VAL_15:0"  \
"IO_VAL_16:0"  \
"IO_VAL_17:0"  \
"IO_VAL_18:0"  \
"IO_VAL_19:0"  \
"IO_VAL_20:0"  \
"IO_VAL_21:0"  \
"IO_VAL_22:0"  \
"IO_VAL_23:0"  \
"IO_VAL_24:0"  \
"IO_VAL_25:0"  \
"IO_VAL_26:0"  \
"IO_VAL_27:0"  \
"IO_VAL_28:0"  \
"IO_VAL_29:0"  \
"IO_VAL_30:0"  \
"IO_VAL_31:0"  \
"OE_TYPE:1"   }
# #####################


# CoreTimer_0
# #####################
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreTimer:2.0.103} -component_name {CoreTimer_0} -params {\
"INTACTIVEH:1"  \
"WIDTH:32"   }
# #######################


# CoreTimer_1
# #############
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreTimer:2.0.103} -component_name {CoreTimer_1} -params {\
"INTACTIVEH:1"  \
"WIDTH:32"   }
# #################


# CoreUARTapb
# ####################
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreUARTapb:5.6.102} -component_name {CoreUARTapb_0} -params {\
"BAUD_VAL_FRCTN:0"  \
"BAUD_VAL_FRCTN_EN:false"  \
"BAUD_VALUE:1"  \
"FIXEDMODE:0"  \
"PRG_BIT8:0"  \
"PRG_PARITY:0"  \
"RX_FIFO:0"  \
"RX_LEGACY_MODE:0"  \
"TX_FIFO:0"  \
"USE_SOFT_FIFO:0"   }


# GPIO_OUT
# ###########
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -component_name {GPIO_OUT_0} -params {\
"APB_WIDTH:32"  \
"FIXED_CONFIG_0:true"  \
"FIXED_CONFIG_1:true"  \
"FIXED_CONFIG_2:true"  \
"FIXED_CONFIG_3:true"  \
"FIXED_CONFIG_4:true"  \
"FIXED_CONFIG_5:true"  \
"FIXED_CONFIG_6:true"  \
"FIXED_CONFIG_7:true"  \
"FIXED_CONFIG_8:false"  \
"FIXED_CONFIG_9:false"  \
"FIXED_CONFIG_10:false"  \
"FIXED_CONFIG_11:false"  \
"FIXED_CONFIG_12:false"  \
"FIXED_CONFIG_13:false"  \
"FIXED_CONFIG_14:false"  \
"FIXED_CONFIG_15:false"  \
"FIXED_CONFIG_16:false"  \
"FIXED_CONFIG_17:false"  \
"FIXED_CONFIG_18:false"  \
"FIXED_CONFIG_19:false"  \
"FIXED_CONFIG_20:false"  \
"FIXED_CONFIG_21:false"  \
"FIXED_CONFIG_22:false"  \
"FIXED_CONFIG_23:false"  \
"FIXED_CONFIG_24:false"  \
"FIXED_CONFIG_25:false"  \
"FIXED_CONFIG_26:false"  \
"FIXED_CONFIG_27:false"  \
"FIXED_CONFIG_28:false"  \
"FIXED_CONFIG_29:false"  \
"FIXED_CONFIG_30:false"  \
"FIXED_CONFIG_31:false"  \
"INT_BUS:0"  \
"IO_INT_TYPE_0:7"  \
"IO_INT_TYPE_1:7"  \
"IO_INT_TYPE_2:7"  \
"IO_INT_TYPE_3:7"  \
"IO_INT_TYPE_4:7"  \
"IO_INT_TYPE_5:7"  \
"IO_INT_TYPE_6:7"  \
"IO_INT_TYPE_7:7"  \
"IO_INT_TYPE_8:7"  \
"IO_INT_TYPE_9:7"  \
"IO_INT_TYPE_10:7"  \
"IO_INT_TYPE_11:7"  \
"IO_INT_TYPE_12:7"  \
"IO_INT_TYPE_13:7"  \
"IO_INT_TYPE_14:7"  \
"IO_INT_TYPE_15:7"  \
"IO_INT_TYPE_16:7"  \
"IO_INT_TYPE_17:7"  \
"IO_INT_TYPE_18:7"  \
"IO_INT_TYPE_19:7"  \
"IO_INT_TYPE_20:7"  \
"IO_INT_TYPE_21:7"  \
"IO_INT_TYPE_22:7"  \
"IO_INT_TYPE_23:7"  \
"IO_INT_TYPE_24:7"  \
"IO_INT_TYPE_25:7"  \
"IO_INT_TYPE_26:7"  \
"IO_INT_TYPE_27:7"  \
"IO_INT_TYPE_28:7"  \
"IO_INT_TYPE_29:7"  \
"IO_INT_TYPE_30:7"  \
"IO_INT_TYPE_31:7"  \
"IO_NUM:8"  \
"IO_TYPE_0:1"  \
"IO_TYPE_1:1"  \
"IO_TYPE_2:1"  \
"IO_TYPE_3:1"  \
"IO_TYPE_4:1"  \
"IO_TYPE_5:1"  \
"IO_TYPE_6:1"  \
"IO_TYPE_7:1"  \
"IO_TYPE_8:0"  \
"IO_TYPE_9:0"  \
"IO_TYPE_10:0"  \
"IO_TYPE_11:0"  \
"IO_TYPE_12:0"  \
"IO_TYPE_13:0"  \
"IO_TYPE_14:0"  \
"IO_TYPE_15:0"  \
"IO_TYPE_16:0"  \
"IO_TYPE_17:0"  \
"IO_TYPE_18:0"  \
"IO_TYPE_19:0"  \
"IO_TYPE_20:0"  \
"IO_TYPE_21:0"  \
"IO_TYPE_22:0"  \
"IO_TYPE_23:0"  \
"IO_TYPE_24:0"  \
"IO_TYPE_25:0"  \
"IO_TYPE_26:0"  \
"IO_TYPE_27:0"  \
"IO_TYPE_28:0"  \
"IO_TYPE_29:0"  \
"IO_TYPE_30:0"  \
"IO_TYPE_31:0"  \
"IO_VAL_0:0"  \
"IO_VAL_1:0"  \
"IO_VAL_2:0"  \
"IO_VAL_3:0"  \
"IO_VAL_4:0"  \
"IO_VAL_5:0"  \
"IO_VAL_6:0"  \
"IO_VAL_7:0"  \
"IO_VAL_8:0"  \
"IO_VAL_9:0"  \
"IO_VAL_10:0"  \
"IO_VAL_11:0"  \
"IO_VAL_12:0"  \
"IO_VAL_13:0"  \
"IO_VAL_14:0"  \
"IO_VAL_15:0"  \
"IO_VAL_16:0"  \
"IO_VAL_17:0"  \
"IO_VAL_18:0"  \
"IO_VAL_19:0"  \
"IO_VAL_20:0"  \
"IO_VAL_21:0"  \
"IO_VAL_22:0"  \
"IO_VAL_23:0"  \
"IO_VAL_24:0"  \
"IO_VAL_25:0"  \
"IO_VAL_26:0"  \
"IO_VAL_27:0"  \
"IO_VAL_28:0"  \
"IO_VAL_29:0"  \
"IO_VAL_30:0"  \
"IO_VAL_31:0"  \
"OE_TYPE:1"   }
# ############################


# CoreJTAGDebug
# ############################
create_and_configure_core -core_vlnv {Actel:DirectCore:COREJTAGDEBUG:3.1.100} -component_name {CoreJTAGDebug_0} -params {\
"IR_CODE_TGT_0:0x55" "IR_CODE_TGT_1:0x56" "IR_CODE_TGT_2:0x57" "IR_CODE_TGT_3:0x58" "IR_CODE_TGT_4:0x59" "IR_CODE_TGT_5:0x5a" \
"IR_CODE_TGT_6:0x5b" "IR_CODE_TGT_7:0x5c" "IR_CODE_TGT_8:0x5d" "IR_CODE_TGT_9:0x5e" "IR_CODE_TGT_10:0x5f" "IR_CODE_TGT_11:0x60" \ 
"IR_CODE_TGT_12:0x61" "IR_CODE_TGT_13:0x62" "IR_CODE_TGT_14:0x63" "IR_CODE_TGT_15:0x64" "NUM_DEBUG_TGTS:1" "TGT_ACTIVE\
_HIGH_RESET_0:true" "TGT_ACTIVE_HIGH_RESET_1:true" "TGT_ACTIVE_HIGH_RESET_2:true" "TGT_ACTIVE_HIGH_RESET_3:true" "TGT_ACTIVE\
_HIGH_RESET_4:true" "TGT_ACTIVE_HIGH_RESET_5:true" "TGT_ACTIVE_HIGH_RESET_6:true" "TGT_ACTIVE_HIGH_RESET_7:true" "TGT_ACTIVE_\
HIGH_RESET_8:true" "TGT_ACTIVE_HIGH_RESET_9:true" "TGT_ACTIVE_HIGH_RESET_10:true" "TGT_ACTIVE_HIGH_RESET_11:true" "TGT_ACTIVE_\
HIGH_RESET_12:true" "TGT_ACTIVE_HIGH_RESET_13:true" "TGT_ACTIVE_HIGH_RESET_14:true" "TGT_ACTIVE_HIGH_RESET_15:true" \
 "UJTAG_BYPASS:false"} 
# ##############################


# PF_SRAM
# #################
create_and_configure_core -core_vlnv {Actel:SystemBuilder:PF_SRAM_AHBL_AXI:1.2.101} -component_name {PF_SRAM_0} -params {\
"AXI4_AWIDTH:32" \
"AXI4_DWIDTH:32" \
"AXI4_IDWIDTH:8" \
"AXI4_IFTYPE_RD:T" \
"AXI4_IFTYPE_WR:T" \
"AXI4_WRAP_SUPPORT:F" \
"BYTEENABLES:1" \
"BYTE_ENABLE_WIDTH:4" \
"B_REN_POLARITY:2" \
"CASCADE:1" \
"FABRIC_INTERFACE_TYPE:0" \
"IMPORT_FILE:" \
"INIT_RAM:F" \
"LPM_HINT:0" \
"RDEPTH:65536" \
"RWIDTH:40" \
"USE_NATIVE_INTERFACE:F" \
"WDEPTH:65536" \
"WWIDTH:40" }
# ##########################


# Add MiV_RV32IMA_AXI_0 instance
# ############################
create_and_configure_core -core_vlnv {Microsemi:MiV:MIV_RV32IMA_L1_AXI:2.1.100} -component_name {MIV_RV32IMA_L1_AXI_0} -params {\
"MASTER_TYPE:0" \
"MEM_WID:5" \
"MMIO_WID:5" \
"RESET_VECTOR_ADDR_0:0x0" \
"RESET_VECTOR_ADDR_1:0x8000"} 
# ############################


# OSCI
# ###########
create_and_configure_core -core_vlnv {Actel:SgCore:PF_OSC:1.0.102} -component_name {PF_OSC_0} -params {\
"RCOSC_2MHZ_CLK_DIV_EN:false"  \
"RCOSC_2MHZ_GL_EN:false"  \
"RCOSC_2MHZ_NGMUX_EN:false"  \
"RCOSC_160MHZ_CLK_DIV_EN:false"  \
"RCOSC_160MHZ_GL_EN:true"  \
"RCOSC_160MHZ_NGMUX_EN:false"   }
# #################


# CoreAXITOAHB
# ###############
create_and_configure_core -core_vlnv {Actel:DirectCore:COREAXITOAHBL:3.4.100} -component_name {COREAXITOAHBL_0} -params {\
"ASYNC_CLOCKS:false" \
"AXI_SEL_MM_S:1" \
"EXPOSE_WID:false" \
"ID_WIDTH:5" \
"NO_BURST_TRANS:false" \
"WRAP_SUPPORT:false"} 
# ###################


# CoreAXITOAHBL
# ###################
create_and_configure_core -core_vlnv {Actel:DirectCore:COREAXITOAHBL:3.4.100} -component_name {COREAXITOAHBL_1} -params {\
"ASYNC_CLOCKS:false" \
"AXI_SEL_MM_S:1" \
"EXPOSE_WID:false" \
"ID_WIDTH:5" \
"NO_BURST_TRANS:false" \
"WRAP_SUPPORT:false"} 
# ##################


# Add AND2_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_0}


# Add CoreAXItoAHBL_0
sd_instantiate_component -sd_name ${sd_name} -component_name {COREAXITOAHBL_0} -instance_name {COREAXITOAHBL_0} 


# Add CoreAXItoAHBL_1
sd_instantiate_component -sd_name ${sd_name} -component_name {COREAXITOAHBL_1} -instance_name {COREAXITOAHBL_1} 


# Add CCC_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CCC_0} -instance_name {CCC_0}


# Add CoreAPB3_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreAPB3_0} -instance_name {CoreAPB3_0}


# Add COREAHBTOAPB3_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {COREAHBTOAPB3_0} -instance_name {COREAHBTOAPB3_0}


# Add CoreAHBLite_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreAHBLite_0} -instance_name {CoreAHBLite_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreAHBLite_0:REMAP_M0} -value {GND}


# Add GPIO_IN_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {GPIO_IN_0} -instance_name {GPIO_IN_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {GPIO_IN_0:INT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {GPIO_IN_0:GPIO_OUT}


# Add CoreTimer_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreTimer_0} -instance_name {CoreTimer_0}


# Add CoreTimer_1 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreTimer_1} -instance_name {CoreTimer_1}


# Add CoreUARTapb_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreUARTapb_0} -instance_name {CoreUARTapb_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreUARTapb_0:TXRDY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreUARTapb_0:RXRDY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreUARTapb_0:PARITY_ERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreUARTapb_0:OVERFLOW}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreUARTapb_0:FRAMING_ERR}


# Add GPIO_OUT_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {GPIO_OUT_0} -instance_name {GPIO_OUT_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {GPIO_OUT_0:INT}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_OUT_0:GPIO_IN} -value {GND}


# Add CoreJTAGDebug_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreJTAGDebug_0} -instance_name {CoreJTAGDebug_0}


# Add PF_SRAM_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_SRAM_0} -instance_name {PF_SRAM_0}


# Add MIV_RV32IMA_L1_AXI_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MIV_RV32IMA_L1_AXI_0} -instance_name {MIV_RV32IMA_L1_AXI_0} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_RV32IMA_L1_AXI_0:IRQ} -pin_slices {[28:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MIV_RV32IMA_L1_AXI_0:IRQ[28:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_RV32IMA_L1_AXI_0:IRQ} -pin_slices {[29]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_RV32IMA_L1_AXI_0:IRQ} -pin_slices {[30]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MIV_RV32IMA_L1_AXI_0:DRV_TDO}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MIV_RV32IMA_L1_AXI_0:EXT_RESETN}


# Add PF_OSC_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_OSC_0} -instance_name {PF_OSC_0}


# Add reset_synchronizer_0 instance
import_files -hdl_source ./import/hdl/reset_synchronizer.v
build_design_hierarchy
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {reset_synchronizer} -hdl_file {hdl\reset_synchronizer.v} -instance_name {reset_synchronizer_0}


# ########################################################################################

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {TDO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TRSTB} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TDI} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TMS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TX} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USER_RST} -port_direction {IN}

sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_IN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_OUT} -port_direction {OUT} -port_range {[7:0]}


# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXITOAHBL_0:ACLK" "COREAXITOAHBL_1:ACLK" "COREAXITOAHBL_0:HCLK" "COREAXITOAHBL_1:HCLK" "reset_synchronizer_0:clock" "CCC_0:OUT0_FABCLK_0" "CoreAHBLite_0:HCLK" "GPIO_IN_0:PCLK" "CoreTimer_0:PCLK" "CoreTimer_1:PCLK" "CoreUARTapb_0:PCLK" "GPIO_OUT_0:PCLK" "COREAHBTOAPB3_0:HCLK" "MIV_RV32IMA_L1_AXI_0:CLK" "PF_SRAM_0:HCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"reset_synchronizer_0:reset" "AND2_0:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:A" "CCC_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:IRQ[29]" "CoreTimer_0:TIMINT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:IRQ[30]" "CoreTimer_1:TIMINT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:TCK" "CoreJTAGDebug_0:TGT_TCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:TDI" "CoreJTAGDebug_0:TGT_TDI_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:TMS" "CoreJTAGDebug_0:TGT_TMS_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:TRST" "CoreJTAGDebug_0:TGT_TRSTB_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_0:TGT_TDO_0" "MIV_RV32IMA_L1_AXI_0:TDO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_OSC_0:RCOSC_160MHZ_GL" "CCC_0:REF_CLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXITOAHBL_0:ARESETN" "COREAXITOAHBL_1:ARESETN" "COREAXITOAHBL_0:HRESETN" "COREAXITOAHBL_1:HRESETN" "reset_synchronizer_0:reset_sync" "CoreAHBLite_0:HRESETN" "GPIO_IN_0:PRESETN" "CoreTimer_0:PRESETn" "CoreTimer_1:PRESETn" "CoreUARTapb_0:PRESETN" "GPIO_OUT_0:PRESETN" "COREAHBTOAPB3_0:HRESETN" "MIV_RV32IMA_L1_AXI_0:RESETN" "PF_SRAM_0:HRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RX" "CoreUARTapb_0:RX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TCK" "CoreJTAGDebug_0:TCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TDI" "CoreJTAGDebug_0:TDI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TDO" "CoreJTAGDebug_0:TDO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TMS" "CoreJTAGDebug_0:TMS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TRSTB" "CoreJTAGDebug_0:TRSTB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TX" "CoreUARTapb_0:TX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:B" "USER_RST" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_IN" "GPIO_IN_0:GPIO_IN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_OUT_0:GPIO_OUT" "GPIO_OUT" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_0:APB_bif" "CoreAPB3_0:APBmslave1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_IN_0:APB_bif" "CoreAPB3_0:APBmslave2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreTimer_0:APBslave" "CoreAPB3_0:APBmslave3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreTimer_1:APBslave" "CoreAPB3_0:APBmslave4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_OUT_0:APB_bif" "CoreAPB3_0:APBmslave5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreAPB3_0:APB3mmaster" "COREAHBTOAPB3_0:APBmaster" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXITOAHBL_0:AHBMasterIF" "CoreAHBLite_0:AHBmmaster0"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXITOAHBL_1:AHBMasterIF" "CoreAHBLite_0:AHBmmaster1"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreAHBLite_0:AHBmslave7" "COREAHBTOAPB3_0:AHBslave"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreAHBLite_0:AHBmslave8" "PF_SRAM_0:AHBSlaveInterface"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:MEM_MST_AXI" "COREAXITOAHBL_1:AXI_MM_IF"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:MMIO_MST_AXI" "COREAXITOAHBL_0:AXI_MM_IF"} 

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign BaseDesign
generate_component -component_name ${sd_name} -recursive 1
# ######################################################################################################################################