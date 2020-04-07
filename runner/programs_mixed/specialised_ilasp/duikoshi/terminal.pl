
terminal :- true_cell(V4, V2, V3), true_cell(V4, V3, V4), true_cell(V4, V4, V5), V2 = 4, pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V4), cell_type(V4), pos(V5), cell_type(V5).
terminal :- true_cell(V2, V5, V2), true_cell(V3, V3, V2), V2 = 4, pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
terminal :- true_control(V0), true_cell(V2, V2, V3), true_cell(V2, V5, V5), V0 = red, V2 = 4, agent(V0), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
