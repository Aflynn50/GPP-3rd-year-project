
goal(V0, V1) :- V1 = 0, agent(V0), int(V1).
goal(V0, V1) :- true_color(V5, V11), V5 = r3, agent(V0), int(V1), pos(V5), hue(V11).
