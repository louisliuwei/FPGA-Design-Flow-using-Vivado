# pynq xdc
# define clock and period
create_clock -period 8.000 -name clk_pin -waveform {0.000 4.000} [get_ports clk_pin]


# Global timing constraints
set_input_delay -clock clk_pin 0.000 [get_ports {lb_sel_pin rst_pin }]
set_input_delay -clock clk_pin -min -0.500 [get_ports {lb_sel_pin rst_pin }]
set_output_delay -clock clk_pin 0.000 [all_outputs]

# Path specific timing constraints
set_output_delay -clock clk_pin -clock_fall -add_delay 0.000 [get_ports spi_clk_pin]
set_false_path -rise_from [get_clocks -of [get_nets clk_tx]] -through [get_ports spi_clk_pin] -fall_to [get_clocks clk_pin]
set_false_path -fall_from [get_clocks -of [get_nets clk_tx]] -through [get_ports spi_clk_pin] -rise_to [get_clocks clk_pin]

set_multicycle_path -from [get_cells {cmd_parse_i0/send_resp_data_reg[*]}] -to [get_cells {resp_gen_i0/to_bcd_i0/bcd_out_reg[*]}] 2
set_multicycle_path -from [get_cells {cmd_parse_i0/send_resp_data_reg[*]}] -to [get_cells {resp_gen_i0/to_bcd_i0/bcd_out_reg[*]}] -hold 1

set_multicycle_path -from [get_cells "uart_rx_i0/uart_rx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -to [get_cells "uart_rx_i0/uart_rx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] 108
set_multicycle_path -from [get_cells "uart_rx_i0/uart_rx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -to [get_cells "uart_rx_i0/uart_rx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -hold 107

set_multicycle_path -from [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -to [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] 108
set_multicycle_path -from [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -to [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -hold 107

create_generated_clock -name clk_samp -source [get_pins {clk_gen_i0/clk_core_i0/clk_out2}] -divide_by 32 [get_pins {clk_gen_i0/BUFHCE_clk_samp_i0/O}]

set_max_delay -from clkx_nsamp_i0/meta_harden_bus_new_i0/signal_meta_reg            -to clkx_nsamp_i0/meta_harden_bus_new_i0/signal_dst_reg 2
set_max_delay -from clkx_pre_i0/meta_harden_bus_new_i0/signal_meta_reg              -to clkx_pre_i0/meta_harden_bus_new_i0/signal_dst_reg 2
set_max_delay -from clkx_spd_i0/meta_harden_bus_new_i0/signal_meta_reg              -to clkx_spd_i0/meta_harden_bus_new_i0/signal_dst_reg 2
set_max_delay -from lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/signal_meta_reg -to lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/signal_dst_reg 2
set_max_delay -from samp_gen_i0/meta_harden_samp_gen_go_i0/signal_meta_reg          -to samp_gen_i0/meta_harden_samp_gen_go_i0/signal_dst_reg 2
set_max_delay -from uart_rx_i0/meta_harden_rxd_i0/signal_meta_reg                   -to uart_rx_i0/meta_harden_rxd_i0/signal_dst_reg 2

set_max_delay -from rst_gen_i0/reset_bridge_clk_rx_i0/rst_meta_reg                  -to rst_gen_i0/reset_bridge_clk_rx_i0/rst_dst_reg 2
set_max_delay -from rst_gen_i0/reset_bridge_clk_tx_i0/rst_meta_reg                  -to rst_gen_i0/reset_bridge_clk_tx_i0/rst_dst_reg 2
set_max_delay -from rst_gen_i0/reset_bridge_clk_samp_i0/rst_meta_reg                -to rst_gen_i0/reset_bridge_clk_samp_i0/rst_dst_reg 2

set_false_path -from [get_ports rst_pin]
set_false_path -from [get_pins U0_wave_gen/dac_spi_i0/out_ddr_flop_spi_clk_i0/ODDR_inst/C] -to [get_ports spi_clk_pin]
