:- include('eightpuzzle-IO.pl').

start([8,7,6,5,4,3,2,1,b]).
test1([8,2,6,5,b,3,7,1,4]).
test2([1,2,3,4,5,6,7,b,8]).
goal([1,2,3,4,5,6,7,8,b]).

diff(A,B,D) :-
    D is A-B, D>=0,!
    ;
    D is B-A.

mandist(X1-Y1,X2-Y2,D) :-
    diff(X1,X2,Dx),
    diff(Y1,Y2,Dy),
    D is Dx+Dy.

coord(N,X-Y) :-
    X is mod(N,3),
    Y is div(N,3).

blank_pos(L,Position):-
    nth0(Position,L,b).

neighbor(N1,N2) :-
    coord(N1,X1-Y1),
    coord(N2,X2-Y2),
    mandist(X1-Y1,X2-Y2,1).

%Swaps elements at pos I and J (0 index)
swap(I,J,L1,L3) :-
   same_length(L1,L3),
   append(BeforeI,[AtI|PastI],L1),
   append(BeforeI,[AtJ|PastI],L2),
   append(BeforeJ,[AtJ|PastJ],L2),
   append(BeforeJ,[AtI|PastJ],L3),
   length(BeforeI,I),
   length(BeforeJ,J).

s(B1,B2,1) :-
    member(N,B1),
    nth0(NI,B1,N),
    blank_pos(B1,BI),
    neighbor(BI,NI),
    swap(BI,NI,B1,B2).

% Random player

random_player(B,Path) :-
    random_player_lim(B,Path,50).

random_player_lim(B,[B],0) :- !.

random_player_lim(B,[B],_T) :-
    goal(B), !.

random_player_lim(B1,[B1|Path],T) :-
    findall(B2,s(B1,B2,1),Ss),
    length(Ss,L),
    L1 is L - 1,
    random_between(0,L1,R),
    write(R),
    write(L),
    nth0(R,Ss,B3),
    T1 is T - 1,
    random_player_lim(B3,Path,T1).


% Huristics

totdist(L,Goal,N) :-
    totdist1(L,Goal,N,0).

totdist1([],_Goal,0,_Pos).

totdist1([b|T],Goal,N,Pos) :-
    !,Pos1 is Pos + 1,
    totdist1(T,Goal,N,Pos1).

totdist1([V|T],Goal,N,Pos) :-
    nth0(I,Goal,V),
    coord(Pos,X1-Y1),
    coord(I,X2-Y2),
    mandist(X1-Y1,X2-Y2,D),
    Pos1 is Pos + 1,
    totdist1(T,Goal,N1,Pos1),
    N is N1 + D.

% Counts total number of tiles out of their
% row + number out of column.
outofpos([],_Goal,0,_Pos).

outofpos([b|T],Goal,N,Pos) :- !,
    Pos1 is Pos + 1,
    outofpos(T,Goal,N,Pos1).

outofpos([V|T],Goal,N,Pos) :-
    coord(Pos,X1-Y1),
    nth0(PosG,Goal,V),
    coord(PosG,X2-Y2),
    Pos1 is Pos + 1,
    outofpos(T,Goal,N1,Pos1),
    (   xandy(X1 = X2, Y1 = Y2) ->
        N is N1
    ;   xory(X1 = X2, Y1 = Y2) ->
        N is N1 + 1
    ;   N is N1 + 2
    ).

xandy(X,Y) :- X,Y.
xory(X,Y) :- X;Y.

h(B,H) :-
    goal(Goal),
    totdist(B,Goal,D),
    outofpos(B,Goal,N,0),
    H is D + (2*N).


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
    
continue(_,_,_,_,yes,yes,_Sol).

continue(P,t(N,_F/G,[T1 |Ts]), Bound, Tree1, no, Solved, Sol) :-
    insert(T1,Ts,NTs),
    bestf(NTs,F1),
    expand(P,t(N,F1/G,NTs),Bound,Tree1,Solved,Sol).

continue(P,t(N,_F/G,[_|Ts]),Bound,Tree1,never,Solved,Sol) :-
    bestf(Ts,F1),
    expand(P,t(N,F1/G,Ts),Bound,Tree1,Solved,Sol).

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

min(A, B, Min) :- A < B -> Min = A ; Min = B.