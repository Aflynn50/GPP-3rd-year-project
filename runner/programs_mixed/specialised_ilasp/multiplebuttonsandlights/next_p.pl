
next_p(V0) :- true_p(V0), does_c(V7, V2), index(V0), index(V2), agent(V7).
next_p(V0) :- does_a(V8, V0), not true_p(V0), index(V0), agent(V8).
next_p(V0) :- successor(V0, V1), true_step(V1), true_p(V0), index(V0), index(V1).
next_p(V0) :- successor(V0, V1), true_p(V0), does_a(V7, V3), index(V0), index(V1), index(V3), agent(V7).
next_p(V0) :- true_p(V0), does_b(V7, V9), not true_p(V9), index(V0), agent(V7), index(V9).
