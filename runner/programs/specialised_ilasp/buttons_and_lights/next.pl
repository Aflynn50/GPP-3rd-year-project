
next(V0) :- true(V12), does(V8, V9), V0 = r, V9 = c, V12 = q, prop(V0), agent(V8), action(V9), prop(V12).
next(V0) :- successor(V1, V0), true(V1), prop(V0), prop(V1).
next(V0) :- does(V8, V11), not true(V0), V0 = p, V11 = a, prop(V0), agent(V8), action(V11).
next(V0) :- true(V12), does(V8, V9), V0 = q, V9 = c, V12 = r, prop(V0), agent(V8), action(V9), prop(V12).
next(V0) :- true(V0), does(V8, V9), V0 = p, V9 = c, prop(V0), agent(V8), action(V9).
next(V0) :- true(V0), does(V8, V10), V0 = r, V10 = b, prop(V0), agent(V8), action(V10).
next(V0) :- true(V12), does(V8, V10), V0 = q, V10 = b, V12 = p, prop(V0), agent(V8), action(V10), prop(V12).
next(V0) :- true(V0), does(V8, V11), V0 = q, V11 = a, prop(V0), agent(V8), action(V11).
next(V0) :- true(V12), does(V8, V10), V0 = p, V10 = b, V12 = q, prop(V0), agent(V8), action(V10), prop(V12).
next(V0) :- true(V0), does(V8, V11), V0 = r, V11 = a, prop(V0), agent(V8), action(V11).
