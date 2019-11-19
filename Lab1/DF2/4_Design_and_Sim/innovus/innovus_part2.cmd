##################### variables (modificare solo questa parte)
# top entity
variable top_entity "IIR_filter"
# output file
variable power_report "Power_report_Innovus.txt"
# test-bench
variable test_bench "IIR_tb"
# path of the innovus folder
variable innovus_path "/home/isa22/Desktop/ISA/Lab1/4_Design_and_Sim/innovus"
# file vcd (potrebbe essere top_entity.vcd)
variable design_vcd "IIR_filter.vcd"
#################################################################


######## DO NOT TOUCH
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign ${innovus_path}/${top_entity}.enc.dat ${top_entity}
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
reset_parasitics
extractRC
rcOut -setload ${top_entity}.setload -rc_corner my_rc
rcOut -setres ${top_entity}.setres -rc_corner my_rc
rcOut -spf ${top_entity}.spf -rc_corner my_rc
rcOut -spef ${top_entity}.spef -rc_corner my_rc
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir ./
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 10.0
read_activity_file -reset
read_activity_file -format VCD -scope /${test_bench}/UUT -start {} -end {} -block {} ../vcd/${design_vcd}
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile .//${top_entity}.rpt
report_power -outfile ${power_report} -sort { total }
