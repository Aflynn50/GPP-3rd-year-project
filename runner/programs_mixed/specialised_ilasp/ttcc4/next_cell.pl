
next_cell(V0, V1, V2) :- start(V2, V0, V1), pos(V0), score(V0), int(V0), pos(V1), score(V1), int(V1), piece(V2).
