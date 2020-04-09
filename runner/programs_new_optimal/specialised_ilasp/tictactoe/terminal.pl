
terminal :- true_cell(V2, V2, V6), true_cell(V2, V3, V7), true_cell(V3, V3, V6), V6 = x, V7 = o, pos(V2), pos(V3), mark(V6), mark(V7).
terminal :- true_cell(V3, V4, V6), true_cell(V4, V3, V6), V3 = 2, V4 = 1, V6 = x, pos(V3), pos(V4), mark(V6).
terminal :- true_cell(V2, V2, V6), true_cell(V3, V4, V6), V2 = 3, V4 = 1, V6 = o, pos(V2), pos(V3), pos(V4), mark(V6).
