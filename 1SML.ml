fun main(0 , soma) = soma
  | main(num , x) = if (x mod 3 = 0 orelse x mod 5 = 0) then (main(x-1, soma+x)) else(main(x-1, soma))
