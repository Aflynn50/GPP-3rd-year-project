
goal(V0, V1) :- successor(V8, V7), true(V8), V1 = 0, agent(V0), int(V1), prop(V7), prop(V8).
goal(V0, V1) :- true(V3), V1 = 100, V3 = 7, agent(V0), int(V1), prop(V3).
