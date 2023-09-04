library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity memoire is
    Port (

        sram_addr : inout std_logic_vector(19 downto 0);
        sram_data : inout std_logic_vector(15 downto 0);
        sram_oenn, sram_wenn, sram_csel : out std_logic;

        sw_matr  : in  std_logic_vector(15 downto 0);
        led_matr : out std_logic_vector(15 downto 0);

        control_write, control_read, clock : in std_logic

    );
end memoire;

architecture behaviour of memoire is

    -- Defina os estados da máquina de estados
    type state_type is (Idle, Write, Read);
    signal current_state, next_state : state_type;

    begin
    -- Registre para armazenar o estado atual
    process(clock)
    begin
        if rising_edge(clock) then
            current_state <= next_state;
        end if;
    end process;

    -- Lógica da máquina de estados
    process(current_state, control_write, control_read)
    begin
        case current_state is
            when Idle =>
                if control_write = '0' then
                    next_state <= Write;
                elsif control_read = '0' then
                    next_state <= Read;
                else
                    next_state <= Idle;
                end if;
                
            when Write =>
                if control_write = '1' then
                    next_state <= Idle;
                else
                    next_state <= Write;
                end if;
                
            when Read =>
                if control_read = '1' then
                    next_state <= Idle;
                else
                    next_state <= Read;
                end if;
        end case;
    end process;

    -- Saídas da máquina de estados
    sram_oenn <= '0' when current_state = Read else '1'; -- Ativar SRAM durante a leitura
    sram_wenn <= '0' when current_state = Write else '1'; -- Ativar SRAM durante a escrita
    sram_csel <= '1'; -- Chip Select ativo alto (pode ser ajustado conforme necessário)


end behaviour;
