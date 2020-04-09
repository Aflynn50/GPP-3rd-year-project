
terminal.
 true_cell(V2, V3, V4), true_cell(V2, V4, V5), true_cell(V5, V5, V3), V4 = 2, pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V4), cell_type(V4), pos(V5), cell_type(V5).
terminal :- true_cell(V2, V2, V5), true_cell(V2, V5, V2), V2 = 4, pos(V2), cell_type(V2), pos(V5), cell_type(V5).
