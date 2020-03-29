
next_mark(V0, V0, V1, V0, V2) :- V0 = 2, V1 = 1, V2 = x, pos(V0), pos(V1), symbol(V2).
next_mark(V0, V1, V2, V0, V3) :- true_mark(V1, V1, V0, V1, V6), V2 = 3, V3 = o, pos(V0), pos(V1), pos(V2), symbol(V3), symbol(V6).
next_mark(V0, V1, V1, V2, V3) :- true_mark(V2, V2, V1, V2, V3), true_mark(V1, V2, V0, V1, V6), pos(V0), pos(V1), pos(V2), symbol(V3), symbol(V6).
