create_pblock pblock_RP_1
add_cells_to_pblock [get_pblocks pblock_RP_1] [get_cells -quiet [list design_1_i/RP_1]]
resize_pblock [get_pblocks pblock_RP_1] -add {SLICE_X29Y120:SLICE_X43Y149}
resize_pblock [get_pblocks pblock_RP_1] -add {CFGIO_SITE_X0Y0:CFGIO_SITE_X0Y0}
resize_pblock [get_pblocks pblock_RP_1] -add {DSP48E2_X3Y48:DSP48E2_X4Y59}
resize_pblock [get_pblocks pblock_RP_1] -add {RAMB18_X3Y48:RAMB18_X4Y59}
resize_pblock [get_pblocks pblock_RP_1] -add {RAMB36_X3Y24:RAMB36_X4Y29}
set_property SNAPPING_MODE ON [get_pblocks pblock_RP_1]
create_pblock pblock_RP_2
add_cells_to_pblock [get_pblocks pblock_RP_2] [get_cells -quiet [list design_1_i/RP_2]]
resize_pblock [get_pblocks pblock_RP_2] -add {SLICE_X15Y120:SLICE_X28Y149}
resize_pblock [get_pblocks pblock_RP_2] -add {DSP48E2_X1Y48:DSP48E2_X2Y59}
resize_pblock [get_pblocks pblock_RP_2] -add {RAMB18_X2Y48:RAMB18_X2Y59}
resize_pblock [get_pblocks pblock_RP_2] -add {RAMB36_X2Y24:RAMB36_X2Y29}
set_property SNAPPING_MODE ON [get_pblocks pblock_RP_2]
create_pblock pblock_RP_3
add_cells_to_pblock [get_pblocks pblock_RP_3] [get_cells -quiet [list design_1_i/RP_3]]
resize_pblock [get_pblocks pblock_RP_3] -add {SLICE_X29Y30:SLICE_X45Y59}
resize_pblock [get_pblocks pblock_RP_3] -add {DSP48E2_X3Y12:DSP48E2_X4Y23}
resize_pblock [get_pblocks pblock_RP_3] -add {RAMB18_X3Y12:RAMB18_X4Y23}
resize_pblock [get_pblocks pblock_RP_3] -add {RAMB36_X3Y6:RAMB36_X4Y11}
set_property SNAPPING_MODE ON [get_pblocks pblock_RP_3]




set_property IOSTANDARD LVCMOS33 [get_ports {GPO1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_txd]
set_property PACKAGE_PIN E5 [get_ports {GPO1[0]}]
set_property PACKAGE_PIN D6 [get_ports uart_rtl_txd]
set_property PACKAGE_PIN D5 [get_ports uart_rtl_rxd]


set_property BITSTREAM.CONFIG.USR_ACCESS 0x123456 [current_design]
set_property BITSTREAM.GENERAL.PERFRAMECRC YES [current_design]
set_property BITSTREAM.CONFIG.USERID 32'hFF4567FF [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
