
next_mark(V0, V1, V2, V2, V3) :- does_play(V4, V0, V1, V2, V2, V3), pos(V0), pos(V1), pos(V2), symbol(V3), agent(V4).
next_mark(V0, V1, V2, V2, V3) :- true_mark(V0, V1, V2, V2, V3), pos(V0), pos(V1), pos(V2), symbol(V3).
next_mark(V0, V1, V0, V1, V2) :- true_mark(V1, V1, V0, V1, V5), true_mark(V0, V0, V1, V1, V2), pos(V0), pos(V1), symbol(V2), symbol(V5).
next_mark(V0, V1, V1, V0, V2) :- true_mark(V1, V1, V0, V1, V2), true_mark(V0, V1, V0, V1, V6), pos(V0), pos(V1), symbol(V2), symbol(V6).
next_mark(V0, V0, V1, V2, V3) :- does_play(V4, V0, V0, V1, V2, V3), pos(V0), pos(V1), pos(V2), symbol(V3), agent(V4).
next_mark(V0, V0, V1, V2, V3) :- true_mark(V0, V0, V1, V2, V3), pos(V0), pos(V1), pos(V2), symbol(V3).
