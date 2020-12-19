-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Wed Dec 16 19:12:35 2020
-- Host        : LAPTOP-210U3NQR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_coproct_0_1_sim_netlist.vhdl
-- Design      : design_1_coproct_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0_S00_AXI is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    out_test : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0_S00_AXI is
  signal \FSM_onehot_sl_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sl_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sl_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \__1/i__n_0\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__0_n_4\ : STD_LOGIC;
  signal \counter0_carry__0_n_5\ : STD_LOGIC;
  signal \counter0_carry__0_n_6\ : STD_LOGIC;
  signal \counter0_carry__0_n_7\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_4\ : STD_LOGIC;
  signal \counter0_carry__1_n_5\ : STD_LOGIC;
  signal \counter0_carry__1_n_6\ : STD_LOGIC;
  signal \counter0_carry__1_n_7\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_4\ : STD_LOGIC;
  signal \counter0_carry__2_n_5\ : STD_LOGIC;
  signal \counter0_carry__2_n_6\ : STD_LOGIC;
  signal \counter0_carry__2_n_7\ : STD_LOGIC;
  signal \counter0_carry__3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_1\ : STD_LOGIC;
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_n_4\ : STD_LOGIC;
  signal \counter0_carry__3_n_5\ : STD_LOGIC;
  signal \counter0_carry__3_n_6\ : STD_LOGIC;
  signal \counter0_carry__3_n_7\ : STD_LOGIC;
  signal \counter0_carry__4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_1\ : STD_LOGIC;
  signal \counter0_carry__4_n_2\ : STD_LOGIC;
  signal \counter0_carry__4_n_3\ : STD_LOGIC;
  signal \counter0_carry__4_n_4\ : STD_LOGIC;
  signal \counter0_carry__4_n_5\ : STD_LOGIC;
  signal \counter0_carry__4_n_6\ : STD_LOGIC;
  signal \counter0_carry__4_n_7\ : STD_LOGIC;
  signal \counter0_carry__5_n_1\ : STD_LOGIC;
  signal \counter0_carry__5_n_2\ : STD_LOGIC;
  signal \counter0_carry__5_n_3\ : STD_LOGIC;
  signal \counter0_carry__5_n_4\ : STD_LOGIC;
  signal \counter0_carry__5_n_5\ : STD_LOGIC;
  signal \counter0_carry__5_n_6\ : STD_LOGIC;
  signal \counter0_carry__5_n_7\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter0_carry_n_4 : STD_LOGIC;
  signal counter0_carry_n_5 : STD_LOGIC;
  signal counter0_carry_n_6 : STD_LOGIC;
  signal counter0_carry_n_7 : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[28]_i_1_n_0\ : STD_LOGIC;
  signal \i__i_10_n_0\ : STD_LOGIC;
  signal \i__i_11_n_0\ : STD_LOGIC;
  signal \i__i_12_n_0\ : STD_LOGIC;
  signal \i__i_13_n_0\ : STD_LOGIC;
  signal \i__i_14_n_0\ : STD_LOGIC;
  signal \i__i_15_n_0\ : STD_LOGIC;
  signal \i__i_16_n_0\ : STD_LOGIC;
  signal \i__i_17_n_0\ : STD_LOGIC;
  signal \i__i_1__0_n_0\ : STD_LOGIC;
  signal \i__i_1_n_0\ : STD_LOGIC;
  signal \i__i_2__0_n_0\ : STD_LOGIC;
  signal \i__i_2_n_0\ : STD_LOGIC;
  signal \i__i_3__0_n_0\ : STD_LOGIC;
  signal \i__i_3_n_0\ : STD_LOGIC;
  signal \i__i_4__0_n_0\ : STD_LOGIC;
  signal \i__i_4_n_0\ : STD_LOGIC;
  signal \i__i_5__0_n_0\ : STD_LOGIC;
  signal \i__i_5_n_0\ : STD_LOGIC;
  signal \i__i_6_n_0\ : STD_LOGIC;
  signal \i__i_7_n_0\ : STD_LOGIC;
  signal \i__i_8_n_0\ : STD_LOGIC;
  signal \i__i_9_n_0\ : STD_LOGIC;
  signal out_buf : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \out_buf0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \out_buf0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \out_buf0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \out_buf0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \out_buf0_carry__0_n_0\ : STD_LOGIC;
  signal \out_buf0_carry__0_n_1\ : STD_LOGIC;
  signal \out_buf0_carry__0_n_2\ : STD_LOGIC;
  signal \out_buf0_carry__0_n_3\ : STD_LOGIC;
  signal \out_buf0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \out_buf0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \out_buf0_carry__1_n_2\ : STD_LOGIC;
  signal \out_buf0_carry__1_n_3\ : STD_LOGIC;
  signal out_buf0_carry_i_1_n_0 : STD_LOGIC;
  signal out_buf0_carry_i_2_n_0 : STD_LOGIC;
  signal out_buf0_carry_i_3_n_0 : STD_LOGIC;
  signal out_buf0_carry_i_4_n_0 : STD_LOGIC;
  signal out_buf0_carry_n_0 : STD_LOGIC;
  signal out_buf0_carry_n_1 : STD_LOGIC;
  signal out_buf0_carry_n_2 : STD_LOGIC;
  signal out_buf0_carry_n_3 : STD_LOGIC;
  signal \out_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_buf[2]_i_1_n_0\ : STD_LOGIC;
  signal \out_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \^out_test\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sl_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sl_state : signal is "yes";
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg0_buf1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg0_buf1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_buf1_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[16]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[17]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[18]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[19]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[20]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[21]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[22]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[23]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[24]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[25]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[26]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[27]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[28]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[29]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[30]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[31]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf2_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal slv_reg0_buf4 : STD_LOGIC;
  signal slv_reg0_buf5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg0_buf51 : STD_LOGIC;
  signal \slv_reg0_buf51_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__0_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__0_n_1\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__0_n_2\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__0_n_3\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__1_n_2\ : STD_LOGIC;
  signal \slv_reg0_buf51_carry__1_n_3\ : STD_LOGIC;
  signal slv_reg0_buf51_carry_i_1_n_0 : STD_LOGIC;
  signal slv_reg0_buf51_carry_i_2_n_0 : STD_LOGIC;
  signal slv_reg0_buf51_carry_i_3_n_0 : STD_LOGIC;
  signal slv_reg0_buf51_carry_i_4_n_0 : STD_LOGIC;
  signal slv_reg0_buf51_carry_n_0 : STD_LOGIC;
  signal slv_reg0_buf51_carry_n_1 : STD_LOGIC;
  signal slv_reg0_buf51_carry_n_2 : STD_LOGIC;
  signal slv_reg0_buf51_carry_n_3 : STD_LOGIC;
  signal slv_reg0_buf5_0 : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \NLW_counter0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_out_buf0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_buf0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_buf0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_out_buf0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_slv_reg0_buf51_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_slv_reg0_buf51_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_slv_reg0_buf51_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_slv_reg0_buf51_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_sl_state_reg[0]\ : label is "IDLE:001,SETTING:010,START:100,FULL:011";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_sl_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sl_state_reg[1]\ : label is "IDLE:001,SETTING:010,START:100,FULL:011";
  attribute KEEP of \FSM_onehot_sl_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sl_state_reg[2]\ : label is "IDLE:001,SETTING:010,START:100,FULL:011";
  attribute KEEP of \FSM_onehot_sl_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i__i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i__i_13\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i__i_15\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i__i_17\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i__i_2__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i__i_3__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i__i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i__i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair5";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \slv_reg0_buf2_reg[0]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name : string;
  attribute srl_name of \slv_reg0_buf2_reg[0]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[0]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[10]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[10]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[10]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[11]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[11]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[11]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[12]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[12]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[12]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[13]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[13]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[13]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[14]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[14]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[14]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[15]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[15]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[15]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[16]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[16]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[16]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[17]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[17]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[17]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[18]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[18]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[18]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[19]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[19]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[19]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[1]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[1]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[1]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[20]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[20]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[20]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[21]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[21]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[21]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[22]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[22]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[22]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[23]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[23]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[23]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[24]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[24]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[24]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[25]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[25]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[25]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[26]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[26]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[26]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[27]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[27]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[27]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[28]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[28]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[28]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[29]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[29]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[29]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[2]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[2]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[2]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[30]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[30]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[30]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[31]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[31]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[31]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[3]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[3]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[3]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[4]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[4]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[4]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[5]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[5]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[5]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[6]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[6]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[6]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[7]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[7]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[7]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[8]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[8]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[8]_srl3 ";
  attribute srl_bus_name of \slv_reg0_buf2_reg[9]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg ";
  attribute srl_name of \slv_reg0_buf2_reg[9]_srl3\ : label is "\inst/coproct_v1_0_S00_AXI_inst/slv_reg0_buf2_reg[9]_srl3 ";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  out_test(3 downto 0) <= \^out_test\(3 downto 0);
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
\FSM_onehot_sl_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sl_state(2),
      I1 => \__1/i__n_0\,
      I2 => sl_state(0),
      O => \FSM_onehot_sl_state[0]_i_1_n_0\
    );
\FSM_onehot_sl_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sl_state(0),
      I1 => \__1/i__n_0\,
      I2 => sl_state(1),
      O => \FSM_onehot_sl_state[1]_i_1_n_0\
    );
\FSM_onehot_sl_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sl_state(1),
      I1 => \__1/i__n_0\,
      I2 => sl_state(2),
      O => \FSM_onehot_sl_state[2]_i_1_n_0\
    );
\FSM_onehot_sl_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_sl_state[0]_i_1_n_0\,
      Q => sl_state(0),
      R => '0'
    );
\FSM_onehot_sl_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_sl_state[1]_i_1_n_0\,
      Q => sl_state(1),
      R => '0'
    );
\FSM_onehot_sl_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_sl_state[2]_i_1_n_0\,
      Q => sl_state(2),
      R => '0'
    );
\__1/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8888888F8"
    )
        port map (
      I0 => sl_state(0),
      I1 => \i__i_1__0_n_0\,
      I2 => sl_state(2),
      I3 => \i__i_2_n_0\,
      I4 => \i__i_3_n_0\,
      I5 => sl_state(1),
      O => \__1/i__n_0\
    );
\__2/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => \i__i_1__0_n_0\,
      I1 => sl_state(0),
      I2 => \i__i_1_n_0\,
      I3 => slv_reg0_buf51,
      I4 => sl_state(1),
      O => slv_reg0_buf5_0
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_wvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_wvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(0),
      I4 => slv_reg1(0),
      I5 => slv_reg0(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(10),
      I4 => slv_reg1(10),
      I5 => slv_reg0(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(11),
      I4 => slv_reg1(11),
      I5 => slv_reg0(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(12),
      I4 => slv_reg1(12),
      I5 => slv_reg0(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(13),
      I4 => slv_reg1(13),
      I5 => slv_reg0(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(14),
      I4 => slv_reg1(14),
      I5 => slv_reg0(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(15),
      I4 => slv_reg1(15),
      I5 => slv_reg0(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(16),
      I4 => slv_reg1(16),
      I5 => slv_reg0(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(17),
      I4 => slv_reg1(17),
      I5 => slv_reg0(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(18),
      I4 => slv_reg1(18),
      I5 => slv_reg0(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(19),
      I4 => slv_reg1(19),
      I5 => slv_reg0(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(1),
      I4 => slv_reg1(1),
      I5 => slv_reg0(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(20),
      I4 => slv_reg1(20),
      I5 => slv_reg0(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(21),
      I4 => slv_reg1(21),
      I5 => slv_reg0(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(22),
      I4 => slv_reg1(22),
      I5 => slv_reg0(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(23),
      I4 => slv_reg1(23),
      I5 => slv_reg0(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(24),
      I4 => slv_reg1(24),
      I5 => slv_reg0(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(25),
      I4 => slv_reg1(25),
      I5 => slv_reg0(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(26),
      I4 => slv_reg1(26),
      I5 => slv_reg0(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(27),
      I4 => slv_reg1(27),
      I5 => slv_reg0(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(28),
      I4 => slv_reg1(28),
      I5 => slv_reg0(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(29),
      I4 => slv_reg1(29),
      I5 => slv_reg0(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(2),
      I4 => slv_reg1(2),
      I5 => slv_reg0(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(30),
      I4 => slv_reg1(30),
      I5 => slv_reg0(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(31),
      I4 => slv_reg1(31),
      I5 => slv_reg0(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(3),
      I4 => slv_reg1(3),
      I5 => slv_reg0(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(4),
      I4 => slv_reg1(4),
      I5 => slv_reg0(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(5),
      I4 => slv_reg1(5),
      I5 => slv_reg0(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(6),
      I4 => slv_reg1(6),
      I5 => slv_reg0(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(7),
      I4 => slv_reg1(7),
      I5 => slv_reg0(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(8),
      I4 => slv_reg1(8),
      I5 => slv_reg0(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(9),
      I4 => slv_reg1(9),
      I5 => slv_reg0(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3) => counter0_carry_n_4,
      O(2) => counter0_carry_n_5,
      O(1) => counter0_carry_n_6,
      O(0) => counter0_carry_n_7,
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__0_n_4\,
      O(2) => \counter0_carry__0_n_5\,
      O(1) => \counter0_carry__0_n_6\,
      O(0) => \counter0_carry__0_n_7\,
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__1_n_4\,
      O(2) => \counter0_carry__1_n_5\,
      O(1) => \counter0_carry__1_n_6\,
      O(0) => \counter0_carry__1_n_7\,
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__2_n_4\,
      O(2) => \counter0_carry__2_n_5\,
      O(1) => \counter0_carry__2_n_6\,
      O(0) => \counter0_carry__2_n_7\,
      S(3 downto 0) => counter(16 downto 13)
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3) => \counter0_carry__3_n_0\,
      CO(2) => \counter0_carry__3_n_1\,
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__3_n_4\,
      O(2) => \counter0_carry__3_n_5\,
      O(1) => \counter0_carry__3_n_6\,
      O(0) => \counter0_carry__3_n_7\,
      S(3 downto 0) => counter(20 downto 17)
    );
\counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__3_n_0\,
      CO(3) => \counter0_carry__4_n_0\,
      CO(2) => \counter0_carry__4_n_1\,
      CO(1) => \counter0_carry__4_n_2\,
      CO(0) => \counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__4_n_4\,
      O(2) => \counter0_carry__4_n_5\,
      O(1) => \counter0_carry__4_n_6\,
      O(0) => \counter0_carry__4_n_7\,
      S(3 downto 0) => counter(24 downto 21)
    );
\counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__4_n_0\,
      CO(3) => \NLW_counter0_carry__5_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__5_n_1\,
      CO(1) => \counter0_carry__5_n_2\,
      CO(0) => \counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__5_n_4\,
      O(2) => \counter0_carry__5_n_5\,
      O(1) => \counter0_carry__5_n_6\,
      O(0) => \counter0_carry__5_n_7\,
      S(3 downto 0) => counter(28 downto 25)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sl_state(0),
      I1 => sl_state(2),
      O => \counter[28]_i_1_n_0\
    );
\counter[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sl_state(0),
      I1 => sl_state(2),
      O => out_buf(2)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__1_n_6\,
      Q => counter(10),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__1_n_5\,
      Q => counter(11),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__1_n_4\,
      Q => counter(12),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__2_n_7\,
      Q => counter(13),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__2_n_6\,
      Q => counter(14),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__2_n_5\,
      Q => counter(15),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__2_n_4\,
      Q => counter(16),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__3_n_7\,
      Q => counter(17),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__3_n_6\,
      Q => counter(18),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__3_n_5\,
      Q => counter(19),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => counter0_carry_n_7,
      Q => counter(1),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__3_n_4\,
      Q => counter(20),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__4_n_7\,
      Q => counter(21),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__4_n_6\,
      Q => counter(22),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__4_n_5\,
      Q => counter(23),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__4_n_4\,
      Q => counter(24),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__5_n_7\,
      Q => counter(25),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__5_n_6\,
      Q => counter(26),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__5_n_5\,
      Q => counter(27),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__5_n_4\,
      Q => counter(28),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => counter0_carry_n_6,
      Q => counter(2),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => counter0_carry_n_5,
      Q => counter(3),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => counter0_carry_n_4,
      Q => counter(4),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__0_n_7\,
      Q => counter(5),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__0_n_6\,
      Q => counter(6),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__0_n_5\,
      Q => counter(7),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__0_n_4\,
      Q => counter(8),
      R => \counter[28]_i_1_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => out_buf(2),
      D => \counter0_carry__1_n_7\,
      Q => counter(9),
      R => \counter[28]_i_1_n_0\
    );
\i__i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i__i_2__0_n_0\,
      I1 => \i__i_3__0_n_0\,
      I2 => \i__i_4_n_0\,
      I3 => \i__i_5_n_0\,
      O => \i__i_1_n_0\
    );
\i__i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[21]\,
      I1 => \slv_reg0_buf1_reg_n_0_[20]\,
      I2 => \slv_reg0_buf1_reg_n_0_[23]\,
      I3 => \slv_reg0_buf1_reg_n_0_[22]\,
      O => \i__i_10_n_0\
    );
\i__i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[17]\,
      I1 => \slv_reg0_buf1_reg_n_0_[16]\,
      I2 => \slv_reg0_buf1_reg_n_0_[19]\,
      I3 => \slv_reg0_buf1_reg_n_0_[18]\,
      O => \i__i_11_n_0\
    );
\i__i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[29]\,
      I1 => \slv_reg0_buf1_reg_n_0_[28]\,
      I2 => \slv_reg0_buf1_reg_n_0_[31]\,
      I3 => \slv_reg0_buf1_reg_n_0_[30]\,
      O => \i__i_12_n_0\
    );
\i__i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[25]\,
      I1 => \slv_reg0_buf1_reg_n_0_[24]\,
      I2 => \slv_reg0_buf1_reg_n_0_[27]\,
      I3 => \slv_reg0_buf1_reg_n_0_[26]\,
      O => \i__i_13_n_0\
    );
\i__i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[5]\,
      I1 => \slv_reg0_buf1_reg_n_0_[4]\,
      I2 => \slv_reg0_buf1_reg_n_0_[7]\,
      I3 => \slv_reg0_buf1_reg_n_0_[6]\,
      O => \i__i_14_n_0\
    );
\i__i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg0_buf1(1),
      I1 => slv_reg0_buf1(0),
      I2 => \slv_reg0_buf1_reg_n_0_[3]\,
      I3 => \slv_reg0_buf1_reg_n_0_[2]\,
      O => \i__i_15_n_0\
    );
\i__i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[13]\,
      I1 => \slv_reg0_buf1_reg_n_0_[12]\,
      I2 => \slv_reg0_buf1_reg_n_0_[15]\,
      I3 => \slv_reg0_buf1_reg_n_0_[14]\,
      O => \i__i_16_n_0\
    );
\i__i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[9]\,
      I1 => \slv_reg0_buf1_reg_n_0_[8]\,
      I2 => \slv_reg0_buf1_reg_n_0_[11]\,
      I3 => \slv_reg0_buf1_reg_n_0_[10]\,
      O => \i__i_17_n_0\
    );
\i__i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \i__i_4__0_n_0\,
      I1 => \i__i_5__0_n_0\,
      I2 => \i__i_6_n_0\,
      I3 => \i__i_7_n_0\,
      I4 => \i__i_8_n_0\,
      I5 => \i__i_9_n_0\,
      O => \i__i_1__0_n_0\
    );
\i__i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i__i_10_n_0\,
      I1 => \i__i_11_n_0\,
      I2 => \i__i_12_n_0\,
      I3 => \i__i_13_n_0\,
      O => \i__i_2_n_0\
    );
\i__i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[10]\,
      I1 => \slv_reg0_buf1_reg_n_0_[11]\,
      I2 => \slv_reg0_buf1_reg_n_0_[8]\,
      I3 => \slv_reg0_buf1_reg_n_0_[9]\,
      I4 => \i__i_16_n_0\,
      O => \i__i_2__0_n_0\
    );
\i__i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i__i_14_n_0\,
      I1 => \i__i_15_n_0\,
      I2 => \i__i_16_n_0\,
      I3 => \i__i_17_n_0\,
      O => \i__i_3_n_0\
    );
\i__i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[2]\,
      I1 => \slv_reg0_buf1_reg_n_0_[3]\,
      I2 => slv_reg0_buf1(0),
      I3 => slv_reg0_buf1(1),
      I4 => \i__i_14_n_0\,
      O => \i__i_3__0_n_0\
    );
\i__i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[26]\,
      I1 => \slv_reg0_buf1_reg_n_0_[27]\,
      I2 => \slv_reg0_buf1_reg_n_0_[24]\,
      I3 => \slv_reg0_buf1_reg_n_0_[25]\,
      I4 => \i__i_12_n_0\,
      O => \i__i_4_n_0\
    );
\i__i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => slv_reg0(13),
      I2 => slv_reg0(10),
      I3 => slv_reg0(11),
      I4 => slv_reg0(9),
      I5 => slv_reg0(8),
      O => \i__i_4__0_n_0\
    );
\i__i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[18]\,
      I1 => \slv_reg0_buf1_reg_n_0_[19]\,
      I2 => \slv_reg0_buf1_reg_n_0_[16]\,
      I3 => \slv_reg0_buf1_reg_n_0_[17]\,
      I4 => \i__i_10_n_0\,
      O => \i__i_5_n_0\
    );
\i__i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => slv_reg0(19),
      I2 => slv_reg0(16),
      I3 => slv_reg0(17),
      I4 => slv_reg0(15),
      I5 => slv_reg0(14),
      O => \i__i_5__0_n_0\
    );
\i__i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => slv_reg0(31),
      I2 => slv_reg0(28),
      I3 => slv_reg0(29),
      I4 => slv_reg0(27),
      I5 => slv_reg0(26),
      O => \i__i_6_n_0\
    );
\i__i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => slv_reg0(25),
      I2 => slv_reg0(22),
      I3 => slv_reg0(23),
      I4 => slv_reg0(21),
      I5 => slv_reg0(20),
      O => \i__i_7_n_0\
    );
\i__i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      O => \i__i_8_n_0\
    );
\i__i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => slv_reg0(6),
      I1 => slv_reg0(7),
      I2 => slv_reg0(4),
      I3 => slv_reg0(5),
      I4 => slv_reg0(3),
      I5 => slv_reg0(2),
      O => \i__i_9_n_0\
    );
out_buf0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => out_buf0_carry_n_0,
      CO(2) => out_buf0_carry_n_1,
      CO(1) => out_buf0_carry_n_2,
      CO(0) => out_buf0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_out_buf0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => out_buf0_carry_i_1_n_0,
      S(2) => out_buf0_carry_i_2_n_0,
      S(1) => out_buf0_carry_i_3_n_0,
      S(0) => out_buf0_carry_i_4_n_0
    );
\out_buf0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => out_buf0_carry_n_0,
      CO(3) => \out_buf0_carry__0_n_0\,
      CO(2) => \out_buf0_carry__0_n_1\,
      CO(1) => \out_buf0_carry__0_n_2\,
      CO(0) => \out_buf0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_out_buf0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \out_buf0_carry__0_i_1_n_0\,
      S(2) => \out_buf0_carry__0_i_2_n_0\,
      S(1) => \out_buf0_carry__0_i_3_n_0\,
      S(0) => \out_buf0_carry__0_i_4_n_0\
    );
\out_buf0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[25]\,
      I1 => counter(23),
      I2 => \slv_reg0_buf1_reg_n_0_[24]\,
      I3 => counter(22),
      I4 => counter(21),
      I5 => \slv_reg0_buf1_reg_n_0_[23]\,
      O => \out_buf0_carry__0_i_1_n_0\
    );
\out_buf0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[22]\,
      I1 => counter(20),
      I2 => \slv_reg0_buf1_reg_n_0_[21]\,
      I3 => counter(19),
      I4 => counter(18),
      I5 => \slv_reg0_buf1_reg_n_0_[20]\,
      O => \out_buf0_carry__0_i_2_n_0\
    );
\out_buf0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[19]\,
      I1 => counter(17),
      I2 => \slv_reg0_buf1_reg_n_0_[18]\,
      I3 => counter(16),
      I4 => counter(15),
      I5 => \slv_reg0_buf1_reg_n_0_[17]\,
      O => \out_buf0_carry__0_i_3_n_0\
    );
\out_buf0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[16]\,
      I1 => counter(14),
      I2 => \slv_reg0_buf1_reg_n_0_[15]\,
      I3 => counter(13),
      I4 => counter(12),
      I5 => \slv_reg0_buf1_reg_n_0_[14]\,
      O => \out_buf0_carry__0_i_4_n_0\
    );
\out_buf0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_buf0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_out_buf0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \out_buf0_carry__1_n_2\,
      CO(0) => \out_buf0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_out_buf0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \out_buf0_carry__1_i_1_n_0\,
      S(0) => \out_buf0_carry__1_i_2_n_0\
    );
\out_buf0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(27),
      I1 => counter(28),
      O => \out_buf0_carry__1_i_1_n_0\
    );
\out_buf0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[28]\,
      I1 => counter(26),
      I2 => \slv_reg0_buf1_reg_n_0_[27]\,
      I3 => counter(25),
      I4 => counter(24),
      I5 => \slv_reg0_buf1_reg_n_0_[26]\,
      O => \out_buf0_carry__1_i_2_n_0\
    );
out_buf0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[13]\,
      I1 => counter(11),
      I2 => \slv_reg0_buf1_reg_n_0_[12]\,
      I3 => counter(10),
      I4 => counter(9),
      I5 => \slv_reg0_buf1_reg_n_0_[11]\,
      O => out_buf0_carry_i_1_n_0
    );
out_buf0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[10]\,
      I1 => counter(8),
      I2 => \slv_reg0_buf1_reg_n_0_[9]\,
      I3 => counter(7),
      I4 => counter(6),
      I5 => \slv_reg0_buf1_reg_n_0_[8]\,
      O => out_buf0_carry_i_2_n_0
    );
out_buf0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[7]\,
      I1 => counter(5),
      I2 => \slv_reg0_buf1_reg_n_0_[6]\,
      I3 => counter(4),
      I4 => counter(3),
      I5 => \slv_reg0_buf1_reg_n_0_[5]\,
      O => out_buf0_carry_i_3_n_0
    );
out_buf0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \slv_reg0_buf1_reg_n_0_[4]\,
      I1 => counter(2),
      I2 => \slv_reg0_buf1_reg_n_0_[3]\,
      I3 => counter(1),
      I4 => counter(0),
      I5 => \slv_reg0_buf1_reg_n_0_[2]\,
      O => out_buf0_carry_i_4_n_0
    );
\out_buf[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => slv_reg0_buf1(0),
      I1 => sl_state(2),
      I2 => \out_buf0_carry__1_n_2\,
      I3 => \^out_test\(0),
      O => \out_buf[0]_i_1_n_0\
    );
\out_buf[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => slv_reg0_buf1(1),
      I1 => sl_state(2),
      I2 => \out_buf0_carry__1_n_2\,
      I3 => \^out_test\(1),
      O => \out_buf[1]_i_1_n_0\
    );
\out_buf[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFC"
    )
        port map (
      I0 => sl_state(1),
      I1 => sl_state(0),
      I2 => sl_state(2),
      I3 => \^out_test\(2),
      O => \out_buf[2]_i_1_n_0\
    );
\out_buf[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFA"
    )
        port map (
      I0 => sl_state(1),
      I1 => sl_state(0),
      I2 => sl_state(2),
      I3 => \^out_test\(3),
      O => \out_buf[3]_i_1_n_0\
    );
\out_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \out_buf[0]_i_1_n_0\,
      Q => \^out_test\(0),
      R => '0'
    );
\out_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \out_buf[1]_i_1_n_0\,
      Q => \^out_test\(1),
      R => '0'
    );
\out_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \out_buf[2]_i_1_n_0\,
      Q => \^out_test\(2),
      R => '0'
    );
\out_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \out_buf[3]_i_1_n_0\,
      Q => \^out_test\(3),
      R => '0'
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(3),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_buf1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[0]_srl3_n_0\,
      Q => slv_reg0_buf1(0),
      R => '0'
    );
\slv_reg0_buf1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[10]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[10]\,
      R => '0'
    );
\slv_reg0_buf1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[11]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[11]\,
      R => '0'
    );
\slv_reg0_buf1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[12]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[12]\,
      R => '0'
    );
\slv_reg0_buf1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[13]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[13]\,
      R => '0'
    );
\slv_reg0_buf1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[14]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[14]\,
      R => '0'
    );
\slv_reg0_buf1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[15]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[15]\,
      R => '0'
    );
\slv_reg0_buf1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[16]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[16]\,
      R => '0'
    );
\slv_reg0_buf1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[17]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[17]\,
      R => '0'
    );
\slv_reg0_buf1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[18]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[18]\,
      R => '0'
    );
\slv_reg0_buf1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[19]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[19]\,
      R => '0'
    );
\slv_reg0_buf1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[1]_srl3_n_0\,
      Q => slv_reg0_buf1(1),
      R => '0'
    );
\slv_reg0_buf1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[20]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[20]\,
      R => '0'
    );
\slv_reg0_buf1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[21]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[21]\,
      R => '0'
    );
\slv_reg0_buf1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[22]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[22]\,
      R => '0'
    );
\slv_reg0_buf1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[23]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[23]\,
      R => '0'
    );
\slv_reg0_buf1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[24]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[24]\,
      R => '0'
    );
\slv_reg0_buf1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[25]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[25]\,
      R => '0'
    );
\slv_reg0_buf1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[26]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[26]\,
      R => '0'
    );
\slv_reg0_buf1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[27]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[27]\,
      R => '0'
    );
\slv_reg0_buf1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[28]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[28]\,
      R => '0'
    );
\slv_reg0_buf1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[29]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[29]\,
      R => '0'
    );
\slv_reg0_buf1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[2]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[2]\,
      R => '0'
    );
\slv_reg0_buf1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[30]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[30]\,
      R => '0'
    );
\slv_reg0_buf1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[31]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[31]\,
      R => '0'
    );
\slv_reg0_buf1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[3]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[3]\,
      R => '0'
    );
\slv_reg0_buf1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[4]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[4]\,
      R => '0'
    );
\slv_reg0_buf1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[5]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[5]\,
      R => '0'
    );
\slv_reg0_buf1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[6]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[6]\,
      R => '0'
    );
\slv_reg0_buf1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[7]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[7]\,
      R => '0'
    );
\slv_reg0_buf1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[8]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[8]\,
      R => '0'
    );
\slv_reg0_buf1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf4,
      D => \slv_reg0_buf2_reg[9]_srl3_n_0\,
      Q => \slv_reg0_buf1_reg_n_0_[9]\,
      R => '0'
    );
\slv_reg0_buf2_reg[0]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(0),
      Q => \slv_reg0_buf2_reg[0]_srl3_n_0\
    );
\slv_reg0_buf2_reg[10]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(10),
      Q => \slv_reg0_buf2_reg[10]_srl3_n_0\
    );
\slv_reg0_buf2_reg[11]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(11),
      Q => \slv_reg0_buf2_reg[11]_srl3_n_0\
    );
\slv_reg0_buf2_reg[12]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(12),
      Q => \slv_reg0_buf2_reg[12]_srl3_n_0\
    );
\slv_reg0_buf2_reg[13]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(13),
      Q => \slv_reg0_buf2_reg[13]_srl3_n_0\
    );
\slv_reg0_buf2_reg[14]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(14),
      Q => \slv_reg0_buf2_reg[14]_srl3_n_0\
    );
\slv_reg0_buf2_reg[15]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(15),
      Q => \slv_reg0_buf2_reg[15]_srl3_n_0\
    );
\slv_reg0_buf2_reg[16]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(16),
      Q => \slv_reg0_buf2_reg[16]_srl3_n_0\
    );
\slv_reg0_buf2_reg[17]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(17),
      Q => \slv_reg0_buf2_reg[17]_srl3_n_0\
    );
\slv_reg0_buf2_reg[18]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(18),
      Q => \slv_reg0_buf2_reg[18]_srl3_n_0\
    );
\slv_reg0_buf2_reg[19]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(19),
      Q => \slv_reg0_buf2_reg[19]_srl3_n_0\
    );
\slv_reg0_buf2_reg[1]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(1),
      Q => \slv_reg0_buf2_reg[1]_srl3_n_0\
    );
\slv_reg0_buf2_reg[20]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(20),
      Q => \slv_reg0_buf2_reg[20]_srl3_n_0\
    );
\slv_reg0_buf2_reg[21]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(21),
      Q => \slv_reg0_buf2_reg[21]_srl3_n_0\
    );
\slv_reg0_buf2_reg[22]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(22),
      Q => \slv_reg0_buf2_reg[22]_srl3_n_0\
    );
\slv_reg0_buf2_reg[23]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(23),
      Q => \slv_reg0_buf2_reg[23]_srl3_n_0\
    );
\slv_reg0_buf2_reg[24]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(24),
      Q => \slv_reg0_buf2_reg[24]_srl3_n_0\
    );
\slv_reg0_buf2_reg[25]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(25),
      Q => \slv_reg0_buf2_reg[25]_srl3_n_0\
    );
\slv_reg0_buf2_reg[26]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(26),
      Q => \slv_reg0_buf2_reg[26]_srl3_n_0\
    );
\slv_reg0_buf2_reg[27]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(27),
      Q => \slv_reg0_buf2_reg[27]_srl3_n_0\
    );
\slv_reg0_buf2_reg[28]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(28),
      Q => \slv_reg0_buf2_reg[28]_srl3_n_0\
    );
\slv_reg0_buf2_reg[29]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(29),
      Q => \slv_reg0_buf2_reg[29]_srl3_n_0\
    );
\slv_reg0_buf2_reg[2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(2),
      Q => \slv_reg0_buf2_reg[2]_srl3_n_0\
    );
\slv_reg0_buf2_reg[30]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(30),
      Q => \slv_reg0_buf2_reg[30]_srl3_n_0\
    );
\slv_reg0_buf2_reg[31]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(31),
      Q => \slv_reg0_buf2_reg[31]_srl3_n_0\
    );
\slv_reg0_buf2_reg[31]_srl3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => \i__i_1_n_0\,
      I1 => slv_reg0_buf51,
      I2 => sl_state(1),
      I3 => \out_buf0_carry__1_n_2\,
      I4 => sl_state(2),
      O => slv_reg0_buf4
    );
\slv_reg0_buf2_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(3),
      Q => \slv_reg0_buf2_reg[3]_srl3_n_0\
    );
\slv_reg0_buf2_reg[4]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(4),
      Q => \slv_reg0_buf2_reg[4]_srl3_n_0\
    );
\slv_reg0_buf2_reg[5]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(5),
      Q => \slv_reg0_buf2_reg[5]_srl3_n_0\
    );
\slv_reg0_buf2_reg[6]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(6),
      Q => \slv_reg0_buf2_reg[6]_srl3_n_0\
    );
\slv_reg0_buf2_reg[7]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(7),
      Q => \slv_reg0_buf2_reg[7]_srl3_n_0\
    );
\slv_reg0_buf2_reg[8]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(8),
      Q => \slv_reg0_buf2_reg[8]_srl3_n_0\
    );
\slv_reg0_buf2_reg[9]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => slv_reg0_buf4,
      CLK => s00_axi_aclk,
      D => slv_reg0_buf5(9),
      Q => \slv_reg0_buf2_reg[9]_srl3_n_0\
    );
slv_reg0_buf51_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => slv_reg0_buf51_carry_n_0,
      CO(2) => slv_reg0_buf51_carry_n_1,
      CO(1) => slv_reg0_buf51_carry_n_2,
      CO(0) => slv_reg0_buf51_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_slv_reg0_buf51_carry_O_UNCONNECTED(3 downto 0),
      S(3) => slv_reg0_buf51_carry_i_1_n_0,
      S(2) => slv_reg0_buf51_carry_i_2_n_0,
      S(1) => slv_reg0_buf51_carry_i_3_n_0,
      S(0) => slv_reg0_buf51_carry_i_4_n_0
    );
\slv_reg0_buf51_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => slv_reg0_buf51_carry_n_0,
      CO(3) => \slv_reg0_buf51_carry__0_n_0\,
      CO(2) => \slv_reg0_buf51_carry__0_n_1\,
      CO(1) => \slv_reg0_buf51_carry__0_n_2\,
      CO(0) => \slv_reg0_buf51_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_slv_reg0_buf51_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \slv_reg0_buf51_carry__0_i_1_n_0\,
      S(2) => \slv_reg0_buf51_carry__0_i_2_n_0\,
      S(1) => \slv_reg0_buf51_carry__0_i_3_n_0\,
      S(0) => \slv_reg0_buf51_carry__0_i_4_n_0\
    );
\slv_reg0_buf51_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => slv_reg0_buf5(23),
      I2 => slv_reg0(22),
      I3 => slv_reg0_buf5(22),
      I4 => slv_reg0_buf5(21),
      I5 => slv_reg0(21),
      O => \slv_reg0_buf51_carry__0_i_1_n_0\
    );
\slv_reg0_buf51_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => slv_reg0_buf5(20),
      I2 => slv_reg0(19),
      I3 => slv_reg0_buf5(19),
      I4 => slv_reg0_buf5(18),
      I5 => slv_reg0(18),
      O => \slv_reg0_buf51_carry__0_i_2_n_0\
    );
\slv_reg0_buf51_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => slv_reg0_buf5(17),
      I2 => slv_reg0(16),
      I3 => slv_reg0_buf5(16),
      I4 => slv_reg0_buf5(15),
      I5 => slv_reg0(15),
      O => \slv_reg0_buf51_carry__0_i_3_n_0\
    );
\slv_reg0_buf51_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg0(14),
      I1 => slv_reg0_buf5(14),
      I2 => slv_reg0(13),
      I3 => slv_reg0_buf5(13),
      I4 => slv_reg0_buf5(12),
      I5 => slv_reg0(12),
      O => \slv_reg0_buf51_carry__0_i_4_n_0\
    );
\slv_reg0_buf51_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg0_buf51_carry__0_n_0\,
      CO(3) => \NLW_slv_reg0_buf51_carry__1_CO_UNCONNECTED\(3),
      CO(2) => slv_reg0_buf51,
      CO(1) => \slv_reg0_buf51_carry__1_n_2\,
      CO(0) => \slv_reg0_buf51_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_slv_reg0_buf51_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \slv_reg0_buf51_carry__1_i_1_n_0\,
      S(1) => \slv_reg0_buf51_carry__1_i_2_n_0\,
      S(0) => \slv_reg0_buf51_carry__1_i_3_n_0\
    );
\slv_reg0_buf51_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => slv_reg0_buf5(31),
      I2 => slv_reg0(30),
      I3 => slv_reg0_buf5(30),
      O => \slv_reg0_buf51_carry__1_i_1_n_0\
    );
\slv_reg0_buf51_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => slv_reg0_buf5(29),
      I2 => slv_reg0(28),
      I3 => slv_reg0_buf5(28),
      I4 => slv_reg0_buf5(27),
      I5 => slv_reg0(27),
      O => \slv_reg0_buf51_carry__1_i_2_n_0\
    );
\slv_reg0_buf51_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => slv_reg0_buf5(26),
      I2 => slv_reg0(25),
      I3 => slv_reg0_buf5(25),
      I4 => slv_reg0_buf5(24),
      I5 => slv_reg0(24),
      O => \slv_reg0_buf51_carry__1_i_3_n_0\
    );
slv_reg0_buf51_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => slv_reg0_buf5(11),
      I2 => slv_reg0(10),
      I3 => slv_reg0_buf5(10),
      I4 => slv_reg0_buf5(9),
      I5 => slv_reg0(9),
      O => slv_reg0_buf51_carry_i_1_n_0
    );
slv_reg0_buf51_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => slv_reg0_buf5(8),
      I2 => slv_reg0(7),
      I3 => slv_reg0_buf5(7),
      I4 => slv_reg0_buf5(6),
      I5 => slv_reg0(6),
      O => slv_reg0_buf51_carry_i_2_n_0
    );
slv_reg0_buf51_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg0(5),
      I1 => slv_reg0_buf5(5),
      I2 => slv_reg0(4),
      I3 => slv_reg0_buf5(4),
      I4 => slv_reg0_buf5(3),
      I5 => slv_reg0(3),
      O => slv_reg0_buf51_carry_i_3_n_0
    );
slv_reg0_buf51_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => slv_reg0_buf5(2),
      I2 => slv_reg0(1),
      I3 => slv_reg0_buf5(1),
      I4 => slv_reg0_buf5(0),
      I5 => slv_reg0(0),
      O => slv_reg0_buf51_carry_i_4_n_0
    );
\slv_reg0_buf5_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(0),
      Q => slv_reg0_buf5(0),
      R => '0'
    );
\slv_reg0_buf5_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(10),
      Q => slv_reg0_buf5(10),
      R => '0'
    );
\slv_reg0_buf5_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(11),
      Q => slv_reg0_buf5(11),
      R => '0'
    );
\slv_reg0_buf5_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(12),
      Q => slv_reg0_buf5(12),
      R => '0'
    );
\slv_reg0_buf5_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(13),
      Q => slv_reg0_buf5(13),
      R => '0'
    );
\slv_reg0_buf5_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(14),
      Q => slv_reg0_buf5(14),
      R => '0'
    );
\slv_reg0_buf5_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(15),
      Q => slv_reg0_buf5(15),
      R => '0'
    );
\slv_reg0_buf5_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(16),
      Q => slv_reg0_buf5(16),
      R => '0'
    );
\slv_reg0_buf5_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(17),
      Q => slv_reg0_buf5(17),
      R => '0'
    );
\slv_reg0_buf5_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(18),
      Q => slv_reg0_buf5(18),
      R => '0'
    );
\slv_reg0_buf5_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(19),
      Q => slv_reg0_buf5(19),
      R => '0'
    );
\slv_reg0_buf5_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(1),
      Q => slv_reg0_buf5(1),
      R => '0'
    );
\slv_reg0_buf5_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(20),
      Q => slv_reg0_buf5(20),
      R => '0'
    );
\slv_reg0_buf5_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(21),
      Q => slv_reg0_buf5(21),
      R => '0'
    );
\slv_reg0_buf5_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(22),
      Q => slv_reg0_buf5(22),
      R => '0'
    );
\slv_reg0_buf5_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(23),
      Q => slv_reg0_buf5(23),
      R => '0'
    );
\slv_reg0_buf5_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(24),
      Q => slv_reg0_buf5(24),
      R => '0'
    );
\slv_reg0_buf5_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(25),
      Q => slv_reg0_buf5(25),
      R => '0'
    );
\slv_reg0_buf5_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(26),
      Q => slv_reg0_buf5(26),
      R => '0'
    );
\slv_reg0_buf5_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(27),
      Q => slv_reg0_buf5(27),
      R => '0'
    );
\slv_reg0_buf5_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(28),
      Q => slv_reg0_buf5(28),
      R => '0'
    );
\slv_reg0_buf5_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(29),
      Q => slv_reg0_buf5(29),
      R => '0'
    );
\slv_reg0_buf5_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(2),
      Q => slv_reg0_buf5(2),
      R => '0'
    );
\slv_reg0_buf5_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(30),
      Q => slv_reg0_buf5(30),
      R => '0'
    );
\slv_reg0_buf5_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(31),
      Q => slv_reg0_buf5(31),
      R => '0'
    );
\slv_reg0_buf5_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(3),
      Q => slv_reg0_buf5(3),
      R => '0'
    );
\slv_reg0_buf5_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(4),
      Q => slv_reg0_buf5(4),
      R => '0'
    );
\slv_reg0_buf5_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(5),
      Q => slv_reg0_buf5(5),
      R => '0'
    );
\slv_reg0_buf5_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(6),
      Q => slv_reg0_buf5(6),
      R => '0'
    );
\slv_reg0_buf5_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(7),
      Q => slv_reg0_buf5(7),
      R => '0'
    );
\slv_reg0_buf5_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(8),
      Q => slv_reg0_buf5(8),
      R => '0'
    );
\slv_reg0_buf5_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => slv_reg0_buf5_0,
      D => slv_reg0(9),
      Q => slv_reg0_buf5(9),
      R => '0'
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0 is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    out_test : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0 is
begin
coproct_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      out_test(3 downto 0) => out_test(3 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    out_test : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_coproct_0_1,coproct_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "coproct_v1_0,Vivado 2017.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coproct_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      out_test(3 downto 0) => out_test(3 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;