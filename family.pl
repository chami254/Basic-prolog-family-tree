%define a parent-child relationship
parent(john, mary).
parent(susan,mary).
parent(,john, mike).

%define a rule to check if someone is a sibling
sibling(x, y) :- parent(z, x), parent(z, y), x\= y.