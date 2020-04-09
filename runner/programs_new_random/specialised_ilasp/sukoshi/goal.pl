
goal(V0, V1) :- true_cell(V2, V3, V3), true_cell(V2, V4, V4), true_cell(V4, V2, V3), V1 = 100, V3 = 2, agent(V0), score(V1), pos(V2), mark(V2), pos(V3), mark(V3), pos(V4), mark(V4).
goal(V0, V1) :- true_cell(V4, V2, V5), not digit(V5), V1 = 0, agent(V0), score(V1), pos(V2), mark(V2), pos(V4), mark(V4), mark(V5).
