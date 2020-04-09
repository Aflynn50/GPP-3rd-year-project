
next_cell(V0, V1, V2) :- knightMove(V1, V1, V0, V50), true_cell(V50, V50, V2), pos(V0), int(V0), pos(V1), int(V1), mark(V2), pos(V50), int(V50).
next_cell(V0, V0, V1) :- scoreMap(V0, V16), pos(V0), int(V0), mark(V1), pos(V16), int(V16).
