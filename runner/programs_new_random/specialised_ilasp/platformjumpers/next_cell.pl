
next_cell(V0, V1, V2) :- agent(V0), pos(V1), pos(V2).
 pos(V0), mark(V0), pos(V1), mark(V1), mark(V2).
next_cell(V0, V1, V0) :- true_cell(V1, V0, V1), pos(V0), mark(V0), pos(V1), mark(V1).
next_cell(V0, V1, V2) :- true_cell(V0, V0, V2), true_cell(V1, V4, V1), true_cell(V4, V4, V2), V0 = 3, pos(V0), mark(V0), pos(V1), mark(V1), mark(V2), pos(V4), mark(V4).
next_cell(V0, V1, V1) :- true_cell(V0, V1, V1), pos(V0), mark(V0), pos(V1), mark(V1).
next_cell(V0, V0, V1) :- true_cell(V3, V3, V1), true_cell(V3, V0, V1), V0 = 1, V3 = 3, pos(V0), mark(V0), mark(V1), pos(V3), mark(V3).
next_cell(V0, V0, V1) :- true_cell(V0, V0, V1), pos(V0), mark(V0), pos(V1), mark(V1).
next_cell(V0, V1, V2) :- does_mark(V3, V0, V1, V2), pos(V0), mark(V0), pos(V1), mark(V1), pos(V2), mark(V2), agent(V3).
next_cell(V0, V1, V2) :- true_cell(V4, V4, V2), V1 = 3, V4 = 1, pos(V0), mark(V0), pos(V1), mark(V1), mark(V2), pos(V4), mark(V4).
