
goal(V0, V1) :- true_dir(V12, V15), V1 = 10, agent(V0), int(V1), obj(V12), action(V15).
goal(V0, V1) :- true_at(V9, V3, V11), not centipede(V11), not has_succ(V3), V1 = 100, agent(V0), int(V1), int(V3), int(V9), obj(V11).
