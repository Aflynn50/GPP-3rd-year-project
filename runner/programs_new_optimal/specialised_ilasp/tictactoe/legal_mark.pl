
legal_mark(V0, V1, V2) :- true_cell(V4, V4, V6), V0 = white, V4 = 1, V6 = b, agent(V0), pos(V1), pos(V2), pos(V4), mark(V6).
legal_mark(V0, V1, V2) :- true_cell(V1, V2, V6), true_cell(V4, V4, V7), not true_control(V0), V6 = b, V7 = x, agent(V0), pos(V1), pos(V2), pos(V4), mark(V6), mark(V7).
legal_mark(V0, V1, V2) :- true_cell(V2, V2, V8), not true_control(V0), V0 = black, V8 = o, agent(V0), pos(V1), pos(V2), mark(V8).
legal_mark(V0, V1, V2) :- not true_control(V0), V0 = white, V1 = 3, agent(V0), pos(V1), pos(V2).
