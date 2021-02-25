# bigFSM
More complex, 32 State FSM.

This state machine has 4 input one-bit lines, RESET, P, Q, and S. It has one 5 bit output line called R.
States A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, T, AA, BB, CC, DD, EE, FF, GG, HH, II, JJ, KK, LL, MM, NN, OO, TT.

The state machine is capable of traversing the states forward when P = 1, Q = 0, and S = 0. The state machine traverses backwards when P = 0, Q = 0, and S = 0.
