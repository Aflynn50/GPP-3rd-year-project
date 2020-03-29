
goal(V0, V1) :- true_dir(V12, V13), true_at(V9, V9, V12), not has_pred(V9), V1 = 0, agent(V0), int(V1), int(V9), obj(V12), action(V13).
goal(V0, V1) :- succ(V4, V2), true_dir(V12, V13), true_at(V8, V2, V12), V1 = 10, agent(V0), int(V1), int(V2), int(V4), int(V8), obj(V12), action(V13).
