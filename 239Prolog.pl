:- projEuler(100, 25, Z).

projEuler(X, Y, Z):- X3 is X-3, findall(F, (for(0, X3, I), fact(I, F)), FS), Y3 is Y-3, diferenca(Y3, FS, DS), last(DS, D), fact(X, F), Z is D * Y * (Y-1) * (Y-2)/6/F.

fact(N, F):- factAlt(1, N, 1.0, F).

factAlt(I, N, F, F):- I > N, !.
factAlt(I, N, F0, F):- FI is F0 * I, I1 is I + 1, factAlt(I1, N, FI, F).

diferenca(0, XS, XS):-!.
diferenca(N, [X|XS], YS):- diferencaAlt(XS, X, XS1), N1 is N-1, diferenca(N1, XS1, YS).

diferencaAlt([], _, []).
diferencaAlt([X|XS], Z, [Y|YS]):- Y is X - Z, diferencaAlt(XS, X, YS).
