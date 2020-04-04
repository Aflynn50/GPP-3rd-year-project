
next_cell(V0, V1, V2) :- true_cell(V1, V1, V2), V1 = 4, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2).
next_cell(V0, V1, V2) :- does_mark(V4, V0, V1, V2), pos(V0), cell_type(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), agent(V4).
next_cell(V0, V1, V2) :- true_cell(V0, V1, V2), does_mark(V3, V6, V6, V0), pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), agent(V3), pos(V6), cell_type(V6).
next_cell(V0, V1, V2) :- true_cell(V0, V0, V2), true_cell(V6, V1, V2), V0 = 3, V6 = 1, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V6), cell_type(V6).
next_cell(V0, V1, V2) :- true_cell(V0, V1, V2), V0 = 2, V1 = 3, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2).
next_cell(V0, V1, V2) :- true_cell(V0, V0, V2), true_cell(V0, V1, V2), does_mark(V4, V6, V5, V1), pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), agent(V4), pos(V5), cell_type(V5), pos(V6), cell_type(V6).
next_cell(V0, V1, V2) :- true_cell(V0, V0, V2), does_mark(V3, V5, V5, V6), V0 = 4, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), agent(V3), pos(V5), cell_type(V5), pos(V6), cell_type(V6).
next_cell(V0, V1, V2) :- true_control(V4), true_cell(V0, V5, V2), true_cell(V5, V5, V6), V4 = green, V5 = 3, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), agent(V4), pos(V5), cell_type(V5), pos(V6), cell_type(V6).
next_cell(V0, V1, V2) :- true_cell(V5, V5, V2), true_cell(V5, V6, V2), V1 = 1, V5 = 4, V6 = 2, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V5), cell_type(V5), pos(V6), cell_type(V6).
