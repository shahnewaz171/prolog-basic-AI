male(abid).
male(prince).
male(skif).
male(sopon).

female(riya).
female(ripa).
female(suma).

parents(abid,prince).
parents(abid,riya).
parents(prince,ripa).
parents(prince,sakif).
parents(riya,sopon).
parents(riya,suma).

father(X,Y):-parents(X,Y),male(X).
mother(X,Y):-parents(X,Y),female(X).

sibling(X,Y):-parents(Z,X),parents(Z,Y),X\=Y.
brother(X,Y):-sibling(X,Y),male(X).
sister(X,Y):-sibling(X,Y),female(X).

grandfather(X,Z):-parents(X,Y),parents(Y,Z),male(X).
