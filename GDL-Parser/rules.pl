role(robot).
base(cell(M, N, T)) :-
    index(M),
    index(N),
    tile(T).
base(step(0)).
base(step(N)) :-
    successor(M, N).
input(robot, move(M, N)) :-
    index(M),
    index(N).
index(1).
index(2).
index(3).
tile(1).
tile(2).
tile(3).
tile(4).
tile(5).
tile(6).
tile(7).
tile(8).
tile(b).
init(cell(1, 1, 8)).
init(cell(1, 2, 7)).
init(cell(1, 3, 6)).
init(cell(2, 1, 5)).
init(cell(2, 2, 4)).
init(cell(2, 3, 3)).
init(cell(3, 1, 2)).
init(cell(3, 2, 1)).
init(cell(3, 3, b)).
init(step(0)).
succ(1, 2).
succ(2, 3).
legal(robot, move(M, O)) :-
    true(cell(M, N, b)),
    succ(N, O).
legal(robot, move(M, N)) :-
    true(cell(M, O, b)),
    succ(N, O).
legal(robot, move(M, N)) :-
    true(cell(L, N, b)),
    succ(L, M).
legal(robot, move(L, N)) :-
    true(cell(M, N, b)),
    succ(L, M).
next(step(X)) :-
    true(step(Y)),
    successor(Y, X).
next(cell(X, Y, b)) :-
    does(robot, move(X, Y)).
next(cell(U, Y, Z)) :-
    does(robot, move(X, Y)),
    true(cell(U, Y, b)),
    true(cell(X, Y, Z)),
    distinct(Z, b).
next(cell(X, V, Z)) :-
    does(robot, move(X, Y)),
    true(cell(X, V, b)),
    true(cell(X, Y, Z)),
    distinct(Z, b).
next(cell(U, V, Z)) :-
    true(cell(U, V, Z)),
    does(robot, move(X, Y)),
    or(distinct(X, U), distinct(Y, V)),
    true(cell(X1, Y1, b)),
    or(distinct(X1, U), distinct(Y1, V)).
goal(robot, N) :-
    inorder,
    true(step(K)),
    scoremap(K, N).
goal(robot, 0) :-
    not(inorder).
terminal :-
    inorder.
terminal :-
    true(step(50)).
inorder :-
    true(cell(1, 1, 1)),
    true(cell(1, 2, 2)),
    true(cell(1, 3, 3)),
    true(cell(2, 1, 4)),
    true(cell(2, 2, 5)),
    true(cell(2, 3, 6)),
    true(cell(3, 1, 7)),
    true(cell(3, 2, 8)),
    true(cell(3, 3, b)).
successor(0, 1).
successor(1, 2).
successor(2, 3).
successor(3, 4).
successor(4, 5).
successor(5, 6).
successor(6, 7).
successor(7, 8).
successor(8, 9).
successor(9, 10).
successor(10, 11).
successor(11, 12).
successor(12, 13).
successor(13, 14).
successor(14, 15).
successor(15, 16).
successor(16, 17).
successor(17, 18).
successor(18, 19).
successor(19, 20).
successor(20, 21).
successor(21, 22).
successor(22, 23).
successor(23, 24).
successor(24, 25).
successor(25, 26).
successor(26, 27).
successor(27, 28).
successor(28, 29).
successor(29, 30).
successor(30, 31).
successor(31, 32).
successor(32, 33).
successor(33, 34).
successor(34, 35).
successor(35, 36).
successor(36, 37).
successor(37, 38).
successor(38, 39).
successor(39, 40).
successor(40, 41).
successor(41, 42).
successor(42, 43).
successor(43, 44).
successor(44, 45).
successor(45, 46).
successor(46, 47).
successor(47, 48).
successor(48, 49).
successor(49, 50).
scoremap(26, 100).
scoremap(27, 100).
scoremap(28, 100).
scoremap(29, 100).
scoremap(30, 100).
scoremap(31, 98).
scoremap(32, 96).
scoremap(33, 94).
scoremap(34, 92).
scoremap(35, 90).
scoremap(36, 88).
scoremap(37, 86).
scoremap(38, 84).
scoremap(39, 82).
scoremap(40, 80).
scoremap(41, 78).
scoremap(42, 76).
scoremap(43, 74).
scoremap(44, 72).
scoremap(45, 70).
scoremap(46, 68).
scoremap(47, 66).
scoremap(48, 64).
scoremap(49, 62).
scoremap(50, 60).
