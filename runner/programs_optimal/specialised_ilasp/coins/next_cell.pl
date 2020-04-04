
next_cell(V0, V1) :- V0 = 5, V1 = zerocoins, pos(V0), cell_value(V1).
next_cell(V0, V1) :- V0 = 2, V1 = twocoins, pos(V0), cell_value(V1).
next_cell(V0, V1) :- true_cell(V5, V1), V0 = 3, V5 = 5, pos(V0), cell_value(V1), pos(V5).
next_cell(V0, V1) :- succ(V2, V0), true_cell(V2, V1), V0 = 8, pos(V0), cell_value(V1), pos(V2).
next_cell(V0, V1) :- true_cell(V7, V1), V0 = 7, V7 = 2, pos(V0), cell_value(V1), pos(V7).
next_cell(V0, V1) :- true_cell(V6, V1), V0 = 6, V6 = 3, pos(V0), cell_value(V1), pos(V6).
next_cell(V0, V1) :- true_cell(V4, V1), V0 = 4, V4 = 6, pos(V0), cell_value(V1), pos(V4).
next_cell(V0, V1) :- true_cell(V3, V1), V0 = 1, V3 = 8, pos(V0), cell_value(V1), pos(V3).
