
next_q(V0) :- true_p(V0), does_b(V8, V0), index(V0), agent(V8).
next_q(V0) :- successor(V4, V3), successor(V5, V4), true_step(V5), true_q(V0), index(V0), index(V3), index(V4), index(V5).
next_q(V0) :- successor(V1, V0), true_q(V0), index(V0), index(V1).
