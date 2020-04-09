
terminal :- true_cell(V1, V2, V2), true_cell(V1, V3, V3), true_cell(V2, V2, V1), true_cell(V3, V1, V2), V2 = 2, pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3).
terminal :- true_cell(V1, V2, V2), true_cell(V2, V1, V1), V2 = 2, pos(V1), mark(V1), pos(V2), mark(V2).
terminal :- true_cell(V1, V1, V2), true_cell(V1, V3, V3), true_cell(V2, V1, V3), V3 = 1, pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3).
terminal :- true_cell(V1, V1, V3), true_cell(V3, V1, V1), V3 = 1, pos(V1), mark(V1), pos(V3), mark(V3).
terminal :- true_cell(V1, V1, V3), true_cell(V3, V3, V1), V3 = 1, pos(V1), mark(V1), pos(V3), mark(V3).
