-module(factorial).
-export([fact/1,fact2/1]).
%% Calcula el factorial de un número
fact(0) -> 1;
fact(N) -> N*fact(N-1).

fact2(N) -> if not(N =:= 0) -> N*fact2(N-1);
               true -> 1
            end.