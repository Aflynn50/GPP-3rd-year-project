
goal(V0, V1) :- true_cell(V3, V3, V7), true_cell(V5, V3, V7), V1 = 0, V5 = 1, V7 = o, agent(V0), score(V1), pos(V3), pos(V5), mark(V7).
goal(V0, V1) :- true_cell(V5, V3, V9), V1 = 50, V3 = 3, V9 = b, agent(V0), score(V1), pos(V3), pos(V5), mark(V9).
goal(V0, V1) :- true_cell(V3, V4, V8), true_cell(V4, V5, V8), V0 = black, V5 = 1, V8 = x, agent(V0), score(V1), pos(V3), pos(V4), pos(V5), mark(V8).
