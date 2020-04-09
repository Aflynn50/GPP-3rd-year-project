
goal(V0, V1) :- V1 = 0, agent(V0), int(V1).
goal(V0, V1) :- true_color(V6, V10), V6 = r2, agent(V0), int(V1), pos(V6), hue(V10).
