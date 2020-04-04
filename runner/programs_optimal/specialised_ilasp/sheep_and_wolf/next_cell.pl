
next_cell(V0, V1, V2) :- pos(V0), pos(V1), mark(V2).
), mark(V0), pos(V1), mark(V1), mark(V2).
next_cell(V0, V1, V0) :- does_mark(V2, V0, V1, V0), pos(V0), mark(V0), pos(V1), mark(V1), agent(V2).
