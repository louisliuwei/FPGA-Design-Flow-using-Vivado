# pynq xdc
# LED [7:0]
# PMODB
############################
# On-board led             #
############################
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { led_pins[0] }];
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { led_pins[1] }];
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { led_pins[2] }];
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led_pins[3] }];
############################
# On-board PMODB         #
############################
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { led_pins[4] }];
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { led_pins[5] }];
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { led_pins[6] }];
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { led_pins[7] }]; 

# CLK source 125 MHz
set_property -dict { PACKAGE_PIN H16    IOSTANDARD LVCMOS33 } [get_ports { clk_pin }];

# SW0
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {lb_sel_pin}]

# Reset - BTN1
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { rst_pin }];

# dac_clr_n_pin - JB PMOD connector Pin 1, just a placeholder
# Use appropriate pin when SPI DAC is available
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {dac_clr_n_pin}]

# dac_cs_n_pin - - JB PMOD connector Pin 2, just a placeholder
# Use appropriate pin when SPI DAC is available
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {dac_cs_n_pin}]

# spi_clk_pin - - JB PMOD connector Pin 3, just a placeholdere
# Use appropriate pin when SPI DAC is available
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {spi_clk_pin}]

# spi_mosi_pin - - JB PMOD connector Pin 4, just a placeholder
# Use appropriate pin when SPI DAC is available
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {spi_mosi_pin}]

set_property IOB TRUE [all_fanin -only_cells -startpoints_only -flat [all_outputs]]


