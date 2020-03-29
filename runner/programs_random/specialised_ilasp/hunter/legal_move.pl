
legal_move(V0, V1, V1, V2, V3) :- knightmove(V3, V2, V1, V1), true_step(V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
legal_move(V0, V1, V2, V3, V1) :- scoremap(V1, V2), knightmove(V3, V2, V1, V1), true_step(V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
legal_move(V0, V1, V2, V2, V3) :- succ(V1, V2), succ(V3, V1), true_step(V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
legal_move(V0, V1, V2, V3, V3) :- succ(V1, V2), succ(V3, V1), true_step(V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
