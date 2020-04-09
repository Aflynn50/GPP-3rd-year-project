
terminal :- true_color(V1, V10), true_color(V2, V9), V2 = r5, V9 = green, V10 = blue, pos(V1), pos(V2), hue(V9), hue(V10).
terminal :- true_color(V3, V9), true_color(V5, V10), V3 = r4, V5 = r2, V9 = green, pos(V3), pos(V5), hue(V9), hue(V10).
terminal :- true_color(V2, V9), true_color(V6, V9), V2 = r5, V6 = r1, pos(V2), pos(V6), hue(V9).
terminal :- true_color(V3, V8), true_color(V6, V7), V3 = r4, V6 = r1, V8 = red, pos(V3), pos(V6), hue(V7), hue(V8).
terminal :- true_color(V4, V8), true_color(V6, V8), V4 = r3, V6 = r1, V8 = red, pos(V4), pos(V6), hue(V8).
