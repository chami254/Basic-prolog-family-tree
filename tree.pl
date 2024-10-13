% a Prolog program that defines a small family tree and allows you to query family relationships such as parent, grandparent, and sibling.

%fact define family members
parent(dave, brian).
parent(venessa, brian).
parent(venessa, delilah).
parent(brian, karen).
parent(brian,john).
parent(delilah, brian).
parent(delilah,john).

%rule 
grandparent(x, y) :- parent(X), parent(Y, Z).
sibling(x, y)
