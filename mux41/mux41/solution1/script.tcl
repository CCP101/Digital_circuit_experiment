############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mux41
set_top mux41
add_files mux41.c
add_files -tb mux41_test.c -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xa7z010clg400-1i} -tool vivado
create_clock -period 10 -name default
#source "./mux41/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port -tool xsim
export_design -rtl verilog -format ip_catalog
