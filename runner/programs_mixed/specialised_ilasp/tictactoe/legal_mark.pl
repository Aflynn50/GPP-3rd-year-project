
legal_mark(V0, V1, V1) :- true_cell(V3, V3, V7), true_cell(V3, V4, V8), not true_control(V0), V7 = b, V8 = x, agent(V0), pos(V1), pos(V3), pos(V4), mark(V7), mark(V8).
legal_mark(V0, V1, V2) :- true_cell(V2, V2, V6), true_cell(V2, V1, V7), not true_control(V0), V6 = o, V7 = b, agent(V0), pos(V1), pos(V2), mark(V6), mark(V7).
legal_mark(V0, V1, V2) :- true_cell(V4, V4, V6), true_cell(V1, V2, V7), not true_control(V0), V6 = o, V7 = b, agent(V0), pos(V1), pos(V2), pos(V4), mark(V6), mark(V7).
legal_mark(V0, V1, V2) :- true_cell(V4, V4, V6), V0 = white, V4 = 3, V6 = b, agent(V0), pos(V1), pos(V2), pos(V4), mark(V6).
legal_mark(V0, V1, V2) :- true_cell(V1, V4, V7), not true_control(V0), V0 = white, V2 = 2, V7 = b, agent(V0), pos(V1), pos(V2), pos(V4), mark(V7).
legal_mark(V0, V1, V2) :- not true_control(V0), V1 = 1, agent(V0), pos(V1), pos(V2).
