
next_mark(V0, V1, V0, V0, V2) :- V0 = 2, V1 = 3, V2 = x, pos(V0), pos(V1), symbol(V2).
next_mark(V0, V0, V1, V2, V3) :- true_mark(V0, V1, V0, V0, V3), true_mark(V0, V0, V0, V0, V6), V1 = 3, V2 = 1, pos(V0), pos(V1), pos(V2), symbol(V3), symbol(V6).
next_mark(V0, V1, V1, V0, V2) :- true_mark(V6, V6, V0, V1, V5), true_mark(V6, V6, V6, V6, V2), pos(V0), pos(V1), symbol(V2), symbol(V5), pos(V6).
next_mark(V0, V1, V0, V1, V2) :- does_play(V3, V0, V1, V0, V1, V2), pos(V0), pos(V1), symbol(V2), agent(V3).
