
next(V0) :- true(V12), V0 = q, V12 = p, prop(V0), prop(V12).
next(V0) :- successor(V5, V0), true(V5), prop(V0), prop(V5).
next(V0) :- true(V12), V0 = r, V12 = q, prop(V0), prop(V12).
next(V0) :- true(V0), V0 = r, prop(V0).
next(V0) :- does(V8, V11), V0 = p, V11 = a, prop(V0), agent(V8), action(V11).
next(V0) :- true(V1), V0 = q, V1 = 6, prop(V0), prop(V1).
