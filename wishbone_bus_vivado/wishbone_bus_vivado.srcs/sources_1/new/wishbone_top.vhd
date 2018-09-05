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
use ieee.numeric_std.all;


entity wishbone_interface is
    Port ( 
        --utility signals
        wb_clk          : in std_logic;
        wb_rst          : in std_logic;
        
        --wishbone bus signals
        wb_addr_i        : in std_logic_vector(2 downto 0);
        wb_dat_i        : in std_logic_vector(7 downto 0);
        wb_dat_o        : out std_logic_vector(7 downto 0);
        wb_we_i         : in std_logic;
        wb_sel_i        : in std_logic_vector(3 downto 0);
        wb_stb_i        : in std_logic;
        wb_ack_o        : out std_logic;
        wb_cyc_i        : in std_logic
        
    );
end wishbone_interface;

architecture Behavioral of wishbone_interface is

    type handshake_state is (handshake_idle,handshake_send_ack,handshake_wait_stb,handshake_done);
    signal handshake_current_state    : handshake_state := handshake_idle;
    
    type memory is array(0 to 1) of std_logic_vector(7 downto 0); -- just the one memory address for now
    
    
    
begin
    
    --handshaking protocol
    process(wb_clk,wb_rst)
    begin
        if(rising_edge(wb_clk)) then
            wb_ack_o <= wb_stb_i; -- acknowledge the bus transaction request
        end if;
    end process;
    
    -- writes to the slave
    process(wb_clk,wb_rst)
    begin
        if(rising_edge(wb_clk)) then
            if wb_stb_i and wb_we_i then -- we have a valid write request
                -- do some logic here to handle data to be written

            end if;
        end if;
    end process;
    
    -- reads from the slave
    process(wb_clk,wb_rst)
    begin
        if(rising_edge(wb_clk)) then
            case wb_addr_i is
                -- do some logic here to handle reading of data given address
                -- remember to add default
                when 0 =>
                default=>
            end case;
        end if;
    end process;
    
    
end Behavioral;

