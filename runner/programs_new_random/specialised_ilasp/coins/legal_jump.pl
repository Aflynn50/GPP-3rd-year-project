
legal_jump(V0, V1, V2) :- true_cell(V8, V9), V1 = 6, V2 = 4, V8 = 1, V9 = zerocoins, agent(V0), pos(V1), pos(V2), pos(V8), cell_value(V9).
legal_jump(V0, V1, V2) :- succ(V3, V1), succ(V4, V3), succ(V2, V4), not true_step(V6), V6 = 3, agent(V0), pos(V1), pos(V2), pos(V3), pos(V4), pos(V6).
legal_jump(V0, V1, V2) :- succ(V6, V1), succ(V7, V6), true_step(V6), V2 = 6, agent(V0), pos(V1), pos(V2), pos(V6), pos(V7).
legal_jump(V0, V1, V2) :- succ(V3, V2), succ(V4, V3), succ(V1, V4), not true_step(V6), V6 = 3, agent(V0), pos(V1), pos(V2), pos(V3), pos(V4), pos(V6).
legal_jump(V0, V1, V2) :- succ(V1, V8), V2 = 4, V8 = 2, agent(V0), pos(V1), pos(V2), pos(V8).
legal_jump(V0, V1, V2) :- V1 = 4, V2 = 1, agent(V0), pos(V1), pos(V2).
legal_jump(V0, V1, V2) :- succ(V6, V2), true_step(V6), true_cell(V6, V11), V1 = 8, V11 = twocoins, agent(V0), pos(V1), pos(V2), pos(V6), cell_value(V11).
legal_jump(V0, V1, V2) :- succ(V6, V1), true_step(V6), true_cell(V6, V11), V2 = 8, V11 = twocoins, agent(V0), pos(V1), pos(V2), pos(V6), cell_value(V11).
legal_jump(V0, V1, V2) :- true_step(V7), true_cell(V7, V11), V1 = 2, V11 = twocoins, agent(V0), pos(V1), pos(V2), pos(V7), cell_value(V11).
legal_jump(V0, V1, V2) :- succ(V2, V7), true_step(V7), agent(V0), pos(V1), pos(V2), pos(V7).
