
next_mark(V0, V1, V2, V2, V3) :- does_play(V4, V0, V1, V2, V2, V3), pos(V0), pos(V1), pos(V2), symbol(V3), agent(V4).
next_mark(V0, V1, V2, V2, V3) :- true_mark(V0, V1, V2, V2, V3), pos(V0), pos(V1), pos(V2), symbol(V3).
next_mark(V0, V0, V1, V0, V2) :- does_play(V3, V0, V0, V1, V0, V2), pos(V0), pos(V1), symbol(V2), agent(V3).
next_mark(V0, V0, V1, V0, V2) :- true_mark(V0, V0, V1, V0, V2), pos(V0), pos(V1), symbol(V2).
next_mark(V0, V1, V1, V2, V3) :- true_mark(V1, V1, V0, V1, V6), true_mark(V2, V2, V2, V2, V3), pos(V0), pos(V1), pos(V2), symbol(V3), symbol(V6).
