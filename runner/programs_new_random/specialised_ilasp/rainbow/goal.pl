
goal(V0, V1) :- true, V1 = 0, agent(V0), int(V1).
goal(V0, V1) :- true_color(V7, V8), V1 = 100, V7 = r1, V8 = yellow, agent(V0), int(V1), pos(V7), hue(V8).
goal(V0, V1) :- true_color(V2, V11), V1 = 0, V2 = r6, V11 = blue, agent(V0), int(V1), pos(V2), hue(V11).
goal(V0, V1) :- true_color(V3, V8), V3 = r5, V8 = yellow, agent(V0), int(V1), pos(V3), hue(V8).
