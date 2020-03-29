
legal_move(V0, V1, V2, V3, V4) :- succ(V4, V2), V3 = c5, agent(V0), pos(V1), pos(V2), pos(V3), pos(V4).
legal_move(V0, V1, V2, V3, V4) :- V3 = c3, agent(V0), pos(V1), pos(V2), pos(V3), pos(V4).
