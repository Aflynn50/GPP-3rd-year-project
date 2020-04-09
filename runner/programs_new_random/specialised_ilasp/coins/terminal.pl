
terminal :- succ(V4, V3), true_step(V4), true_cell(V3, V9), V9 = zerocoins, pos(V3), pos(V4), cell_value(V9).
terminal :- true_cell(V4, V11), not true_step(V6), V4 = 4, V6 = 2, V11 = twocoins, pos(V4), pos(V6), cell_value(V11).
