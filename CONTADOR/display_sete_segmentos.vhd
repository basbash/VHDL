library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity display_sete_segmentos is
    Port (
        input_value    : in  unsigned (2 downto 0);
        segment_output : out std_logic_vector (6 downto 0)
    );
end display_sete_segmentos;

architecture output of display_sete_segmentos is
begin
    process(input_value)
    begin
        case input_value is
            when "000" => segment_output <= "1000000"; -- Display "0"
            when "001" => segment_output <= "1111001"; -- Display "1"
            when "010" => segment_output <= "0100100"; -- Display "2"
            when "011" => segment_output <= "0110000"; -- Display "3"
            when "100" => segment_output <= "0011001"; -- Display "4"
            when "101" => segment_output <= "0010010"; -- Display "5"
                        
            when others => segment_output <= "1111111"; 
        end case;
    end process;
end output;