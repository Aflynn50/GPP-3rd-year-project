
goal(V0, V1) :- true(V13), true(V3), V1 = 100, V3 = 7, V13 = q, agent(V0), int(V1), prop(V3), prop(V13).
goal(V0, V1) :- successor(V5, V4), true(V5), V1 = 0, agent(V0), int(V1), prop(V4), prop(V5).
goal(V0, V1) :- not true(V14), V1 = 0, V14 = q, agent(V0), int(V1), prop(V14).
