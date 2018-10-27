`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2015 10:24:29 AM
// Design Name: 
// Module Name: uart_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_top(
  // Write side inputs
  input            clk_pin,      // Clock input (from pin)
  input            rst_pin,      // Active HIGH reset (from pin)
  input            btn_pin,      // Button to swap high and low bits
  output     [7:0] led_pins      // 8 LED outputs
);

wire rx_cross;

uart_led U0(
  // Write side inputs
  .clk_pin(clk_pin),      // Clock input (from pin)
  .rst_pin(rst_pin),      // Active HIGH reset (from pin)
  .btn_pin(btn_pin),      // Button to swap high and low bits
  .rxd_pin(rx_cross),      // RS232 RXD pin - directly from pin
  .led_pins(led_pins)      // 8 LED outputs
);

system_wrapper U1
   (
    .DDR_addr(),
    .DDR_ba(),
    .DDR_cas_n(),
    .DDR_ck_n(),
    .DDR_ck_p(),
    .DDR_cke(),
    .DDR_cs_n(),
    .DDR_dm(),
    .DDR_dq(),
    .DDR_dqs_n(),
    .DDR_dqs_p(),
    .DDR_odt(),
    .DDR_ras_n(),
    .DDR_reset_n(),
    .DDR_we_n(),
    .FIXED_IO_ddr_vrn(),
    .FIXED_IO_ddr_vrp(),
    .FIXED_IO_mio(),
    .FIXED_IO_ps_clk(),
    .FIXED_IO_ps_porb(),
    .FIXED_IO_ps_srstb(),
    .GPIO_O(rx_cross)
	);
endmodule
