
next_cell(V0, V1, V2) :- true_control(V3), true_cell(V0, V1, V2), V1 = 3, V3 = white, pos(V0), pos(V1), mark(V2), agent(V3).
next_cell(V0, V1, V2) :- true_cell(V5, V0, V2), true_cell(V0, V1, V2), V0 = 2, V1 = 1, pos(V0), pos(V1), mark(V2), pos(V5).
next_cell(V0, V1, V2) :- true_cell(V5, V1, V2), true_cell(V0, V5, V2), V1 = 2, V5 = 3, pos(V0), pos(V1), mark(V2), pos(V5).
next_cell(V0, V1, V2) :- does_mark(V3, V0, V1), V2 = x, V3 = white, pos(V0), pos(V1), mark(V2), agent(V3).
next_cell(V0, V1, V2) :- true_cell(V0, V1, V2), V2 = x, pos(V0), pos(V1), mark(V2).
next_cell(V0, V1, V2) :- does_mark(V4, V0, V1), V2 = o, V4 = black, pos(V0), pos(V1), mark(V2), agent(V4).
next_cell(V0, V1, V2) :- true_cell(V5, V0, V2), true_cell(V0, V1, V2), V0 = 1, V1 = 3, V5 = 2, pos(V0), pos(V1), mark(V2), pos(V5).
next_cell(V0, V1, V2) :- true_cell(V0, V1, V2), V2 = o, pos(V0), pos(V1), mark(V2).
next_cell(V0, V0, V1) :- true_cell(V5, V5, V1), true_cell(V0, V4, V1), V4 = 3, V5 = 2, pos(V0), mark(V1), pos(V4), pos(V5).
next_cell(V0, V0, V1) :- true_cell(V0, V0, V1), V0 = 1, pos(V0), mark(V1).