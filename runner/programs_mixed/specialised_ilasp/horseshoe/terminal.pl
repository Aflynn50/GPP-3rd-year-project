
terminal :- true_step(V10), V10 = 20, int(V10).
terminal :- true_control(V20), true_cell(V25, V20), true_cell(V26, V20), V25 = b, V26 = a, agent(V20), mark(V20), pos(V25), pos(V26).
terminal :- true_step(V3), true_cell(V26, V27), V3 = 7, V26 = a, V27 = blank, int(V3), pos(V26), mark(V27).
