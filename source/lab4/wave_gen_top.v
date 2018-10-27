`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2016 01:41:09 PM
// Design Name: 
// Module Name: wave_gen_top
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


module wave_gen_top(
    input clk_pin,
    input rst_pin,
    input lb_sel_pin,
    output spi_clk_pin,
    output spi_mosi_pin,
    output dac_cs_n_pin,
    output dac_clr_n_pin,
    output [7:0] led_pins
    );
    
wire  tx_emio_55;
wire  rx_emio_54; 
  
  
wave_gen U0_wave_gen(
    .clk_pin(clk_pin),
    .rst_pin(rst_pin),
    .rxd_pin(rx_emio_54),
    .txd_pin(tx_emio_55),
    .lb_sel_pin(lb_sel_pin),
    .spi_clk_pin(spi_clk_pin),   
    .spi_mosi_pin(spi_mosi_pin),  
    .dac_cs_n_pin(dac_cs_n_pin), 
    .dac_clr_n_pin(dac_clr_n_pin),
    .led_pins(led_pins)     
  );

system_wrapper U1_system_wrapper
   (.DDR_addr(),
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
    .gpio_0_tri_i_0(),
    .gpio_0_tri_i_1(tx_emio_55),
    .gpio_0_tri_io_0(),
    .gpio_0_tri_io_1(),
    .gpio_0_tri_o_0(rx_emio_54),
    .gpio_0_tri_o_1(),
    .gpio_0_tri_t_0(),
    .gpio_0_tri_t_1());
        
endmodule
