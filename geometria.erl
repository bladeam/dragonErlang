-module(geometria).
-export([area/1]).
area({circulo, Radio}) ->
    math:pi()*(Radio*Radio);
area({cuadrado, Lado}) ->
    Lado*Lado;
area({rectangulo, X, Y}) ->
    X*Y.