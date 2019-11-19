projEuler([L, H], R):- numlist(L, H, L1), foldl(lcm, L1, 1, R).

lcm(X,Y,Z):- Z is X * Y // gcd(X, Y).
