mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(diana).
mujer(vanessa).
mujer(martha).
mujer(romina).

hombre(hugo). adulto(hugo).
hombre(paco).
hombre(luis).
hombre(mario).
hombre(marco).
hombre(juan). ninio(juan).
hombre(pedro).
hombre(raul).
hombre(gabriel).
hombre(sergio).

esposa(ana, hugo).
esposa(rocio, mario).
esposa(diana, sergio).

esposo(luis, romina).
esposo(marco, luisa).

%hijo(paco, esther).
%hijo(paco, sergio).
%hijo(juan, vanessa).
%hijo(juan, raul).
%hija(fabiola, maria).

madre(ana, rocio).
madre(ana, maria).
madre(ana, luis).
madre(martha, diana).
madre(fabiola, romina).
madre(romina, luisa).

padre(raul, rocio).
padre(marco, hugo).
padre(pedro, gabriel).
padre(marco, romina).
padre(sergio, paco).
padre(hugo, sergio).

%REGLAS

%padre(X, Y) :- hombre(X), hijo(Y, X).
%madre(X, Y) :- mujer(X), hijo(Y, X).
%abuelo(X) :- hombre(X),hijo(Z,Y),hijo(Y,X).
%nieto(X) :- hombre(X), padre(Y, A), padre(A, X).
%nieta(X) :- mujer(X), padre(Y, A), padre(A, X).

abuelos(X) :- (padre(X, Y) ; madre(X, Y)), (padre(Y, A) ; madre(Y, A)).
nietos(X) :- (padre(Y, A) ; madre(Y, A)), (padre(A, X) ; madre(A, X)).
hermanos(A , B) :- (padre(Z, A) ; madre(Y, A)), (padre(Z, B) ; madre(Y, B)).
pareja(A, B) :- esposo(A,B) ; esposa(A,B).


%consultas

%   abuelos(X). mostrara los abuelos ya sean mujeres o hombres
%   nietos(Z). mostrara a los nietos y nietas
%   hermanos(A, B). mostrara a los hermanos y hermanas
%   pareja(C, D). mostrara a las parejas de esposos y esposas

