-module(examenes_pasados).
-export([incidencias/2,suma/1,diferenciasR/1]).

% Examen 1 (30 de noviembre de 2009)
% incidenciasC :: Eq a => a -> [a] -> Int
% tal que (incidenciasC x ys) es el número de veces que aparece el
% elemento x en la lista ys. Por ejemplo,
% incidenciasC 3 [7,3,5,3] == 2
% ---------------------------------------------------------------------

suma([]) -> 0;
suma([_|T]) -> 1 + suma(T).
incidencias(_,[]) -> 0;
incidencias(Y,[H|T]) -> suma([1||X<-[H|T],Y=:=X]).

% EJEMPLO DE CORRIDA
% 11> c("examenes_pasados").
% {ok,examenes_pasados}
% 12> examenes_pasados:incidencias(3,[2,3]).
% 1
%-- ---------------------------------------------------------------------
%-- Ejercicio 1.1. Definir, por recursión, la función
%-- diferenciasR :: Num a => [a] -> [a]
%-- tal que (diferenciasR xs) es la lista de las diferencias entre los
%-- elementos consecutivos de xs. Por ejemplo,
%-- diferenciasR [5,3,8,7] == [2,-5,1]
%-- ---------------------------------------------------------------------
diferenciasR([])->[];
diferenciasR([_])->[];
diferenciasR([H|T])->[H-hd(T)]++diferenciasR(T).
