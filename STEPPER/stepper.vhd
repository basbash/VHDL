library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity stepper is
    Port (
        clk, rst, sentido : in STD_LOGIC;
        step : out STD_LOGIC_VECTOR(3 downto 0)
    );
end stepper;

architecture Behavioral of stepper is
    type state_type is (S1, S2, S3, S4);
    signal current_state : state_type := S1;
    
	signal clk_out : std_logic := '0'; -- clock de saída do abaixador de frequencia.
    constant contador : integer := 10_000_000; -- define a velocidade do motor.
begin

    -- Divisor de frequencia clockout
    clock: process (clk)
        variable clk_counter : integer := 0;
    begin
        if rising_edge(clk) then
            if clk_counter = contador - 1 then

                clk_out <= not clk_out;
                clk_counter := 0;

            else clk_counter := clk_counter + 1;
            end if;
        end if;
    end process; -- Divisor de frequencia clockout

    process (clk_out, rst) -- controla a transição de estados.
    begin
        if rst = '0' then
            current_state <= S1;
        
        elsif rising_edge(clk_out) then
		  
            case current_state is
				
                when S1 =>

                if sentido = '1' then current_state <= S2;
                else current_state <= S4;
                end if;
						  
                when S2 =>

		if sentido = '1' then
                    current_state <= S3;
                else current_state <= S1;
                end if;
                
                when S3 =>
                
                if sentido = '1' then
                    current_state <= S4;
                else current_state <= S2;
                end if;
                
                when S4 =>
                    
                if sentido = '1' then
                    current_state <= S1;
                else current_state <= S3;
                end if;
                
                when others => current_state <= S1;
            end case;
        end if;
    end process;

    -- altera a saída de acordo com o estado atual.
	process (current_state) -- processo sensível ao estado atual
	begin
	    case current_state is
			when S1 => step <= "0001";
			when S2 => step <= "0010";
			when S3 => step <= "0100";
			when S4 => step <= "1000";
		end case;
	end process;
	 
end Behavioral;

