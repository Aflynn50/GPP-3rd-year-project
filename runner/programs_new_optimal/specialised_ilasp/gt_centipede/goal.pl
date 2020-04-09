
goal(V0, V1) :- true_whitePayoff(V1), true_gameOver, not true_control(V0), agent(V0), int(V1).
goal(V0, V1) :- true_control(V0), true_blackPayoff(V1), agent(V0), int(V1).
goal(V0, V1) :- true_blackPayoff(V1), V0 = black, agent(V0), int(V1).
goal(V0, V1) :- not true_blackPayoff(V21), V0 = black, V1 = 10, V21 = 0, agent(V0), int(V1), int(V21).
goal(V0, V1) :- true_at(V12, V23, V24), V0 = black, V1 = 100, V23 = 1, V24 = x, agent(V0), int(V1), int(V12).
