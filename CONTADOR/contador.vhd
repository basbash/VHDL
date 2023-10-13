library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity contador is
    Port (
        clk : in STD_LOGIC;
        ds1 : out std_logic_vector(6 downto 0) := (others => '0') -- display de 7 segmentos
    );
end contador;

architecture Behavioral of contador is

    constant contador : integer := 1_000_000;
    signal clk_out: std_logic;

    type estados is (S0, S1, S2, S3, S4, S5); -- definição dos estados
    signal estado_atual, estado_futuro: estados := S0;

    signal temp: std_logic_vector(2 downto 0); -- variável para armazenar o valor em binario

    component display_sete_segmentos is
        port (
            input_value    : in  std_logic_vector(2 downto 0);
            segment_output : out std_logic_vector(6 downto 0)
        );
    end component;

begin
    -- divisor de frequencia clockout
    clock: process (clk)
        variable clk_counter : unsigned (25 downto 0) := (others => '0');
    begin
        if rising_edge(clk) then
            if clk_counter = contador - 1 then
                clk_out <= not clk_out;
                clk_counter := (others => '0');
            else
                clk_counter := clk_counter + 1;
            end if;
        end if;
    end process; -- divisor de frequencia clockout

    -- processo de transição de estados
    a: process (clk_out) -- a cada borda de subida de clock_out, o estado será atualizado
    begin
        if rising_edge(clk_out) then
            estado_atual <= estado_futuro;
        end if;
    end process;

    b: process (estado_atual)
    begin
        case estado_atual is
            when S0 =>
                estado_futuro <= S1;
                temp <= "000";
            when S1 =>
                estado_futuro <= S2;
                temp <= "001";
            when S2 =>
                estado_futuro <= S3;
                temp <= "010";
            when S3 =>
                estado_futuro <= S4;
                temp <= "011";
            when S4 =>
                estado_futuro <= S5;
                temp <= "100";
            when S5 =>
                estado_futuro <= S0;
                temp <= "101";
        end case;
    end process;

    decoder_S1 : display_sete_segmentos
        port map (
            input_value => temp,
            segment_output => ds1
        );

end Behavioral;