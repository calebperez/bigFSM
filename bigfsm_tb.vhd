library ieee;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.all;

entity bigFSM_tb is
end bigFSM_tb;

architecture behave of bigFSM_tb is
  signal clock_in : std_logic := '0';
  signal Reset_in : std_logic := '0';
  signal P_in     : std_logic := '0';
  signal Q_in     : std_logic := '0';
  signal S_in     : std_logic := '0';
  
  signal R_out    : std_logic_vector(4 downto 0) := "00000";
  
  begin
    
    FSM_INST: entity work.bigFSM_1
      port map (
        clock => clock_in,
        Reset => Reset_in,
        P => P_in,
	Q => Q_in,
	S => S_in,
        R => R_out
        );
        
    process is
      begin 
        --This should go A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, T, AA, BB, CC, DD, EE, FF, GG, HH, II, JJ, KK, LL, MM, NN, OO, TT.
      Reset_in <= '1';
      wait for 100 ns;  --100

      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --100
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --200
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --300
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --400
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --500
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --600
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --700
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --800

	P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --900
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --1000
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --1100
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --1200
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --1300
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --1400
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --1500
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --1600

P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --1700
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --1800
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --1900
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --2000
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --2100
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --2200
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --2300
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --2400

P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --2500
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --2600
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --2700
	  
      P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --2800
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --2900
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --3000
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --3100
	  
	  P_in <= '1';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;  --3200

	  ---------------------------------------------
      
      -- This should go A, TT, OO, NN, MM, LL, KK, JJ, II, HH, GG, FF, EE, DD, CC, BB, AA, T, O, N, M, L, K, J, I, H, G, F, E, D, C, B, A.
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;

	P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;

	P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;

	P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
      P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
	  
	  P_in <= '0';
	  Q_in <= '0';
	  S_in <= '0';
      Reset_in <= '0';
      wait for 100 ns;
      ---------------------------------------
	  
      --Resets after A, B, C, Then should go back to A.
      P_in <= '0';
	Q_in <= '0';
	S_in <= '0';
      Reset_in <= '1';
      wait for 100 ns;
  end process;
end behave;