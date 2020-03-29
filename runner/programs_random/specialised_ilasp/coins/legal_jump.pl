
legal_jump(V0, V1, V2) :- succ(V5, V3), succ(V1, V5), true_cell(V1, V10), V2 = 3, V10 = zerocoins, agent(V0), pos(V1), pos(V2), pos(V3), pos(V5), cell_value(V10).
legal_jump(V0, V1, V2) :- succ(V5, V3), succ(V2, V5), true_cell(V2, V10), V1 = 3, V10 = zerocoins, agent(V0), pos(V1), pos(V2), pos(V3), pos(V5), cell_value(V10).
legal_jump(V0, V1, V2) :- succ(V4, V1), succ(V5, V4), succ(V2, V5), not true_step(V6), V6 = 3, agent(V0), pos(V1), pos(V2), pos(V4), pos(V5), pos(V6).
legal_jump(V0, V1, V2) :- succ(V4, V2), succ(V5, V4), succ(V1, V5), not true_step(V6), V6 = 3, agent(V0), pos(V1), pos(V2), pos(V4), pos(V5), pos(V6).
