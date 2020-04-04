
goal(V0, V1) :- true_dir(V12, V15), V1 = 10, agent(V0), int(V1), obj(V12), action(V15).
goal(V0, V1) :- true_at(V6, V9, V10), true_at(V9, V3, V11), V1 = 100, V6 = 4, agent(V0), int(V1), int(V3), int(V6), int(V9), obj(V10), obj(V11).
