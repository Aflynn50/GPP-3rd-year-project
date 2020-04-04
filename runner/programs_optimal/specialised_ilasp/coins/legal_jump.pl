
legal_jump(V0, V1, V2) :- true_step(V6), V1 = 8, V2 = 4, V6 = 3, agent(V0), pos(V1), pos(V2), pos(V6).
legal_jump(V0, V1, V2) :- true_step(V6), V1 = 4, V2 = 8, V6 = 3, agent(V0), pos(V1), pos(V2), pos(V6).
legal_jump(V0, V1, V2) :- succ(V6, V1), succ(V7, V6), succ(V2, V7), true_step(V8), V8 = 1, agent(V0), pos(V1), pos(V2), pos(V6), pos(V7), pos(V8).
legal_jump(V0, V1, V2) :- succ(V4, V1), succ(V5, V4), succ(V2, V5), true_step(V7), V7 = 2, agent(V0), pos(V1), pos(V2), pos(V4), pos(V5), pos(V7).
legal_jump(V0, V1, V2) :- true_step(V2), V1 = 7, V2 = 3, agent(V0), pos(V1), pos(V2).
legal_jump(V0, V1, V2) :- true_step(V1), V1 = 3, V2 = 7, agent(V0), pos(V1), pos(V2).
legal_jump(V0, V1, V2) :- succ(V1, V8), true_step(V2), V2 = 3, V8 = 2, agent(V0), pos(V1), pos(V2), pos(V8).
legal_jump(V0, V1, V2) :- succ(V3, V2), succ(V4, V3), succ(V1, V4), true_step(V8), V8 = 1, agent(V0), pos(V1), pos(V2), pos(V3), pos(V4), pos(V8).
legal_jump(V0, V1, V2) :- succ(V5, V2), succ(V6, V5), succ(V1, V6), true_step(V7), V7 = 2, agent(V0), pos(V1), pos(V2), pos(V5), pos(V6), pos(V7).
legal_jump(V0, V1, V2) :- true_step(V1), V1 = 3, V2 = 1, agent(V0), pos(V1), pos(V2).
legal_jump(V0, V1, V2) :- true_step(V5), V1 = 8, V2 = 6, V5 = 4, agent(V0), pos(V1), pos(V2), pos(V5).
legal_jump(V0, V1, V2) :- true_step(V5), V1 = 6, V2 = 8, V5 = 4, agent(V0), pos(V1), pos(V2), pos(V5).
legal_jump(V0, V1, V2) :- succ(V7, V1), succ(V2, V8), not true_step(V7), V1 = 4, V2 = 1, agent(V0), pos(V1), pos(V2), pos(V7), pos(V8).
legal_jump(V0, V1, V2) :- succ(V7, V2), succ(V1, V8), not true_step(V7), V2 = 4, V8 = 2, agent(V0), pos(V1), pos(V2), pos(V7), pos(V8).
