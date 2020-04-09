
next_cell(V0, V0, V0, V1, V2) :- pos(V0), mark(V0), pos(V1), mark(V1), mark(V2).
next_cell(V0, V0, V1, V0, V2) :- pos(V0), mark(V0), pos(V1), mark(V1), mark(V2).
next_cell(V0, V0, V1, V1, V2) :- pos(V0), mark(V0), pos(V1), mark(V1), mark(V2).
next_cell(V0, V0, V1, V2, V2) :- pos(V0), mark(V0), pos(V1), mark(V1), pos(V2), mark(V2).
(V0), pos(V1), mark(V2), pos(V5).
next_cell(V0, V1, V2) :- true_cell(V1, V1, V8), V0 = 3, V2 = x, V8 = o, pos(V0), pos(V1), mark(V2), mark(V8).
next_cell(V0, V1, V2) :- true_cell(V1, V0, V8), true_cell(V5, V5, V8), true_cell(V0, V0, V2), V0 = 1, V5 = 2, pos(V0), pos(V1), mark(V2), pos(V5), mark(V8).
next_cell(V0, V1, V2) :- true_cell(V1, V1, V2), V1 = 3, pos(V0), pos(V1), mark(V2).
next_cell(V0, V0, V1) :- true_cell(V5, V5, V8), V0 = 1, V1 = o, V8 = x, pos(V0), mark(V1), pos(V5), mark(V8).
