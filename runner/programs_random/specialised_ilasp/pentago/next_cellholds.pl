
next_cellholds(V0, V1, V2, V3) :- verticalflip(V2, V4, V2, V4), globalindex(V0, V1, V4, V0, V4), pos(V0), pos(V1), pos(V2), agent(V3), pos(V4).
