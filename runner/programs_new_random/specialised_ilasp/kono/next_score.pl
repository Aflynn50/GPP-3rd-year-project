
next_score(V0, V1) :- V1 = 12, agent(V0), mark(V0), int(V1).
next_score(V0, V1) :- true_score(V32, V1), agent(V0), mark(V0), int(V1), agent(V32), mark(V32).
