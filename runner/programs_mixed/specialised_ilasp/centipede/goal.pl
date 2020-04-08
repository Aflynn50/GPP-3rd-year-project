
goal(V0, V1) :- true_dir(V12, V15), V1 = 10, agent(V0), int(V1), obj(V12), action(V15).
goal(V0, V1) :- succ(V8, V7), controls(V0, V10), true_at(V7, V2, V11), true_at(V8, V9, V10), V1 = 100, agent(V0), int(V1), int(V2), int(V7), int(V8), int(V9), obj(V10), obj(V11).
