
goal(V0, V1) :- V1 = 100, agent(V0), int(V1).
goal(V0, V1) :- not true_control(V0), agent(V0), int(V1).
agent(V10).
