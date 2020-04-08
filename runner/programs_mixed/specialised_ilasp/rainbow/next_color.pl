
next_color(V0, V1) :- true_color(V0, V1), pos(V0), hue(V1).
next_color(V0, V1) :- does_mark(V2, V0, V1), pos(V0), hue(V1), agent(V2).
