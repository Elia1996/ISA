#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Nov 10 21:07:13 2019                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_design_netlisttype verilog
set init_design_settop 1
set init_top_cell IIR_filter_optimized
set init_verilog ../netlist/IIR_filter_optimized.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
set init_gnd_net VSS
set init_pwr_net VDD
set init_mmmc_file mmm_design.tcl
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5.0 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.984949683854 0.599392 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
gui_select -rect {-19.419 24.909 44.806 16.088}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
selectWire 1.3650 117.1600 122.7050 117.9600 1 VSS
deselectAll
selectWire 2.9650 2.9200 3.7650 116.3600 2 VDD
deselectAll
selectWire 2.9650 115.5600 121.1050 116.3600 1 VDD
deselectAll
selectWire 2.9650 2.9200 3.7650 116.3600 2 VDD
deselectAll
selectWire 2.9650 115.5600 121.1050 116.3600 1 VDD
deselectAll
selectWire 2.9650 2.9200 3.7650 116.3600 2 VDD
deselectAll
selectWire 2.9650 2.9200 3.7650 116.3600 2 VDD
get_visible_nets
deselectAll
selectWire 2.9650 2.9200 3.7650 116.3600 2 VDD
deselectAll
selectWire 2.9650 115.5600 121.1050 116.3600 1 VDD
deselectAll
selectWire 2.9650 2.9200 3.7650 116.3600 2 VDD
deselectAll
selectWire 2.9650 115.5600 121.1050 116.3600 1 VDD
deselectAll
selectWire 1.3650 117.1600 122.7050 117.9600 1 VSS
deselectAll
selectWire 2.9650 115.5600 121.1050 116.3600 1 VDD
deselectAll
selectWire 1.3650 117.1600 122.7050 117.9600 1 VSS
deselectAll
selectWire 2.9650 115.5600 121.1050 116.3600 1 VDD
deselectAll
selectWire 1.3650 117.1600 122.7050 117.9600 1 VSS
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
gui_select -append -rect {147.747 98.220 153.117 110.110}
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
deselectAll
selectWire 5.1300 56.7550 118.9400 56.9250 1 VSS
deselectAll
selectWire 5.1300 58.1550 118.9400 58.3250 1 VDD
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
setPlaceMode -fp false
placeDesign
deselectAll
selectWire 63.1150 64.9600 63.2550 70.5600 4 {filter_reg_s_4[3]}
deselectAll
selectWire 58.6350 65.9400 58.7750 77.9800 4 {filter_reg_m_6[9]}
deselectAll
selectWire 53.5950 61.8800 53.7350 65.9400 4 filter_s_5_16_
deselectAll
selectInst filter_mult_120_U585
deselectAll
selectWire 5.1300 63.7550 118.9400 63.9250 1 VDD
deselectAll
selectWire 5.1300 60.9550 118.9400 61.1250 1 VDD
deselectAll
selectWire 5.1300 59.5550 118.9400 59.7250 1 VSS
deselectAll
selectInst filter_mult_120_U109
deselectAll
selectWire 87.8400 79.7350 87.9100 81.5850 2 CLK
deselectAll
selectWire 88.8750 73.9200 89.0150 95.9000 4 {filter_m_1_tmp[14]}
gui_select -rect {68.710 -14.519 37.229 -7.609}
selectWire 5.1300 65.1550 118.9400 65.3250 1 VSS
deselectAll
selectWire 5.1300 62.3550 118.9400 62.5250 1 VSS
deselectAll
selectInst filter_mult_120_U590
deselectAll
selectWire 109.0350 59.2200 109.1750 61.4600 4 filter_mult_120_n684
deselectAll
selectInst filter_mult_120_U747
deselectAll
selectWire 108.3600 58.9750 110.9000 59.0450 3 filter_mult_120_n670
deselectAll
setLayerPreference allM0 -isVisible 0
setLayerPreference allM0 -isVisible 1
setLayerPreference allM0 -isVisible 0
setLayerPreference allM0 -isVisible 1
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
getFillerMode -quiet
addFiller -cell FILLCELL_X1 FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 -prefix FILLER
selectInst FILLER_3181
deselectAll
selectInst FILLER_3084
deselectAll
selectInst FILLER_3181
deselectAll
selectInst filter_mult_123_U68
deselectAll
selectInst filter_mult_123_U68
deselectAll
selectInst FILLER_3180
deselectAll
selectInst filter_Reg_x_delay_2_data_out_reg_2_
deselectAll
selectInst filter_Reg_x_delay_2_data_out_reg_2_
deselectAll
selectInst FILLER_2802
deselectAll
selectInst filter_Reg_x_delay_2_data_out_reg_2_
deselectAll
selectWire 37.6800 43.0150 77.7800 43.0850 3 filter_s_3_3_
deselectAll
selectWire 67.5950 46.2000 67.7350 49.0000 4 {filter_x_delay_2[11]}
deselectAll
selectInst filter_Reg_x_delay_2_data_out_reg_2_
deselectAll
selectWire 36.7300 41.7550 76.1000 41.8250 3 filter_s_3_0_
deselectAll
selectInst filter_Reg_x_delay_2_data_out_reg_2_
deselectAll
selectWire 5.1300 42.7550 118.9400 42.9250 1 VSS
deselectAll
selectInst filter_Reg_x_delay_2_data_out_reg_2_
deselectAll
selectInst FILLER_4080
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setAnalysisMode -analysisType onChipVariation
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
saveDesign IIR_filter_optimized
saveDesign IIR_filter_optimized
saveDesign IIR_filter_optimized
get_visible_nets
saveDesign IIR_filter_optimized.enc
reset_parasitics
extractRC
rcOut -setload IIR_filter_optimized.setload -rc_corner my_rc
rcOut -setres IIR_filter_optimized.setres -rc_corner my_rc
rcOut -spf IIR_filter_optimized.spf -rc_corner my_rc
rcOut -spef IIR_filter_optimized.spef -rc_corner my_rc
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -slackReports -numPaths 50 -prefix IIR_filter_optimized_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix IIR_filter_optimized_postRoute -outDir timingReports
verifyConnectivity -type all -error 1000 -warning 50
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
reportGateCount -level 5 -limit 100 -outfile IIR_filter_optimized.gateCount
saveNetlist IIR_filter_optimized.v
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network IIR_filter_optimized.sdf
