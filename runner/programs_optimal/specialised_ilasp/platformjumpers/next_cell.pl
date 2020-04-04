
next_cell(V0, V1, V2) :- valid_move(V0, V1, V1, V2, V1), agent(V0), pos(V1), pos(V2).
