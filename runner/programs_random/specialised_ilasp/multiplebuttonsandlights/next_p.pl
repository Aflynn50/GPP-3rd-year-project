
next_p(V0) :- true_step(V4), not true_p(V4), V0 = 5, index(V0), index(V4).
next_p(V0) :- true_p(V2), V0 = 6, index(V0), index(V2).
