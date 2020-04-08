
goal(V0, V1) :- true_whitePayoff(V1), not true_control(V0), V0 = white, agent(V0), int(V1).
goal(V0, V1) :- true_blackPayoff(V1), not true_control(V0), V0 = black, agent(V0), int(V1).
goal(V0, V1) :- true_control(V0), V1 = 0, agent(V0), int(V1).
goal(V0, V1) :- not true_blackPayoff(V21), not true_whitePayoff(V21), V0 = black, V1 = 10, V21 = 0, agent(V0), int(V1), int(V21).
goal(V0, V1) :- true_at(V23, V24, V25), V0 = black, V23 = 3, V24 = 7, V25 = o, agent(V0), int(V1).
