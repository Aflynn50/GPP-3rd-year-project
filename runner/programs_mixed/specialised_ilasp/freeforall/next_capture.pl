
next_capture(V0, V1) :- scoremap(V1, V1), agent(V0), int(V1).
next_capture(V0, V1) :- spawns(V1, V8, V0), agent(V0), pos(V1), int(V1), pos(V8), int(V8).
