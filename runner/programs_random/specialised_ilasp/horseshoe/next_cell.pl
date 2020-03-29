
next_cell(V0, V1) :- true_cell(V26, V1), does_move(V22, V0, V26), pos(V0), mark(V1), agent(V22), mark(V22), pos(V26).
next_cell(V0, V1) :- true_cell(V0, V1), V0 = d, pos(V0), agent(V1), mark(V1).
next_cell(V0, V1) :- does_move(V1, V26, V0), pos(V0), agent(V1), mark(V1), pos(V26).
next_cell(V0, V1) :- true_cell(V0, V1), does(V1, V28), pos(V0), agent(V1), mark(V1), action(V28).
next_cell(V0, V1) :- true_cell(V0, V1), V0 = e, pos(V0), agent(V1), mark(V1).
