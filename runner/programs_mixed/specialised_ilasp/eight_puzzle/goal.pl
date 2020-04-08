
goal(V0, V1) :- true_step(V33), true_cell(V10, V8, V8), V1 = 100, V10 = 1, V33 = 30, agent(V0), score_int(V1), pos(V8), cell_type(V8), time_step(V8), score_int(V8), pos(V10), cell_type(V10), time_step(V10), score_int(V10), time_step(V33), score_int(V33).
goal(V0, V1) :- not true_step(V33), V1 = 0, V33 = 30, agent(V0), time_step(V1), score_int(V1), time_step(V33), score_int(V33).
