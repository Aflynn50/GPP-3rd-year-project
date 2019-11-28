% Representation of board is [cell(x,y,n)] 

min(A, B, Min) :- A < B -> Min = A ; Min = B.


% swap is true if mandist to cell is one
dif(A,B,D) :-
    D is A-B, D>=0,!
    ;
    D is B-A.

mandist(X1,Y1,X2,Y2,D) :-
    dif(X1,X2,Dx),
    dif(Y1,Y2,Dy),
    D is Dx+Dy.

s(B1,B2,1) :-
    member(cell(X1,Y1,b), B1),
    member(cell(X2,Y2,N), B1),
    N \= b,
    mandist(X1,Y1,X2,Y2,1),
    updateboard(cell(X1,Y1,b),cell(X2,Y2,N),B1,B2).

%Insert should be done first, ,     
%add new cell after old one with same pos
%insert(cell,oldB,newB)
insertcell(cell(X,Y,N1),[cell(X,Y,N2)|T],[cell(X,Y,N2),cell(X,Y,N1)|T]) :- !.

insertcell(C,[H|T],[H|L]) :-
    insertcell(C,T,L).

%Del first one with that pos
delcell(cell(X,Y,N1),[cell(X,Y,N2)|T],T) :- !.

delcell(C,[H|T],[H|L]) :-
    delcell(C,T,L).

% updateboard(swap1,swap2,B1,B2)

updateboard(cell(X1,Y1,N1),cell(X2,Y2,N2),B1,B2) :-
    insertcell(cell(X2,Y2,N1),B1,I1),
    delcell(cell(X2,Y2,N2),I1,I2),
    insertcell(cell(X1,Y1,N2),I2,I3),
    delcell(cell(X1,Y1,N1),I3,B2).


start([
cell(1, 1, 8),
cell(1, 2, 7),
cell(1, 3, 6),
cell(2, 1, 5),
cell(2, 2, 4),
cell(2, 3, 3),
cell(3, 1, 2),
cell(3, 2, 1),
cell(3, 3, b)]).

inorder([
cell(1, 1, 1),
cell(1, 2, 2),
cell(1, 3, 3),
cell(2, 1, 4),
cell(2, 2, 5),
cell(2, 3, 6),
cell(3, 1, 7),
cell(3, 2, 8),
cell(3, 3, b)]).


donecell(1, 1, 1).
donecell(1, 2, 2).
donecell(1, 3, 3).
donecell(2, 1, 4).
donecell(2, 2, 5).
donecell(2, 3, 6).
donecell(3, 1, 7).
donecell(3, 2, 8).
donecell(3, 3, b).

goal(B) :-
    inorder(B).

totdist([],0).

totdist([cell(X1,Y1,V)|T],N) :-
    donecell(X2,Y2,V),
    mandist(X1,Y1,X2,Y2,D),
    totdist(T,N1),
    N is N1 + D.
    
seq(B,[],0).

seq(B,[cell(2,2,V)|T],N) :-!,
	dif(V,b),
	seq(B,T,N1),
	N is N1 + 1.

seq(B,[cell(X,Y,b)|T],N) :- !,
	seq(B,T,N).

seq(B,[cell(X1,Y1,V)|T],N) :-
	clocksucc(X1,Y1,X2,Y2),
	propsucc(V,M),
	seq(B,T,N1),
	score(cell(X2,Y2,M),B,S),
	N is S + N1.


score(C,B,S) :- 
	member(C,B),
	S = 0,
	!.

score(C,B,2) :- !.

propsucc(8,0) :- !.
propsucc(X,Y) :- 
	Y is X + 1,!.

clocksucc(1,1,1,2).
clocksucc(1,2,1,3).
clocksucc(1,3,2,3).
clocksucc(2,3,3,3).
clocksucc(3,3,3,2).
clocksucc(3,2,3,1).
clocksucc(3,1,2,1).
clocksucc(2,1,1,1).

h(L,H) :-
    totdist(L,N1),
    seq(L,L,N2),
    H is N1 + 3*N2.

showboard(L) :-
    showline(L,1),
    showline(L,2),
    showline(L,3).

showline(L,Y) :-
    showcell(L,Y,1),
    showcell(L,Y,2),
    showcell(L,Y,3),nl.

showcell(L,X,Y) :-
    member(cell(X,Y,V), L),
    write(V),write(" ").

showsol([]).

showsol([P|L]) :-
    showsol(L),
    nl,write('---'),nl,
    showboard(P).
    

% Best first
bestfirst(Start,Solution) :-
    expand([], l(Start, 0/0), 9999,_,yes,Solution).
    
expand(P,l(N,_),_,_,yes,[N|P]) :-
    goal(N).

expand(P,l(N,F/G),Bound,Tree1,Solved,Sol) :-
    F =< Bound,
    ( bagof(M/C,(s(N,M,C), \+ member(M,P)),Succ),
      !,
      succlist(G, Succ, Ts),
      bestf(Ts,F1),
      expand(P,t(N,F1/G,Ts),Bound,Tree1,Solved,Sol)
      ;
      Solved=never
    ).
    
expand(P, t(N, F/G, [T|Ts]), Bound, Tree1, Solved, Sol) :-
    F =< Bound,
    bestf(Ts, BF), min(Bound, BF, Bound1),
    expand([N|P],T,Bound1,T1,Solved1,Sol),
    continue(P,t(N,F/G,[T1 |Ts]), Bound, Tree1, Solved1, Solved, Sol).

expand(_,t(_,_,[]),_,_,never,_) :- !.

expand(_,Tree,Bound,Tree,no,_) :-
    f(Tree,F), F > Bound.
    
continue(_,_,_,_,yes,yes,Sol).

continue(P,t(N,F/G,[T1 |Ts]), Bound, Tree1, no, Solved, Sol) :-
    insert(T1,Ts,NTs),
    bestf(NTs,F1),
    expand(P,t(N,F1/G,NTs),Bound,Tree1,Solved,Sol).

succlist(_,[],[]).

succlist(G0, [N/C | NCs], Ts) :-
    G is G0 + C,
    h(N,H),	
    F is G + H,
    succlist(G0,NCs,Ts1),
    insert(l(N,F/G),Ts1,Ts).

insert(T, Ts, [T|Ts]) :-
    f(T,F),bestf(Ts,F1),
    F =< F1,!.

insert(T,[T1|Ts],[T1|Ts1]):-
    insert(T,Ts,Ts1).

f(l(_,F/_),F).

f(t(_,F/_,_),F).

bestf([T|_],F) :-
    f(T,F).
bestf([],9999).
