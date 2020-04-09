
goal(V0, V1) :- true_whitePayoff(V1), true_gameOver, V0 = white, agent(V0), int(V1).
goal(V0, V1) :- true_whitePayoff(V1), not true_control(V22), V1 = 0, V22 = white, agent(V0), int(V1), agent(V22).
goal(V0, V1) :- true_gameOver, true_blackPayoff(V1), V0 = black, agent(V0), int(V1).
goal(V0, V1) :- true_control(V22), not true_whitePayoff(V1), V1 = 0, V22 = white, agent(V0), int(V1), agent(V22).
goal(V0, V1) :- true_whitePayoff(V14), V1 = 0, V14 = 10, agent(V0), int(V1), int(V14).
goal(V0, V1) :- not true_control(V0), not true_control(V22), V0 = black, V1 = 10, V22 = white, agent(V0), int(V1), agent(V22).
goal(V0, V1) :- not true_control(V0), not true_control(V22), V0 = black, V1 = 100, V22 = white, agent(V0), int(V1), agent(V22).
