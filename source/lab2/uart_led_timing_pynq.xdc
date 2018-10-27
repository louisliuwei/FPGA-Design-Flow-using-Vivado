##pynq Timing

# define clock and period
create_clock -period 8.000 -name clk_pin -waveform {0.000 4.000} [get_ports clk_pin]

# Create a virtual clock for IO constraints
create_clock -period 12.000 -name virtual_clock

#input delay
set_input_delay -clock virtual_clock -max 0.000 [get_ports rst_pin]
set_input_delay -clock virtual_clock -min -0.500 [get_ports rst_pin]

set_input_delay -clock virtual_clock -max 0.000 [get_ports btn_pin]
set_input_delay -clock virtual_clock -min -0.500 [get_ports btn_pin]

#output delay
set_output_delay -clock virtual_clock 0.000 [get_ports {led_pins[*]}]

