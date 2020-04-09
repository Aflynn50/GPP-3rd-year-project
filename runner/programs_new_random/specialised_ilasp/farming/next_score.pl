
next_score(V0, V1) :- true_score(V0, V1), agent(V0), int(V1).
next_score(V0, V1) :- succ(V51, V50), succ(V69, V68), succ(V70, V69), point_succ_two(V1, V70), true_step(V50), agent(V0), int(V1), int(V50), int(V51), int(V68), int(V69), int(V70).
