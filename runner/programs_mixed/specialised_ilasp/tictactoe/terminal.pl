
terminal :- true_control(V1), true_cell(V4, V4, V6), V1 = black, V4 = 1, V6 = o, agent(V1), pos(V4), mark(V6).
terminal :- true_cell(V3, V3, V8), true_cell(V3, V4, V6), V4 = 1, V6 = o, V8 = x, pos(V3), pos(V4), mark(V6), mark(V8).
