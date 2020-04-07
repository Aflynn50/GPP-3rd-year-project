
next_q(V0) :- true_p(V0), does_b(V8, V0), index(V0), agent(V8).
next_q(V0) :- true_q(V0), not true_p(V0), not true_step(V1), V1 = 6, index(V0), index(V1).
next_q(V0) :- true_r(V0), index(V0).
