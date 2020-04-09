
legal_mark(V0, V1, V1, V2) :- true_cell(V1, V1, V4), true_cell(V3, V1, V4), true_cell(V3, V3, V4), V1 = 3, V3 = 1, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3), mark(V4).
legal_mark(V0, V1, V2, V2) :- true_cell(V2, V1, V4), true_cell(V2, V2, V4), V1 = 3, V2 = 1, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), mark(V4).
legal_mark(V0, V1, V1, V2) :- true_cell(V1, V1, V4), true_cell(V2, V1, V4), V1 = 3, V2 = 2, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), mark(V4).
legal_mark(V0, V1, V1, V2) :- true_cell(V2, V3, V4), true_cell(V1, V2, V4), true_cell(V1, V3, V1), not digit(V4), agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3), mark(V4).
legal_mark(V0, V1, V1, V1) :- true_cell(V1, V1, V1), true_cell(V3, V1, V4), not digit(V4), agent(V0), pos(V1), mark(V1), pos(V3), mark(V3), mark(V4).
legal_mark(V0, V1, V2, V1) :- true_cell(V2, V2, V4), true_cell(V3, V1, V4), V1 = 3, V3 = 1, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3), mark(V4).
legal_mark(V0, V1, V2, V2) :- true_cell(V2, V1, V4), true_cell(V3, V3, V4), V1 = 3, V2 = 2, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3), mark(V4).
legal_mark(V0, V1, V2, V2) :- true_cell(V2, V1, V1), V2 = 2, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2).
legal_mark(V0, V1, V2, V2) :- true_cell(V2, V3, V4), true_cell(V3, V2, V4), true_cell(V1, V3, V1), not digit(V4), V2 = 3, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3), mark(V4).
legal_mark(V0, V1, V2, V3) :- true_cell(V2, V2, V4), true_cell(V1, V3, V1), not digit(V4), V1 = 2, V2 = 3, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3), mark(V4).
legal_mark(V0, V1, V1, V2) :- true_cell(V1, V3, V4), true_cell(V3, V3, V4), true_cell(V3, V2, V3), V1 = 3, V3 = 2, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3), mark(V4).
legal_mark(V0, V1, V2, V2) :- true_cell(V2, V2, V4), true_cell(V1, V1, V4), not digit(V4), V1 = 2, V2 = 3, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), mark(V4).
legal_mark(V0, V1, V1, V2) :- true_cell(V2, V2, V4), true_cell(V1, V1, V4), not digit(V4), V1 = 2, V2 = 3, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), mark(V4).
legal_mark(V0, V1, V2, V3) :- true_cell(V1, V3, V1), true_cell(V3, V2, V4), true_cell(V3, V3, V4), not digit(V4), V2 = 3, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3), mark(V4).
legal_mark(V0, V1, V2, V3) :- true_cell(V3, V3, V2), true_cell(V3, V1, V3), V3 = 2, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3).
legal_mark(V0, V1, V2, V1) :- true_cell(V1, V2, V4), true_cell(V1, V3, V4), true_cell(V2, V3, V2), V2 = 2, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3), mark(V4).
legal_mark(V0, V1, V1, V1) :- true_cell(V1, V2, V4), true_cell(V1, V3, V4), true_cell(V2, V2, V4), true_cell(V2, V3, V2), V2 = 2, agent(V0), pos(V1), mark(V1), pos(V2), mark(V2), pos(V3), mark(V3), mark(V4).
