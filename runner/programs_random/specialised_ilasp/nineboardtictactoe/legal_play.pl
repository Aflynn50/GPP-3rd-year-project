
legal_play(V0, V1, V2, V1, V3, V4) :- V2 = 2, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V2, V3, V1, V4) :- V2 = 2, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V1, V2, V3, V4) :- V3 = 2, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V2, V3, V1, V4) :- V3 = 2, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V2, V2, V3, V4) :- input_play(V0, V1, V1, V1, V1, V4), true_control(V0), agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V2, V1, V3, V4) :- V1 = 2, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V2, V3, V2, V4) :- V3 = 1, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V2, V3, V1, V4) :- V1 = 2, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V2, V3, V3, V4) :- V3 = 1, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V1, V2, V3, V4) :- V3 = 1, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V1, V2, V3, V4) :- V1 = 2, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V2, V3, V2, V4) :- V2 = 1, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V2, V3, V3, V4) :- V2 = 1, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
legal_play(V0, V1, V2, V1, V3, V4) :- V3 = 2, agent(V0), pos(V1), pos(V2), pos(V3), symbol(V4).
