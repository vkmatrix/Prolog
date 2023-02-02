s(a,b).
s(a,c).
s(b,d).
s(b,e).
s(c,f).
s(c,g).

start(Parent,In_order):-
    queue([Parent],[],In_order).

queue([],In_order,In_order).
queue([Parent|Queue0],In_order0,In_order):-
    append(In_order0,[Parent],In_order1),
    findall(Child,s(Parent,Child),Children),
    append(Queue0,Children,Queue),
    queue(Queue,In_order1,In_order).

