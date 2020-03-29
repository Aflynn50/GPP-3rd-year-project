
next_cell(V0, V1, V0) :- V0 = 1, V1 = 4, pos(V0), cell_type(V0), pos(V1), cell_type(V1).
next_cell(V0, V1, V2) :- true_cell(V5, V5, V2), does_mark(V3, V6, V5, V6), V1 = 3, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), agent(V3), pos(V5), cell_type(V5), pos(V6), cell_type(V6).
next_cell(V0, V1, V1) :- does_mark(V2, V0, V1, V1), pos(V0), cell_type(V0), pos(V1), cell_type(V1), agent(V2).
next_cell(V0, V1, V2) :- true_cell(V1, V5, V2), true_cell(V5, V0, V2), V0 = 3, V5 = 2, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V5), cell_type(V5).
next_cell(V0, V0, V1) :- true_cell(V0, V0, V1), pos(V0), cell_type(V0), pos(V1), cell_type(V1).
next_cell(V0, V1, V2) :- true_cell(V1, V0, V2), V0 = 2, V1 = 4, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2).
next_cell(V0, V0, V1) :- does_mark(V2, V0, V0, V1), pos(V0), cell_type(V0), pos(V1), cell_type(V1), agent(V2).
next_cell(V0, V1, V2) :- true_cell(V0, V5, V2), true_cell(V5, V1, V2), V0 = 4, V5 = 3, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V5), cell_type(V5).
next_cell(V0, V1, V2) :- true_cell(V5, V1, V2), true_cell(V0, V5, V2), V1 = 1, V5 = 4, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V5), cell_type(V5).
next_cell(V0, V0, V1) :- true_cell(V4, V4, V1), V0 = 1, V4 = 4, pos(V0), cell_type(V0), cell_type(V1), pos(V4), cell_type(V4).
next_cell(V0, V1, V2) :- true_cell(V6, V6, V2), true_cell(V1, V0, V2), V1 = 2, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V6), cell_type(V6).
next_cell(V0, V1, V2) :- true_cell(V5, V0, V2), V0 = 1, V1 = 3, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V5), cell_type(V5).
next_cell(V0, V1, V1) :- true_cell(V0, V1, V1), pos(V0), cell_type(V0), pos(V1), cell_type(V1).
next_cell(V0, V1, V2) :- true_cell(V0, V0, V2), true_cell(V6, V1, V2), true_cell(V6, V6, V2), V0 = 3, V6 = 1, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V6), cell_type(V6).
