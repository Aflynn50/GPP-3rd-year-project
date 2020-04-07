
next_mark(V0, V1, V2, V2, V3) :- true_control(V5), V0 = 3, V1 = 1, V2 = 2, V3 = x, pos(V0), pos(V1), pos(V2), symbol(V3), agent(V5).
next_mark(V0, V1, V0, V1, V2) :- true_mark(V0, V1, V0, V1, V2), pos(V0), pos(V1), symbol(V2).
next_mark(V0, V0, V1, V2, V3) :- does_play(V4, V0, V0, V1, V2, V3), pos(V0), pos(V1), pos(V2), symbol(V3), agent(V4).
next_mark(V0, V0, V1, V2, V3) :- true_mark(V0, V0, V1, V2, V3), pos(V0), pos(V1), pos(V2), symbol(V3).
next_mark(V0, V1, V2, V0, V3) :- does_play(V5, V0, V1, V2, V0, V3), pos(V0), pos(V1), pos(V2), symbol(V3), agent(V5).
next_mark(V0, V1, V2, V1, V3) :- does_play(V4, V0, V1, V2, V1, V3), pos(V0), pos(V1), pos(V2), symbol(V3), agent(V4).
next_mark(V0, V1, V2, V0, V3) :- true_mark(V0, V1, V2, V0, V3), pos(V0), pos(V1), pos(V2), symbol(V3).
