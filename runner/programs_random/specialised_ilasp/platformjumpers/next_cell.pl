
next_cell(V0, V1, V2) :- agent(V0), pos(V1), pos(V2).
V2, V3), pos(V0), mark(V0), pos(V1), mark(V1), pos(V2), mark(V2), mark(V3).
next_cell(V0, V1, V0, V2, V3) :- true_cell(V0, V1, V0, V2, V3), pos(V0), mark(V0), pos(V1), mark(V1), pos(V2), mark(V2), mark(V3).
next_cell(V0, V1, V2, V1, V3) :- true_cell(V0, V1, V2, V1, V3), pos(V0), mark(V0), pos(V1), mark(V1), pos(V2), mark(V2), mark(V3).
next_cell(V0, V1, V2, V0, V3) :- true_cell(V0, V1, V2, V0, V3), pos(V0), mark(V0), pos(V1), mark(V1), pos(V2), mark(V2), mark(V3).
next_cell(V0, V0, V1, V2, V1) :- true_cell(V2, V2, V0, V1, V1), pos(V0), mark(V0), pos(V1), mark(V1), pos(V2), mark(V2).
next_cell(V0, V1, V2, V2, V3) :- true_cell(V0, V1, V2, V2, V3), pos(V0), mark(V0), pos(V1), mark(V1), pos(V2), mark(V2), mark(V3).
next_cell(V0, V1, V1, V2, V3) :- true_cell(V0, V1, V1, V2, V3), pos(V0), mark(V0), pos(V1), mark(V1), pos(V2), mark(V2), mark(V3).
