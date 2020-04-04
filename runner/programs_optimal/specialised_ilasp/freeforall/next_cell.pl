
next_cell(V0, V1, V2) :- spawns(V0, V1, V2), pos(V0), int(V0), pos(V1), int(V1), agent(V2).
_type(V1), cell_type(V2).
next_cell(V0, V1, V2) :- true_cell(V1, V1, V2), V1 = 4, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2).
next_cell(V0, V0, V1) :- true_cell(V0, V5, V1), V5 = 3, pos(V0), cell_type(V0), cell_type(V1), pos(V5), cell_type(V5).
next_cell(V0, V1, V2) :- true_cell(V5, V5, V2), true_cell(V6, V0, V2), V1 = 1, V6 = 2, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V5), cell_type(V5), pos(V6), cell_type(V6).
next_cell(V0, V1, V2) :- true_cell(V5, V5, V2), V0 = 1, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V5), cell_type(V5).
next_cell(V0, V1, V2) :- V0 = 2, V1 = 3, V2 = 1, pos(V0), cell_type(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2).
next_cell(V0, V1, V2) :- true_cell(V5, V5, V2), V0 = 3, V1 = 2, pos(V0), cell_type(V0), pos(V1), cell_type(V1), cell_type(V2), pos(V5), cell_type(V5).
next_cell(V0, V1, V2) :- true_cell(V5, V0, V1), V2 = 4, pos(V0), cell_type(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V5), cell_type(V5).
next_cell(V0, V0, V1) :- true_cell(V5, V6, V1), V0 = 2, V5 = 3, V6 = 1, pos(V0), cell_type(V0), cell_type(V1), pos(V5), cell_type(V5), pos(V6), cell_type(V6).
