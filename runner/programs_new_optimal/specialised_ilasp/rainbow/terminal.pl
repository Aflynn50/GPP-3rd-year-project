
terminal :- true_color(V5, V9), V5 = r2, V9 = green, pos(V5), hue(V9).
terminal :- true_color(V5, V8), V5 = r2, V8 = red, pos(V5), hue(V8).
terminal :- true_color(V1, V9), true_color(V6, V9), V1 = r6, V6 = r1, V9 = green, pos(V1), pos(V6), hue(V9).
terminal :- true_color(V1, V10), true_color(V4, V9), V1 = r6, V4 = r3, V9 = green, pos(V1), pos(V4), hue(V9), hue(V10).
