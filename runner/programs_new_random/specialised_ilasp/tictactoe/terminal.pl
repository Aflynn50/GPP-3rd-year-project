
terminal :- true_cell(V3, V3, V8), true_cell(V3, V4, V6), V4 = 1, V6 = o, V8 = x, pos(V3), pos(V4), mark(V6), mark(V8).
terminal :- true_cell(V2, V3, V6), true_cell(V3, V3, V7), V2 = 3, V6 = x, V7 = o, pos(V2), pos(V3), mark(V6), mark(V7).
terminal :- true_cell(V2, V3, V6), V2 = 3, V3 = 2, V6 = o, pos(V2), pos(V3), mark(V6).
