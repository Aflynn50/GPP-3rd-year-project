
legal_move(V0, V1, V2, V3, V4) :- succ(V2, V4), true_cell(V1, V2, V0), agent(V0), int(V1), int(V2), int(V3), int(V4).
