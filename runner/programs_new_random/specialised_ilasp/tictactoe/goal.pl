
goal(V0, V1) :- true_cell(V3, V5, V8), true_cell(V5, V3, V8), V1 = 100, V3 = 3, V8 = x, agent(V0), score(V1), pos(V3), pos(V5), mark(V8).
goal(V0, V1) :- true_cell(V3, V5, V9), V1 = 50, V9 = b, agent(V0), score(V1), pos(V3), pos(V5), mark(V9).
goal(V0, V1) :- true_cell(V5, V5, V7), V0 = black, V1 = 0, V5 = 1, V7 = o, agent(V0), score(V1), pos(V5), mark(V7).
