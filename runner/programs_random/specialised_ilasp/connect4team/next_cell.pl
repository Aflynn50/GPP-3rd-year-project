
next_cell(V0, V1, V2) :- true_cell(V0, V1, V2), pos(V0), pos(V1), agent(V2).
next_cell(V0, V1, V2) :- y(V4), succ(V0, V8), succ(V5, V4), succ(V1, V5), V2 = cyan, pos(V0), pos(V1), agent(V2), pos(V4), pos(V5), pos(V8).
next_cell(V0, V1, V2) :- does_drop(V2, V0), V1 = 1, pos(V0), pos(V1), agent(V2).
