
goal(V0, V1) :- true_r(V4), true_q(V4), true_p(V4), V1 = 100, agent(V0), int(V1), index(V4).
goal(V0, V1) :- successor(V6, V5), true_step(V6), V1 = 0, agent(V0), int(V1), index(V5), index(V6).
goal(V0, V1) :- not true_q(V4), V1 = 0, V4 = 5, agent(V0), int(V1), index(V4).
