
next_cell(V0, V1, V2) :- true_cell(V0, V6, V10), V1 = 2, V2 = blue, pos(V0), pos(V1), agent(V2), pos(V6), agent(V10).
next_cell(V0, V1, V2) :- does_drop(V2, V0), V1 = 1, V2 = cyan, pos(V0), pos(V1), agent(V2).
next_cell(V0, V1, V2) :- succ(V1, V0), succ(V5, V1), true_cell(V0, V5, V13), V2 = orange, pos(V0), pos(V1), agent(V2), pos(V5), agent(V13).
next_cell(V0, V1, V2) :- V0 = 4, V1 = 1, V2 = red, pos(V0), pos(V1), agent(V2).
next_cell(V0, V1, V2) :- succ(V6, V1), true_cell(V0, V6, V12), does_drop(V2, V0), does(V10, V14), V10 = orange, pos(V0), pos(V1), agent(V2), pos(V6), agent(V10), agent(V12), action(V14).
