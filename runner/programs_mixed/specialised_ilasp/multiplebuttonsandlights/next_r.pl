
next_r(V0) :- true_q(V0), does_c(V8, V0), index(V0), agent(V8).
next_r(V0) :- true_r(V0), index(V0).
