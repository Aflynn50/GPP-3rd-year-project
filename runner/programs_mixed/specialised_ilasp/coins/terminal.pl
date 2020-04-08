
terminal :- true_cell(V2, V10), true_cell(V3, V10), V2 = 6, V3 = 5, V10 = zerocoins, pos(V2), pos(V3), cell_value(V10).
terminal :- succ(V5, V4), true_cell(V1, V9), true_cell(V5, V9), V1 = 8, V9 = zerocoins, pos(V1), pos(V4), pos(V5), cell_value(V9).
