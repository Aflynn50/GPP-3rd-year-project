
next_currentboard(V0, V1) :- does_play(V3, V1, V5, V0, V1, V6), pos(V0), pos(V1), agent(V3), pos(V5), symbol(V6).
next_currentboard(V0, V1) :- does_play(V3, V5, V0, V0, V1, V6), pos(V0), pos(V1), agent(V3), pos(V5), symbol(V6).
next_currentboard(V0, V1) :- does_play(V2, V0, V4, V0, V1, V5), pos(V0), pos(V1), agent(V2), pos(V4), symbol(V5).
next_currentboard(V0, V1) :- does_play(V3, V5, V1, V0, V1, V6), pos(V0), pos(V1), agent(V3), pos(V5), symbol(V6).
next_currentboard(V0, V0) :- does_play(V2, V3, V5, V0, V0, V6), pos(V0), agent(V2), pos(V3), pos(V5), symbol(V6).
next_currentboard(V0, V1) :- does_play(V2, V5, V5, V0, V1, V4), pos(V0), pos(V1), agent(V2), symbol(V4), pos(V5).
