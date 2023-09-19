library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stepper is
    Port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        step : out STD_LOGIC_VECTOR(3 downto 0)
    );
end stepper;

architecture Behavioral of stepper is
    type state_type is (S0, S1, S2, S3);
    signal current_state, next_state : state_type;
    signal step_sequence : STD_LOGIC_VECTOR(3 downto 0);
    
begin
    step_sequence <= "0001", "0010", "0100", "1000";
    
    process (clk, rst)
    begin
        if rst = '1' then
            current_state <= S0;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    process (current_state)
    begin
        case current_state is
            when S0 =>
                step <= "0001";
                next_state <= S1;
            when S1 =>
                step <= "0010";
                next_state <= S2;
            when S2 =>
                step <= "0100";
                next_state <= S3;
            when S3 =>
                step <= "1000";
                next_state <= S0;
            when others =>
                next_state <= S0;
        end case;
    end process;

end Behavioral;
