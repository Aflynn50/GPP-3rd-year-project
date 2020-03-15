
next(V0) :- true(V6), V0 = p, V6 = 2, prop(V0), prop(V6).
next(V0) :- successor(V5, V0), true(V5), prop(V0), prop(V5).
next(V0) :- true(V12), V0 = q, V12 = p, prop(V0), prop(V12).
next(V0) :- true(V12), V0 = r, V12 = q, prop(V0), prop(V12).
next(V0) :- true(V3), does(V8, V10), V0 = r, V3 = 5, prop(V0), prop(V3), agent(V8), action(V10).
next(V0) :- true(V1), V0 = q, V1 = 6, prop(V0), prop(V1).
