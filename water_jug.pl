fill(X,Y).

fill(2,0):-
    nl,write('goal state reached!!!').
fill(X,Y):-
    X=0,Y=<1,nl,write('fill the 4-gallon jug:(4,'),write(Y),write(')'),fill(4,Y).
fill(X,Y):-
    Y=0,X=3,nl,write('fill the 3-gallon jug:('),write(X),write(',3)'),fill(X,3).
fill(X,Y):-
    X+Y>=4,Y=3,X=3,Y1 is Y-(4-X),nl,write('pour water from 3-gallon jug to 4-gallon jug untill full:(4,'),write(Y1),write(')'),fill(4,Y1).
fill(X,Y):-
    X+Y>=3,X=4,Y=<1,X1 is (3-Y),nl,write('pour water from 4-gallon jug to 3-gallon jug untill fill:'),write(X1),write(',3)'),fill(X1,3).
fill(X,Y):-
    X+Y=<4,X=0,Y>1,X1 is X+Y,nl,write('pour all water from 3-gallon jug to 4-gallon jug:'),write('('),write(X1),write(',0)'),fill(X1,0).
fill(X,Y):-
    X+Y<3,Y=0,Y1 is X+Y,nl,write('pour all water from 4-gallon jug to 3-gallon jug:(0,'),write(Y1),write(')'),fill(0,Y1).
fill(X,Y):-
    Y=2,X=4,nl,write('empty the 4-gallon jug onto the ground:('),write('0,'),write(Y),write(')'),fill(0,Y).
fill(X,Y):-
    Y=3,X>=1,nl,write('empty the 3-gallon jug onto the ground:'),write(X),write(',('),write(0),write(')'),fill(X,0).
fill(X,Y):-
    X>4,Y=<3,nl,write('4-gallon jug overflown').
fill(X,Y):-
    X=<4,Y>3,nl,write('3-gallon jug overflown').
fill(X,Y):-
    X>4,Y>4,nl,write('both the 4-gallon and 3-gallon jugs overflown').


