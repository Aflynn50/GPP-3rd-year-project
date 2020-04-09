
next_cell(V0, V1) :- true_cell(V25, V1), does_move(V22, V0, V25), pos(V0), mark(V1), agent(V22), mark(V22), pos(V25).
next_cell(V0, V1) :- input_move(V1, V26, V0), true_step(V21), true_cell(V0, V1), V21 = 1, V26 = b, pos(V0), agent(V1), mark(V1), int(V21), pos(V26).
next_cell(V0, V1) :- true_cell(V0, V1), V0 = b, pos(V0), agent(V1), mark(V1).
next_cell(V0, V1) :- V0 = c, V1 = red, pos(V0), agent(V1), mark(V1).
