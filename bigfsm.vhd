library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--entity definition for the FSM
Entity bigFSM is

Port (
  clock: IN STD_LOGIC;
  reset: IN STD_LOGIC;
  P: IN STD_LOGIC;
  Q: IN STD_LOGIC;
  S: IN STD_LOGIC;
  
  R: OUT STD_LOGIC_VECTOR (4 downto 0));
  
END bigFSM;

--architecture definition for the fsm
Architecture RTL of bigFSM is
	TYPE State_type IS (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, T, AA, BB, CC, DD, EE, FF, GG, HH, II, JJ, KK, LL, MM, NN, OO, TT); --define the 		states.
	
	SIGNAL State:State_Type; -- create a signal that uses the different states.
  
	BEGIN
	  PROCESS(clock, reset)
	  BEGIN
		If (reset = '1') THEN --Update reset, set the state to A.
		  State <= A;
		  
	  ELSIF rising_edge(clock) THEN -- if there is a rising edge of the clock, do the stuff below.
		
		--The case statement checks the value of the state variable.
		--and base on the value and any other control signal changes to a new state!
		
		CASE State IS
		  
			--if the current state is A and P is set to 1, then the next state is B.
			WHEN A =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= B;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= TT;
					
				END IF;
			
			--When current state is B and p is 1 then set to state c
			WHEN B =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= C;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= A;
				
				END IF;
			
			--When current state is C and p is 1 then set to state d
			WHEN C =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= D;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= B;
				
				END IF;
			
			--When current state is D and p is 1 then set to state B.
			--if p is 0 then set to state A.
			WHEN D =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= E;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= C;
				
				END IF;
				
			--When current state is e and p is 1 then set to state F
			WHEN E =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= F;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= D;
				
				END IF;
				
			--When current state is F and p is 1 then set to state G
			WHEN F =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= G;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= E;
				
				END IF;

			--When current state is G and p is 1 then set to state H
			WHEN G =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= H;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= F;
				
				END IF;
				
			--When current state is C and p is 1 then set to state d
			WHEN H =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= I;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= G;
					
				END IF;
				
			WHEN I =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= J;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= H;
				
				END IF;
				
			WHEN J =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= K;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= I;
				
				END IF;
				
			WHEN K =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= L;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= J;
				
				END IF;
				
			WHEN L =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= M;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= K;
				
				END IF;
				
			WHEN M =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= N;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= L;
				
				END IF;
				
			WHEN N =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= O;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= M;

				END IF;
				
			WHEN O =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= T;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= N;
				
				END IF;
				
			WHEN T =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= AA;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= O;

				END IF;
				
				
			WHEN AA =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= BB;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= T;
					
				END IF;
			
			--When current state is B and p is 1 then set to state c
			WHEN BB =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= CC;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= AA;

				END IF;
			
			--When current state is C and p is 1 then set to state d
			WHEN CC =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= DD;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= BB;
				
				END IF;
			
			--When current state is D and p is 1 then set to state B.
			--if p is 0 then set to state A.
			WHEN DD =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= EE;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= CC;
				
				END IF;
				
			--When current state is e and p is 1 then set to state F
			WHEN EE =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= FF;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= DD;

				END IF;
				
			--When current state is F and p is 1 then set to state G
			WHEN FF =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= GG;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= EE;

				END IF;

			--When current state is G and p is 1 then set to state H
			WHEN GG =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= HH;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= FF;

				END IF;
				
			--When current state is C and p is 1 then set to state d
			WHEN HH =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= II;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= GG;

				END IF;
				
			WHEN II =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= JJ;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= HH;

				END IF;
				
			WHEN JJ =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= KK;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= II;

				END IF;
				
			WHEN KK =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= LL;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= JJ;

				END IF;
				
			WHEN LL =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= MM;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= KK;
					
				END IF;
				
			WHEN MM =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= NN;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= LL;

				END IF;
				
			WHEN NN =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= OO;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= MM;

				END IF;
				
			WHEN OO =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= TT;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= NN;

				END IF;
				
			WHEN TT =>
				IF (P = '1') and (Q = '0') and (S = '0') THEN
					State <= A;
					
				ELSIF (P = '0') and (Q = '0') and (S = '0') THEN
					State <= OO;

				END IF;
				
		END CASE;
		
	  END IF;

	END PROCESS;

	--Decode the state to create the output. Every state has it's own output.
	R <= "00000" when State = A else 
		"00001" when State = B else
		"00010" when State = C else
		"00011" when State = D else
		"00100" when State = E else
		"00101" when State = F else
		"00110" when State = G else
		"00111" when State = H else
		"01000" when State = I else 
		"01001" when State = J else
		"01010" when State = K else
		"01011" when State = L else
		"01100" when State = M else
		"01101" when State = N else
		"01110" when State = O else
		"01111" when State = T else
		"10000" when State = AA else 
		"10001" when State = BB else
		"10010" when State = CC else
		"10011" when State = DD else
		"10100" when State = EE else
		"10101" when State = FF else
		"10110" when State = GG else
		"10111" when State = HH else
		"11000" when State = II else 
		"11001" when State = JJ else
		"11010" when State = KK else
		"11011" when State = LL else
		"11100" when State = MM else
		"11101" when State = NN else
		"11110" when State = OO else
		"11111" when State = TT;

END rtl;