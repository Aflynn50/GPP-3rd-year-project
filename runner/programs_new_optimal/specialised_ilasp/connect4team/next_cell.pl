
next_cell(V0, V1, V2) :- V0 = 5, V1 = 1, V2 = red, pos(V0), pos(V1), agent(V2).
next_cell(V0, V1, V2) :- true_cell(V0, V6, V10), V1 = 2, V2 = blue, pos(V0), pos(V1), agent(V2), pos(V6), agent(V10).
next_cell(V0, V1, V2) :- succ(V5, V1), true_cell(V0, V5, V13), V1 = 3, V2 = orange, pos(V0), pos(V1), agent(V2), pos(V5), agent(V13).
next_cell(V0, V1, V2) :- succ(V5, V0), succ(V6, V5), succ(V1, V6), true_control(V2), true_cell(V4, V5, V11), pos(V0), pos(V1), agent(V2), pos(V4), pos(V5), pos(V6), agent(V11).
