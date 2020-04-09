
next_cell(V0, V0, V1) :- pos(V0), int(V0), mark(V1).
ark(V1).
next_cell(V0, V1, V2) :- true_cell(V1, V4, V1), pos(V0), mark(V0), pos(V1), mark(V1), mark(V2), pos(V4), mark(V4).
