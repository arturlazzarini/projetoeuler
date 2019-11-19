let aux f = let t = Hashtbl.create 1000 in let rec g = fun x -> try Hashtbl.find t x with _ -> let y = f g x in Hashtbl.add t x y; y in g
let projEuler x y z = let f = aux (fun f -> let f x y = if x = 0 then 0. else float_of_int x *. f y in fun (n1, n2, n3, n4, n5, n6) -> if n1 < n2 || n2 < 0 || n3 < 0 || n4 < 0 then 0. else if n1 = 0 then 1. else let n7 = n6 + n5 in (f n4 (n1-1, n2-1, n3, n4-1, 1, n7) +. f n6 (n1-1, n2-1, n3-1, n4, 1, h-1) +. f (n3-n6-n5) (n1-1, n2-1, n3-1, n4, 0, n7) +. f n5 (n1-1, n2, n3-1, n4, 1, n7-1)) /. float_of_int (n3+n4)) in f (x, z, x, y, 1, 0)

print (projEuler 25 75 22)
