
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_3bit_4to1 is
    Port (
        a_i           : in  std_logic_vector(3 - 1 downto 0);
        b_i           : in  std_logic_vector(3 - 1 downto 0);
        c_i           : in  std_logic_vector(3 - 1 downto 0);
        d_i           : in  std_logic_vector(3 - 1 downto 0);
        sel_i           : in  std_logic_vector(3 - 1 downto 0);
        f_o           : out  std_logic
    );
end mux_3bit_4to1;

architecture Behavioral of mux_3bit_4to1 is
begin
    f_o <= a_i when (addr_i = "000" and en_i = '1') else
           b_i when (addr_i = "001" and en_i = '1') else
           c_i when (addr_i = "010" and en_i = '1') else
           d_i;
          



end Behavioral;
