connect -url tcp:127.0.0.1:3121
source C:/xup/fpga_flow/Test/lab4/lab4.sdk/wave_gen_top_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A4D171A"} -index 0
loadhw -hw C:/xup/fpga_flow/Test/lab4/lab4.sdk/wave_gen_top_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A4D171A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A4D171A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A4D171A"} -index 0
dow C:/xup/fpga_flow/Test/lab4/lab4.sdk/wave_gen_uart/Debug/wave_gen_uart.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A4D171A"} -index 0
con
