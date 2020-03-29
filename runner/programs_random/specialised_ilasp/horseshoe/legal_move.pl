
legal_move(V0, V1, V2) :- true_cell(V1, V0), V1 = d, V2 = c, agent(V0), mark(V0), pos(V1), pos(V2).
legal_move(V0, V1, V2) :- V0 = red, V1 = a, V2 = c, agent(V0), mark(V0), pos(V1), pos(V2).
