
goal(V0, V1) :- true_step(V33), V1 = 100, V33 = 30, agent(V0), score_int(V1), time_step(V33), score_int(V33).
goal(V0, V1) :- not true_step(V33), V1 = 0, V33 = 30, agent(V0), time_step(V1), score_int(V1), time_step(V33), score_int(V33).
