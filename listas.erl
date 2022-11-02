-module(listas).
-export([longitud/1,suma/1,reverse/1,combinar/2,longitud2/1,aux/2]).

%% Longitud de una lista con recursividad y pattern maching
longitud([]) -> 0;
longitud([_|T]) -> 1 + longitud(T).
%% Longitud con acumulador
longitud2(L) -> aux(L,0).
aux([],Acc) -> Acc;
aux([_|T],Acc) -> aux(T,Acc+1).
%% Suma de los elementos de una lista
suma([]) -> 0;
suma([H|T]) -> H + suma(T).
%% Invertir los elementos de una lista
reverse([]) -> [];
reverse([H|T]) -> reverse(T) ++ [H].
%% Combinar dos listas
combinar([],[]) -> [];
combinar([],L) -> L;
combinar(L,[]) -> L;
combinar([H|T],[H2|T2]) -> [H] ++ [H2] ++ combinar(T,T2).