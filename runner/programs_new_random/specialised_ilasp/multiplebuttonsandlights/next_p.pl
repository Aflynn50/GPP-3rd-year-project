
next_p(V0) :- does_a(V8, V0), not true_p(V0), index(V0), agent(V8).
next_p(V0) :- true_p(V0), not true_p(V6), V0 = 7, V6 = 1, index(V0), index(V6).
next_p(V0) :- successor(V0, V6), true_p(V0), not true_p(V3), V3 = 5, index(V0), index(V3), index(V6).
next_p(V0) :- true_p(V0), V0 = 5, index(V0).
next_p(V0) :- successor(V0, V5), true_p(V0), not true_step(V1), V1 = 6, index(V0), index(V1), index(V5).
next_p(V0) :- successor(V1, V2), true_p(V0), true_p(V2), V0 = 8, index(V0), index(V1), index(V2).
