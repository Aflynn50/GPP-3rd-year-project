
next_cell(V0, V1, V2) :- scoremap(V1, V9), pos(V0), int(V0), pos(V1), int(V1), mark(V2), pos(V9), int(V9).
next_cell(V0, V1, V2) :- knightmove(V1, V1, V0, V16), true_cell(V16, V16, V2), pos(V0), int(V0), pos(V1), int(V1), mark(V2), pos(V16), int(V16).
