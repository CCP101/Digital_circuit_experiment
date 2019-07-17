
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_mux41_top/AESL_inst_mux41/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_mux41_top/AESL_inst_mux41/ap_return -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set select_group [add_wave_group select(wire) -into $cinputgroup]
add_wave /apatb_mux41_top/AESL_inst_mux41/select_r -into $select_group -radix hex
set sig_d_group [add_wave_group sig_d(wire) -into $cinputgroup]
add_wave /apatb_mux41_top/AESL_inst_mux41/sig_d -into $sig_d_group -radix hex
set sig_c_group [add_wave_group sig_c(wire) -into $cinputgroup]
add_wave /apatb_mux41_top/AESL_inst_mux41/sig_c -into $sig_c_group -radix hex
set sig_b_group [add_wave_group sig_b(wire) -into $cinputgroup]
add_wave /apatb_mux41_top/AESL_inst_mux41/sig_b -into $sig_b_group -radix hex
set sig_a_group [add_wave_group sig_a(wire) -into $cinputgroup]
add_wave /apatb_mux41_top/AESL_inst_mux41/sig_a -into $sig_a_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_mux41_top/AESL_inst_mux41/ap_start -into $blocksiggroup
add_wave /apatb_mux41_top/AESL_inst_mux41/ap_done -into $blocksiggroup
add_wave /apatb_mux41_top/AESL_inst_mux41/ap_idle -into $blocksiggroup
add_wave /apatb_mux41_top/AESL_inst_mux41/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
save_wave_config mux41.wcfg
run all
quit

