// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Dec 11 11:45:21 2020
// Host        : LAPTOP-210U3NQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_coproct_0_0_sim_netlist.v
// Design      : design_1_coproct_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0
   (S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    s00_axi_rdata,
    out_test,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]s00_axi_rdata;
  output [1:0]out_test;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [1:0]out_test;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0_S00_AXI coproct_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .out_test(out_test),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0_S00_AXI
   (S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    s00_axi_rdata,
    out_test,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]s00_axi_rdata;
  output [1:0]out_test;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [26:0]counter_0;
  wire [26:1]counter_00;
  wire counter_00_carry__0_i_1_n_0;
  wire counter_00_carry__0_i_2_n_0;
  wire counter_00_carry__0_i_3_n_0;
  wire counter_00_carry__0_i_4_n_0;
  wire counter_00_carry__0_n_0;
  wire counter_00_carry__0_n_1;
  wire counter_00_carry__0_n_2;
  wire counter_00_carry__0_n_3;
  wire counter_00_carry__1_i_1_n_0;
  wire counter_00_carry__1_i_2_n_0;
  wire counter_00_carry__1_i_3_n_0;
  wire counter_00_carry__1_i_4_n_0;
  wire counter_00_carry__1_n_0;
  wire counter_00_carry__1_n_1;
  wire counter_00_carry__1_n_2;
  wire counter_00_carry__1_n_3;
  wire counter_00_carry__2_i_1_n_0;
  wire counter_00_carry__2_i_2_n_0;
  wire counter_00_carry__2_i_3_n_0;
  wire counter_00_carry__2_i_4_n_0;
  wire counter_00_carry__2_n_0;
  wire counter_00_carry__2_n_1;
  wire counter_00_carry__2_n_2;
  wire counter_00_carry__2_n_3;
  wire counter_00_carry__3_i_1_n_0;
  wire counter_00_carry__3_i_2_n_0;
  wire counter_00_carry__3_i_3_n_0;
  wire counter_00_carry__3_i_4_n_0;
  wire counter_00_carry__3_n_0;
  wire counter_00_carry__3_n_1;
  wire counter_00_carry__3_n_2;
  wire counter_00_carry__3_n_3;
  wire counter_00_carry__4_i_1_n_0;
  wire counter_00_carry__4_i_2_n_0;
  wire counter_00_carry__4_i_3_n_0;
  wire counter_00_carry__4_i_4_n_0;
  wire counter_00_carry__4_n_0;
  wire counter_00_carry__4_n_1;
  wire counter_00_carry__4_n_2;
  wire counter_00_carry__4_n_3;
  wire counter_00_carry__5_i_1_n_0;
  wire counter_00_carry__5_i_2_n_0;
  wire counter_00_carry__5_n_3;
  wire counter_00_carry_i_1_n_0;
  wire counter_00_carry_i_2_n_0;
  wire counter_00_carry_i_3_n_0;
  wire counter_00_carry_i_4_n_0;
  wire counter_00_carry_n_0;
  wire counter_00_carry_n_1;
  wire counter_00_carry_n_2;
  wire counter_00_carry_n_3;
  wire \counter_0[0]_i_1_n_0 ;
  wire \counter_0[10]_i_1_n_0 ;
  wire \counter_0[11]_i_1_n_0 ;
  wire \counter_0[12]_i_1_n_0 ;
  wire \counter_0[13]_i_1_n_0 ;
  wire \counter_0[14]_i_1_n_0 ;
  wire \counter_0[15]_i_1_n_0 ;
  wire \counter_0[16]_i_1_n_0 ;
  wire \counter_0[17]_i_1_n_0 ;
  wire \counter_0[18]_i_1_n_0 ;
  wire \counter_0[19]_i_1_n_0 ;
  wire \counter_0[1]_i_1_n_0 ;
  wire \counter_0[20]_i_1_n_0 ;
  wire \counter_0[21]_i_1_n_0 ;
  wire \counter_0[22]_i_1_n_0 ;
  wire \counter_0[23]_i_1_n_0 ;
  wire \counter_0[24]_i_1_n_0 ;
  wire \counter_0[25]_i_1_n_0 ;
  wire \counter_0[26]_i_1_n_0 ;
  wire \counter_0[26]_i_2_n_0 ;
  wire \counter_0[2]_i_1_n_0 ;
  wire \counter_0[3]_i_1_n_0 ;
  wire \counter_0[4]_i_1_n_0 ;
  wire \counter_0[5]_i_1_n_0 ;
  wire \counter_0[6]_i_1_n_0 ;
  wire \counter_0[7]_i_1_n_0 ;
  wire \counter_0[8]_i_1_n_0 ;
  wire \counter_0[9]_i_1_n_0 ;
  wire [26:0]counter_1;
  wire [26:1]counter_10;
  wire counter_10_carry__0_i_1_n_0;
  wire counter_10_carry__0_i_2_n_0;
  wire counter_10_carry__0_i_3_n_0;
  wire counter_10_carry__0_i_4_n_0;
  wire counter_10_carry__0_n_0;
  wire counter_10_carry__0_n_1;
  wire counter_10_carry__0_n_2;
  wire counter_10_carry__0_n_3;
  wire counter_10_carry__1_i_1_n_0;
  wire counter_10_carry__1_i_2_n_0;
  wire counter_10_carry__1_i_3_n_0;
  wire counter_10_carry__1_i_4_n_0;
  wire counter_10_carry__1_n_0;
  wire counter_10_carry__1_n_1;
  wire counter_10_carry__1_n_2;
  wire counter_10_carry__1_n_3;
  wire counter_10_carry__2_i_1_n_0;
  wire counter_10_carry__2_i_2_n_0;
  wire counter_10_carry__2_i_3_n_0;
  wire counter_10_carry__2_i_4_n_0;
  wire counter_10_carry__2_n_0;
  wire counter_10_carry__2_n_1;
  wire counter_10_carry__2_n_2;
  wire counter_10_carry__2_n_3;
  wire counter_10_carry__3_i_1_n_0;
  wire counter_10_carry__3_i_2_n_0;
  wire counter_10_carry__3_i_3_n_0;
  wire counter_10_carry__3_i_4_n_0;
  wire counter_10_carry__3_n_0;
  wire counter_10_carry__3_n_1;
  wire counter_10_carry__3_n_2;
  wire counter_10_carry__3_n_3;
  wire counter_10_carry__4_i_1_n_0;
  wire counter_10_carry__4_i_2_n_0;
  wire counter_10_carry__4_i_3_n_0;
  wire counter_10_carry__4_i_4_n_0;
  wire counter_10_carry__4_n_0;
  wire counter_10_carry__4_n_1;
  wire counter_10_carry__4_n_2;
  wire counter_10_carry__4_n_3;
  wire counter_10_carry__5_i_1_n_0;
  wire counter_10_carry__5_i_2_n_0;
  wire counter_10_carry__5_n_3;
  wire counter_10_carry_i_1_n_0;
  wire counter_10_carry_i_2_n_0;
  wire counter_10_carry_i_3_n_0;
  wire counter_10_carry_i_4_n_0;
  wire counter_10_carry_n_0;
  wire counter_10_carry_n_1;
  wire counter_10_carry_n_2;
  wire counter_10_carry_n_3;
  wire \counter_1[0]_i_1_n_0 ;
  wire \counter_1[10]_i_1_n_0 ;
  wire \counter_1[11]_i_1_n_0 ;
  wire \counter_1[12]_i_1_n_0 ;
  wire \counter_1[13]_i_1_n_0 ;
  wire \counter_1[14]_i_1_n_0 ;
  wire \counter_1[15]_i_1_n_0 ;
  wire \counter_1[16]_i_1_n_0 ;
  wire \counter_1[17]_i_1_n_0 ;
  wire \counter_1[18]_i_1_n_0 ;
  wire \counter_1[19]_i_1_n_0 ;
  wire \counter_1[1]_i_1_n_0 ;
  wire \counter_1[20]_i_1_n_0 ;
  wire \counter_1[21]_i_1_n_0 ;
  wire \counter_1[22]_i_1_n_0 ;
  wire \counter_1[23]_i_1_n_0 ;
  wire \counter_1[24]_i_1_n_0 ;
  wire \counter_1[25]_i_1_n_0 ;
  wire \counter_1[26]_i_1_n_0 ;
  wire \counter_1[26]_i_2_n_0 ;
  wire \counter_1[2]_i_1_n_0 ;
  wire \counter_1[3]_i_1_n_0 ;
  wire \counter_1[4]_i_1_n_0 ;
  wire \counter_1[5]_i_1_n_0 ;
  wire \counter_1[6]_i_1_n_0 ;
  wire \counter_1[7]_i_1_n_0 ;
  wire \counter_1[8]_i_1_n_0 ;
  wire \counter_1[9]_i_1_n_0 ;
  wire \out_buf[0]_i_1_n_0 ;
  wire \out_buf[0]_i_2_n_0 ;
  wire \out_buf[0]_i_3_n_0 ;
  wire \out_buf[0]_i_4_n_0 ;
  wire \out_buf[0]_i_5_n_0 ;
  wire \out_buf[0]_i_6_n_0 ;
  wire \out_buf[0]_i_7_n_0 ;
  wire \out_buf[0]_i_8_n_0 ;
  wire \out_buf[1]_i_1_n_0 ;
  wire \out_buf[1]_i_2_n_0 ;
  wire \out_buf[1]_i_3_n_0 ;
  wire \out_buf[1]_i_4_n_0 ;
  wire \out_buf[1]_i_5_n_0 ;
  wire \out_buf[1]_i_6_n_0 ;
  wire \out_buf[1]_i_7_n_0 ;
  wire \out_buf[1]_i_8_n_0 ;
  wire [1:0]out_test;
  wire p_2_in;
  wire p_2_in0;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire [3:1]NLW_counter_00_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_counter_00_carry__5_O_UNCONNECTED;
  wire [3:1]NLW_counter_10_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_counter_10_carry__5_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_wvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_wvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_wvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[0]),
        .I4(slv_reg1[0]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[10]),
        .I4(slv_reg1[10]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[11]),
        .I4(slv_reg1[11]),
        .I5(\slv_reg0_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[12]),
        .I4(slv_reg1[12]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[13]),
        .I4(slv_reg1[13]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[14]),
        .I4(slv_reg1[14]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[15]),
        .I4(slv_reg1[15]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg3[16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[16]),
        .I4(slv_reg1[16]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[17]),
        .I4(slv_reg1[17]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg3[18]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[18]),
        .I4(slv_reg1[18]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[19]),
        .I4(slv_reg1[19]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[1]),
        .I4(slv_reg1[1]),
        .I5(p_2_in0),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg3[20]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[20]),
        .I4(slv_reg1[20]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg3[21]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[21]),
        .I4(slv_reg1[21]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg3[22]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[22]),
        .I4(slv_reg1[22]),
        .I5(\slv_reg0_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[23]),
        .I4(slv_reg1[23]),
        .I5(\slv_reg0_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[24]),
        .I4(slv_reg1[24]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[25]),
        .I4(slv_reg1[25]),
        .I5(\slv_reg0_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[26]),
        .I4(slv_reg1[26]),
        .I5(\slv_reg0_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[27]),
        .I4(slv_reg1[27]),
        .I5(\slv_reg0_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[28]),
        .I4(slv_reg1[28]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[29]),
        .I4(slv_reg1[29]),
        .I5(\slv_reg0_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[2]),
        .I4(slv_reg1[2]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[30]),
        .I4(slv_reg1[30]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg3[31]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[31]),
        .I4(slv_reg1[31]),
        .I5(p_2_in),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[3]),
        .I4(slv_reg1[3]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[4]),
        .I4(slv_reg1[4]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[5]),
        .I4(slv_reg1[5]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[6]),
        .I4(slv_reg1[6]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[7]),
        .I4(slv_reg1[7]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[8]),
        .I4(slv_reg1[8]),
        .I5(\slv_reg0_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[9]),
        .I4(slv_reg1[9]),
        .I5(\slv_reg0_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  CARRY4 counter_00_carry
       (.CI(1'b0),
        .CO({counter_00_carry_n_0,counter_00_carry_n_1,counter_00_carry_n_2,counter_00_carry_n_3}),
        .CYINIT(counter_0[0]),
        .DI(counter_0[4:1]),
        .O(counter_00[4:1]),
        .S({counter_00_carry_i_1_n_0,counter_00_carry_i_2_n_0,counter_00_carry_i_3_n_0,counter_00_carry_i_4_n_0}));
  CARRY4 counter_00_carry__0
       (.CI(counter_00_carry_n_0),
        .CO({counter_00_carry__0_n_0,counter_00_carry__0_n_1,counter_00_carry__0_n_2,counter_00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_0[8:5]),
        .O(counter_00[8:5]),
        .S({counter_00_carry__0_i_1_n_0,counter_00_carry__0_i_2_n_0,counter_00_carry__0_i_3_n_0,counter_00_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__0_i_1
       (.I0(counter_0[8]),
        .O(counter_00_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__0_i_2
       (.I0(counter_0[7]),
        .O(counter_00_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__0_i_3
       (.I0(counter_0[6]),
        .O(counter_00_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__0_i_4
       (.I0(counter_0[5]),
        .O(counter_00_carry__0_i_4_n_0));
  CARRY4 counter_00_carry__1
       (.CI(counter_00_carry__0_n_0),
        .CO({counter_00_carry__1_n_0,counter_00_carry__1_n_1,counter_00_carry__1_n_2,counter_00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(counter_0[12:9]),
        .O(counter_00[12:9]),
        .S({counter_00_carry__1_i_1_n_0,counter_00_carry__1_i_2_n_0,counter_00_carry__1_i_3_n_0,counter_00_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__1_i_1
       (.I0(counter_0[12]),
        .O(counter_00_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__1_i_2
       (.I0(counter_0[11]),
        .O(counter_00_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__1_i_3
       (.I0(counter_0[10]),
        .O(counter_00_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__1_i_4
       (.I0(counter_0[9]),
        .O(counter_00_carry__1_i_4_n_0));
  CARRY4 counter_00_carry__2
       (.CI(counter_00_carry__1_n_0),
        .CO({counter_00_carry__2_n_0,counter_00_carry__2_n_1,counter_00_carry__2_n_2,counter_00_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(counter_0[16:13]),
        .O(counter_00[16:13]),
        .S({counter_00_carry__2_i_1_n_0,counter_00_carry__2_i_2_n_0,counter_00_carry__2_i_3_n_0,counter_00_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__2_i_1
       (.I0(counter_0[16]),
        .O(counter_00_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__2_i_2
       (.I0(counter_0[15]),
        .O(counter_00_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__2_i_3
       (.I0(counter_0[14]),
        .O(counter_00_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__2_i_4
       (.I0(counter_0[13]),
        .O(counter_00_carry__2_i_4_n_0));
  CARRY4 counter_00_carry__3
       (.CI(counter_00_carry__2_n_0),
        .CO({counter_00_carry__3_n_0,counter_00_carry__3_n_1,counter_00_carry__3_n_2,counter_00_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(counter_0[20:17]),
        .O(counter_00[20:17]),
        .S({counter_00_carry__3_i_1_n_0,counter_00_carry__3_i_2_n_0,counter_00_carry__3_i_3_n_0,counter_00_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__3_i_1
       (.I0(counter_0[20]),
        .O(counter_00_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__3_i_2
       (.I0(counter_0[19]),
        .O(counter_00_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__3_i_3
       (.I0(counter_0[18]),
        .O(counter_00_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__3_i_4
       (.I0(counter_0[17]),
        .O(counter_00_carry__3_i_4_n_0));
  CARRY4 counter_00_carry__4
       (.CI(counter_00_carry__3_n_0),
        .CO({counter_00_carry__4_n_0,counter_00_carry__4_n_1,counter_00_carry__4_n_2,counter_00_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(counter_0[24:21]),
        .O(counter_00[24:21]),
        .S({counter_00_carry__4_i_1_n_0,counter_00_carry__4_i_2_n_0,counter_00_carry__4_i_3_n_0,counter_00_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__4_i_1
       (.I0(counter_0[24]),
        .O(counter_00_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__4_i_2
       (.I0(counter_0[23]),
        .O(counter_00_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__4_i_3
       (.I0(counter_0[22]),
        .O(counter_00_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__4_i_4
       (.I0(counter_0[21]),
        .O(counter_00_carry__4_i_4_n_0));
  CARRY4 counter_00_carry__5
       (.CI(counter_00_carry__4_n_0),
        .CO({NLW_counter_00_carry__5_CO_UNCONNECTED[3:1],counter_00_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,counter_0[25]}),
        .O({NLW_counter_00_carry__5_O_UNCONNECTED[3:2],counter_00[26:25]}),
        .S({1'b0,1'b0,counter_00_carry__5_i_1_n_0,counter_00_carry__5_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__5_i_1
       (.I0(counter_0[26]),
        .O(counter_00_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry__5_i_2
       (.I0(counter_0[25]),
        .O(counter_00_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry_i_1
       (.I0(counter_0[4]),
        .O(counter_00_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry_i_2
       (.I0(counter_0[3]),
        .O(counter_00_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry_i_3
       (.I0(counter_0[2]),
        .O(counter_00_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_00_carry_i_4
       (.I0(counter_0[1]),
        .O(counter_00_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \counter_0[0]_i_1 
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(p_2_in),
        .I2(counter_0[0]),
        .O(\counter_0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[10]_i_1 
       (.I0(\slv_reg0_reg_n_0_[14] ),
        .I1(p_2_in),
        .I2(counter_00[10]),
        .O(\counter_0[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[11]_i_1 
       (.I0(\slv_reg0_reg_n_0_[15] ),
        .I1(p_2_in),
        .I2(counter_00[11]),
        .O(\counter_0[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[12]_i_1 
       (.I0(\slv_reg0_reg_n_0_[16] ),
        .I1(p_2_in),
        .I2(counter_00[12]),
        .O(\counter_0[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[13]_i_1 
       (.I0(\slv_reg0_reg_n_0_[17] ),
        .I1(p_2_in),
        .I2(counter_00[13]),
        .O(\counter_0[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[14]_i_1 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(p_2_in),
        .I2(counter_00[14]),
        .O(\counter_0[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[15]_i_1 
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(p_2_in),
        .I2(counter_00[15]),
        .O(\counter_0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[16]_i_1 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(p_2_in),
        .I2(counter_00[16]),
        .O(\counter_0[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[17]_i_1 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(p_2_in),
        .I2(counter_00[17]),
        .O(\counter_0[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[18]_i_1 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(p_2_in),
        .I2(counter_00[18]),
        .O(\counter_0[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[19]_i_1 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(p_2_in),
        .I2(counter_00[19]),
        .O(\counter_0[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[1]_i_1 
       (.I0(\slv_reg0_reg_n_0_[5] ),
        .I1(p_2_in),
        .I2(counter_00[1]),
        .O(\counter_0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[20]_i_1 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(p_2_in),
        .I2(counter_00[20]),
        .O(\counter_0[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[21]_i_1 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(p_2_in),
        .I2(counter_00[21]),
        .O(\counter_0[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[22]_i_1 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(p_2_in),
        .I2(counter_00[22]),
        .O(\counter_0[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[23]_i_1 
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(p_2_in),
        .I2(counter_00[23]),
        .O(\counter_0[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[24]_i_1 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(p_2_in),
        .I2(counter_00[24]),
        .O(\counter_0[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[25]_i_1 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(p_2_in),
        .I2(counter_00[25]),
        .O(\counter_0[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    \counter_0[26]_i_1 
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(\out_buf[0]_i_2_n_0 ),
        .I3(\out_buf[0]_i_3_n_0 ),
        .I4(\out_buf[0]_i_4_n_0 ),
        .O(\counter_0[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[26]_i_2 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(p_2_in),
        .I2(counter_00[26]),
        .O(\counter_0[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[2]_i_1 
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(p_2_in),
        .I2(counter_00[2]),
        .O(\counter_0[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[3]_i_1 
       (.I0(\slv_reg0_reg_n_0_[7] ),
        .I1(p_2_in),
        .I2(counter_00[3]),
        .O(\counter_0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[4]_i_1 
       (.I0(\slv_reg0_reg_n_0_[8] ),
        .I1(p_2_in),
        .I2(counter_00[4]),
        .O(\counter_0[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[5]_i_1 
       (.I0(\slv_reg0_reg_n_0_[9] ),
        .I1(p_2_in),
        .I2(counter_00[5]),
        .O(\counter_0[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[6]_i_1 
       (.I0(\slv_reg0_reg_n_0_[10] ),
        .I1(p_2_in),
        .I2(counter_00[6]),
        .O(\counter_0[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[7]_i_1 
       (.I0(\slv_reg0_reg_n_0_[11] ),
        .I1(p_2_in),
        .I2(counter_00[7]),
        .O(\counter_0[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[8]_i_1 
       (.I0(\slv_reg0_reg_n_0_[12] ),
        .I1(p_2_in),
        .I2(counter_00[8]),
        .O(\counter_0[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_0[9]_i_1 
       (.I0(\slv_reg0_reg_n_0_[13] ),
        .I1(p_2_in),
        .I2(counter_00[9]),
        .O(\counter_0[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[0]_i_1_n_0 ),
        .Q(counter_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[10]_i_1_n_0 ),
        .Q(counter_0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[11]_i_1_n_0 ),
        .Q(counter_0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[12]_i_1_n_0 ),
        .Q(counter_0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[13]_i_1_n_0 ),
        .Q(counter_0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[14]_i_1_n_0 ),
        .Q(counter_0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[15]_i_1_n_0 ),
        .Q(counter_0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[16]_i_1_n_0 ),
        .Q(counter_0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[17]_i_1_n_0 ),
        .Q(counter_0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[18]_i_1_n_0 ),
        .Q(counter_0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[19]_i_1_n_0 ),
        .Q(counter_0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[1]_i_1_n_0 ),
        .Q(counter_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[20]_i_1_n_0 ),
        .Q(counter_0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[21]_i_1_n_0 ),
        .Q(counter_0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[22]_i_1_n_0 ),
        .Q(counter_0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[23]_i_1_n_0 ),
        .Q(counter_0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[24]_i_1_n_0 ),
        .Q(counter_0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[25]_i_1_n_0 ),
        .Q(counter_0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[26]_i_2_n_0 ),
        .Q(counter_0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[2]_i_1_n_0 ),
        .Q(counter_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[3]_i_1_n_0 ),
        .Q(counter_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[4]_i_1_n_0 ),
        .Q(counter_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[5]_i_1_n_0 ),
        .Q(counter_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[6]_i_1_n_0 ),
        .Q(counter_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[7]_i_1_n_0 ),
        .Q(counter_0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[8]_i_1_n_0 ),
        .Q(counter_0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\counter_0[26]_i_1_n_0 ),
        .D(\counter_0[9]_i_1_n_0 ),
        .Q(counter_0[9]),
        .R(1'b0));
  CARRY4 counter_10_carry
       (.CI(1'b0),
        .CO({counter_10_carry_n_0,counter_10_carry_n_1,counter_10_carry_n_2,counter_10_carry_n_3}),
        .CYINIT(counter_1[0]),
        .DI(counter_1[4:1]),
        .O(counter_10[4:1]),
        .S({counter_10_carry_i_1_n_0,counter_10_carry_i_2_n_0,counter_10_carry_i_3_n_0,counter_10_carry_i_4_n_0}));
  CARRY4 counter_10_carry__0
       (.CI(counter_10_carry_n_0),
        .CO({counter_10_carry__0_n_0,counter_10_carry__0_n_1,counter_10_carry__0_n_2,counter_10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_1[8:5]),
        .O(counter_10[8:5]),
        .S({counter_10_carry__0_i_1_n_0,counter_10_carry__0_i_2_n_0,counter_10_carry__0_i_3_n_0,counter_10_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__0_i_1
       (.I0(counter_1[8]),
        .O(counter_10_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__0_i_2
       (.I0(counter_1[7]),
        .O(counter_10_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__0_i_3
       (.I0(counter_1[6]),
        .O(counter_10_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__0_i_4
       (.I0(counter_1[5]),
        .O(counter_10_carry__0_i_4_n_0));
  CARRY4 counter_10_carry__1
       (.CI(counter_10_carry__0_n_0),
        .CO({counter_10_carry__1_n_0,counter_10_carry__1_n_1,counter_10_carry__1_n_2,counter_10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(counter_1[12:9]),
        .O(counter_10[12:9]),
        .S({counter_10_carry__1_i_1_n_0,counter_10_carry__1_i_2_n_0,counter_10_carry__1_i_3_n_0,counter_10_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__1_i_1
       (.I0(counter_1[12]),
        .O(counter_10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__1_i_2
       (.I0(counter_1[11]),
        .O(counter_10_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__1_i_3
       (.I0(counter_1[10]),
        .O(counter_10_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__1_i_4
       (.I0(counter_1[9]),
        .O(counter_10_carry__1_i_4_n_0));
  CARRY4 counter_10_carry__2
       (.CI(counter_10_carry__1_n_0),
        .CO({counter_10_carry__2_n_0,counter_10_carry__2_n_1,counter_10_carry__2_n_2,counter_10_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(counter_1[16:13]),
        .O(counter_10[16:13]),
        .S({counter_10_carry__2_i_1_n_0,counter_10_carry__2_i_2_n_0,counter_10_carry__2_i_3_n_0,counter_10_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__2_i_1
       (.I0(counter_1[16]),
        .O(counter_10_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__2_i_2
       (.I0(counter_1[15]),
        .O(counter_10_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__2_i_3
       (.I0(counter_1[14]),
        .O(counter_10_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__2_i_4
       (.I0(counter_1[13]),
        .O(counter_10_carry__2_i_4_n_0));
  CARRY4 counter_10_carry__3
       (.CI(counter_10_carry__2_n_0),
        .CO({counter_10_carry__3_n_0,counter_10_carry__3_n_1,counter_10_carry__3_n_2,counter_10_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(counter_1[20:17]),
        .O(counter_10[20:17]),
        .S({counter_10_carry__3_i_1_n_0,counter_10_carry__3_i_2_n_0,counter_10_carry__3_i_3_n_0,counter_10_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__3_i_1
       (.I0(counter_1[20]),
        .O(counter_10_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__3_i_2
       (.I0(counter_1[19]),
        .O(counter_10_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__3_i_3
       (.I0(counter_1[18]),
        .O(counter_10_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__3_i_4
       (.I0(counter_1[17]),
        .O(counter_10_carry__3_i_4_n_0));
  CARRY4 counter_10_carry__4
       (.CI(counter_10_carry__3_n_0),
        .CO({counter_10_carry__4_n_0,counter_10_carry__4_n_1,counter_10_carry__4_n_2,counter_10_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(counter_1[24:21]),
        .O(counter_10[24:21]),
        .S({counter_10_carry__4_i_1_n_0,counter_10_carry__4_i_2_n_0,counter_10_carry__4_i_3_n_0,counter_10_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__4_i_1
       (.I0(counter_1[24]),
        .O(counter_10_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__4_i_2
       (.I0(counter_1[23]),
        .O(counter_10_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__4_i_3
       (.I0(counter_1[22]),
        .O(counter_10_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__4_i_4
       (.I0(counter_1[21]),
        .O(counter_10_carry__4_i_4_n_0));
  CARRY4 counter_10_carry__5
       (.CI(counter_10_carry__4_n_0),
        .CO({NLW_counter_10_carry__5_CO_UNCONNECTED[3:1],counter_10_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,counter_1[25]}),
        .O({NLW_counter_10_carry__5_O_UNCONNECTED[3:2],counter_10[26:25]}),
        .S({1'b0,1'b0,counter_10_carry__5_i_1_n_0,counter_10_carry__5_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__5_i_1
       (.I0(counter_1[26]),
        .O(counter_10_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry__5_i_2
       (.I0(counter_1[25]),
        .O(counter_10_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry_i_1
       (.I0(counter_1[4]),
        .O(counter_10_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry_i_2
       (.I0(counter_1[3]),
        .O(counter_10_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry_i_3
       (.I0(counter_1[2]),
        .O(counter_10_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_10_carry_i_4
       (.I0(counter_1[1]),
        .O(counter_10_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h8B)) 
    \counter_1[0]_i_1 
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(p_2_in),
        .I2(counter_1[0]),
        .O(\counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[10]_i_1 
       (.I0(\slv_reg0_reg_n_0_[14] ),
        .I1(p_2_in),
        .I2(counter_10[10]),
        .O(\counter_1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[11]_i_1 
       (.I0(\slv_reg0_reg_n_0_[15] ),
        .I1(p_2_in),
        .I2(counter_10[11]),
        .O(\counter_1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[12]_i_1 
       (.I0(\slv_reg0_reg_n_0_[16] ),
        .I1(p_2_in),
        .I2(counter_10[12]),
        .O(\counter_1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[13]_i_1 
       (.I0(\slv_reg0_reg_n_0_[17] ),
        .I1(p_2_in),
        .I2(counter_10[13]),
        .O(\counter_1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[14]_i_1 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(p_2_in),
        .I2(counter_10[14]),
        .O(\counter_1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[15]_i_1 
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(p_2_in),
        .I2(counter_10[15]),
        .O(\counter_1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[16]_i_1 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(p_2_in),
        .I2(counter_10[16]),
        .O(\counter_1[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[17]_i_1 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(p_2_in),
        .I2(counter_10[17]),
        .O(\counter_1[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[18]_i_1 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(p_2_in),
        .I2(counter_10[18]),
        .O(\counter_1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[19]_i_1 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(p_2_in),
        .I2(counter_10[19]),
        .O(\counter_1[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[1]_i_1 
       (.I0(\slv_reg0_reg_n_0_[5] ),
        .I1(p_2_in),
        .I2(counter_10[1]),
        .O(\counter_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[20]_i_1 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(p_2_in),
        .I2(counter_10[20]),
        .O(\counter_1[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[21]_i_1 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(p_2_in),
        .I2(counter_10[21]),
        .O(\counter_1[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[22]_i_1 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(p_2_in),
        .I2(counter_10[22]),
        .O(\counter_1[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[23]_i_1 
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(p_2_in),
        .I2(counter_10[23]),
        .O(\counter_1[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[24]_i_1 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(p_2_in),
        .I2(counter_10[24]),
        .O(\counter_1[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[25]_i_1 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(p_2_in),
        .I2(counter_10[25]),
        .O(\counter_1[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    \counter_1[26]_i_1 
       (.I0(p_2_in0),
        .I1(p_2_in),
        .I2(\out_buf[1]_i_2_n_0 ),
        .I3(\out_buf[1]_i_3_n_0 ),
        .I4(\out_buf[1]_i_4_n_0 ),
        .O(\counter_1[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[26]_i_2 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(p_2_in),
        .I2(counter_10[26]),
        .O(\counter_1[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[2]_i_1 
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(p_2_in),
        .I2(counter_10[2]),
        .O(\counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[3]_i_1 
       (.I0(\slv_reg0_reg_n_0_[7] ),
        .I1(p_2_in),
        .I2(counter_10[3]),
        .O(\counter_1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[4]_i_1 
       (.I0(\slv_reg0_reg_n_0_[8] ),
        .I1(p_2_in),
        .I2(counter_10[4]),
        .O(\counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[5]_i_1 
       (.I0(\slv_reg0_reg_n_0_[9] ),
        .I1(p_2_in),
        .I2(counter_10[5]),
        .O(\counter_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[6]_i_1 
       (.I0(\slv_reg0_reg_n_0_[10] ),
        .I1(p_2_in),
        .I2(counter_10[6]),
        .O(\counter_1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[7]_i_1 
       (.I0(\slv_reg0_reg_n_0_[11] ),
        .I1(p_2_in),
        .I2(counter_10[7]),
        .O(\counter_1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[8]_i_1 
       (.I0(\slv_reg0_reg_n_0_[12] ),
        .I1(p_2_in),
        .I2(counter_10[8]),
        .O(\counter_1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_1[9]_i_1 
       (.I0(\slv_reg0_reg_n_0_[13] ),
        .I1(p_2_in),
        .I2(counter_10[9]),
        .O(\counter_1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[0]_i_1_n_0 ),
        .Q(counter_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[10]_i_1_n_0 ),
        .Q(counter_1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[11]_i_1_n_0 ),
        .Q(counter_1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[12]_i_1_n_0 ),
        .Q(counter_1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[13]_i_1_n_0 ),
        .Q(counter_1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[14]_i_1_n_0 ),
        .Q(counter_1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[15]_i_1_n_0 ),
        .Q(counter_1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[16]_i_1_n_0 ),
        .Q(counter_1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[17]_i_1_n_0 ),
        .Q(counter_1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[18]_i_1_n_0 ),
        .Q(counter_1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[19]_i_1_n_0 ),
        .Q(counter_1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[1]_i_1_n_0 ),
        .Q(counter_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[20]_i_1_n_0 ),
        .Q(counter_1[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[21]_i_1_n_0 ),
        .Q(counter_1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[22]_i_1_n_0 ),
        .Q(counter_1[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[23]_i_1_n_0 ),
        .Q(counter_1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[24]_i_1_n_0 ),
        .Q(counter_1[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[25]_i_1_n_0 ),
        .Q(counter_1[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[26]_i_2_n_0 ),
        .Q(counter_1[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[2]_i_1_n_0 ),
        .Q(counter_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[3]_i_1_n_0 ),
        .Q(counter_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[4]_i_1_n_0 ),
        .Q(counter_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[5]_i_1_n_0 ),
        .Q(counter_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[6]_i_1_n_0 ),
        .Q(counter_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[7]_i_1_n_0 ),
        .Q(counter_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[8]_i_1_n_0 ),
        .Q(counter_1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\counter_1[26]_i_1_n_0 ),
        .D(\counter_1[9]_i_1_n_0 ),
        .Q(counter_1[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE5554)) 
    \out_buf[0]_i_1 
       (.I0(p_2_in),
        .I1(\out_buf[0]_i_2_n_0 ),
        .I2(\out_buf[0]_i_3_n_0 ),
        .I3(\out_buf[0]_i_4_n_0 ),
        .I4(out_test[0]),
        .O(\out_buf[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_buf[0]_i_2 
       (.I0(counter_0[15]),
        .I1(counter_0[16]),
        .I2(counter_0[13]),
        .I3(counter_0[14]),
        .I4(\out_buf[0]_i_5_n_0 ),
        .O(\out_buf[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_buf[0]_i_3 
       (.I0(counter_0[7]),
        .I1(counter_0[8]),
        .I2(counter_0[5]),
        .I3(counter_0[6]),
        .I4(\out_buf[0]_i_6_n_0 ),
        .O(\out_buf[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_buf[0]_i_4 
       (.I0(counter_0[26]),
        .I1(counter_0[25]),
        .I2(counter_0[0]),
        .I3(\out_buf[0]_i_7_n_0 ),
        .I4(\out_buf[0]_i_8_n_0 ),
        .O(\out_buf[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_buf[0]_i_5 
       (.I0(counter_0[18]),
        .I1(counter_0[17]),
        .I2(counter_0[20]),
        .I3(counter_0[19]),
        .O(\out_buf[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_buf[0]_i_6 
       (.I0(counter_0[10]),
        .I1(counter_0[9]),
        .I2(counter_0[12]),
        .I3(counter_0[11]),
        .O(\out_buf[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_buf[0]_i_7 
       (.I0(counter_0[22]),
        .I1(counter_0[21]),
        .I2(counter_0[24]),
        .I3(counter_0[23]),
        .O(\out_buf[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_buf[0]_i_8 
       (.I0(counter_0[2]),
        .I1(counter_0[1]),
        .I2(counter_0[4]),
        .I3(counter_0[3]),
        .O(\out_buf[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE5554)) 
    \out_buf[1]_i_1 
       (.I0(p_2_in),
        .I1(\out_buf[1]_i_2_n_0 ),
        .I2(\out_buf[1]_i_3_n_0 ),
        .I3(\out_buf[1]_i_4_n_0 ),
        .I4(out_test[1]),
        .O(\out_buf[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_buf[1]_i_2 
       (.I0(counter_1[15]),
        .I1(counter_1[16]),
        .I2(counter_1[13]),
        .I3(counter_1[14]),
        .I4(\out_buf[1]_i_5_n_0 ),
        .O(\out_buf[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_buf[1]_i_3 
       (.I0(counter_1[7]),
        .I1(counter_1[8]),
        .I2(counter_1[5]),
        .I3(counter_1[6]),
        .I4(\out_buf[1]_i_6_n_0 ),
        .O(\out_buf[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_buf[1]_i_4 
       (.I0(counter_1[26]),
        .I1(counter_1[25]),
        .I2(counter_1[0]),
        .I3(\out_buf[1]_i_7_n_0 ),
        .I4(\out_buf[1]_i_8_n_0 ),
        .O(\out_buf[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_buf[1]_i_5 
       (.I0(counter_1[18]),
        .I1(counter_1[17]),
        .I2(counter_1[20]),
        .I3(counter_1[19]),
        .O(\out_buf[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_buf[1]_i_6 
       (.I0(counter_1[10]),
        .I1(counter_1[9]),
        .I2(counter_1[12]),
        .I3(counter_1[11]),
        .O(\out_buf[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_buf[1]_i_7 
       (.I0(counter_1[22]),
        .I1(counter_1[21]),
        .I2(counter_1[24]),
        .I3(counter_1[23]),
        .O(\out_buf[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_buf[1]_i_8 
       (.I0(counter_1[2]),
        .I1(counter_1[1]),
        .I2(counter_1[4]),
        .I3(counter_1[3]),
        .O(\out_buf[1]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_buf_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\out_buf[0]_i_1_n_0 ),
        .Q(out_test[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_buf_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\out_buf[1]_i_1_n_0 ),
        .Q(out_test[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(p_2_in0),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(p_2_in),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(s00_axi_rvalid),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_coproct_0_0,coproct_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "coproct_v1_0,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (out_test,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [3:0]out_test;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [1:0]\^out_test ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign out_test[3] = \<const0> ;
  assign out_test[2] = \<const0> ;
  assign out_test[1:0] = \^out_test [1:0];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .out_test(\^out_test ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
