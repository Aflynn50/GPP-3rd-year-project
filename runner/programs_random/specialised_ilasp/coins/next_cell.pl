
next_cell(V0, V1) :- true_cell(V0, V1), V0 = 8, pos(V0), cell_value(V1).
next_cell(V0, V1) :- true_cell(V0, V1), V0 = 6, pos(V0), cell_value(V1).
next_cell(V0, V1) :- true_cell(V0, V1), V0 = 2, pos(V0), cell_value(V1).
next_cell(V0, V1) :- true_cell(V0, V1), V0 = 1, pos(V0), cell_value(V1).
next_cell(V0, V1) :- V0 = 7, V1 = zerocoins, pos(V0), cell_value(V1).
next_cell(V0, V1) :- V0 = 4, V1 = twocoins, pos(V0), cell_value(V1).
next_cell(V0, V1) :- true_cell(V2, V1), V0 = 5, V2 = 7, pos(V0), cell_value(V1), pos(V2).
next_cell(V0, V1) :- succ(V0, V6), true_cell(V6, V1), V0 = 3, pos(V0), cell_value(V1), pos(V6).
