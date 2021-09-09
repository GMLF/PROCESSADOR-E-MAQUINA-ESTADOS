-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/25/2021 12:31:28"

-- 
-- Device: Altera 10M50DCF484I7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Processador IS
    PORT (
	data_in : IN std_logic_vector(9 DOWNTO 0);
	data_out : BUFFER std_logic_vector(6 DOWNTO 0);
	DISPLAY : BUFFER std_logic_vector(34 DOWNTO 0)
	);
END Processador;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[7]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[8]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[9]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[10]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[11]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[12]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[13]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[14]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[15]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[16]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[17]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[18]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[19]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[20]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[21]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[22]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[23]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[24]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[25]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[26]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[27]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[28]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[29]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[30]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[31]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[32]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[33]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[34]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Processador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISPLAY : std_logic_vector(34 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Decoder0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr11~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector43~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \DISPLAY[0]~output_o\ : std_logic;
SIGNAL \DISPLAY[1]~output_o\ : std_logic;
SIGNAL \DISPLAY[2]~output_o\ : std_logic;
SIGNAL \DISPLAY[3]~output_o\ : std_logic;
SIGNAL \DISPLAY[4]~output_o\ : std_logic;
SIGNAL \DISPLAY[5]~output_o\ : std_logic;
SIGNAL \DISPLAY[6]~output_o\ : std_logic;
SIGNAL \DISPLAY[7]~output_o\ : std_logic;
SIGNAL \DISPLAY[8]~output_o\ : std_logic;
SIGNAL \DISPLAY[9]~output_o\ : std_logic;
SIGNAL \DISPLAY[10]~output_o\ : std_logic;
SIGNAL \DISPLAY[11]~output_o\ : std_logic;
SIGNAL \DISPLAY[12]~output_o\ : std_logic;
SIGNAL \DISPLAY[13]~output_o\ : std_logic;
SIGNAL \DISPLAY[14]~output_o\ : std_logic;
SIGNAL \DISPLAY[15]~output_o\ : std_logic;
SIGNAL \DISPLAY[16]~output_o\ : std_logic;
SIGNAL \DISPLAY[17]~output_o\ : std_logic;
SIGNAL \DISPLAY[18]~output_o\ : std_logic;
SIGNAL \DISPLAY[19]~output_o\ : std_logic;
SIGNAL \DISPLAY[20]~output_o\ : std_logic;
SIGNAL \DISPLAY[21]~output_o\ : std_logic;
SIGNAL \DISPLAY[22]~output_o\ : std_logic;
SIGNAL \DISPLAY[23]~output_o\ : std_logic;
SIGNAL \DISPLAY[24]~output_o\ : std_logic;
SIGNAL \DISPLAY[25]~output_o\ : std_logic;
SIGNAL \DISPLAY[26]~output_o\ : std_logic;
SIGNAL \DISPLAY[27]~output_o\ : std_logic;
SIGNAL \DISPLAY[28]~output_o\ : std_logic;
SIGNAL \DISPLAY[29]~output_o\ : std_logic;
SIGNAL \DISPLAY[30]~output_o\ : std_logic;
SIGNAL \DISPLAY[31]~output_o\ : std_logic;
SIGNAL \DISPLAY[32]~output_o\ : std_logic;
SIGNAL \DISPLAY[33]~output_o\ : std_logic;
SIGNAL \DISPLAY[34]~output_o\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \Equal33~0_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \Equal31~0_combout\ : std_logic;
SIGNAL \Equal32~0_combout\ : std_logic;
SIGNAL \Equal31~1_combout\ : std_logic;
SIGNAL \Equal33~1_combout\ : std_logic;
SIGNAL \Equal34~1_combout\ : std_logic;
SIGNAL \Equal34~2_combout\ : std_logic;
SIGNAL \Equal33~2_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Equal35~0_combout\ : std_logic;
SIGNAL \Equal34~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Equal38~0_combout\ : std_logic;
SIGNAL \Equal36~0_combout\ : std_logic;
SIGNAL \Equal39~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Equal42~0_combout\ : std_logic;
SIGNAL \Equal42~1_combout\ : std_logic;
SIGNAL \Equal44~0_combout\ : std_logic;
SIGNAL \Equal43~0_combout\ : std_logic;
SIGNAL \Equal43~1_combout\ : std_logic;
SIGNAL \WideNor3~0_combout\ : std_logic;
SIGNAL \Equal40~0_combout\ : std_logic;
SIGNAL \WideNor3~combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \endereco[0]~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \endereco[1]~3_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \endereco[2]~4_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~0clkctrl_outclk\ : std_logic;
SIGNAL \memoria[4][6]~combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \memoria[0][6]~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \Equal34~3_combout\ : std_logic;
SIGNAL \Selector52~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \memoria[4][0]~combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \memoria[0][0]~combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Selector52~3_combout\ : std_logic;
SIGNAL \Selector51~2_combout\ : std_logic;
SIGNAL \Selector51~3_combout\ : std_logic;
SIGNAL \Selector51~4_combout\ : std_logic;
SIGNAL \WideOr11~combout\ : std_logic;
SIGNAL \WideOr11~clkctrl_outclk\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Selector49~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \Selector49~3_combout\ : std_logic;
SIGNAL \Selector49~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Selector52~4_combout\ : std_logic;
SIGNAL \Selector52~5_combout\ : std_logic;
SIGNAL \Selector52~6_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \Selector43~3_combout\ : std_logic;
SIGNAL \Selector43~3clkctrl_outclk\ : std_logic;
SIGNAL \DISPLAY[0]$latch~combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \DISPLAY[1]$latch~combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \DISPLAY[2]$latch~combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \DISPLAY[3]$latch~combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \DISPLAY[4]$latch~combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \DISPLAY[5]$latch~combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \DISPLAY[6]$latch~combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \DISPLAY[7]$latch~combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \DISPLAY[8]$latch~combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \DISPLAY[9]$latch~combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \DISPLAY[10]$latch~combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \DISPLAY[11]$latch~combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \DISPLAY[12]$latch~combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \DISPLAY[13]$latch~combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Selector43~4_combout\ : std_logic;
SIGNAL \Selector47~3_combout\ : std_logic;
SIGNAL \Equal33~3_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \Selector47~4_combout\ : std_logic;
SIGNAL \Selector47~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \Selector47~2_combout\ : std_logic;
SIGNAL \Selector47~6_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \DISPLAY[14]$latch~combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \DISPLAY[15]$latch~combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \DISPLAY[16]$latch~combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \Selector35~2_combout\ : std_logic;
SIGNAL \DISPLAY[17]$latch~combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \DISPLAY[18]$latch~combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \DISPLAY[19]$latch~combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \DISPLAY[20]$latch~combout\ : std_logic;
SIGNAL aux_int : std_logic_vector(31 DOWNTO 0);
SIGNAL resultado : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_data_in <= data_in;
data_out <= ww_data_out;
DISPLAY <= ww_DISPLAY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Decoder0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~0_combout\);

\WideOr11~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr11~combout\);

\Selector43~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector43~3_combout\);

\Decoder0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~1_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y25_N23
\data_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\data_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\data_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\data_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\data_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\data_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\data_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\DISPLAY[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[0]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\DISPLAY[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[1]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\DISPLAY[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[2]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\DISPLAY[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[3]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\DISPLAY[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[4]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\DISPLAY[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[5]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\DISPLAY[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[6]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\DISPLAY[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[7]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\DISPLAY[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[8]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[8]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\DISPLAY[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[9]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[9]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\DISPLAY[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[10]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[10]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\DISPLAY[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[11]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[11]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\DISPLAY[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[12]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[12]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\DISPLAY[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[13]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[13]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\DISPLAY[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[14]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[14]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\DISPLAY[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[15]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[15]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\DISPLAY[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[16]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[16]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\DISPLAY[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[17]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[17]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\DISPLAY[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[18]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[18]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\DISPLAY[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[19]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[19]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\DISPLAY[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY[20]$latch~combout\,
	devoe => ww_devoe,
	o => \DISPLAY[20]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\DISPLAY[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[21]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\DISPLAY[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[22]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\DISPLAY[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[23]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\DISPLAY[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[24]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\DISPLAY[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[25]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\DISPLAY[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[26]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\DISPLAY[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[27]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\DISPLAY[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[28]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\DISPLAY[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[29]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\DISPLAY[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[30]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\DISPLAY[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[31]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\DISPLAY[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[32]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\DISPLAY[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[33]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\DISPLAY[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY[34]~output_o\);

-- Location: IOIBUF_X69_Y54_N1
\data_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\data_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\data_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\data_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\data_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\data_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\data_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\data_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\data_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: LCCOMB_X54_Y52_N8
\Equal33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal33~0_combout\ = (!\data_in[4]~input_o\ & (!\data_in[6]~input_o\ & (!\data_in[5]~input_o\ & !\data_in[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[4]~input_o\,
	datab => \data_in[6]~input_o\,
	datac => \data_in[5]~input_o\,
	datad => \data_in[8]~input_o\,
	combout => \Equal33~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\data_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X55_Y52_N28
\Equal31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal31~0_combout\ = (!\data_in[3]~input_o\ & (!\data_in[7]~input_o\ & (\Equal33~0_combout\ & !\data_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datab => \data_in[7]~input_o\,
	datac => \Equal33~0_combout\,
	datad => \data_in[0]~input_o\,
	combout => \Equal31~0_combout\);

-- Location: LCCOMB_X55_Y52_N12
\Equal32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal32~0_combout\ = (\data_in[9]~input_o\ & (!\data_in[2]~input_o\ & (!\data_in[1]~input_o\ & \Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[9]~input_o\,
	datab => \data_in[2]~input_o\,
	datac => \data_in[1]~input_o\,
	datad => \Equal31~0_combout\,
	combout => \Equal32~0_combout\);

-- Location: LCCOMB_X55_Y52_N2
\Equal31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal31~1_combout\ = (!\data_in[9]~input_o\ & (!\data_in[2]~input_o\ & (!\data_in[1]~input_o\ & \Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[9]~input_o\,
	datab => \data_in[2]~input_o\,
	datac => \data_in[1]~input_o\,
	datad => \Equal31~0_combout\,
	combout => \Equal31~1_combout\);

-- Location: LCCOMB_X55_Y52_N20
\Equal33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal33~1_combout\ = (!\data_in[9]~input_o\ & (!\data_in[2]~input_o\ & (!\data_in[1]~input_o\ & !\data_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[9]~input_o\,
	datab => \data_in[2]~input_o\,
	datac => \data_in[1]~input_o\,
	datad => \data_in[0]~input_o\,
	combout => \Equal33~1_combout\);

-- Location: LCCOMB_X55_Y52_N16
\Equal34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal34~1_combout\ = (!\data_in[3]~input_o\ & (!\data_in[7]~input_o\ & (!\data_in[4]~input_o\ & \Equal33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datab => \data_in[7]~input_o\,
	datac => \data_in[4]~input_o\,
	datad => \Equal33~1_combout\,
	combout => \Equal34~1_combout\);

-- Location: LCCOMB_X55_Y52_N8
\Equal34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal34~2_combout\ = (!\data_in[5]~input_o\ & (!\data_in[6]~input_o\ & (\data_in[8]~input_o\ & \Equal34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[5]~input_o\,
	datab => \data_in[6]~input_o\,
	datac => \data_in[8]~input_o\,
	datad => \Equal34~1_combout\,
	combout => \Equal34~2_combout\);

-- Location: LCCOMB_X55_Y52_N18
\Equal33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal33~2_combout\ = (!\data_in[3]~input_o\ & (\data_in[7]~input_o\ & (\Equal33~0_combout\ & \Equal33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datab => \data_in[7]~input_o\,
	datac => \Equal33~0_combout\,
	datad => \Equal33~1_combout\,
	combout => \Equal33~2_combout\);

-- Location: LCCOMB_X55_Y52_N26
\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (!\Equal32~0_combout\ & (!\Equal31~1_combout\ & (!\Equal34~2_combout\ & !\Equal33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal32~0_combout\,
	datab => \Equal31~1_combout\,
	datac => \Equal34~2_combout\,
	datad => \Equal33~2_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X54_Y52_N14
\Equal35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal35~0_combout\ = (!\data_in[5]~input_o\ & !\data_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	datad => \data_in[8]~input_o\,
	combout => \Equal35~0_combout\);

-- Location: LCCOMB_X55_Y52_N24
\Equal34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal34~0_combout\ = (!\data_in[3]~input_o\ & (!\data_in[7]~input_o\ & \Equal33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datac => \data_in[7]~input_o\,
	datad => \Equal33~1_combout\,
	combout => \Equal34~0_combout\);

-- Location: LCCOMB_X55_Y52_N30
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ((\data_in[6]~input_o\ $ (!\data_in[4]~input_o\)) # (!\Equal34~0_combout\)) # (!\Equal35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal35~0_combout\,
	datab => \data_in[6]~input_o\,
	datac => \data_in[4]~input_o\,
	datad => \Equal34~0_combout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X55_Y52_N4
\Equal38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal38~0_combout\ = (\data_in[3]~input_o\ & (!\data_in[7]~input_o\ & (\Equal33~0_combout\ & \Equal33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datab => \data_in[7]~input_o\,
	datac => \Equal33~0_combout\,
	datad => \Equal33~1_combout\,
	combout => \Equal38~0_combout\);

-- Location: LCCOMB_X55_Y52_N22
\Equal36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal36~0_combout\ = (\data_in[5]~input_o\ & (!\data_in[6]~input_o\ & (!\data_in[8]~input_o\ & \Equal34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[5]~input_o\,
	datab => \data_in[6]~input_o\,
	datac => \data_in[8]~input_o\,
	datad => \Equal34~1_combout\,
	combout => \Equal36~0_combout\);

-- Location: LCCOMB_X55_Y52_N10
\Equal39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal39~0_combout\ = (!\data_in[9]~input_o\ & (\data_in[2]~input_o\ & (!\data_in[1]~input_o\ & \Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[9]~input_o\,
	datab => \data_in[2]~input_o\,
	datac => \data_in[1]~input_o\,
	datad => \Equal31~0_combout\,
	combout => \Equal39~0_combout\);

-- Location: LCCOMB_X55_Y52_N0
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Selector27~0_combout\ & (!\Equal38~0_combout\ & (!\Equal36~0_combout\ & !\Equal39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => \Equal38~0_combout\,
	datac => \Equal36~0_combout\,
	datad => \Equal39~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X52_Y52_N4
\Equal42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal42~0_combout\ = (!\data_in[1]~input_o\ & (!\data_in[2]~input_o\ & \data_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datac => \data_in[2]~input_o\,
	datad => \data_in[0]~input_o\,
	combout => \Equal42~0_combout\);

-- Location: LCCOMB_X56_Y52_N4
\Equal42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal42~1_combout\ = (!\data_in[3]~input_o\ & (\Equal33~0_combout\ & (!\data_in[7]~input_o\ & \Equal42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datab => \Equal33~0_combout\,
	datac => \data_in[7]~input_o\,
	datad => \Equal42~0_combout\,
	combout => \Equal42~1_combout\);

-- Location: LCCOMB_X56_Y52_N22
\Equal44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal44~0_combout\ = (\data_in[2]~input_o\ & (\data_in[9]~input_o\ & (!\data_in[1]~input_o\ & \Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datab => \data_in[9]~input_o\,
	datac => \data_in[1]~input_o\,
	datad => \Equal31~0_combout\,
	combout => \Equal44~0_combout\);

-- Location: LCCOMB_X55_Y52_N6
\Equal43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal43~0_combout\ = (!\data_in[3]~input_o\ & (\Equal33~0_combout\ & (!\data_in[7]~input_o\ & !\data_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datab => \Equal33~0_combout\,
	datac => \data_in[7]~input_o\,
	datad => \data_in[2]~input_o\,
	combout => \Equal43~0_combout\);

-- Location: LCCOMB_X52_Y50_N10
\Equal43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal43~1_combout\ = (\data_in[1]~input_o\ & (\Equal43~0_combout\ & (\data_in[9]~input_o\ & !\data_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datab => \Equal43~0_combout\,
	datac => \data_in[9]~input_o\,
	datad => \data_in[0]~input_o\,
	combout => \Equal43~1_combout\);

-- Location: LCCOMB_X56_Y52_N26
\WideNor3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor3~0_combout\ = (!\Equal42~1_combout\ & (!\Equal44~0_combout\ & !\Equal43~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal42~1_combout\,
	datac => \Equal44~0_combout\,
	datad => \Equal43~1_combout\,
	combout => \WideNor3~0_combout\);

-- Location: LCCOMB_X56_Y52_N14
\Equal40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal40~0_combout\ = (!\data_in[2]~input_o\ & (!\data_in[9]~input_o\ & (\data_in[1]~input_o\ & \Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datab => \data_in[9]~input_o\,
	datac => \data_in[1]~input_o\,
	datad => \Equal31~0_combout\,
	combout => \Equal40~0_combout\);

-- Location: LCCOMB_X56_Y52_N18
WideNor3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor3~combout\ = (((\Equal40~0_combout\) # (!\WideNor3~0_combout\)) # (!\Selector20~0_combout\)) # (!\Selector43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \WideNor3~0_combout\,
	datad => \Equal40~0_combout\,
	combout => \WideNor3~combout\);

-- Location: LCCOMB_X56_Y49_N20
\Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\Equal33~2_combout\ & !\Equal44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal33~2_combout\,
	datad => \Equal44~0_combout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X56_Y49_N10
\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\WideNor3~combout\ & (!\Equal43~1_combout\ & (\Selector28~0_combout\ & !\Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor3~combout\,
	datab => \Equal43~1_combout\,
	datac => \Selector28~0_combout\,
	datad => \Equal32~0_combout\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X56_Y49_N28
\Selector45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\Selector45~0_combout\ & !\Equal31~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datad => \Equal31~1_combout\,
	combout => \Selector45~1_combout\);

-- Location: LCCOMB_X56_Y52_N2
\Selector43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~2_combout\ = (\Selector20~0_combout\ & !\Equal40~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datac => \Equal40~0_combout\,
	combout => \Selector43~2_combout\);

-- Location: LCCOMB_X52_Y50_N30
\endereco[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \endereco[0]~2_combout\ = (!\endereco[0]~2_combout\ & \Equal43~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \endereco[0]~2_combout\,
	datad => \Equal43~1_combout\,
	combout => \endereco[0]~2_combout\);

-- Location: LCCOMB_X52_Y50_N24
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\endereco[0]~2_combout\ & (\endereco[1]~3_combout\ $ (VCC))) # (!\endereco[0]~2_combout\ & (\endereco[1]~3_combout\ & VCC))
-- \Add2~1\ = CARRY((\endereco[0]~2_combout\ & \endereco[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~2_combout\,
	datab => \endereco[1]~3_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X52_Y50_N18
\endereco[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \endereco[1]~3_combout\ = (\Add2~0_combout\ & \Equal43~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datad => \Equal43~1_combout\,
	combout => \endereco[1]~3_combout\);

-- Location: LCCOMB_X52_Y50_N26
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = \Add2~1\ $ (\endereco[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \endereco[2]~4_combout\,
	cin => \Add2~1\,
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X52_Y50_N28
\endereco[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \endereco[2]~4_combout\ = (\Add2~2_combout\ & \Equal43~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datad => \Equal43~1_combout\,
	combout => \endereco[2]~4_combout\);

-- Location: LCCOMB_X52_Y50_N20
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\endereco[2]~4_combout\ & (((\endereco[0]~2_combout\ & !\Add2~0_combout\)) # (!\Equal43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[0]~2_combout\,
	datab => \endereco[2]~4_combout\,
	datac => \Equal43~1_combout\,
	datad => \Add2~0_combout\,
	combout => \Decoder0~0_combout\);

-- Location: CLKCTRL_G14
\Decoder0~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~0clkctrl_outclk\);

-- Location: LCCOMB_X57_Y50_N8
\memoria[4][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria[4][6]~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (!\Equal43~1_combout\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\memoria[4][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal43~1_combout\,
	datac => \memoria[4][6]~combout\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \memoria[4][6]~combout\);

-- Location: LCCOMB_X52_Y50_N8
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Add2~0_combout\) # (!\endereco[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \endereco[0]~2_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X52_Y50_N14
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\endereco[2]~4_combout\ & (((\endereco[0]~2_combout\ & !\Add2~0_combout\)) # (!\Equal43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal43~1_combout\,
	datab => \endereco[2]~4_combout\,
	datac => \endereco[0]~2_combout\,
	datad => \Add2~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: CLKCTRL_G12
\Decoder0~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~1clkctrl_outclk\);

-- Location: LCCOMB_X56_Y50_N14
\memoria[0][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria[0][6]~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (!\Equal43~1_combout\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\memoria[0][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal43~1_combout\,
	datac => \memoria[0][6]~combout\,
	datad => \Decoder0~1clkctrl_outclk\,
	combout => \memoria[0][6]~combout\);

-- Location: LCCOMB_X56_Y50_N16
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\memoria[0][6]~combout\ & (!\endereco[2]~4_combout\ & ((!\Equal43~1_combout\) # (!\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Equal43~1_combout\,
	datac => \memoria[0][6]~combout\,
	datad => \endereco[2]~4_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X56_Y50_N22
\Mult0|mult_core|decoder_node[1][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][2]~combout\ = LCELL((\Mux1~0_combout\) # ((\memoria[4][6]~combout\ & \endereco[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria[4][6]~combout\,
	datab => \Mux1~0_combout\,
	datad => \endereco[2]~4_combout\,
	combout => \Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X55_Y51_N28
\Equal34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal34~3_combout\ = (!\data_in[5]~input_o\ & \data_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[5]~input_o\,
	datac => \data_in[8]~input_o\,
	combout => \Equal34~3_combout\);

-- Location: LCCOMB_X55_Y51_N18
\Selector52~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~2_combout\ = (!\Equal33~2_combout\ & (((\data_in[6]~input_o\) # (!\Equal34~3_combout\)) # (!\Equal34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal34~1_combout\,
	datab => \data_in[6]~input_o\,
	datac => \Equal33~2_combout\,
	datad => \Equal34~3_combout\,
	combout => \Selector52~2_combout\);

-- Location: LCCOMB_X58_Y50_N4
\Mult0|mult_core|decoder_node[1][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][1]~combout\ = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X54_Y50_N16
\memoria[4][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria[4][0]~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\Equal43~1_combout\))) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & (\memoria[4][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoria[4][0]~combout\,
	datac => \Decoder0~0clkctrl_outclk\,
	datad => \Equal43~1_combout\,
	combout => \memoria[4][0]~combout\);

-- Location: LCCOMB_X52_Y50_N6
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Equal43~1_combout\ & ((\Add2~0_combout\) # (!\endereco[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \endereco[0]~2_combout\,
	datac => \Equal43~1_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X55_Y50_N26
\memoria[0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria[0][0]~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\Equal43~1_combout\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\memoria[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal43~1_combout\,
	datac => \memoria[0][0]~combout\,
	datad => \Decoder0~1clkctrl_outclk\,
	combout => \memoria[0][0]~combout\);

-- Location: LCCOMB_X55_Y50_N28
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\endereco[2]~4_combout\ & (\memoria[4][0]~combout\)) # (!\endereco[2]~4_combout\ & (((\Mux7~4_combout\) # (\memoria[0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria[4][0]~combout\,
	datab => \Mux7~4_combout\,
	datac => \endereco[2]~4_combout\,
	datad => \memoria[0][0]~combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X56_Y50_N0
\Mult0|mult_core|decoder_node[0][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][2]~combout\ = LCELL((\Mux7~3_combout\ & ((\Mux1~0_combout\) # ((\memoria[4][6]~combout\ & \endereco[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria[4][6]~combout\,
	datab => \Mux7~3_combout\,
	datac => \Mux1~0_combout\,
	datad => \endereco[2]~4_combout\,
	combout => \Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X59_Y50_N20
\Mult0|mult_core|decoder_node[0][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][1]~combout\ = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X57_Y50_N0
\Mult0|mult_core|decoder_node[1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][0]~combout\ = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X56_Y50_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|decoder_node[0][1]~combout\ & (\Mult0|mult_core|decoder_node[1][0]~combout\ $ (VCC))) # (!\Mult0|mult_core|decoder_node[0][1]~combout\ & 
-- (\Mult0|mult_core|decoder_node[1][0]~combout\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|decoder_node[0][1]~combout\ & \Mult0|mult_core|decoder_node[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][1]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][0]~combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X56_Y50_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|decoder_node[1][1]~combout\ & ((\Mult0|mult_core|decoder_node[0][2]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][2]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|decoder_node[1][1]~combout\ & ((\Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|decoder_node[0][2]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|decoder_node[1][1]~combout\ & (!\Mult0|mult_core|decoder_node[0][2]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X56_Y49_N18
\Selector52~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~3_combout\ = (\Equal34~2_combout\) # ((\Equal32~0_combout\ & !\Equal33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal32~0_combout\,
	datab => \Equal34~2_combout\,
	datac => \Equal33~2_combout\,
	combout => \Selector52~3_combout\);

-- Location: LCCOMB_X56_Y50_N20
\Selector51~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~2_combout\ = (\Selector52~2_combout\ & (\Mult0|mult_core|decoder_node[1][2]~combout\ & ((!\Selector52~3_combout\)))) # (!\Selector52~2_combout\ & (((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\) # (\Selector52~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~2_combout\,
	datab => \Mult0|mult_core|decoder_node[1][2]~combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => \Selector52~3_combout\,
	combout => \Selector51~2_combout\);

-- Location: LCCOMB_X56_Y50_N30
\Selector51~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~3_combout\ = (\Selector52~3_combout\ & (!\Mult0|mult_core|decoder_node[1][2]~combout\ & (\Selector51~2_combout\ $ (\Mux7~3_combout\)))) # (!\Selector52~3_combout\ & (((\Selector51~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][2]~combout\,
	datab => \Selector51~2_combout\,
	datac => \Mux7~3_combout\,
	datad => \Selector52~3_combout\,
	combout => \Selector51~3_combout\);

-- Location: LCCOMB_X56_Y50_N18
\Selector51~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~4_combout\ = (\Selector20~0_combout\ & (\Selector51~3_combout\ & !\Equal40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datac => \Selector51~3_combout\,
	datad => \Equal40~0_combout\,
	combout => \Selector51~4_combout\);

-- Location: LCCOMB_X56_Y52_N24
WideOr11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr11~combout\ = ((\Selector20~0_combout\ & (!\Equal40~0_combout\ & \Selector43~0_combout\))) # (!\WideNor3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datab => \Equal40~0_combout\,
	datac => \Selector43~0_combout\,
	datad => \WideNor3~0_combout\,
	combout => \WideOr11~combout\);

-- Location: CLKCTRL_G11
\WideOr11~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr11~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr11~clkctrl_outclk\);

-- Location: LCCOMB_X56_Y50_N2
\resultado[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- resultado(2) = (GLOBAL(\WideOr11~clkctrl_outclk\) & (resultado(2))) # (!GLOBAL(\WideOr11~clkctrl_outclk\) & ((\Selector51~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => resultado(2),
	datac => \Selector51~4_combout\,
	datad => \WideOr11~clkctrl_outclk\,
	combout => resultado(2));

-- Location: LCCOMB_X56_Y52_N10
\aux_int[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- aux_int(2) = (\WideOr11~combout\ & (aux_int(2))) # (!\WideOr11~combout\ & ((resultado(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_int(2),
	datac => resultado(2),
	datad => \WideOr11~combout\,
	combout => aux_int(2));

-- Location: LCCOMB_X54_Y50_N28
\Selector49~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~2_combout\ = (\Selector52~2_combout\ & (\Mult0|mult_core|decoder_node[1][2]~combout\ $ (((\Selector52~3_combout\ & \Mux7~3_combout\))))) # (!\Selector52~2_combout\ & (\Selector52~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~2_combout\,
	datab => \Selector52~3_combout\,
	datac => \Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => \Mux7~3_combout\,
	combout => \Selector49~2_combout\);

-- Location: LCCOMB_X55_Y50_N14
\Div0|auto_generated|divider|divider|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~1_cout\ = CARRY(!\Mux7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~3_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_1~1_cout\);

-- Location: LCCOMB_X55_Y50_N16
\Div0|auto_generated|divider|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~2_combout\ = !\Div0|auto_generated|divider|divider|op_1~1_cout\
-- \Div0|auto_generated|divider|divider|op_1~3\ = CARRY(!\Div0|auto_generated|divider|divider|op_1~1_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X55_Y50_N18
\Div0|auto_generated|divider|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~4_combout\ = \Div0|auto_generated|divider|divider|op_1~3\ $ (GND)
-- \Div0|auto_generated|divider|divider|op_1~5\ = CARRY(!\Div0|auto_generated|divider|divider|op_1~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X55_Y50_N20
\Div0|auto_generated|divider|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~6_combout\ = !\Div0|auto_generated|divider|divider|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|divider|op_1~6_combout\);

-- Location: LCCOMB_X54_Y50_N18
\Selector49~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~3_combout\ = (\Selector52~2_combout\ & (((\Selector49~2_combout\)))) # (!\Selector52~2_combout\ & ((\Selector49~2_combout\ & ((!\Div0|auto_generated|divider|divider|op_1~6_combout\))) # (!\Selector49~2_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~2_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \Selector49~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Selector49~3_combout\);

-- Location: LCCOMB_X54_Y50_N0
\Selector49~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~4_combout\ = (\Selector49~3_combout\ & (!\Equal40~0_combout\ & \Selector20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector49~3_combout\,
	datab => \Equal40~0_combout\,
	datad => \Selector20~0_combout\,
	combout => \Selector49~4_combout\);

-- Location: LCCOMB_X54_Y50_N10
\resultado[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- resultado(1) = (GLOBAL(\WideOr11~clkctrl_outclk\) & (resultado(1))) # (!GLOBAL(\WideOr11~clkctrl_outclk\) & ((\Selector49~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => resultado(1),
	datac => \Selector49~4_combout\,
	datad => \WideOr11~clkctrl_outclk\,
	combout => resultado(1));

-- Location: LCCOMB_X56_Y52_N8
\aux_int[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- aux_int(1) = (\WideOr11~combout\ & ((aux_int(1)))) # (!\WideOr11~combout\ & (resultado(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => resultado(1),
	datac => aux_int(1),
	datad => \WideOr11~combout\,
	combout => aux_int(1));

-- Location: LCCOMB_X56_Y50_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = \Mult0|mult_core|decoder_node[1][2]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|decoder_node[1][2]~combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X56_Y50_N26
\Selector52~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~4_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Equal34~2_combout\ & \Equal33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datac => \Equal34~2_combout\,
	datad => \Equal33~2_combout\,
	combout => \Selector52~4_combout\);

-- Location: LCCOMB_X56_Y50_N24
\Selector52~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~5_combout\ = (!\Mult0|mult_core|decoder_node[1][2]~combout\ & (\Selector52~3_combout\ & (\Selector52~2_combout\ $ (!\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~2_combout\,
	datab => \Mult0|mult_core|decoder_node[1][2]~combout\,
	datac => \Mux7~3_combout\,
	datad => \Selector52~3_combout\,
	combout => \Selector52~5_combout\);

-- Location: LCCOMB_X56_Y50_N4
\Selector52~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~6_combout\ = (\Selector20~0_combout\ & (!\Equal40~0_combout\ & ((\Selector52~4_combout\) # (\Selector52~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datab => \Selector52~4_combout\,
	datac => \Selector52~5_combout\,
	datad => \Equal40~0_combout\,
	combout => \Selector52~6_combout\);

-- Location: LCCOMB_X56_Y50_N28
\resultado[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- resultado(3) = (GLOBAL(\WideOr11~clkctrl_outclk\) & ((resultado(3)))) # (!GLOBAL(\WideOr11~clkctrl_outclk\) & (\Selector52~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector52~6_combout\,
	datac => resultado(3),
	datad => \WideOr11~clkctrl_outclk\,
	combout => resultado(3));

-- Location: LCCOMB_X56_Y52_N16
\aux_int[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- aux_int(3) = (\WideOr11~combout\ & ((aux_int(3)))) # (!\WideOr11~combout\ & (resultado(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => resultado(3),
	datab => aux_int(3),
	datad => \WideOr11~combout\,
	combout => aux_int(3));

-- Location: LCCOMB_X56_Y52_N20
\Selector43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = ((!aux_int(2) & !aux_int(1))) # (!aux_int(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_int(2),
	datac => aux_int(1),
	datad => aux_int(3),
	combout => \Selector43~1_combout\);

-- Location: LCCOMB_X56_Y52_N6
\Selector43~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~3_combout\ = (\Selector43~2_combout\ & ((\Selector43~0_combout\ & (!\WideNor3~0_combout\)) # (!\Selector43~0_combout\ & ((\Selector43~1_combout\))))) # (!\Selector43~2_combout\ & (((\Selector43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor3~0_combout\,
	datab => \Selector43~2_combout\,
	datac => \Selector43~0_combout\,
	datad => \Selector43~1_combout\,
	combout => \Selector43~3_combout\);

-- Location: CLKCTRL_G13
\Selector43~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector43~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector43~3clkctrl_outclk\);

-- Location: LCCOMB_X56_Y49_N6
\DISPLAY[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[0]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & ((\Selector45~1_combout\))) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & (\DISPLAY[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY[0]$latch~combout\,
	datab => \Selector45~1_combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[0]$latch~combout\);

-- Location: LCCOMB_X56_Y49_N4
\Selector18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (!\Equal40~0_combout\ & ((\data_in[9]~input_o\) # (!\Equal42~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal42~1_combout\,
	datac => \data_in[9]~input_o\,
	datad => \Equal40~0_combout\,
	combout => \Selector18~2_combout\);

-- Location: LCCOMB_X56_Y49_N14
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\Selector52~2_combout\ & !\Equal31~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~2_combout\,
	datac => \Equal31~1_combout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X56_Y49_N22
\Selector30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (!\Equal44~0_combout\ & (\Selector18~2_combout\ & (\Selector30~0_combout\ & \WideNor3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal44~0_combout\,
	datab => \Selector18~2_combout\,
	datac => \Selector30~0_combout\,
	datad => \WideNor3~combout\,
	combout => \Selector30~1_combout\);

-- Location: LCCOMB_X64_Y49_N16
\DISPLAY[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[1]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector30~1_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector30~1_combout\,
	datac => \Selector43~3clkctrl_outclk\,
	datad => \DISPLAY[1]$latch~combout\,
	combout => \DISPLAY[1]$latch~combout\);

-- Location: LCCOMB_X56_Y52_N30
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!\Equal36~0_combout\ & (!\Equal38~0_combout\ & !\Equal39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal36~0_combout\,
	datac => \Equal38~0_combout\,
	datad => \Equal39~0_combout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X56_Y49_N8
\Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = ((\Equal42~1_combout\ & \data_in[9]~input_o\)) # (!\Selector29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal42~1_combout\,
	datab => \Selector29~0_combout\,
	datac => \data_in[9]~input_o\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X71_Y49_N8
\DISPLAY[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[2]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector29~1_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~1_combout\,
	datac => \DISPLAY[2]$latch~combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[2]$latch~combout\);

-- Location: LCCOMB_X56_Y49_N30
\Selector28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\Equal44~0_combout\) # ((\Equal31~1_combout\) # (\Equal33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal44~0_combout\,
	datac => \Equal31~1_combout\,
	datad => \Equal33~2_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X64_Y41_N4
\DISPLAY[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[3]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector28~1_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~1_combout\,
	datac => \DISPLAY[3]$latch~combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[3]$latch~combout\);

-- Location: LCCOMB_X56_Y51_N12
\Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (!\Equal43~1_combout\ & ((\data_in[9]~input_o\) # (!\Equal42~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[9]~input_o\,
	datac => \Equal42~1_combout\,
	datad => \Equal43~1_combout\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X55_Y52_N14
\Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\Equal39~0_combout\) # (((\Equal32~0_combout\) # (!\Selector27~0_combout\)) # (!\Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal39~0_combout\,
	datab => \Selector27~1_combout\,
	datac => \Equal32~0_combout\,
	datad => \Selector27~0_combout\,
	combout => \Selector27~2_combout\);

-- Location: LCCOMB_X59_Y52_N12
\DISPLAY[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[4]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector27~2_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector27~2_combout\,
	datac => \Selector43~3clkctrl_outclk\,
	datad => \DISPLAY[4]$latch~combout\,
	combout => \DISPLAY[4]$latch~combout\);

-- Location: LCCOMB_X56_Y49_N16
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\Selector45~0_combout\ & (!\Equal31~1_combout\ & ((!\data_in[9]~input_o\) # (!\Equal42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datab => \Equal42~1_combout\,
	datac => \data_in[9]~input_o\,
	datad => \Equal31~1_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X60_Y49_N4
\DISPLAY[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[5]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector26~0_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datac => \DISPLAY[5]$latch~combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[5]$latch~combout\);

-- Location: LCCOMB_X56_Y49_N2
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\Equal44~0_combout\) # ((\Equal33~2_combout\) # (\Equal42~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal44~0_combout\,
	datac => \Equal33~2_combout\,
	datad => \Equal42~1_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X60_Y41_N4
\DISPLAY[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[6]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector25~0_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datac => \DISPLAY[6]$latch~combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[6]$latch~combout\);

-- Location: LCCOMB_X56_Y49_N0
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\Equal44~0_combout\ & (!\Equal43~1_combout\ & (\WideNor3~combout\ & \Selector18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal44~0_combout\,
	datab => \Equal43~1_combout\,
	datac => \WideNor3~combout\,
	datad => \Selector18~2_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X60_Y49_N30
\DISPLAY[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[7]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector24~0_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datac => \DISPLAY[7]$latch~combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[7]$latch~combout\);

-- Location: LCCOMB_X54_Y50_N4
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Equal40~0_combout\) # ((\Equal43~1_combout\) # (!\Selector20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal40~0_combout\,
	datac => \Equal43~1_combout\,
	datad => \Selector20~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X54_Y50_N30
\DISPLAY[8]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[8]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector23~0_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datac => \DISPLAY[8]$latch~combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[8]$latch~combout\);

-- Location: LCCOMB_X56_Y51_N14
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ((\Equal40~0_combout\) # (!\Selector27~1_combout\)) # (!\Selector20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datac => \Selector27~1_combout\,
	datad => \Equal40~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X57_Y49_N12
\DISPLAY[9]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[9]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector22~0_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datac => \Selector43~3clkctrl_outclk\,
	datad => \DISPLAY[9]$latch~combout\,
	combout => \DISPLAY[9]$latch~combout\);

-- Location: LCCOMB_X55_Y51_N16
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ((\data_in[5]~input_o\ & ((\data_in[6]~input_o\) # (\data_in[8]~input_o\))) # (!\data_in[5]~input_o\ & (\data_in[6]~input_o\ $ (!\data_in[8]~input_o\)))) # (!\Equal34~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[5]~input_o\,
	datab => \data_in[6]~input_o\,
	datac => \data_in[8]~input_o\,
	datad => \Equal34~1_combout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X56_Y49_N26
\Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = ((\Equal40~0_combout\) # ((!\data_in[9]~input_o\ & \Equal42~1_combout\))) # (!\Selector21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[9]~input_o\,
	datab => \Selector21~0_combout\,
	datac => \Equal42~1_combout\,
	datad => \Equal40~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X66_Y49_N28
\DISPLAY[10]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[10]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector21~1_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~1_combout\,
	datac => \Selector43~3clkctrl_outclk\,
	datad => \DISPLAY[10]$latch~combout\,
	combout => \DISPLAY[10]$latch~combout\);

-- Location: LCCOMB_X54_Y50_N22
\Selector20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\Equal34~2_combout\) # (!\Selector20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal34~2_combout\,
	datad => \Selector20~0_combout\,
	combout => \Selector20~1_combout\);

-- Location: LCCOMB_X54_Y50_N24
\DISPLAY[11]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[11]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & ((\Selector20~1_combout\))) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & (\DISPLAY[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY[11]$latch~combout\,
	datac => \Selector20~1_combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[11]$latch~combout\);

-- Location: LCCOMB_X56_Y49_N24
\Selector18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = (!\Equal40~0_combout\ & (\Selector45~0_combout\ & ((\data_in[9]~input_o\) # (!\Equal42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal40~0_combout\,
	datab => \data_in[9]~input_o\,
	datac => \Selector45~0_combout\,
	datad => \Equal42~1_combout\,
	combout => \Selector18~3_combout\);

-- Location: LCCOMB_X60_Y41_N30
\DISPLAY[12]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[12]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector18~3_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector18~3_combout\,
	datac => \DISPLAY[12]$latch~combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[12]$latch~combout\);

-- Location: LCCOMB_X56_Y49_N12
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Equal33~2_combout\) # (((\Equal44~0_combout\) # (\Equal32~0_combout\)) # (!\Selector21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal33~2_combout\,
	datab => \Selector21~0_combout\,
	datac => \Equal44~0_combout\,
	datad => \Equal32~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X60_Y41_N8
\DISPLAY[13]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[13]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector17~0_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector17~0_combout\,
	datac => \DISPLAY[13]$latch~combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[13]$latch~combout\);

-- Location: LCCOMB_X57_Y52_N20
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!aux_int(3) & aux_int(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux_int(3),
	datad => aux_int(2),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X57_Y52_N22
\Selector43~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~4_combout\ = (!aux_int(1) & !aux_int(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => aux_int(1),
	datad => aux_int(2),
	combout => \Selector43~4_combout\);

-- Location: LCCOMB_X56_Y51_N20
\Selector47~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~3_combout\ = (\Equal31~0_combout\ & (!\data_in[2]~input_o\ & ((!\data_in[1]~input_o\) # (!\data_in[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal31~0_combout\,
	datab => \data_in[2]~input_o\,
	datac => \data_in[9]~input_o\,
	datad => \data_in[1]~input_o\,
	combout => \Selector47~3_combout\);

-- Location: LCCOMB_X56_Y53_N4
\Equal33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal33~3_combout\ = (!\data_in[6]~input_o\ & (!\data_in[5]~input_o\ & !\data_in[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[6]~input_o\,
	datac => \data_in[5]~input_o\,
	datad => \data_in[8]~input_o\,
	combout => \Equal33~3_combout\);

-- Location: LCCOMB_X56_Y52_N12
\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\Equal34~0_combout\ & (\data_in[4]~input_o\ & \Equal33~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal34~0_combout\,
	datac => \data_in[4]~input_o\,
	datad => \Equal33~3_combout\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X57_Y50_N18
\Mult0|mult_core|decoder_node[0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][0]~combout\ = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X57_Y50_N20
\Selector47~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~4_combout\ = (\Mult0|mult_core|decoder_node[1][2]~combout\ & ((\Equal40~0_combout\) # ((\Equal33~2_combout\ & \Mult0|mult_core|decoder_node[0][0]~combout\)))) # (!\Mult0|mult_core|decoder_node[1][2]~combout\ & (((\Equal33~2_combout\ & 
-- \Mult0|mult_core|decoder_node[0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][2]~combout\,
	datab => \Equal40~0_combout\,
	datac => \Equal33~2_combout\,
	datad => \Mult0|mult_core|decoder_node[0][0]~combout\,
	combout => \Selector47~4_combout\);

-- Location: LCCOMB_X57_Y50_N22
\Selector47~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~5_combout\ = (\Selector47~4_combout\) # ((\Mux7~3_combout\ & (\Selector47~3_combout\)) # (!\Mux7~3_combout\ & ((\Selector47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~3_combout\,
	datab => \Selector47~0_combout\,
	datac => \Selector47~4_combout\,
	datad => \Mux7~3_combout\,
	combout => \Selector47~5_combout\);

-- Location: LCCOMB_X55_Y50_N0
\Div0|auto_generated|divider|divider|StageOut[10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\Div0|auto_generated|divider|divider|op_1~4_combout\ & !\Div0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X55_Y50_N30
\Div0|auto_generated|divider|divider|StageOut[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ = (\Div0|auto_generated|divider|divider|op_1~2_combout\ & !\Div0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\);

-- Location: LCCOMB_X56_Y50_N6
\Div0|auto_generated|divider|divider|StageOut[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\Div0|auto_generated|divider|divider|op_1~6_combout\ & ((\Mux1~0_combout\) # ((\endereco[2]~4_combout\ & \memoria[4][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	datab => \Mux1~0_combout\,
	datac => \endereco[2]~4_combout\,
	datad => \memoria[4][6]~combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X55_Y50_N12
\Div0|auto_generated|divider|divider|StageOut[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ = (!\Div0|auto_generated|divider|divider|op_1~6_combout\ & \Mux7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \Mux7~3_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~3_combout\);

-- Location: LCCOMB_X55_Y50_N2
\Div0|auto_generated|divider|divider|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~1_cout\ = CARRY(!\Mux7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_2~1_cout\);

-- Location: LCCOMB_X55_Y50_N4
\Div0|auto_generated|divider|divider|op_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~3_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (\Mult0|mult_core|decoder_node[1][2]~combout\ & !\Div0|auto_generated|divider|divider|op_2~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\Mult0|mult_core|decoder_node[1][2]~combout\) # (!\Div0|auto_generated|divider|divider|op_2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datab => \Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~1_cout\,
	cout => \Div0|auto_generated|divider|divider|op_2~3_cout\);

-- Location: LCCOMB_X55_Y50_N6
\Div0|auto_generated|divider|divider|op_2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\) # (!\Div0|auto_generated|divider|divider|op_2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~3_cout\,
	cout => \Div0|auto_generated|divider|divider|op_2~5_cout\);

-- Location: LCCOMB_X55_Y50_N8
\Div0|auto_generated|divider|divider|op_2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & !\Div0|auto_generated|divider|divider|op_2~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~5_cout\,
	cout => \Div0|auto_generated|divider|divider|op_2~7_cout\);

-- Location: LCCOMB_X55_Y50_N10
\Div0|auto_generated|divider|divider|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~8_combout\ = \Div0|auto_generated|divider|divider|op_2~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_2~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X56_Y52_N28
\Selector47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\Mux7~3_combout\ & (((\Equal36~0_combout\)))) # (!\Mux7~3_combout\ & ((\Selector47~0_combout\) # ((\Equal39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~0_combout\,
	datab => \Equal36~0_combout\,
	datac => \Mux7~3_combout\,
	datad => \Equal39~0_combout\,
	combout => \Selector47~1_combout\);

-- Location: LCCOMB_X56_Y52_N0
\Selector47~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~2_combout\ = (\Mult0|mult_core|decoder_node[1][2]~combout\ & (((!\Selector27~0_combout\)))) # (!\Mult0|mult_core|decoder_node[1][2]~combout\ & ((\Selector47~1_combout\) # ((\Equal38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~1_combout\,
	datab => \Equal38~0_combout\,
	datac => \Selector27~0_combout\,
	datad => \Mult0|mult_core|decoder_node[1][2]~combout\,
	combout => \Selector47~2_combout\);

-- Location: LCCOMB_X55_Y50_N22
\Selector47~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~6_combout\ = (\Selector47~5_combout\) # ((\Selector47~2_combout\) # ((!\Div0|auto_generated|divider|divider|op_2~8_combout\ & \Equal34~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~5_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \Equal34~2_combout\,
	datad => \Selector47~2_combout\,
	combout => \Selector47~6_combout\);

-- Location: LCCOMB_X55_Y50_N24
\resultado[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- resultado(0) = (GLOBAL(\WideOr11~clkctrl_outclk\) & ((resultado(0)))) # (!GLOBAL(\WideOr11~clkctrl_outclk\) & (\Selector47~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~6_combout\,
	datab => resultado(0),
	datad => \WideOr11~clkctrl_outclk\,
	combout => resultado(0));

-- Location: LCCOMB_X57_Y52_N8
\aux_int[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- aux_int(0) = (GLOBAL(\WideOr11~clkctrl_outclk\) & ((aux_int(0)))) # (!GLOBAL(\WideOr11~clkctrl_outclk\) & (resultado(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => resultado(0),
	datac => aux_int(0),
	datad => \WideOr11~clkctrl_outclk\,
	combout => aux_int(0));

-- Location: LCCOMB_X57_Y52_N4
\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\WideNor3~0_combout\ & (((aux_int(3)) # (!aux_int(0))) # (!\Selector43~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~4_combout\,
	datab => aux_int(3),
	datac => \WideNor3~0_combout\,
	datad => aux_int(0),
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X57_Y52_N26
\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = ((!aux_int(1) & (\Equal4~0_combout\ & !aux_int(0)))) # (!\Selector35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_int(1),
	datab => \Equal4~0_combout\,
	datac => \Selector35~0_combout\,
	datad => aux_int(0),
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X58_Y52_N14
\DISPLAY[14]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[14]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & ((\Selector38~0_combout\))) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & (\DISPLAY[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY[14]$latch~combout\,
	datac => \Selector38~0_combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[14]$latch~combout\);

-- Location: LCCOMB_X57_Y52_N28
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = ((\Equal4~0_combout\ & (aux_int(1) $ (aux_int(0))))) # (!\WideNor3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_int(1),
	datab => aux_int(0),
	datac => \Equal4~0_combout\,
	datad => \WideNor3~0_combout\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X61_Y49_N16
\DISPLAY[15]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[15]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector37~0_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector37~0_combout\,
	datac => \Selector43~3clkctrl_outclk\,
	datad => \DISPLAY[15]$latch~combout\,
	combout => \DISPLAY[15]$latch~combout\);

-- Location: LCCOMB_X57_Y52_N14
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (aux_int(1) & !aux_int(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux_int(1),
	datac => aux_int(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X57_Y52_N0
\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = ((\Equal2~0_combout\ & (!aux_int(0) & !aux_int(2)))) # (!\WideNor3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor3~0_combout\,
	datab => \Equal2~0_combout\,
	datac => aux_int(0),
	datad => aux_int(2),
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X58_Y52_N12
\DISPLAY[16]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[16]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & ((\Selector36~0_combout\))) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & (\DISPLAY[16]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY[16]$latch~combout\,
	datac => \Selector36~0_combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[16]$latch~combout\);

-- Location: LCCOMB_X57_Y52_N18
\Selector35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (aux_int(3) & (!aux_int(1) & (aux_int(0) & !aux_int(2)))) # (!aux_int(3) & (aux_int(2) & (aux_int(1) $ (!aux_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_int(1),
	datab => aux_int(3),
	datac => aux_int(0),
	datad => aux_int(2),
	combout => \Selector35~1_combout\);

-- Location: LCCOMB_X57_Y52_N24
\Selector35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~2_combout\ = (\Selector35~1_combout\) # (!\Selector35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector35~0_combout\,
	datad => \Selector35~1_combout\,
	combout => \Selector35~2_combout\);

-- Location: LCCOMB_X58_Y52_N22
\DISPLAY[17]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[17]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & ((\Selector35~2_combout\))) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & (\DISPLAY[17]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY[17]$latch~combout\,
	datac => \Selector35~2_combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[17]$latch~combout\);

-- Location: LCCOMB_X57_Y52_N30
\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (aux_int(3) & (!aux_int(1) & (aux_int(0) & !aux_int(2)))) # (!aux_int(3) & ((aux_int(1) & (aux_int(0))) # (!aux_int(1) & ((aux_int(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_int(3),
	datab => aux_int(1),
	datac => aux_int(0),
	datad => aux_int(2),
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X58_Y52_N4
\Selector34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\Selector34~0_combout\) # (!\Selector35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector34~0_combout\,
	datad => \Selector35~0_combout\,
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X59_Y52_N26
\DISPLAY[18]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[18]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector34~1_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[18]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector34~1_combout\,
	datac => \DISPLAY[18]$latch~combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[18]$latch~combout\);

-- Location: LCCOMB_X57_Y52_N16
\Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = ((\Equal2~0_combout\ & ((aux_int(0)) # (!aux_int(2))))) # (!\Selector35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~0_combout\,
	datab => \Equal2~0_combout\,
	datac => aux_int(0),
	datad => aux_int(2),
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X61_Y41_N8
\DISPLAY[19]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[19]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & (\Selector33~0_combout\)) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & ((\DISPLAY[19]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector33~0_combout\,
	datac => \DISPLAY[19]$latch~combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[19]$latch~combout\);

-- Location: LCCOMB_X57_Y52_N10
\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (aux_int(3) $ (((!aux_int(2) & !aux_int(1))))) # (!\WideNor3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_int(2),
	datab => aux_int(1),
	datac => aux_int(3),
	datad => \WideNor3~0_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X65_Y49_N28
\DISPLAY[20]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[20]$latch~combout\ = (GLOBAL(\Selector43~3clkctrl_outclk\) & ((\Selector32~0_combout\))) # (!GLOBAL(\Selector43~3clkctrl_outclk\) & (\DISPLAY[20]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY[20]$latch~combout\,
	datac => \Selector32~0_combout\,
	datad => \Selector43~3clkctrl_outclk\,
	combout => \DISPLAY[20]$latch~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_DISPLAY(0) <= \DISPLAY[0]~output_o\;

ww_DISPLAY(1) <= \DISPLAY[1]~output_o\;

ww_DISPLAY(2) <= \DISPLAY[2]~output_o\;

ww_DISPLAY(3) <= \DISPLAY[3]~output_o\;

ww_DISPLAY(4) <= \DISPLAY[4]~output_o\;

ww_DISPLAY(5) <= \DISPLAY[5]~output_o\;

ww_DISPLAY(6) <= \DISPLAY[6]~output_o\;

ww_DISPLAY(7) <= \DISPLAY[7]~output_o\;

ww_DISPLAY(8) <= \DISPLAY[8]~output_o\;

ww_DISPLAY(9) <= \DISPLAY[9]~output_o\;

ww_DISPLAY(10) <= \DISPLAY[10]~output_o\;

ww_DISPLAY(11) <= \DISPLAY[11]~output_o\;

ww_DISPLAY(12) <= \DISPLAY[12]~output_o\;

ww_DISPLAY(13) <= \DISPLAY[13]~output_o\;

ww_DISPLAY(14) <= \DISPLAY[14]~output_o\;

ww_DISPLAY(15) <= \DISPLAY[15]~output_o\;

ww_DISPLAY(16) <= \DISPLAY[16]~output_o\;

ww_DISPLAY(17) <= \DISPLAY[17]~output_o\;

ww_DISPLAY(18) <= \DISPLAY[18]~output_o\;

ww_DISPLAY(19) <= \DISPLAY[19]~output_o\;

ww_DISPLAY(20) <= \DISPLAY[20]~output_o\;

ww_DISPLAY(21) <= \DISPLAY[21]~output_o\;

ww_DISPLAY(22) <= \DISPLAY[22]~output_o\;

ww_DISPLAY(23) <= \DISPLAY[23]~output_o\;

ww_DISPLAY(24) <= \DISPLAY[24]~output_o\;

ww_DISPLAY(25) <= \DISPLAY[25]~output_o\;

ww_DISPLAY(26) <= \DISPLAY[26]~output_o\;

ww_DISPLAY(27) <= \DISPLAY[27]~output_o\;

ww_DISPLAY(28) <= \DISPLAY[28]~output_o\;

ww_DISPLAY(29) <= \DISPLAY[29]~output_o\;

ww_DISPLAY(30) <= \DISPLAY[30]~output_o\;

ww_DISPLAY(31) <= \DISPLAY[31]~output_o\;

ww_DISPLAY(32) <= \DISPLAY[32]~output_o\;

ww_DISPLAY(33) <= \DISPLAY[33]~output_o\;

ww_DISPLAY(34) <= \DISPLAY[34]~output_o\;
END structure;


