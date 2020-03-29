
next_captures(V0) :- succ(V0, V9), knightmove(V8, V8, V0, V9), not true_step(V8), pos(V0), int(V0), pos(V8), int(V8), pos(V9), int(V9).
