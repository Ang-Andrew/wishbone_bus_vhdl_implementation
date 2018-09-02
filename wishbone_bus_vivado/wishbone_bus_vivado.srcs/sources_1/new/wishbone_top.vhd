----------------------------------------------------------------------------------
-- Engineer: Andrew Ang
-- Create Date: 02.09.2018 14:45:50
-- Module Name: wishbone_top - Behavioral
-- Project Name: wishbone_bus_vhdl_implementation
-- Target Devices: Pynq-Z1
-- Tool Versions: Vivado 2018.1
-- Description: wishbone bus top file
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity wishbone_interface is
    Port ( 
        --utility signals
        wb_clk          : in std_logic;
        wb_rst          : in std_logic;
        
        --wishbone bus signals
        wb_adr_i        : in std_logic_vector(2 downto 0);
        wb_dat_i        : in std_logic_vector(7 downto 0);
        wb_dat_o        : out std_logic_vector(7 downto 0);
        wb_we_i         : in std_logic;
        wb_sel_i        : in std_logic_vector(3 downto 0);
        wb_std_i        : in std_logic;
        wb_ack_o        : out std_logic;
        wb_cyc_i        : in std_logic
        
    );
end wishbone_interface;

architecture Behavioral of wishbone_interface is

begin
    
    process(wb_clk,wb_rst)
    begin
        if(rising_edge(wb_clk)) then
            if(wb_rst = '1') then
                
            end if;
        end if;
    end process;


end Behavioral;

