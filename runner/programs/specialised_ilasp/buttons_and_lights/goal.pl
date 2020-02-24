
goal(V0, V1) :- V1 = 0, agent(V0), int(V1).
goal(V0, V1) :- true(V12), true(V14), V12 = r, V14 = p, agent(V0), int(V1), prop(V12), prop(V14).
