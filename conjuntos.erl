-module(conjuntos).
-export([lista/2,interseccion/2,mostrar_r/1,mostrar_lista/1,fst/1,snd/1]).
%% Calcula el factorial de un número

%lista(I,_,0) -> [I];
lista(I,F) -> if not(I =:= F) -> [I]++lista(I+1,F);
               true -> [F]
            end.
interseccion(Ns,Ms) -> [ X || X <- Ns, Y <-Ms, X =:= Y ].
%interseccion([],_) -> [];
%interseccion(_,[]) -> []
%interseccion([H1|T1],[H2|T2]) -> if not(H1 =:= H2) -> interseccion(T1,T2);
%                                    true -> [H1]++interseccion(T1,T2)
%                                 end.
mostrar_r([]) -> "";
mostrar_r([N|Ns]) -> "Fila "++integer_to_list(fst(N)) ++ " ---> {"++mostrar_lista(snd(N))++"}\n"++mostrar_r(Ns).
mostrar_lista([]) -> "";
mostrar_lista([A]) -> integer_to_list(A);
mostrar_lista([N|Ns]) -> ""++ integer_to_list(N) ++","++ mostrar_lista(Ns).
fst({A,_})->A.
snd({_,B})->B.
%EJEMPLO DE EJECUCION
%32> {ok,S}=file:open("a.txt",write).
%{ok,<0.141.0>}
%33> io:format(S,"~s~n",[conjuntos:mostrar_r([{A,conjuntos:interseccion([X||X<-conjuntos:lista(-100,100),X*X-A*X<0],[X||X<-conjuntos:lista(-100,100),X*X-3*X>0])}||A<-conjuntos:lista(2,40)])]).
%ok
%34> file:close(S).
%ok