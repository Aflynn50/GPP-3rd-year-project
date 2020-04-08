
goal(V0, V1) :- true, V1 = 0, agent(V0), int(V1).
goal(V0, V1) :- true_color(V2, V10), true_color(V6, V10), V1 = 100, V2 = r6, V6 = r2, agent(V0), int(V1), pos(V2), pos(V6), hue(V10).
