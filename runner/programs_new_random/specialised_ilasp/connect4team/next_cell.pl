
next_cell(V0, V1, V2) :- V0 = 6, V1 = 1, V2 = red, pos(V0), pos(V1), agent(V2).
next_cell(V0, V1, V2) :- true_cell(V3, V1, V10), V0 = 3, V2 = blue, pos(V0), pos(V1), agent(V2), pos(V3), agent(V10).
next_cell(V0, V1, V2) :- true_cell(V0, V1, V2), pos(V0), pos(V1), agent(V2).
next_cell(V0, V1, V2) :- succ(V8, V0), succ(V3, V8), true_cell(V3, V1, V10), does_drop(V2, V0), does(V10, V14), pos(V0), pos(V1), agent(V2), pos(V3), pos(V8), agent(V10), action(V14).
next_cell(V0, V1, V2) :- succ(V5, V1), true_cell(V0, V5, V13), does_drop(V2, V0), does(V13, V14), pos(V0), pos(V1), agent(V2), pos(V5), agent(V13), action(V14).
