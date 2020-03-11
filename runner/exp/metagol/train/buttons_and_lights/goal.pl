my_input(1,robot,a).
my_input(1,robot,b).
my_input(1,robot,c).
my_input(2,robot,a).
my_input(2,robot,b).
my_input(2,robot,c).
my_input(3,robot,a).
my_input(3,robot,b).
my_input(3,robot,c).
my_input(4,robot,a).
my_input(4,robot,b).
my_input(4,robot,c).
my_input(5,robot,a).
my_input(5,robot,b).
my_input(5,robot,c).
my_input(6,robot,a).
my_input(6,robot,b).
my_input(6,robot,c).
my_input(7,robot,a).
my_input(7,robot,b).
my_input(7,robot,c).
my_successor(1,1,2).
my_successor(1,2,3).
my_successor(1,3,4).
my_successor(1,4,5).
my_successor(1,5,6).
my_successor(1,6,7).
my_successor(2,1,2).
my_successor(2,2,3).
my_successor(2,3,4).
my_successor(2,4,5).
my_successor(2,5,6).
my_successor(2,6,7).
my_successor(3,1,2).
my_successor(3,2,3).
my_successor(3,3,4).
my_successor(3,4,5).
my_successor(3,5,6).
my_successor(3,6,7).
my_successor(4,1,2).
my_successor(4,2,3).
my_successor(4,3,4).
my_successor(4,4,5).
my_successor(4,5,6).
my_successor(4,6,7).
my_successor(5,1,2).
my_successor(5,2,3).
my_successor(5,3,4).
my_successor(5,4,5).
my_successor(5,5,6).
my_successor(5,6,7).
my_successor(6,1,2).
my_successor(6,2,3).
my_successor(6,3,4).
my_successor(6,4,5).
my_successor(6,5,6).
my_successor(6,6,7).
my_successor(7,1,2).
my_successor(7,2,3).
my_successor(7,3,4).
my_successor(7,4,5).
my_successor(7,5,6).
my_successor(7,6,7).
my_true(1,1).
my_true(2,2).
my_true(2,p).
my_true(3,3).
my_true(3,q).
my_true(4,4).
my_true(4,r).
my_true(5,5).
my_true(5,p).
my_true(5,r).
my_true(6,6).
my_true(6,q).
my_true(6,r).
my_true(7,7).
my_true(7,p).
my_true(7,q).
my_true(7,r).
neg(goal(1,robot,0)).
neg(goal(1,robot,100)).
neg(goal(2,robot,0)).
neg(goal(2,robot,100)).
neg(goal(3,robot,0)).
neg(goal(3,robot,100)).
neg(goal(4,robot,0)).
neg(goal(4,robot,100)).
neg(goal(5,robot,0)).
neg(goal(5,robot,100)).
neg(goal(6,robot,0)).
neg(goal(6,robot,100)).
neg(goal(7,robot,0)).
neg(goal(7,robot,100)).
not_my_input(A,B,C) :- \+ my_input(A,B,C).
not_my_successor(A,B,C) :- \+ my_successor(A,B,C).
not_my_true(A,B) :- \+ my_true(A,B).
not_role(A,B) :- \+ role(A,B).
pos(goal(1,robot,0)).
pos(goal(2,robot,0)).
pos(goal(3,robot,0)).
pos(goal(4,robot,0)).
pos(goal(5,robot,0)).
pos(goal(6,robot,0)).
pos(goal(7,robot,100)).
prim(my_input/3).
prim(my_successor/3).
prim(my_true/2).
prim(not_my_input/3).
prim(not_my_successor/3).
prim(not_my_true/2).
prim(not_role/2).
prim(role/2).
role(1,robot).
role(2,robot).
role(3,robot).
role(4,robot).
role(5,robot).
role(6,robot).
role(7,robot).
