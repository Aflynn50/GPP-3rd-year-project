
legal_move(V0, V1, V2, V3, V4) :- succ(V4, V2), smaller(V3, V4), agent(V0), pos(V1), pos(V2), pos(V3), pos(V4).
