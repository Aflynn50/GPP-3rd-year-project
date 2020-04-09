
legal_move(V0, V1, V2) :- true_control(V0), true_cell(V1, V0), V2 = c, agent(V0), mark(V0), pos(V1), pos(V2).
