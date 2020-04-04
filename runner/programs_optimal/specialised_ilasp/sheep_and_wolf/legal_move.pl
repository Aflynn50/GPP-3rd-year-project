
legal_move(V0, V1, V2, V3, V4) :- adjacent(V0, V2, V1, V4, V3), agent(V0), pos(V1), pos(V2), pos(V3), pos(V4).
