----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2023 12:27:36
-- Design Name: 
-- Module Name: tb_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_top is
--  Port ( );
end tb_top;

architecture Behavioral of tb_top is
 signal SW_s : STD_LOGIC_VECTOR (3 downto 0);
 signal LED_s : STD_LOGIC_VECTOR (7 downto 0);
 signal CA_s : STD_LOGIC;
 signal CB_s : STD_LOGIC;
 signal CC_s : STD_LOGIC;
 signal CD_s : STD_LOGIC;
 signal CE_s : STD_LOGIC;
 signal CF_s : STD_LOGIC;
 signal CG_s : STD_LOGIC;
 signal AN_s : STD_LOGIC_VECTOR (7 downto 0);
 signal BTNC_s : STD_LOGIC;
begin
    uut_top : entity work.top
    port map (
      SW => SW_s,
      LED => LED_s,
      CA => CA_s,
      CB => CB_s,
      CC => CC_s,
      CD => CD_s,
      CE => CE_s,
      CF => CF_s,
      CG => CG_s,
      AN => AN_s,
      BTNC => BTNC_s
    );
p_stimulus : process is
  begin

    report "Stimulus process started";
    BTNC_s <= '0';

    -- Loop for all hex values
    for ii in 0 to 15 loop
      SW_s <= std_logic_vector(to_unsigned(ii, 4));
      wait for 50 ns;
    end loop;

    report "Stimulus process finished";
    wait;

  end process p_stimulus;

end Behavioral;
