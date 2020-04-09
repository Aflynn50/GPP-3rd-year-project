
legal_move(V0, V1, V2, V1, V1) :- vertical(V1, V2, V1, V1), vertical(V1, V3, V1, V2), true_step(V1), agent(V0), mark(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
legal_move(V0, V1, V2, V2, V2) :- true_cell(V1, V2, V0), not true_control(V0), agent(V0), mark(V0), pos(V1), int(V1), pos(V2), int(V2).
