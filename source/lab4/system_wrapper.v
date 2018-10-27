//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
//Date        : Tue Jan 12 15:13:45 2016
//Host        : XSJNPURUSHO30 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    gpio_0_tri_i_0,
    gpio_0_tri_i_1,
    gpio_0_tri_io_0,
    gpio_0_tri_io_1,
    gpio_0_tri_o_0,
    gpio_0_tri_o_1,
    gpio_0_tri_t_0,
    gpio_0_tri_t_1);
    
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout [0:0]gpio_0_tri_i_0;
  inout [1:1]gpio_0_tri_i_1;
  inout [0:0]gpio_0_tri_io_0;
  inout [1:1]gpio_0_tri_io_1;
  inout [0:0]gpio_0_tri_o_0;
  inout [1:1]gpio_0_tri_o_1;
  inout [0:0]gpio_0_tri_t_0;
  inout [1:1]gpio_0_tri_t_1;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
//  wire FIXED_IO_ps_srstb;
//  wire [0:0]gpio_0_tri_i_0;
//  wire [1:1]gpio_0_tri_i_1;
//  wire [0:0]gpio_0_tri_io_0;
//  wire [1:1]gpio_0_tri_io_1;
//  wire [0:0]gpio_0_tri_o_0;
//  wire [1:1]gpio_0_tri_o_1;
//  wire [0:0]gpio_0_tri_t_0;
//  wire [1:1]gpio_0_tri_t_1;

//  IOBUF gpio_0_tri_iobuf_0
//       (.I(gpio_0_tri_o_0),
//        .IO(gpio_0_tri_io[0]),
//        .O(gpio_0_tri_i_0),
//        .T(gpio_0_tri_t_0));
//  IOBUF gpio_0_tri_iobuf_1
//       (.I(gpio_0_tri_o_1),
//        .IO(gpio_0_tri_io[1]),
//        .O(gpio_0_tri_i_1),
//        .T(gpio_0_tri_t_1));
  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO_0_tri_i({gpio_0_tri_i_1,gpio_0_tri_i_0}),
        .GPIO_0_tri_o({gpio_0_tri_o_1,gpio_0_tri_o_0}),
        .GPIO_0_tri_t({gpio_0_tri_t_1,gpio_0_tri_t_0}));
endmodule
