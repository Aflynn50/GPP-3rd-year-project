
next(V0) :- successor(V5, V0), true(V5), prop(V0), prop(V5).
next(V0) :- true(V5), V0 = p, V5 = 3, prop(V0), prop(V5).
next(V0) :- does(V8, V11), not true(V0), V0 = p, V11 = a, prop(V0), agent(V8), action(V11).
