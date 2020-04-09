
legal_move(V0, V1, V1, V2, V3) :- scoremap(V1, V1), knightmove(V3, V2, V1, V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
legal_move(V0, V1, V2, V3, V1) :- true_step(V2), V1 = 2, agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
legal_move(V0, V1, V2, V2, V3) :- succ(V3, V1), true_captures(V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
legal_move(V0, V1, V2, V3, V3) :- succ(V3, V1), true_captures(V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
