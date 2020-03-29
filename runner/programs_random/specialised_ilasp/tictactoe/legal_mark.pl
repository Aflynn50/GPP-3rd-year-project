
legal_mark(V0, V1, V2) :- true_cell(V1, V4, V6), true_cell(V4, V1, V6), V0 = white, V1 = 3, V4 = 2, agent(V0), pos(V1), pos(V2), pos(V4), mark(V6).
legal_mark(V0, V1, V2) :- true_cell(V4, V2, V8), true_cell(V1, V1, V6), not true_control(V0), V6 = b, V8 = o, agent(V0), pos(V1), pos(V2), pos(V4), mark(V6), mark(V8).
legal_mark(V0, V1, V2) :- true_cell(V4, V4, V6), true_cell(V2, V4, V8), not true_control(V0), V6 = b, V8 = o, agent(V0), pos(V1), pos(V2), pos(V4), mark(V6), mark(V8).
legal_mark(V0, V1, V2) :- true_control(V0), true_cell(V4, V4, V6), true_cell(V4, V1, V6), V1 = 1, V4 = 3, agent(V0), pos(V1), pos(V2), pos(V4), mark(V6).
legal_mark(V0, V1, V2) :- true_cell(V4, V1, V6), true_cell(V1, V4, V6), V0 = white, V1 = 2, V4 = 3, agent(V0), pos(V1), pos(V2), pos(V4), mark(V6).
legal_mark(V0, V1, V2) :- true_control(V3), V0 = white, V1 = 1, V3 = black, agent(V0), pos(V1), pos(V2), agent(V3).
legal_mark(V0, V1, V2) :- true_cell(V4, V2, V7), true_cell(V1, V2, V6), not true_control(V0), V6 = b, V7 = x, agent(V0), pos(V1), pos(V2), pos(V4), mark(V6), mark(V7).
legal_mark(V0, V1, V1) :- true_cell(V1, V3, V7), true_cell(V3, V3, V8), not true_control(V0), V7 = b, V8 = x, agent(V0), pos(V1), pos(V3), mark(V7), mark(V8).
legal_mark(V0, V1, V2) :- not true_control(V0), V0 = white, V1 = 3, V2 = 2, agent(V0), pos(V1), pos(V2).
legal_mark(V0, V1, V2) :- true_control(V3), V1 = 2, V2 = 1, V3 = black, agent(V0), pos(V1), pos(V2), agent(V3).
