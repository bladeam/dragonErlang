-module(funciones_superiores).
-compile(export_all).
%%-export([map/2]).

map([],_) -> [];
map([H|T],F) -> [F(H)] ++ map(T,F).


        
        