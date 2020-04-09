
terminal :- true_step(V10), V10 = 20, int(V10).
terminal :- true_step(V3), true_cell(V23, V27), V3 = 7, V23 = d, V27 = blank, int(V3), pos(V23), mark(V27).
terminal :- true_step(V3), true_cell(V26, V27), V3 = 7, V26 = a, V27 = blank, int(V3), pos(V26), mark(V27).
terminal :- true_step(V2), true_control(V21), true_cell(V23, V21), V2 = 8, V23 = d, int(V2), agent(V21), mark(V21), pos(V23).
