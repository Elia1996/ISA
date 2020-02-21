#######################################################
#                                                     
#  Innovus Command Logging File                     
<<<<<<< HEAD:Lab2/4_Design_and_Sim/innovus/innovus.cmd
#  Created on Mon Nov 11 19:59:12 2019                
=======
#  Created on Mon Nov 18 18:47:46 2019                
>>>>>>> d3febbe8d07f15a3990db78292583672d73a935c:Lab1/4_Design_and_Sim/innovus/innovus.cmd
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
set init_design_netlisttype verilog
set init_design_settop 1
set init_top_cell IIR_filter_optimized
set init_verilog ../netlist/IIR_filter_optimized.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
set init_gnd_net VSS
set init_pwr_net VDD
set init_design_netlisttype verilog
set init_design_settop 1
set init_top_cell IIR_filter
set init_verilog ../netlist/IIR_filter.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
set init_gnd_net VSS
set init_pwr_net VDD
set init_mmmc_file mmm_design.tcl
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5 5 5 5
uiSetTool select
getIoFlowFlag
fit
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
<<<<<<< HEAD:Lab2/4_Design_and_Sim/innovus/innovus.cmd
addRing -nets {VSS VDD} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
=======
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
>>>>>>> d3febbe8d07f15a3990db78292583672d73a935c:Lab1/4_Design_and_Sim/innovus/innovus.cmd
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { VSS VDD } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
getFillerMode -quiet
<<<<<<< HEAD:Lab2/4_Design_and_Sim/innovus/innovus.cmd
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
selectInst filter_Reg_out_data_out_reg_1_
deselectAll
selectInst filter_Reg_out_data_out_reg_1_
deselectAll
selectInst FILLER_1494
panPage 1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 1 0
panPage -1 0
=======
addFiller -cell FILLCELL_X8 FILLCELL_X32 FILLCELL_X4 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
>>>>>>> d3febbe8d07f15a3990db78292583672d73a935c:Lab1/4_Design_and_Sim/innovus/innovus.cmd
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
<<<<<<< HEAD:Lab2/4_Design_and_Sim/innovus/innovus.cmd
saveDesign IIR_filter.enc
getDrawView
setDrawView fplan
win
dumpToGIF snapshot/ss_IIR_filter.png.fplan.gif
getDrawView
setDrawView amoeba
win
dumpToGIF snapshot/ss_IIR_filter.png.amoeba.gif
getDrawView
setDrawView place
win
dumpToGIF snapshot/ss_IIR_filter.png.place.gif
checkPlace checkplace.ss.rpt
getDrawView
setDrawView fplan
win
dumpToGIF snapshot/ss_IIR_filter.fplan.gif
getDrawView
setDrawView amoeba
win
dumpToGIF snapshot/ss_IIR_filter.amoeba.gif
getDrawView
setDrawView place
win
dumpToGIF snapshot/ss_IIR_filter.place.gif
checkPlace checkplace.ss.rpt
win
=======
saveDesign IIR_filter_optimized.enc
>>>>>>> d3febbe8d07f15a3990db78292583672d73a935c:Lab1/4_Design_and_Sim/innovus/innovus.cmd
reset_parasitics
extractRC
rcOut -setload IIR_filter_optimized.setload -rc_corner my_rc
rcOut -setres IIR_filter_optimized.setres -rc_corner my_rc
rcOut -spf IIR_filter_optimized.spf -rc_corner my_rc
rcOut -spef IIR_filter_optimized.spef -rc_corner my_rc
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix IIR_filter_optimized_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
<<<<<<< HEAD:Lab2/4_Design_and_Sim/innovus/innovus.cmd
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix IIR_filter_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix IIR_filter_postRoute -outDir timingReports
=======
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix IIR_filter_optimized_postRoute -outDir timingReports
>>>>>>> d3febbe8d07f15a3990db78292583672d73a935c:Lab1/4_Design_and_Sim/innovus/innovus.cmd
verifyConnectivity -type all -error 1000 -warning 50
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
reportGateCount -level 5 -limit 100 -outfile IIR_filter_optimized.gateCount
saveNetlist IIR_filter_optimized.v
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network ${top_entity}.sdf