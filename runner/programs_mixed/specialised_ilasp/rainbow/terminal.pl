
terminal :- true_color(V1, V10), true_color(V2, V9), V2 = r5, V9 = green, V10 = blue, pos(V1), pos(V2), hue(V9), hue(V10).
terminal :- true_color(V3, V9), true_color(V5, V10), V3 = r4, V5 = r2, V9 = green, pos(V3), pos(V5), hue(V9), hue(V10).
terminal :- true_color(V1, V9), true_color(V5, V7), V1 = r6, V5 = r2, V9 = green, pos(V1), pos(V5), hue(V7), hue(V9).
terminal :- true_color(V3, V8), true_color(V6, V10), V3 = r4, V6 = r1, V8 = red, pos(V3), pos(V6), hue(V8), hue(V10).
