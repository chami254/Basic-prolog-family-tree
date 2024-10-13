% a Prolog program that defines a small family tree and allows you to query family relationships such as parent, grandparent, and sibling.

%fact define family members
parent(dave, brian).
parent(venessa, brian).
parent(venessa, delilah).
parent(brian, karen).
parent(brian,john).
parent(delilah, brian).
parent(delilah,john).
parent(dave, topisia).
parent(venessa, topisia).

%rule 
grandparent(X, Z):- parent(X, Y), parent(Y, Z).
sibling(T, V):- parent(S, T), parent(S, V).
aunt(A, U):- parent(B, U), sibling(B, A).
cousin(P, Q) :- parent(R, P), parent(S, Q), sibling(R, S).

