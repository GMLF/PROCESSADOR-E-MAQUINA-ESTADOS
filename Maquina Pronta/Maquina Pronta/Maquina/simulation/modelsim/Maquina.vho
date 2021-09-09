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

-- DATE "08/21/2021 13:40:21"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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

ENTITY 	Maquina IS
    PORT (
	M05 : IN std_logic_vector(3 DOWNTO 0);
	M1 : IN std_logic_vector(3 DOWNTO 0);
	OP : IN std_logic_vector(1 DOWNTO 0);
	LED : BUFFER std_logic_vector(1 DOWNTO 0);
	DISPLAY : BUFFER std_logic_vector(34 DOWNTO 0)
	);
END Maquina;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- M05[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M05[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M05[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M05[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Maquina IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_M05 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_M1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OP : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DISPLAY : std_logic_vector(34 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DISPLAY[34]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
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
SIGNAL \M05[1]~input_o\ : std_logic;
SIGNAL \M05[3]~input_o\ : std_logic;
SIGNAL \M05[2]~input_o\ : std_logic;
SIGNAL \M05[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \M1[2]~input_o\ : std_logic;
SIGNAL \M1[3]~input_o\ : std_logic;
SIGNAL \M1[1]~input_o\ : std_logic;
SIGNAL \M1[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \LED~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \LED~1_combout\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \DISPLAY[34]~0_combout\ : std_logic;
SIGNAL \DISPLAY[34]~0clkctrl_outclk\ : std_logic;
SIGNAL \DISPLAY[0]$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \DISPLAY[1]$latch~combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \DISPLAY[24]~1_combout\ : std_logic;
SIGNAL \DISPLAY[3]$latch~combout\ : std_logic;
SIGNAL \DISPLAY[23]~2_combout\ : std_logic;
SIGNAL \DISPLAY[6]$latch~combout\ : std_logic;
SIGNAL \DISPLAY[13]~3_combout\ : std_logic;
SIGNAL \DISPLAY[10]$latch~combout\ : std_logic;
SIGNAL \DISPLAY[14]$latch~combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \DISPLAY[20]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LED~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_M05 <= M05;
ww_M1 <= M1;
ww_OP <= OP;
LED <= ww_LED;
DISPLAY <= ww_DISPLAY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\DISPLAY[34]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DISPLAY[34]~0_combout\);
\ALT_INV_LED~1_combout\ <= NOT \LED~1_combout\;
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

-- Location: IOOBUF_X46_Y54_N2
\LED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED~0_combout\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED~1_combout\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

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
	i => \DISPLAY[1]$latch~combout\,
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
	i => \DISPLAY[0]$latch~combout\,
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
	i => \DISPLAY[0]$latch~combout\,
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
	i => \DISPLAY[0]$latch~combout\,
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
	i => VCC,
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
	i => \DISPLAY[1]$latch~combout\,
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
	i => \DISPLAY[0]$latch~combout\,
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
	i => \DISPLAY[0]$latch~combout\,
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
	i => \DISPLAY[10]$latch~combout\,
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
	i => \DISPLAY[1]$latch~combout\,
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
	i => \DISPLAY[1]$latch~combout\,
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
	i => \DISPLAY[1]$latch~combout\,
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
	i => \DISPLAY[0]$latch~combout\,
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
	i => \DISPLAY[0]$latch~combout\,
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
	i => \DISPLAY[0]$latch~combout\,
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
	i => \DISPLAY[6]$latch~combout\,
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
	i => \DISPLAY[6]$latch~combout\,
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
	i => \DISPLAY[3]$latch~combout\,
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
	i => \DISPLAY[0]$latch~combout\,
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
	i => \DISPLAY[0]$latch~combout\,
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
	i => \DISPLAY[1]$latch~combout\,
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
	i => \DISPLAY[20]$latch~combout\,
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
	i => \DISPLAY[20]$latch~combout\,
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

-- Location: IOIBUF_X51_Y54_N22
\M05[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M05(1),
	o => \M05[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\M05[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M05(3),
	o => \M05[3]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\M05[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M05(2),
	o => \M05[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\M05[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M05(0),
	o => \M05[0]~input_o\);

-- Location: LCCOMB_X51_Y52_N16
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\M05[1]~input_o\ & (\M05[3]~input_o\ & (\M05[2]~input_o\ & \M05[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M05[1]~input_o\,
	datab => \M05[3]~input_o\,
	datac => \M05[2]~input_o\,
	datad => \M05[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X51_Y52_N12
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\M05[3]~input_o\ & (((\M05[2]~input_o\ & !\M05[0]~input_o\)))) # (!\M05[3]~input_o\ & (\M05[1]~input_o\ & ((\M05[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M05[1]~input_o\,
	datab => \M05[3]~input_o\,
	datac => \M05[2]~input_o\,
	datad => \M05[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X58_Y54_N29
\M1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M1(2),
	o => \M1[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\M1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M1(3),
	o => \M1[3]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\M1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M1(1),
	o => \M1[1]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\M1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M1(0),
	o => \M1[0]~input_o\);

-- Location: LCCOMB_X55_Y52_N4
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\M1[2]~input_o\ & (\M1[3]~input_o\ & (\M1[1]~input_o\ & \M1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1[2]~input_o\,
	datab => \M1[3]~input_o\,
	datac => \M1[1]~input_o\,
	datad => \M1[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X51_Y52_N6
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\M05[3]~input_o\ & (!\M05[0]~input_o\ & (\M05[1]~input_o\ $ (!\M05[2]~input_o\)))) # (!\M05[3]~input_o\ & (\M05[1]~input_o\ $ (\M05[2]~input_o\ $ (\M05[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M05[1]~input_o\,
	datab => \M05[3]~input_o\,
	datac => \M05[2]~input_o\,
	datad => \M05[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X55_Y52_N10
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\M1[3]~input_o\ & (\M1[2]~input_o\ & ((!\M1[0]~input_o\)))) # (!\M1[3]~input_o\ & (((\M1[1]~input_o\ & \M1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1[2]~input_o\,
	datab => \M1[3]~input_o\,
	datac => \M1[1]~input_o\,
	datad => \M1[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X51_Y52_N20
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mux2~0_combout\ & (\Mux4~0_combout\ $ (VCC))) # (!\Mux2~0_combout\ & (\Mux4~0_combout\ & VCC))
-- \Add0~1\ = CARRY((\Mux2~0_combout\ & \Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux4~0_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X51_Y52_N22
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mux1~0_combout\ & ((\Mux3~0_combout\ & (\Add0~1\ & VCC)) # (!\Mux3~0_combout\ & (!\Add0~1\)))) # (!\Mux1~0_combout\ & ((\Mux3~0_combout\ & (!\Add0~1\)) # (!\Mux3~0_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\Mux1~0_combout\ & (!\Mux3~0_combout\ & !\Add0~1\)) # (!\Mux1~0_combout\ & ((!\Add0~1\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux3~0_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X51_Y52_N24
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Mux0~0_combout\ & (\Add0~3\ $ (GND))) # (!\Mux0~0_combout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\Mux0~0_combout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X51_Y52_N26
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \Add0~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X50_Y52_N14
\LED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~0_combout\ = (\Add0~4_combout\) # ((\Add0~2_combout\) # (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~6_combout\,
	combout => \LED~0_combout\);

-- Location: LCCOMB_X55_Y52_N8
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\M1[3]~input_o\ & (!\M1[0]~input_o\ & (\M1[2]~input_o\ $ (!\M1[1]~input_o\)))) # (!\M1[3]~input_o\ & (\M1[2]~input_o\ $ (\M1[1]~input_o\ $ (\M1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1[2]~input_o\,
	datab => \M1[3]~input_o\,
	datac => \M1[1]~input_o\,
	datad => \M1[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X51_Y52_N8
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\Mux5~0_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~0_combout\,
	datad => \Add0~0_combout\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X50_Y52_N6
\LED~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED~1_combout\ = (!\Add0~6_combout\ & (!\Add0~4_combout\ & (!\process_1~0_combout\ & !\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~4_combout\,
	datac => \process_1~0_combout\,
	datad => \Add0~2_combout\,
	combout => \LED~1_combout\);

-- Location: IOIBUF_X49_Y54_N1
\OP[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\OP[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: LCCOMB_X72_Y45_N20
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\OP[0]~input_o\) # (\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X50_Y52_N26
\DISPLAY[34]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[34]~0_combout\ = (\Add0~4_combout\) # ((\Add0~2_combout\) # ((\process_1~0_combout\) # (\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~2_combout\,
	datac => \process_1~0_combout\,
	datad => \Add0~6_combout\,
	combout => \DISPLAY[34]~0_combout\);

-- Location: CLKCTRL_G12
\DISPLAY[34]~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DISPLAY[34]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DISPLAY[34]~0clkctrl_outclk\);

-- Location: LCCOMB_X74_Y45_N16
\DISPLAY[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[0]$latch~combout\ = (GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & ((!\Mux6~0_combout\))) # (!GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & (\DISPLAY[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY[0]$latch~combout\,
	datac => \Mux6~0_combout\,
	datad => \DISPLAY[34]~0clkctrl_outclk\,
	combout => \DISPLAY[0]$latch~combout\);

-- Location: LCCOMB_X72_Y45_N18
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\OP[1]~input_o\) # (!\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X72_Y45_N12
\DISPLAY[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[1]$latch~combout\ = (GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & (\Mux7~0_combout\)) # (!GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & ((\DISPLAY[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => \DISPLAY[34]~0clkctrl_outclk\,
	datad => \DISPLAY[1]$latch~combout\,
	combout => \DISPLAY[1]$latch~combout\);

-- Location: LCCOMB_X51_Y52_N10
\process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\Mux5~0_combout\ & (!\Add0~4_combout\ & (\Add0~0_combout\ & !\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X51_Y52_N30
\DISPLAY[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[24]~1_combout\ = ((!\OP[0]~input_o\ & ((\Add0~6_combout\) # (!\process_1~1_combout\)))) # (!\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \OP[1]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \process_1~1_combout\,
	combout => \DISPLAY[24]~1_combout\);

-- Location: LCCOMB_X52_Y52_N22
\DISPLAY[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[3]$latch~combout\ = (GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & (\DISPLAY[24]~1_combout\)) # (!GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & ((\DISPLAY[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY[24]~1_combout\,
	datac => \DISPLAY[3]$latch~combout\,
	datad => \DISPLAY[34]~0clkctrl_outclk\,
	combout => \DISPLAY[3]$latch~combout\);

-- Location: LCCOMB_X51_Y52_N2
\DISPLAY[23]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[23]~2_combout\ = (\OP[0]~input_o\) # ((\OP[1]~input_o\ & (\process_1~1_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \process_1~1_combout\,
	datad => \Add0~6_combout\,
	combout => \DISPLAY[23]~2_combout\);

-- Location: LCCOMB_X51_Y52_N4
\DISPLAY[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[6]$latch~combout\ = (GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & (!\DISPLAY[23]~2_combout\)) # (!GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & ((\DISPLAY[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY[23]~2_combout\,
	datac => \DISPLAY[6]$latch~combout\,
	datad => \DISPLAY[34]~0clkctrl_outclk\,
	combout => \DISPLAY[6]$latch~combout\);

-- Location: LCCOMB_X51_Y52_N0
\DISPLAY[13]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[13]~3_combout\ = (\OP[0]~input_o\ & (\OP[1]~input_o\)) # (!\OP[0]~input_o\ & (((\process_1~1_combout\ & !\Add0~6_combout\)) # (!\OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \process_1~1_combout\,
	datad => \Add0~6_combout\,
	combout => \DISPLAY[13]~3_combout\);

-- Location: LCCOMB_X51_Y52_N18
\DISPLAY[10]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[10]$latch~combout\ = (GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & ((\DISPLAY[13]~3_combout\))) # (!GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & (\DISPLAY[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY[10]$latch~combout\,
	datac => \DISPLAY[34]~0clkctrl_outclk\,
	datad => \DISPLAY[13]~3_combout\,
	combout => \DISPLAY[10]$latch~combout\);

-- Location: LCCOMB_X72_Y45_N14
\DISPLAY[14]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[14]$latch~combout\ = (GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & (!\OP[1]~input_o\)) # (!GLOBAL(\DISPLAY[34]~0clkctrl_outclk\) & ((\DISPLAY[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datac => \DISPLAY[14]$latch~combout\,
	datad => \DISPLAY[34]~0clkctrl_outclk\,
	combout => \DISPLAY[14]$latch~combout\);

-- Location: LCCOMB_X51_Y52_N14
\process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\Add0~6_combout\) # (((\Add0~2_combout\) # (\Add0~4_combout\)) # (!\process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \process_1~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X52_Y52_N24
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\OP[0]~input_o\) # (!\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X51_Y52_N28
\DISPLAY[20]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY[20]$latch~combout\ = ((\LED~0_combout\ & ((\Mux6~1_combout\))) # (!\LED~0_combout\ & (\DISPLAY[20]$latch~combout\))) # (!\process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~2_combout\,
	datab => \DISPLAY[20]$latch~combout\,
	datac => \Mux6~1_combout\,
	datad => \LED~0_combout\,
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

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

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


