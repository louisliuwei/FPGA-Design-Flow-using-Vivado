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

# BTN0
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {btn_pin}]

# Reset - BTN1
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { rst_pin }];


